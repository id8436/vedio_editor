package com.google.android.exoplayer.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(18)
public class StreamingDrmSessionManager implements DrmSessionManager {
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    final MediaDrmCallback callback;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private Exception lastException;
    private MediaCrypto mediaCrypto;
    private final MediaDrm mediaDrm;
    final MediaDrmHandler mediaDrmHandler;
    private String mimeType;
    private int openCount;
    private final HashMap<String, String> optionalKeyRequestParameters;
    private Handler postRequestHandler;
    final PostResponseHandler postResponseHandler;
    private boolean provisioningInProgress;
    private HandlerThread requestHandlerThread;
    private byte[] schemePsshData;
    private byte[] sessionId;
    private int state;
    final UUID uuid;

    /* JADX INFO: loaded from: classes2.dex */
    public interface EventListener {
        void onDrmSessionManagerError(Exception exc);
    }

    @Deprecated
    public StreamingDrmSessionManager(UUID uuid, Looper looper, MediaDrmCallback mediaDrmCallback, Handler handler, EventListener eventListener) throws UnsupportedSchemeException {
        this(uuid, looper, mediaDrmCallback, null, handler, eventListener);
    }

    public StreamingDrmSessionManager(UUID uuid, Looper looper, MediaDrmCallback mediaDrmCallback, HashMap<String, String> map, Handler handler, EventListener eventListener) throws UnsupportedSchemeException {
        this.uuid = uuid;
        this.callback = mediaDrmCallback;
        this.optionalKeyRequestParameters = map;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.mediaDrm = new MediaDrm(uuid);
        this.mediaDrm.setOnEventListener(new MediaDrmEventListener());
        this.mediaDrmHandler = new MediaDrmHandler(looper);
        this.postResponseHandler = new PostResponseHandler(looper);
        this.state = 1;
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public int getState() {
        return this.state;
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public MediaCrypto getMediaCrypto() {
        if (this.state != 3 && this.state != 4) {
            throw new IllegalStateException();
        }
        return this.mediaCrypto;
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public boolean requiresSecureDecoderComponent(String str) {
        if (this.state != 3 && this.state != 4) {
            throw new IllegalStateException();
        }
        return this.mediaCrypto.requiresSecureDecoderComponent(str);
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public Exception getError() {
        if (this.state == 0) {
            return this.lastException;
        }
        return null;
    }

    public final String getPropertyString(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    public final byte[] getPropertyByteArray(String str) {
        return this.mediaDrm.getPropertyByteArray(str);
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public void open(Map<UUID, byte[]> map, String str) {
        int i = this.openCount + 1;
        this.openCount = i;
        if (i == 1) {
            if (this.postRequestHandler == null) {
                this.requestHandlerThread = new HandlerThread("DrmRequestHandler");
                this.requestHandlerThread.start();
                this.postRequestHandler = new PostRequestHandler(this.requestHandlerThread.getLooper());
            }
            if (this.schemePsshData == null) {
                this.mimeType = str;
                this.schemePsshData = map.get(this.uuid);
                if (this.schemePsshData == null) {
                    onError(new IllegalStateException("Media does not support uuid: " + this.uuid));
                    return;
                }
            }
            this.state = 2;
            openInternal(true);
        }
    }

    @Override // com.google.android.exoplayer.drm.DrmSessionManager
    public void close() {
        int i = this.openCount - 1;
        this.openCount = i;
        if (i == 0) {
            this.state = 1;
            this.provisioningInProgress = false;
            this.mediaDrmHandler.removeCallbacksAndMessages(null);
            this.postResponseHandler.removeCallbacksAndMessages(null);
            this.postRequestHandler.removeCallbacksAndMessages(null);
            this.postRequestHandler = null;
            this.requestHandlerThread.quit();
            this.requestHandlerThread = null;
            this.schemePsshData = null;
            this.mediaCrypto = null;
            this.lastException = null;
            if (this.sessionId != null) {
                this.mediaDrm.closeSession(this.sessionId);
                this.sessionId = null;
            }
        }
    }

    private void openInternal(boolean z) {
        try {
            this.sessionId = this.mediaDrm.openSession();
            this.mediaCrypto = new MediaCrypto(this.uuid, this.sessionId);
            this.state = 3;
            postKeyRequest();
        } catch (NotProvisionedException e2) {
            if (z) {
                postProvisionRequest();
            } else {
                onError(e2);
            }
        } catch (Exception e3) {
            onError(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postProvisionRequest() {
        if (!this.provisioningInProgress) {
            this.provisioningInProgress = true;
            this.postRequestHandler.obtainMessage(0, this.mediaDrm.getProvisionRequest()).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProvisionResponse(Object obj) {
        this.provisioningInProgress = false;
        if (this.state == 2 || this.state == 3 || this.state == 4) {
            if (obj instanceof Exception) {
                onError((Exception) obj);
                return;
            }
            try {
                this.mediaDrm.provideProvisionResponse((byte[]) obj);
                if (this.state == 2) {
                    openInternal(false);
                } else {
                    postKeyRequest();
                }
            } catch (DeniedByServerException e2) {
                onError(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postKeyRequest() {
        try {
            this.postRequestHandler.obtainMessage(1, this.mediaDrm.getKeyRequest(this.sessionId, this.schemePsshData, this.mimeType, 1, this.optionalKeyRequestParameters)).sendToTarget();
        } catch (NotProvisionedException e2) {
            onKeysError(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeyResponse(Object obj) {
        if (this.state == 3 || this.state == 4) {
            if (obj instanceof Exception) {
                onKeysError((Exception) obj);
                return;
            }
            try {
                this.mediaDrm.provideKeyResponse(this.sessionId, (byte[]) obj);
                this.state = 4;
            } catch (Exception e2) {
                onKeysError(e2);
            }
        }
    }

    private void onKeysError(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            postProvisionRequest();
        } else {
            onError(exc);
        }
    }

    private void onError(final Exception exc) {
        this.lastException = exc;
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.drm.StreamingDrmSessionManager.1
                @Override // java.lang.Runnable
                public void run() {
                    StreamingDrmSessionManager.this.eventListener.onDrmSessionManagerError(exc);
                }
            });
        }
        if (this.state != 4) {
            this.state = 0;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    @SuppressLint({"HandlerLeak"})
    class MediaDrmHandler extends Handler {
        public MediaDrmHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (StreamingDrmSessionManager.this.openCount != 0) {
                if (StreamingDrmSessionManager.this.state == 3 || StreamingDrmSessionManager.this.state == 4) {
                    switch (message.what) {
                        case 1:
                            StreamingDrmSessionManager.this.state = 3;
                            StreamingDrmSessionManager.this.postProvisionRequest();
                            break;
                        case 2:
                            StreamingDrmSessionManager.this.postKeyRequest();
                            break;
                        case 3:
                            StreamingDrmSessionManager.this.state = 3;
                            StreamingDrmSessionManager.this.postKeyRequest();
                            break;
                    }
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    class MediaDrmEventListener implements MediaDrm.OnEventListener {
        private MediaDrmEventListener() {
        }

        @Override // android.media.MediaDrm.OnEventListener
        public void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
            StreamingDrmSessionManager.this.mediaDrmHandler.sendEmptyMessage(i);
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    @SuppressLint({"HandlerLeak"})
    class PostResponseHandler extends Handler {
        public PostResponseHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    StreamingDrmSessionManager.this.onProvisionResponse(message.obj);
                    break;
                case 1:
                    StreamingDrmSessionManager.this.onKeyResponse(message.obj);
                    break;
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    @SuppressLint({"HandlerLeak"})
    class PostRequestHandler extends Handler {
        public PostRequestHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                switch (message.what) {
                    case 0:
                        e = StreamingDrmSessionManager.this.callback.executeProvisionRequest(StreamingDrmSessionManager.this.uuid, (MediaDrm.ProvisionRequest) message.obj);
                        break;
                    case 1:
                        e = StreamingDrmSessionManager.this.callback.executeKeyRequest(StreamingDrmSessionManager.this.uuid, (MediaDrm.KeyRequest) message.obj);
                        break;
                    default:
                        throw new RuntimeException();
                }
            } catch (Exception e2) {
                e = e2;
            }
            StreamingDrmSessionManager.this.postResponseHandler.obtainMessage(message.what, e).sendToTarget();
        }
    }
}

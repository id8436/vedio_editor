package com.adobe.premiereclip.mediaengine.exporter;

import android.content.Context;
import android.opengl.EGLContext;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import com.adobe.premiereclip.editor.Editor;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter;
import com.adobe.premiereclip.mediaengine.renderers.SequenceRenderer;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.crashlytics.android.Crashlytics;
import com.google.android.exoplayer.ExoPlaybackException;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class SequenceExporter implements Handler.Callback {
    private static final int MSG_HANDLE_FRAME_AVAILABLE = 4;
    private static final int MSG_PREPARE = 0;
    private static final int MSG_RELEASE = 6;
    private static final int MSG_RENDER_FRAME = 3;
    private static final int MSG_STOP = 5;
    private static final String TAG = "Export Task";
    private boolean allRendered;
    private boolean bumperAdded;
    private String bumperPath;
    private boolean canAddBumper;
    private Context context;
    private long currentTimeStampUs;
    private boolean ended;
    private GPUMediaSurfaceView glView;
    private ListenerWrapper listenerWrapper;
    private EglCore mEglCore;
    private EncoderConfig mEncoderConfig;
    private GPUMediaFilter mExportFilter;
    private HandlerThread mExportThread;
    private int mFrameNum;
    private Handler mHandler;
    private WindowSurface mInputWindowSurface;
    private VideoEncoderCore mVideoEncoder;
    private boolean released;
    private long renderedTimeStampUs;
    private Sequence sequence;
    private SequenceRenderer sequenceRenderer;

    public interface Listener {
        void onEnded(boolean z);

        void onProgress(double d2);
    }

    class ListenerWrapper {
        private Listener mListener;
        private Handler mListenerHandler = new Handler();

        public ListenerWrapper(Listener listener) {
            this.mListener = listener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onProgress(final double d2) {
            if (this.mListener != null && !SequenceExporter.this.released && !SequenceExporter.this.ended) {
                this.mListenerHandler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.exporter.SequenceExporter.ListenerWrapper.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.i(SequenceExporter.TAG, d2 + "");
                        ListenerWrapper.this.mListener.onProgress(d2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onEnded(final boolean z) {
            synchronized (SequenceExporter.this) {
                SequenceExporter.this.released = true;
            }
            this.mListenerHandler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.exporter.SequenceExporter.ListenerWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    SequenceExporter.this.releaseInternal();
                    SequenceExporter.this.mExportThread.quitSafely();
                    if (ListenerWrapper.this.mListener != null) {
                        Log.i(SequenceExporter.TAG, "ended");
                        ListenerWrapper.this.mListener.onEnded(z);
                    }
                }
            });
        }
    }

    class EncoderConfig {
        final int mAudioBitrate;
        final int mAudioChannel;
        final int mAudioSampleRate;
        final EGLContext mEglContext;
        final File mOutputFile;
        final int mVideoBitRate;
        final int mVideoHeight;
        final int mVideoWidth;

        public EncoderConfig(File file, int i, int i2, int i3, int i4, int i5, int i6, EGLContext eGLContext) {
            this.mOutputFile = file;
            this.mVideoWidth = i;
            this.mVideoHeight = i2;
            this.mVideoBitRate = i3;
            this.mAudioSampleRate = i4;
            this.mAudioChannel = i5;
            this.mAudioBitrate = i6;
            this.mEglContext = eGLContext;
        }

        public String toString() {
            return "EncoderConfig, Video: " + this.mVideoWidth + "x" + this.mVideoHeight + " @" + this.mVideoBitRate + ", Audio: " + this.mAudioSampleRate + ", Channel: " + this.mAudioChannel + " @" + this.mAudioBitrate + " to '" + this.mOutputFile.toString() + "' ctxt=" + this.mEglContext;
        }
    }

    public SequenceExporter(Context context) {
        this.context = context;
    }

    public void init(SequenceRenderer sequenceRenderer) {
        this.sequence = sequenceRenderer.getSequence();
        this.sequence.setModeToExport();
        this.sequenceRenderer = sequenceRenderer;
        this.glView = sequenceRenderer.getGlView();
        this.mExportFilter = new GPUMediaFilter();
    }

    public void setListener(Listener listener) {
        if (listener != null) {
            this.listenerWrapper = new ListenerWrapper(listener);
        }
    }

    private void addPromoRollClip() throws ExoPlaybackException {
        Clip clipCreateBumperClip = Editor.createBumperClip(this.bumperPath);
        if (clipCreateBumperClip != null) {
            clipCreateBumperClip.setBumper();
            this.sequence.addClip(clipCreateBumperClip);
            this.sequenceRenderer.resetClips();
        }
    }

    private void removePromoClip() throws ExoPlaybackException {
        if (this.sequence.getClips().get(r0.size() - 1).isBumper()) {
            this.sequence.removeClip(this.sequence.getClips().size() - 1);
        }
    }

    private void prepareOverlayTrack() {
        ArrayList<Clip> clips;
        if (this.canAddBumper && (clips = this.sequence.getClips(1)) != null && clips.size() > 0) {
            Clip clip = clips.get(0);
            if (clip.getClipType() != Clip.CLIP_TYPE.EMPTY_VIDEO) {
                clip.setEndTimeUs(this.sequence.getSequenceDurationUs());
                if (clips.size() == 1) {
                    Clip clipCreateBumperClip = Editor.createBumperClip(this.bumperPath);
                    this.sequence.addClipToTrack(Sequence.createEmptyVideoClip(0L, clipCreateBumperClip != null ? clipCreateBumperClip.getDurationUs() : 0L, UUID.randomUUID().toString()), 1);
                }
            }
        }
    }

    private void resetOverlayTrack() {
        ArrayList<Clip> clips = this.sequence.getClips(1);
        if (clips.size() > 1 && clips.get(1).getClipType() == Clip.CLIP_TYPE.EMPTY_VIDEO) {
            this.sequence.removeClipFromTrack(1, 1);
        }
    }

    public void exportSequence(File file, boolean z, String str) {
        Log.i(TAG, "creating thread");
        this.canAddBumper = z;
        this.bumperPath = str;
        prepareOverlayTrack();
        this.mExportThread = new HandlerThread(getClass().getSimpleName() + ":Handler");
        this.mExportThread.start();
        this.mHandler = new Handler(this.mExportThread.getLooper(), this);
        this.mHandler.obtainMessage(0, file).sendToTarget();
    }

    private void prepareEncoder() {
        try {
            this.mVideoEncoder = new VideoEncoderCore(this.mEncoderConfig.mVideoWidth, this.mEncoderConfig.mVideoHeight, this.mEncoderConfig.mVideoBitRate, this.mEncoderConfig.mAudioSampleRate, this.mEncoderConfig.mAudioChannel, this.mEncoderConfig.mAudioBitrate, Sequence.convertSequenceToAudioSequence(this.context, this.sequence, this.mEncoderConfig.mAudioSampleRate, this.mEncoderConfig.mAudioChannel), this.mEncoderConfig.mOutputFile);
            this.mEglCore = new EglCore(this.mEncoderConfig.mEglContext, 1);
            this.mInputWindowSurface = new WindowSurface(this.mEglCore, this.mVideoEncoder.getInputSurface(), true);
            this.mInputWindowSurface.makeCurrent();
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private void prepare(File file) throws ExoPlaybackException {
        while (!this.sequenceRenderer.isInitialized()) {
            try {
                Thread.sleep(10L);
            } catch (InterruptedException e2) {
                throw new ExoPlaybackException(e2);
            }
        }
        if (this.canAddBumper) {
            addPromoRollClip();
            this.bumperAdded = true;
        }
        int[] size = this.sequence.getSize();
        int i = size[1];
        int i2 = 1000000;
        if (i > 360 && i <= 480) {
            i2 = 2500000;
        } else if (i <= 720) {
            i2 = 5000000;
        } else if (i <= 1080) {
            i2 = 8000000;
        } else if (i <= 1440) {
            i2 = 16000000;
        } else if (i <= 2160) {
            i2 = 40000000;
        }
        this.mEncoderConfig = new EncoderConfig(file, size[0], size[1], i2, 48000, 2, 131072, this.glView.getEglContext());
        this.released = false;
        this.ended = false;
        this.allRendered = false;
        prepareEncoder();
        Log.i(TAG, "Started encoder");
        this.mFrameNum = 0;
        this.currentTimeStampUs = 0L;
        this.renderedTimeStampUs = -1L;
        this.glView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.exporter.SequenceExporter.1
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16640);
                SequenceExporter.this.sequenceRenderer.onDisplaySizeChanged();
                SequenceExporter.this.mExportFilter.setGPUMediaTexture(SequenceExporter.this.sequenceRenderer.getOutputTexture());
                SequenceExporter.this.mExportFilter.onOutputSizeChanged(SequenceExporter.this.mEncoderConfig.mVideoWidth, SequenceExporter.this.mEncoderConfig.mVideoHeight);
                SequenceExporter.this.mExportFilter.init();
            }
        });
        this.glView.requestRender();
        this.sequenceRenderer.setClipRendering(-1);
        this.mHandler.sendEmptyMessage(3);
    }

    private void renderFrame() throws ExoPlaybackException {
        Log.i(TAG, "Render Frame: " + this.currentTimeStampUs);
        if (this.sequenceRenderer.isEnded()) {
            this.allRendered = true;
            this.mHandler.sendEmptyMessage(5);
            return;
        }
        final ArrayList arrayList = new ArrayList();
        this.sequenceRenderer.getFrameAtTime(this.currentTimeStampUs, -1L, arrayList);
        this.renderedTimeStampUs = this.currentTimeStampUs;
        this.currentTimeStampUs += 33333;
        if (this.currentTimeStampUs > this.sequence.getSequenceDurationUs()) {
            this.currentTimeStampUs = this.sequence.getSequenceDurationUs();
        }
        this.glView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.exporter.SequenceExporter.2
            @Override // java.lang.Runnable
            public void run() {
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                GLES20.glClear(16640);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Runnable) it.next()).run();
                }
            }
        });
        this.glView.runOnDrawEnd(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.exporter.SequenceExporter.3
            @Override // java.lang.Runnable
            public void run() {
                Log.i(SequenceExporter.TAG, "After render on framebuffer");
                GLES20.glFinish();
                SequenceExporter.this.mHandler.sendEmptyMessage(4);
            }
        });
        this.glView.requestRender();
    }

    private void handleFrameAvailable() throws ExoPlaybackException {
        Log.i(TAG, "handling frame " + this.mFrameNum + " " + this.renderedTimeStampUs);
        this.mVideoEncoder.drainEncoder(false);
        this.listenerWrapper.onProgress(this.renderedTimeStampUs / this.sequence.getSequenceDurationUs());
        this.mExportFilter.onDraw(null);
        this.mFrameNum++;
        this.mInputWindowSurface.setPresentationTime(this.renderedTimeStampUs * 1000);
        this.mInputWindowSurface.swapBuffers();
        this.mHandler.sendEmptyMessage(3);
    }

    private void stopEncoder(boolean z) throws ExoPlaybackException {
        if (z) {
            try {
                this.mVideoEncoder.drainEncoder(true);
            } catch (Exception e2) {
                Crashlytics.log(5, TAG, "This will prevent release of resources - muxer, video encoder, audio encoder");
                throw new ExoPlaybackException(e2);
            }
        }
        releaseEncoder();
    }

    private void releaseEGL() throws ExoPlaybackException {
        try {
            if (this.mEglCore != null) {
                this.mEglCore.release();
                this.mEglCore = null;
            }
        } catch (Exception e2) {
            throw new ExoPlaybackException(e2);
        }
    }

    private void releaseEncoder() throws ExoPlaybackException {
        try {
            this.mVideoEncoder.release();
            if (this.mInputWindowSurface != null) {
                this.mInputWindowSurface.release();
                this.mInputWindowSurface = null;
            }
            releaseEGL();
        } catch (Exception e2) {
            throw new ExoPlaybackException(e2);
        }
    }

    private void endExport(boolean z) throws ExoPlaybackException {
        if (!this.ended) {
            Log.i(TAG, "Ending export");
            this.listenerWrapper.onProgress(1.0d);
            if (this.bumperAdded) {
                removePromoClip();
                this.bumperAdded = false;
            }
            Exception e2 = null;
            try {
                if (this.mVideoEncoder != null) {
                    stopEncoder(!z);
                }
            } catch (Exception e3) {
                e2 = e3;
            }
            this.ended = true;
            resetOverlayTrack();
            this.sequenceRenderer.resetClips();
            this.sequenceRenderer.resetPosition();
            this.listenerWrapper.onEnded(this.allRendered);
            if (!this.allRendered || z) {
                Log.i(TAG, "Incomplete file deleted - " + this.mEncoderConfig.mOutputFile.delete());
            }
            this.allRendered = false;
            if (e2 != null) {
                throw new ExoPlaybackException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseInternal() {
        this.mHandler.removeMessages(3);
        this.mHandler.removeMessages(4);
    }

    public void release() {
        synchronized (this) {
            if (!this.released) {
                this.released = true;
                if (this.mHandler != null) {
                    releaseInternal();
                    this.mHandler.sendEmptyMessage(6);
                }
            }
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        boolean z;
        try {
            switch (message.what) {
                case 0:
                    prepare((File) message.obj);
                    z = true;
                    break;
                case 1:
                case 2:
                default:
                    z = false;
                    break;
                case 3:
                    renderFrame();
                    z = true;
                    break;
                case 4:
                    handleFrameAvailable();
                    z = true;
                    break;
                case 5:
                    endExport(false);
                    z = true;
                    break;
                case 6:
                    endExport(true);
                    z = true;
                    break;
            }
            return z;
        } catch (ExoPlaybackException | RuntimeException e2) {
            Crashlytics.logException(e2);
            e2.printStackTrace();
            if (!this.released) {
                this.listenerWrapper.onEnded(false);
            }
            return true;
        }
    }
}

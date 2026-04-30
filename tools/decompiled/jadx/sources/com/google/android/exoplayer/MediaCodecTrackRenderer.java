package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer.MediaCodecUtil;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public abstract class MediaCodecTrackRenderer extends TrackRenderer {
    private static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    private static final int RECONFIGURATION_STATE_NONE = 0;
    private static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    private static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    protected static final int SOURCE_STATE_NOT_READY = 0;
    protected static final int SOURCE_STATE_READY = 1;
    protected static final int SOURCE_STATE_READY_READ_MAY_FAIL = 2;
    private MediaCodec codec;
    public final CodecCounters codecCounters;
    private long codecHotswapTimeMs;
    private boolean codecIsAdaptive;
    private int codecReconfigurationState;
    private boolean codecReconfigured;
    private long currentPositionUs;
    private final List<Long> decodeOnlyPresentationTimestamps;
    private Map<UUID, byte[]> drmInitData;
    private final DrmSessionManager drmSessionManager;
    protected final Handler eventHandler;
    private final EventListener eventListener;
    private MediaFormat format;
    private final MediaFormatHolder formatHolder;
    private ByteBuffer[] inputBuffers;
    private int inputIndex;
    private boolean inputStreamEnded;
    private boolean openedDrmSession;
    private final MediaCodec.BufferInfo outputBufferInfo;
    private ByteBuffer[] outputBuffers;
    private int outputIndex;
    private boolean outputStreamEnded;
    private final boolean playClearSamplesWithoutKeys;
    private final SampleHolder sampleHolder;
    private final SampleSource source;
    private int sourceState;
    private int trackIndex;
    private boolean waitingForFirstSyncFrame;
    private boolean waitingForKeys;

    public interface EventListener {
        void onCryptoError(MediaCodec.CryptoException cryptoException);

        void onDecoderInitializationError(DecoderInitializationException decoderInitializationException);
    }

    protected abstract boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z) throws ExoPlaybackException;

    public class DecoderInitializationException extends Exception {
        private static final int CUSTOM_ERROR_CODE_BASE = -50000;
        private static final int DECODER_QUERY_ERROR = -49998;
        private static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final String decoderName;
        public final String diagnosticInfo;

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable th, int i) {
            super("Decoder init failed: [" + i + "], " + mediaFormat, th);
            this.decoderName = null;
            this.diagnosticInfo = buildCustomDiagnosticInfo(i);
        }

        public DecoderInitializationException(MediaFormat mediaFormat, Throwable th, String str) {
            super("Decoder init failed: " + str + ", " + mediaFormat, th);
            this.decoderName = str;
            this.diagnosticInfo = Util.SDK_INT >= 21 ? getDiagnosticInfoV21(th) : null;
        }

        @TargetApi(21)
        private static String getDiagnosticInfoV21(Throwable th) {
            if (th instanceof MediaCodec.CodecException) {
                return ((MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }

        private static String buildCustomDiagnosticInfo(int i) {
            return "com.google.android.exoplayer.MediaCodecTrackRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i);
        }
    }

    public MediaCodecTrackRenderer(SampleSource sampleSource, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener) {
        Assertions.checkState(Util.SDK_INT >= 16);
        this.source = sampleSource;
        this.drmSessionManager = drmSessionManager;
        this.playClearSamplesWithoutKeys = z;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.codecCounters = new CodecCounters();
        this.sampleHolder = new SampleHolder(0);
        this.formatHolder = new MediaFormatHolder();
        this.decodeOnlyPresentationTimestamps = new ArrayList();
        this.outputBufferInfo = new MediaCodec.BufferInfo();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected int doPrepare() throws ExoPlaybackException {
        try {
            if (!this.source.prepare()) {
                return 0;
            }
            for (int i = 0; i < this.source.getTrackCount(); i++) {
                if (handlesMimeType(this.source.getTrackInfo(i).mimeType)) {
                    this.trackIndex = i;
                    return 1;
                }
            }
            return -1;
        } catch (IOException e2) {
            throw new ExoPlaybackException(e2);
        }
    }

    protected boolean handlesMimeType(String str) {
        return true;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long j, boolean z) {
        this.source.enable(this.trackIndex, j);
        this.sourceState = 0;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.waitingForKeys = false;
        this.currentPositionUs = j;
    }

    protected void configureCodec(MediaCodec mediaCodec, android.media.MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        mediaCodec.configure(mediaFormat, (Surface) null, mediaCrypto, 0);
    }

    protected final void maybeInitCodec() throws ExoPlaybackException {
        MediaCrypto mediaCrypto;
        DecoderInfo decoderInfo;
        if (shouldInitCodec()) {
            Log.i("Codec", "Init");
            String str = this.format.mimeType;
            boolean zRequiresSecureDecoderComponent = false;
            if (this.drmInitData == null) {
                mediaCrypto = null;
            } else {
                if (this.drmSessionManager == null) {
                    throw new ExoPlaybackException("Media requires a DrmSessionManager");
                }
                if (!this.openedDrmSession) {
                    this.drmSessionManager.open(this.drmInitData, str);
                    this.openedDrmSession = true;
                }
                int state = this.drmSessionManager.getState();
                if (state == 0) {
                    throw new ExoPlaybackException(this.drmSessionManager.getError());
                }
                if (state == 3 || state == 4) {
                    mediaCrypto = this.drmSessionManager.getMediaCrypto();
                    zRequiresSecureDecoderComponent = this.drmSessionManager.requiresSecureDecoderComponent(str);
                } else {
                    return;
                }
            }
            try {
                decoderInfo = MediaCodecUtil.getDecoderInfo(str, zRequiresSecureDecoderComponent);
            } catch (MediaCodecUtil.DecoderQueryException e2) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e2, -49998));
                decoderInfo = null;
            }
            if (decoderInfo == null) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, (Throwable) null, -49999));
            }
            String str2 = decoderInfo.name;
            this.codecIsAdaptive = decoderInfo.adaptive;
            try {
                this.codec = MediaCodec.createByCodecName(str2);
                configureCodec(this.codec, this.format.getFrameworkMediaFormatV16(), mediaCrypto);
                this.codec.start();
                this.inputBuffers = this.codec.getInputBuffers();
                this.outputBuffers = this.codec.getOutputBuffers();
            } catch (Exception e3) {
                notifyAndThrowDecoderInitError(new DecoderInitializationException(this.format, e3, str2));
            }
            this.codecHotswapTimeMs = getState() == 3 ? SystemClock.elapsedRealtime() : -1L;
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.waitingForFirstSyncFrame = true;
            this.codecCounters.codecInitCount++;
        }
    }

    private void notifyAndThrowDecoderInitError(DecoderInitializationException decoderInitializationException) throws ExoPlaybackException {
        notifyDecoderInitializationError(decoderInitializationException);
        throw new ExoPlaybackException(decoderInitializationException);
    }

    protected boolean shouldInitCodec() {
        return this.codec == null && this.format != null;
    }

    protected final boolean codecInitialized() {
        return this.codec != null;
    }

    protected final boolean haveFormat() {
        return this.format != null;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.format = null;
        this.drmInitData = null;
        try {
            releaseCodec();
            try {
                if (this.openedDrmSession) {
                    this.drmSessionManager.close();
                    this.openedDrmSession = false;
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                if (this.openedDrmSession) {
                    this.drmSessionManager.close();
                    this.openedDrmSession = false;
                }
                throw th;
            } finally {
            }
        }
    }

    protected void releaseCodec() {
        if (this.codec != null) {
            this.codecHotswapTimeMs = -1L;
            this.inputIndex = -1;
            this.outputIndex = -1;
            this.decodeOnlyPresentationTimestamps.clear();
            this.inputBuffers = null;
            this.outputBuffers = null;
            this.codecReconfigured = false;
            this.codecIsAdaptive = false;
            this.codecReconfigurationState = 0;
            this.codecCounters.codecReleaseCount++;
            try {
                this.codec.stop();
                try {
                    this.codec.release();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    this.codec.release();
                    throw th;
                } finally {
                }
            }
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onReleased() {
        this.source.release();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getCurrentPositionUs() {
        return this.currentPositionUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getDurationUs() {
        return this.source.getTrackInfo(this.trackIndex).durationUs;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected long getBufferedPositionUs() {
        long bufferedPositionUs = this.source.getBufferedPositionUs();
        return (bufferedPositionUs == -1 || bufferedPositionUs == -3) ? bufferedPositionUs : Math.max(bufferedPositionUs, getCurrentPositionUs());
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long j) throws ExoPlaybackException {
        this.currentPositionUs = j;
        this.source.seekToUs(j);
        this.sourceState = 0;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.waitingForKeys = false;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onStarted() {
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void onStopped() {
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected void doSomeWork(long j, long j2) throws ExoPlaybackException {
        int i = 1;
        try {
            if (!this.source.continueBuffering(j)) {
                i = 0;
            } else if (this.sourceState != 0) {
                i = this.sourceState;
            }
            this.sourceState = i;
            checkForDiscontinuity();
            if (this.format == null) {
                readFormat();
            }
            if (this.codec == null && shouldInitCodec()) {
                maybeInitCodec();
            }
            if (this.codec != null) {
                while (drainOutputBuffer(j, j2)) {
                }
                if (feedInputBuffer(true)) {
                    while (feedInputBuffer(false)) {
                    }
                }
            }
            this.codecCounters.ensureUpdated();
        } catch (IOException e2) {
            throw new ExoPlaybackException(e2);
        }
    }

    private void readFormat() throws ExoPlaybackException, IOException {
        if (this.source.readData(this.trackIndex, this.currentPositionUs, this.formatHolder, this.sampleHolder, false) == -4) {
            onInputFormatChanged(this.formatHolder);
        }
    }

    private void checkForDiscontinuity() throws ExoPlaybackException, IOException {
        if (this.codec != null && this.source.readData(this.trackIndex, this.currentPositionUs, this.formatHolder, this.sampleHolder, true) == -5) {
            flushCodec();
        }
    }

    private void flushCodec() throws ExoPlaybackException {
        this.codecHotswapTimeMs = -1L;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.waitingForFirstSyncFrame = true;
        this.decodeOnlyPresentationTimestamps.clear();
        if (Util.SDK_INT >= 18) {
            this.codec.flush();
        } else {
            releaseCodec();
            maybeInitCodec();
        }
        if (this.codecReconfigured && this.format != null) {
            this.codecReconfigurationState = 1;
        }
    }

    private boolean feedInputBuffer(boolean z) throws ExoPlaybackException, IOException {
        int data;
        if (this.inputStreamEnded) {
            return false;
        }
        if (this.inputIndex < 0) {
            this.inputIndex = this.codec.dequeueInputBuffer(0L);
            if (this.inputIndex < 0) {
                return false;
            }
            this.sampleHolder.data = this.inputBuffers[this.inputIndex];
            this.sampleHolder.data.clear();
        }
        if (this.waitingForKeys) {
            data = -3;
        } else {
            if (this.codecReconfigurationState == 1) {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= this.format.initializationData.size()) {
                        break;
                    }
                    this.sampleHolder.data.put(this.format.initializationData.get(i2));
                    i = i2 + 1;
                }
                this.codecReconfigurationState = 2;
            }
            data = this.source.readData(this.trackIndex, this.currentPositionUs, this.formatHolder, this.sampleHolder, false);
            if (z && this.sourceState == 1 && data == -2) {
                this.sourceState = 2;
            }
        }
        if (data == -2) {
            return false;
        }
        if (data == -5) {
            flushCodec();
            return true;
        }
        if (data == -4) {
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.data.clear();
                this.codecReconfigurationState = 1;
            }
            onInputFormatChanged(this.formatHolder);
            return true;
        }
        if (data == -1) {
            if (this.codecReconfigurationState == 2) {
                this.sampleHolder.data.clear();
                this.codecReconfigurationState = 1;
            }
            this.inputStreamEnded = true;
            try {
                this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                this.inputIndex = -1;
                return false;
            } catch (MediaCodec.CryptoException e2) {
                notifyCryptoError(e2);
                throw new ExoPlaybackException(e2);
            }
        }
        if (this.waitingForFirstSyncFrame) {
            if ((this.sampleHolder.flags & 1) == 0) {
                this.sampleHolder.data.clear();
                if (this.codecReconfigurationState == 2) {
                    this.codecReconfigurationState = 1;
                }
                return true;
            }
            this.waitingForFirstSyncFrame = false;
        }
        boolean z2 = (this.sampleHolder.flags & 2) != 0;
        this.waitingForKeys = shouldWaitForKeys(z2);
        if (this.waitingForKeys) {
            return false;
        }
        try {
            int iPosition = this.sampleHolder.data.position();
            int i3 = iPosition - this.sampleHolder.size;
            long j = this.sampleHolder.timeUs;
            if (this.sampleHolder.decodeOnly) {
                this.decodeOnlyPresentationTimestamps.add(Long.valueOf(j));
            }
            if (z2) {
                this.codec.queueSecureInputBuffer(this.inputIndex, 0, getFrameworkCryptoInfo(this.sampleHolder, i3), j, 0);
            } else {
                this.codec.queueInputBuffer(this.inputIndex, 0, iPosition, j, 0);
            }
            this.inputIndex = -1;
            this.codecReconfigurationState = 0;
            return true;
        } catch (MediaCodec.CryptoException e3) {
            notifyCryptoError(e3);
            throw new ExoPlaybackException(e3);
        }
    }

    private static MediaCodec.CryptoInfo getFrameworkCryptoInfo(SampleHolder sampleHolder, int i) {
        MediaCodec.CryptoInfo frameworkCryptoInfoV16 = sampleHolder.cryptoInfo.getFrameworkCryptoInfoV16();
        if (i != 0) {
            if (frameworkCryptoInfoV16.numBytesOfClearData == null) {
                frameworkCryptoInfoV16.numBytesOfClearData = new int[1];
            }
            int[] iArr = frameworkCryptoInfoV16.numBytesOfClearData;
            iArr[0] = iArr[0] + i;
        }
        return frameworkCryptoInfoV16;
    }

    private boolean shouldWaitForKeys(boolean z) throws ExoPlaybackException {
        if (!this.openedDrmSession) {
            return false;
        }
        int state = this.drmSessionManager.getState();
        if (state == 0) {
            throw new ExoPlaybackException(this.drmSessionManager.getError());
        }
        if (state != 4) {
            return z || !this.playClearSamplesWithoutKeys;
        }
        return false;
    }

    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws ExoPlaybackException {
        MediaFormat mediaFormat = this.format;
        this.format = mediaFormatHolder.format;
        this.drmInitData = mediaFormatHolder.drmInitData;
        if (this.codec != null && canReconfigureCodec(this.codec, this.codecIsAdaptive, mediaFormat, this.format)) {
            this.codecReconfigured = true;
            this.codecReconfigurationState = 1;
        } else {
            releaseCodec();
            maybeInitCodec();
        }
    }

    protected void onOutputFormatChanged(android.media.MediaFormat mediaFormat) {
    }

    protected boolean canReconfigureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        return false;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return (this.format == null || this.waitingForKeys || (this.sourceState == 0 && this.outputIndex < 0 && !isWithinHotswapPeriod())) ? false : true;
    }

    protected final int getSourceState() {
        return this.sourceState;
    }

    private boolean isWithinHotswapPeriod() {
        return SystemClock.elapsedRealtime() < this.codecHotswapTimeMs + 1000;
    }

    private boolean drainOutputBuffer(long j, long j2) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return false;
        }
        if (this.outputIndex < 0) {
            this.outputIndex = this.codec.dequeueOutputBuffer(this.outputBufferInfo, 0L);
        }
        if (this.outputIndex == -2) {
            onOutputFormatChanged(this.codec.getOutputFormat());
            this.codecCounters.outputFormatChangedCount++;
            return true;
        }
        if (this.outputIndex == -3) {
            this.outputBuffers = this.codec.getOutputBuffers();
            this.codecCounters.outputBuffersChangedCount++;
            return true;
        }
        if (this.outputIndex < 0) {
            return false;
        }
        if ((this.outputBufferInfo.flags & 4) != 0) {
            this.outputStreamEnded = true;
            return false;
        }
        int decodeOnlyIndex = getDecodeOnlyIndex(this.outputBufferInfo.presentationTimeUs);
        if (processOutputBuffer(j, j2, this.codec, this.outputBuffers[this.outputIndex], this.outputBufferInfo, this.outputIndex, decodeOnlyIndex != -1)) {
            if (decodeOnlyIndex != -1) {
                this.decodeOnlyPresentationTimestamps.remove(decodeOnlyIndex);
            } else {
                this.currentPositionUs = this.outputBufferInfo.presentationTimeUs;
            }
            this.outputIndex = -1;
            return true;
        }
        return false;
    }

    private void notifyDecoderInitializationError(final DecoderInitializationException decoderInitializationException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecTrackRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onDecoderInitializationError(decoderInitializationException);
                }
            });
        }
    }

    private void notifyCryptoError(final MediaCodec.CryptoException cryptoException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecTrackRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecTrackRenderer.this.eventListener.onCryptoError(cryptoException);
                }
            });
        }
    }

    private int getDecodeOnlyIndex(long j) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i = 0; i < size; i++) {
            if (this.decodeOnlyPresentationTimestamps.get(i).longValue() == j) {
                return i;
            }
        }
        return -1;
    }
}

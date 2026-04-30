package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.exoplayer.MediaCodecTrackRenderer;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class MediaCodecVideoTrackRenderer extends MediaCodecTrackRenderer {
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    public static final int MSG_SET_SURFACE = 1;
    private final long allowedJoiningTimeUs;
    private int currentHeight;
    private float currentPixelWidthHeightRatio;
    private int currentWidth;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrameCount;
    private final EventListener eventListener;
    private final FrameReleaseTimeHelper frameReleaseTimeHelper;
    private long joiningDeadlineUs;
    private int lastReportedHeight;
    private float lastReportedPixelWidthHeightRatio;
    private int lastReportedWidth;
    private final int maxDroppedFrameCountToNotify;
    private boolean renderedFirstFrame;
    private boolean reportedDrawnToSurface;
    private Surface surface;
    private final int videoScalingMode;

    public interface EventListener extends MediaCodecTrackRenderer.EventListener {
        void onDrawnToSurface(Surface surface);

        void onDroppedFrames(int i, long j);

        void onVideoSizeChanged(int i, int i2, float f2);
    }

    public interface FrameReleaseTimeHelper {
        long adjustReleaseTime(long j, long j2);

        void disable();

        void enable();
    }

    public MediaCodecVideoTrackRenderer(SampleSource sampleSource, int i) {
        this(sampleSource, null, true, i);
    }

    public MediaCodecVideoTrackRenderer(SampleSource sampleSource, DrmSessionManager drmSessionManager, boolean z, int i) {
        this(sampleSource, drmSessionManager, z, i, 0L);
    }

    public MediaCodecVideoTrackRenderer(SampleSource sampleSource, int i, long j) {
        this(sampleSource, null, true, i, j);
    }

    public MediaCodecVideoTrackRenderer(SampleSource sampleSource, DrmSessionManager drmSessionManager, boolean z, int i, long j) {
        this(sampleSource, drmSessionManager, z, i, j, null, null, null, -1);
    }

    public MediaCodecVideoTrackRenderer(SampleSource sampleSource, int i, long j, Handler handler, EventListener eventListener, int i2) {
        this(sampleSource, null, true, i, j, null, handler, eventListener, i2);
    }

    public MediaCodecVideoTrackRenderer(SampleSource sampleSource, DrmSessionManager drmSessionManager, boolean z, int i, long j, FrameReleaseTimeHelper frameReleaseTimeHelper, Handler handler, EventListener eventListener, int i2) {
        super(sampleSource, drmSessionManager, z, handler, eventListener);
        this.videoScalingMode = i;
        this.allowedJoiningTimeUs = 1000 * j;
        this.frameReleaseTimeHelper = frameReleaseTimeHelper;
        this.eventListener = eventListener;
        this.maxDroppedFrameCountToNotify = i2;
        this.joiningDeadlineUs = -1L;
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.lastReportedWidth = -1;
        this.lastReportedHeight = -1;
        this.lastReportedPixelWidthHeightRatio = -1.0f;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean handlesMimeType(String str) {
        return MimeTypes.isVideo(str) && super.handlesMimeType(str);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long j, boolean z) {
        super.onEnabled(j, z);
        this.renderedFirstFrame = false;
        if (z && this.allowedJoiningTimeUs > 0) {
            this.joiningDeadlineUs = (SystemClock.elapsedRealtime() * 1000) + this.allowedJoiningTimeUs;
        }
        if (this.frameReleaseTimeHelper != null) {
            this.frameReleaseTimeHelper.enable();
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long j) throws ExoPlaybackException {
        super.seekTo(j);
        this.renderedFirstFrame = false;
        this.joiningDeadlineUs = -1L;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        if (super.isReady() && (this.renderedFirstFrame || !codecInitialized() || getSourceState() == 2)) {
            this.joiningDeadlineUs = -1L;
            return true;
        }
        if (this.joiningDeadlineUs == -1) {
            return false;
        }
        if (SystemClock.elapsedRealtime() * 1000 < this.joiningDeadlineUs) {
            return true;
        }
        this.joiningDeadlineUs = -1L;
        return false;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStarted() {
        super.onStarted();
        this.droppedFrameCount = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStopped() {
        this.joiningDeadlineUs = -1L;
        maybeNotifyDroppedFrameCount();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    public void onDisabled() {
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.lastReportedWidth = -1;
        this.lastReportedHeight = -1;
        this.lastReportedPixelWidthHeightRatio = -1.0f;
        if (this.frameReleaseTimeHelper != null) {
            this.frameReleaseTimeHelper.disable();
        }
        super.onDisabled();
    }

    @Override // com.google.android.exoplayer.TrackRenderer, com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            setSurface((Surface) obj);
        } else {
            super.handleMessage(i, obj);
        }
    }

    private void setSurface(Surface surface) throws ExoPlaybackException {
        if (this.surface != surface) {
            this.surface = surface;
            this.reportedDrawnToSurface = false;
            int state = getState();
            if (state == 2 || state == 3) {
                releaseCodec();
                maybeInitCodec();
            }
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean shouldInitCodec() {
        return super.shouldInitCodec() && this.surface != null && this.surface.isValid();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void configureCodec(MediaCodec mediaCodec, android.media.MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        mediaCodec.configure(mediaFormat, this.surface, mediaCrypto, 0);
        mediaCodec.setVideoScalingMode(this.videoScalingMode);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws ExoPlaybackException {
        super.onInputFormatChanged(mediaFormatHolder);
        this.currentPixelWidthHeightRatio = mediaFormatHolder.format.pixelWidthHeightRatio == -1.0f ? 1.0f : mediaFormatHolder.format.pixelWidthHeightRatio;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onOutputFormatChanged(android.media.MediaFormat mediaFormat) {
        int integer;
        int integer2;
        boolean z = mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP);
        if (z) {
            integer = (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + 1;
        } else {
            integer = mediaFormat.getInteger("width");
        }
        this.currentWidth = integer;
        if (z) {
            integer2 = (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + 1;
        } else {
            integer2 = mediaFormat.getInteger("height");
        }
        this.currentHeight = integer2;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean canReconfigureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        return mediaFormat2.mimeType.equals(mediaFormat.mimeType) && (z || (mediaFormat.width == mediaFormat2.width && mediaFormat.height == mediaFormat2.height));
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z) {
        if (z) {
            skipOutputBuffer(mediaCodec, i);
            return true;
        }
        long jElapsedRealtime = (bufferInfo.presentationTimeUs - j) - ((SystemClock.elapsedRealtime() * 1000) - j2);
        long jNanoTime = System.nanoTime();
        long jAdjustReleaseTime = (1000 * jElapsedRealtime) + jNanoTime;
        if (this.frameReleaseTimeHelper != null) {
            jAdjustReleaseTime = this.frameReleaseTimeHelper.adjustReleaseTime(bufferInfo.presentationTimeUs, jAdjustReleaseTime);
            jElapsedRealtime = (jAdjustReleaseTime - jNanoTime) / 1000;
        }
        if (jElapsedRealtime < -30000) {
            dropOutputBuffer(mediaCodec, i);
            return true;
        }
        if (!this.renderedFirstFrame) {
            renderOutputBufferImmediate(mediaCodec, i);
            this.renderedFirstFrame = true;
            return true;
        }
        if (getState() != 3) {
            return false;
        }
        if (Util.SDK_INT >= 21) {
            if (jElapsedRealtime < 50000) {
                renderOutputBufferTimedV21(mediaCodec, i, jAdjustReleaseTime);
                return true;
            }
        } else if (jElapsedRealtime < 30000) {
            if (jElapsedRealtime > 11000) {
                try {
                    Thread.sleep((jElapsedRealtime - 10000) / 1000);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                }
            }
            renderOutputBufferImmediate(mediaCodec, i);
            return true;
        }
        return false;
    }

    private void skipOutputBuffer(MediaCodec mediaCodec, int i) {
        TraceUtil.beginSection("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        this.codecCounters.skippedOutputBufferCount++;
    }

    private void dropOutputBuffer(MediaCodec mediaCodec, int i) {
        TraceUtil.beginSection("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        this.codecCounters.droppedOutputBufferCount++;
        this.droppedFrameCount++;
        if (this.droppedFrameCount == this.maxDroppedFrameCountToNotify) {
            maybeNotifyDroppedFrameCount();
        }
    }

    private void renderOutputBufferImmediate(MediaCodec mediaCodec, int i) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("renderVideoBufferImmediate");
        mediaCodec.releaseOutputBuffer(i, true);
        TraceUtil.endSection();
        this.codecCounters.renderedOutputBufferCount++;
        maybeNotifyDrawnToSurface();
    }

    @TargetApi(21)
    private void renderOutputBufferTimedV21(MediaCodec mediaCodec, int i, long j) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBufferTimed");
        mediaCodec.releaseOutputBuffer(i, j);
        TraceUtil.endSection();
        this.codecCounters.renderedOutputBufferCount++;
        maybeNotifyDrawnToSurface();
    }

    private void maybeNotifyVideoSizeChanged() {
        if (this.eventHandler == null || this.eventListener == null) {
            return;
        }
        if (this.lastReportedWidth != this.currentWidth || this.lastReportedHeight != this.currentHeight || this.lastReportedPixelWidthHeightRatio != this.currentPixelWidthHeightRatio) {
            final int i = this.currentWidth;
            final int i2 = this.currentHeight;
            final float f2 = this.currentPixelWidthHeightRatio;
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecVideoTrackRenderer.this.eventListener.onVideoSizeChanged(i, i2, f2);
                }
            });
            this.lastReportedWidth = i;
            this.lastReportedHeight = i2;
            this.lastReportedPixelWidthHeightRatio = f2;
        }
    }

    private void maybeNotifyDrawnToSurface() {
        if (this.eventHandler != null && this.eventListener != null && !this.reportedDrawnToSurface) {
            final Surface surface = this.surface;
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecVideoTrackRenderer.this.eventListener.onDrawnToSurface(surface);
                }
            });
            this.reportedDrawnToSurface = true;
        }
    }

    private void maybeNotifyDroppedFrameCount() {
        if (this.eventHandler != null && this.eventListener != null && this.droppedFrameCount != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            final int i = this.droppedFrameCount;
            final long j = jElapsedRealtime - this.droppedFrameAccumulationStartTimeMs;
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.3
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecVideoTrackRenderer.this.eventListener.onDroppedFrames(i, j);
                }
            });
            this.droppedFrameCount = 0;
            this.droppedFrameAccumulationStartTimeMs = jElapsedRealtime;
        }
    }
}

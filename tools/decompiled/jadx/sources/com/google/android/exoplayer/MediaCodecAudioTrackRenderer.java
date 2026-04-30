package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.os.Handler;
import com.google.android.exoplayer.MediaCodecTrackRenderer;
import com.google.android.exoplayer.audio.AudioTrack;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.util.MimeTypes;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(16)
public class MediaCodecAudioTrackRenderer extends MediaCodecTrackRenderer {
    public static final int MSG_SET_VOLUME = 1;
    private int audioSessionId;
    private final AudioTrack audioTrack;
    private long currentPositionUs;
    private final EventListener eventListener;

    public interface EventListener extends MediaCodecTrackRenderer.EventListener {
        void onAudioTrackInitializationError(AudioTrack.InitializationException initializationException);

        void onAudioTrackWriteError(AudioTrack.WriteException writeException);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource) {
        this(sampleSource, (DrmSessionManager) null, true);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, DrmSessionManager drmSessionManager, boolean z) {
        this(sampleSource, drmSessionManager, z, null, null);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, Handler handler, EventListener eventListener) {
        this(sampleSource, null, true, handler, eventListener);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener) {
        super(sampleSource, drmSessionManager, z, handler, eventListener);
        this.eventListener = eventListener;
        this.audioSessionId = 0;
        this.audioTrack = new AudioTrack();
    }

    @Override // com.google.android.exoplayer.TrackRenderer
    protected boolean isTimeSource() {
        return false;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean handlesMimeType(String str) {
        return MimeTypes.isAudio(str) && super.handlesMimeType(str);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onEnabled(long j, boolean z) {
        super.onEnabled(j, z);
        this.currentPositionUs = Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected void onOutputFormatChanged(android.media.MediaFormat mediaFormat) {
        this.audioTrack.reconfigure(mediaFormat);
    }

    protected void onAudioSessionId(int i) {
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStarted() {
        super.onStarted();
        this.audioTrack.play();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onStopped() {
        this.audioTrack.pause();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected boolean isEnded() {
        return super.isEnded() && !(this.audioTrack.hasPendingData() && this.audioTrack.hasEnoughDataToBeginPlayback());
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected boolean isReady() {
        return this.audioTrack.hasPendingData() || (super.isReady() && getSourceState() == 2);
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected long getCurrentPositionUs() {
        long currentPositionUs = this.audioTrack.getCurrentPositionUs(isEnded());
        if (currentPositionUs == Long.MIN_VALUE) {
            this.currentPositionUs = Math.max(this.currentPositionUs, super.getCurrentPositionUs());
        } else {
            this.currentPositionUs = Math.max(this.currentPositionUs, currentPositionUs);
        }
        return this.currentPositionUs;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void onDisabled() {
        this.audioSessionId = 0;
        try {
            this.audioTrack.reset();
        } finally {
            super.onDisabled();
        }
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer, com.google.android.exoplayer.TrackRenderer
    protected void seekTo(long j) throws ExoPlaybackException {
        super.seekTo(j);
        this.audioTrack.reset();
        this.currentPositionUs = Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer.MediaCodecTrackRenderer
    protected boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, int i, boolean z) throws ExoPlaybackException {
        if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            this.codecCounters.skippedOutputBufferCount++;
            this.audioTrack.handleDiscontinuity();
            return true;
        }
        if (!this.audioTrack.isInitialized()) {
            try {
                if (this.audioSessionId != 0) {
                    this.audioTrack.initialize(this.audioSessionId);
                } else {
                    this.audioSessionId = this.audioTrack.initialize();
                    onAudioSessionId(this.audioSessionId);
                }
                if (getState() == 3) {
                    this.audioTrack.play();
                }
            } catch (AudioTrack.InitializationException e2) {
                notifyAudioTrackInitializationError(e2);
                throw new ExoPlaybackException(e2);
            }
        }
        try {
            int iHandleBuffer = this.audioTrack.handleBuffer(byteBuffer, bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs);
            if ((iHandleBuffer & 1) != 0) {
                this.currentPositionUs = Long.MIN_VALUE;
            }
            if ((iHandleBuffer & 2) != 0) {
                mediaCodec.releaseOutputBuffer(i, false);
                this.codecCounters.renderedOutputBufferCount++;
                return true;
            }
            return false;
        } catch (AudioTrack.WriteException e3) {
            notifyAudioTrackWriteError(e3);
            throw new ExoPlaybackException(e3);
        }
    }

    @Override // com.google.android.exoplayer.TrackRenderer, com.google.android.exoplayer.ExoPlayer.ExoPlayerComponent
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            this.audioTrack.setVolume(((Float) obj).floatValue());
        } else {
            super.handleMessage(i, obj);
        }
    }

    private void notifyAudioTrackInitializationError(final AudioTrack.InitializationException initializationException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackInitializationError(initializationException);
                }
            });
        }
    }

    private void notifyAudioTrackWriteError(final AudioTrack.WriteException writeException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.2
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackWriteError(writeException);
                }
            });
        }
    }
}

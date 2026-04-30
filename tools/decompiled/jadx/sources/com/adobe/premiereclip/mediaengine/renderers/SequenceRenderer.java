package com.adobe.premiereclip.mediaengine.renderers;

import android.content.Context;
import com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoderCache;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.google.android.exoplayer.ExoPlaybackException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SequenceRenderer extends ComponentRenderer {
    private boolean initialized;
    private boolean isReady;
    private final Sequence sequence;
    private VideoTrackGroupRenderer videoTrackGroupRenderer;

    public SequenceRenderer(Context context, GPUMediaSurfaceView gPUMediaSurfaceView, Sequence sequence) throws ExoPlaybackException {
        super(gPUMediaSurfaceView);
        this.sequence = sequence;
        int[] size = sequence.getSize();
        this.width = size[0];
        this.height = size[1];
        MediaDecoderCache.getInstance().setSequence(sequence);
        MediaDecoderCache.getInstance().releaseAllDecoders();
        this.videoTrackGroupRenderer = new VideoTrackGroupRenderer(context, gPUMediaSurfaceView, sequence.getVideoTrackGroup());
        this.isReady = true;
        this.initialized = false;
    }

    public long getDurationUs() {
        return this.sequence.getSequenceDurationUs();
    }

    public boolean isReady() {
        return this.isReady;
    }

    public Sequence getSequence() {
        return this.sequence;
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void onDisplaySizeChanged() {
        int[] size = this.sequence.getSize();
        if (size[0] != this.width || size[1] != this.height) {
            this.videoTrackGroupRenderer.onDisplaySizeChanged();
            this.outputFrameBuffer = this.videoTrackGroupRenderer.getOutputTexture();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void init() throws ExoPlaybackException {
        synchronized (this) {
            if (!this.initialized) {
                this.videoTrackGroupRenderer.init();
                this.outputFrameBuffer = this.videoTrackGroupRenderer.getOutputTexture();
                synchronized (this) {
                    this.initialized = true;
                }
            }
        }
    }

    public boolean isInitialized() {
        boolean z;
        synchronized (this) {
            z = this.initialized;
        }
        return z;
    }

    public void setClipRendering(int i) {
        this.videoTrackGroupRenderer.setClipRendering(i);
    }

    public void resetClips() throws ExoPlaybackException {
        synchronized (this.sequence) {
            this.videoTrackGroupRenderer.resetClips();
        }
    }

    public void resetPosition() {
        MediaDecoderCache.getInstance().resetAllDecoderPositions();
        this.videoTrackGroupRenderer.resetPosition();
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void getFrameAtTime(long j, long j2, List<Runnable> list) throws ExoPlaybackException {
        synchronized (this.sequence) {
            this.isReady = false;
            this.videoTrackGroupRenderer.getFrameAtTime(j, j2, list);
            this.isReady = true;
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public boolean isEnded() {
        return this.videoTrackGroupRenderer.isEnded();
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    protected void onReleased() throws ExoPlaybackException {
        synchronized (this.sequence) {
            this.videoTrackGroupRenderer.onReleased();
            this.initialized = false;
        }
    }
}

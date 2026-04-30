package com.adobe.premiereclip.mediaengine.renderers;

import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.google.android.exoplayer.ExoPlaybackException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ComponentRenderer {
    protected static final int STATE_RELEASED = -2;
    protected static final int STATE_UNPREPARED = 0;
    protected long currentTimeStampUs;
    protected long duration;
    protected float frameRate;
    protected GPUMediaSurfaceView glView;
    protected int height;
    protected boolean isEnded;
    protected GPUMediaTexture outputFrameBuffer;
    protected long renderedTimeStampUs;
    private int state = 0;
    protected int width;

    public abstract void getFrameAtTime(long j, long j2, List<Runnable> list) throws ExoPlaybackException;

    public abstract boolean isEnded();

    protected abstract void onReleased() throws ExoPlaybackException;

    public ComponentRenderer(GPUMediaSurfaceView gPUMediaSurfaceView) throws ExoPlaybackException {
        if (gPUMediaSurfaceView == null) {
            throw new ExoPlaybackException("glView not assigned!!");
        }
        this.glView = gPUMediaSurfaceView;
    }

    public GPUMediaSurfaceView getGlView() {
        return this.glView;
    }

    public void init() throws ExoPlaybackException {
        createOutputFrameBuffer();
    }

    protected void createOutputFrameBuffer() {
        if (this.outputFrameBuffer != null) {
            this.outputFrameBuffer.onDestroy();
        }
        this.outputFrameBuffer = new GPUMediaTexture(this.width, this.height, null, true);
    }

    public void onDisplaySizeChanged() {
        createOutputFrameBuffer();
    }

    public GPUMediaTexture getOutputTexture() {
        return this.outputFrameBuffer;
    }

    public final void release() throws ExoPlaybackException {
        if (this.state != -2) {
            this.state = -2;
            onReleased();
        }
    }
}

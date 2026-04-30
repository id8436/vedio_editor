package com.adobe.premiereclip.mediaengine.renderers;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoderCache;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaSurface;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.adobe.premiereclip.mediaengine.resources.ClipRendererResources;
import com.adobe.premiereclip.project.sequence.Clip;
import com.google.android.exoplayer.ExoPlaybackException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ClipRenderer extends ComponentRenderer {
    private static final float motionSpeed = 0.03f;
    private boolean asyncDone;
    private Clip clip;
    private int clipIndex;
    private ClipRendererResources clipRendererResources;
    private Context mContext;
    private final float startScale;
    private int trackIndex;

    protected ClipRenderer(Context context, GPUMediaSurfaceView gPUMediaSurfaceView, Clip clip, int i, int i2) throws ExoPlaybackException {
        super(gPUMediaSurfaceView);
        this.clip = clip;
        this.startScale = clip.getScale();
        this.trackIndex = i;
        this.clipIndex = i2;
        this.mContext = context;
        this.asyncDone = false;
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public GPUMediaTexture getOutputTexture() {
        if (this.clipRendererResources == null) {
            return null;
        }
        return this.clipRendererResources.getClipFrameBuffer();
    }

    public void resetAsync() {
        this.asyncDone = false;
    }

    public void setClipRendererResources(ClipRendererResources clipRendererResources) throws ExoPlaybackException {
        if (this.clipRendererResources != clipRendererResources) {
            this.clipRendererResources = clipRendererResources;
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void onDisplaySizeChanged() {
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void init() {
    }

    public void getFrameAtTimeAsync(long j) throws ExoPlaybackException {
        if (!this.asyncDone && this.clipRendererResources != null) {
            this.asyncDone = true;
            Log.i("VideoDecoder", "clip: " + this.clipIndex);
            MediaDecoderCache.getInstance().getFrameAtTime(this.mContext, this.trackIndex, this.clipIndex, this.clipRendererResources.getMediaSurface(), j, -1L, true);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void getFrameAtTime(long j, long j2, List<Runnable> list) throws ExoPlaybackException {
        if (this.clipRendererResources != null) {
            GPUMediaSurface mediaSurface = this.clipRendererResources.getMediaSurface();
            boolean z = MediaDecoderCache.getInstance().getFrameAtTime(this.mContext, this.trackIndex, this.clipIndex, mediaSurface, (long) (((float) j) * this.clip.getSpeed()), j2, false) != -1;
            this.clipRendererResources.setLook(this.clip.getLook(), !z);
            if (z) {
                this.clipRendererResources.setClipEffects(this.clip.getClipOptionEffects());
            }
            if (this.clip.getScalingOn()) {
                this.clipRendererResources.setScale((((j - this.clip.getStartTimeUsWithSpeed()) / 1000000.0f) * motionSpeed) + this.startScale);
            } else {
                this.clipRendererResources.setScale(this.startScale);
            }
            if (mediaSurface.getCropParamsChanged()) {
                this.clipRendererResources.onClipCropChanged();
            }
            if (mediaSurface.getWidth() != this.clipRendererResources.getWidth() || mediaSurface.getHeight() != this.clipRendererResources.getHeight()) {
                list.add(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.renderers.ClipRenderer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ClipRenderer.this.clipRendererResources.onClipSizeChanged(true);
                    }
                });
            }
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public boolean isEnded() {
        return false;
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    protected void onReleased() throws ExoPlaybackException {
    }
}

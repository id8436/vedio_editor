package com.adobe.premiereclip.mediaengine.renderers;

import android.content.Context;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaOverlayFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaTwoInputFilter;
import com.adobe.premiereclip.project.sequence.VideoTrackGroup;
import com.google.android.exoplayer.ExoPlaybackException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VideoTrackGroupRenderer extends ComponentRenderer {
    private GPUMediaTwoInputFilter trackGroupFilter;
    private VideoTrackGroup videoTrackGroup;
    private List<VideoTrackRenderer> videoTrackRenderers;

    protected VideoTrackGroupRenderer(Context context, GPUMediaSurfaceView gPUMediaSurfaceView, VideoTrackGroup videoTrackGroup) throws ExoPlaybackException {
        super(gPUMediaSurfaceView);
        this.videoTrackGroup = videoTrackGroup;
        this.width = videoTrackGroup.getWidth();
        this.height = videoTrackGroup.getHeight();
        this.videoTrackRenderers = new ArrayList();
        this.videoTrackRenderers.add(new VideoTrackRenderer(context, gPUMediaSurfaceView, this.videoTrackGroup.getMainVideoTrack()));
        this.videoTrackRenderers.add(new VideoTrackRenderer(context, gPUMediaSurfaceView, this.videoTrackGroup.getOverlayTrack()));
        this.trackGroupFilter = new GPUMediaOverlayFilter();
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void onDisplaySizeChanged() {
        this.width = this.videoTrackGroup.getWidth();
        this.height = this.videoTrackGroup.getHeight();
        super.onDisplaySizeChanged();
        Iterator<VideoTrackRenderer> it = this.videoTrackRenderers.iterator();
        while (it.hasNext()) {
            it.next().onDisplaySizeChanged();
        }
        this.trackGroupFilter.setGPUMediaTexture(this.videoTrackRenderers.get(0).getOutputTexture());
        this.trackGroupFilter.setSecondGPUMediaTexture(this.videoTrackRenderers.get(1).getOutputTexture());
        this.trackGroupFilter.onOutputSizeChanged(this.width, this.height);
        this.glView.changeBuffer(this.trackGroupFilter, this.outputFrameBuffer);
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void init() throws ExoPlaybackException {
        super.init();
        Iterator<VideoTrackRenderer> it = this.videoTrackRenderers.iterator();
        while (it.hasNext()) {
            it.next().init();
        }
        this.trackGroupFilter.setGPUMediaTexture(this.videoTrackRenderers.get(0).getOutputTexture());
        this.trackGroupFilter.setSecondGPUMediaTexture(this.videoTrackRenderers.get(1).getOutputTexture());
        this.trackGroupFilter.onOutputSizeChanged(this.width, this.height);
        this.trackGroupFilter.init();
        this.glView.addFilterToChain(this.trackGroupFilter, this.outputFrameBuffer);
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void getFrameAtTime(long j, long j2, List<Runnable> list) throws ExoPlaybackException {
        Iterator<VideoTrackRenderer> it = this.videoTrackRenderers.iterator();
        while (it.hasNext()) {
            it.next().getFrameAtTime(j, j2, list);
        }
    }

    public void setClipRendering(int i) {
        this.videoTrackRenderers.get(0).setClipRendering(i);
        this.videoTrackRenderers.get(1).setClipRendering(i != -1 ? 0 : -1);
    }

    public void resetClips() throws ExoPlaybackException {
        Iterator<VideoTrackRenderer> it = this.videoTrackRenderers.iterator();
        while (it.hasNext()) {
            it.next().resetClips();
        }
    }

    public void resetPosition() {
        Iterator<VideoTrackRenderer> it = this.videoTrackRenderers.iterator();
        while (it.hasNext()) {
            it.next().resetPosition();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public boolean isEnded() {
        Iterator<VideoTrackRenderer> it = this.videoTrackRenderers.iterator();
        boolean z = true;
        while (it.hasNext()) {
            z = z && it.next().isEnded();
        }
        return z;
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    protected void onReleased() throws ExoPlaybackException {
        Iterator<VideoTrackRenderer> it = this.videoTrackRenderers.iterator();
        while (it.hasNext()) {
            it.next().onReleased();
        }
    }
}

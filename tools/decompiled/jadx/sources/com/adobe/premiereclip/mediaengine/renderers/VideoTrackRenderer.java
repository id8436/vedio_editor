package com.adobe.premiereclip.mediaengine.renderers;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.decoderutils.MediaDecoderCache;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaNonAlphaBlendFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.adobe.premiereclip.mediaengine.resources.ClipRendererResourcePool;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.Playable;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.adobe.premiereclip.project.sequence.Transition;
import com.adobe.premiereclip.project.sequence.VideoTrack;
import com.google.android.exoplayer.ExoPlaybackException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class VideoTrackRenderer extends ComponentRenderer {
    private ClipRendererResourcePool clipRendererResourcePool;
    private List<ClipRenderer> clipRenderers;
    private int clipRenderingIndex;
    private boolean clipRenderingOnly;
    private Context context;
    private GPUMediaTexture emptyTexture;
    private boolean isEnded;
    private TrackFilter trackFilter;
    private VideoTrack videoTrack;

    protected VideoTrackRenderer(Context context, GPUMediaSurfaceView gPUMediaSurfaceView, VideoTrack videoTrack) throws ExoPlaybackException {
        super(gPUMediaSurfaceView);
        this.context = context;
        this.videoTrack = videoTrack;
        this.width = videoTrack.getWidth();
        this.height = videoTrack.getHeight();
        this.clipRenderers = new ArrayList();
        int i = videoTrack.getOverlay() ? 1 : 0;
        for (int i2 = 0; i2 < this.videoTrack.getClips().size(); i2++) {
            this.clipRenderers.add(new ClipRenderer(context, gPUMediaSurfaceView, this.videoTrack.getClips().get(i2), i, i2));
        }
        this.trackFilter = new TrackFilter();
        this.clipRendererResourcePool = new ClipRendererResourcePool(context, this.glView);
        this.isEnded = false;
        this.clipRenderingOnly = false;
        this.clipRenderingIndex = -1;
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void onDisplaySizeChanged() {
        this.width = this.videoTrack.getWidth();
        this.height = this.videoTrack.getHeight();
        super.onDisplaySizeChanged();
        this.trackFilter.onOutputSizeChanged(this.width, this.height);
        this.clipRendererResourcePool.onOutputSizeChanged(this.width, this.height);
        this.glView.changeBuffer(this.trackFilter, this.outputFrameBuffer);
    }

    public void setClipRendering(int i) {
        this.clipRenderingOnly = i != -1;
        this.clipRenderingIndex = i;
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void init() throws ExoPlaybackException {
        super.init();
        this.clipRendererResourcePool.initResources(this.width, this.height);
        assignResourcesForClipIndex(0);
        this.emptyTexture = new GPUMediaTexture(this.width, this.height, Rotation.NORMAL, -1, false);
        this.trackFilter.setGPUMediaTexture(0, this.clipRenderers.get(0).getOutputTexture());
        this.trackFilter.setGPUMediaTexture(1, this.emptyTexture);
        this.trackFilter.onOutputSizeChanged(this.width, this.height);
        this.trackFilter.init();
        this.trackFilter.setTextureXOffset(this.videoTrack.getXOffset());
        this.trackFilter.setTextureYOffset(this.videoTrack.getYOffset());
        this.glView.addFilterToChain(this.trackFilter, this.outputFrameBuffer);
    }

    public void resetClips() throws ExoPlaybackException {
        MediaDecoderCache.getInstance().releaseAllDecoders();
        this.clipRenderers.clear();
        int i = this.videoTrack.getOverlay() ? 1 : 0;
        for (int i2 = 0; i2 < this.videoTrack.getClips().size(); i2++) {
            this.clipRenderers.add(new ClipRenderer(this.context, this.glView, this.videoTrack.getClips().get(i2), i, i2));
        }
    }

    public void resetPosition() {
        Iterator<ClipRenderer> it = this.clipRenderers.iterator();
        while (it.hasNext()) {
            it.next().resetAsync();
        }
        this.isEnded = false;
    }

    private void assignResourcesForClipIndex(int i) throws ExoPlaybackException {
        if (this.videoTrack.getClips().get(i).getClipType() != Clip.CLIP_TYPE.EMPTY_VIDEO && i < this.clipRenderers.size()) {
            this.clipRenderers.get(i).setClipRendererResources(this.clipRendererResourcePool.getResourcesForClipIndex(this.videoTrack.getOverlay() ? 1 : 0, i));
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public void getFrameAtTime(long j, long j2, List<Runnable> list) throws ExoPlaybackException {
        int i;
        Transition transition;
        int i2;
        final float f2;
        if (this.clipRenderingOnly && !this.videoTrack.getClipAtIndex(this.clipRenderingIndex).isAvailable()) {
            list.add(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.renderers.VideoTrackRenderer.1
                @Override // java.lang.Runnable
                public void run() {
                    VideoTrackRenderer.this.trackFilter.setMix(0.0f);
                    VideoTrackRenderer.this.trackFilter.setGPUMediaTexture(0, VideoTrackRenderer.this.emptyTexture);
                }
            });
            return;
        }
        final ArrayList<Playable> clipsAtTrackTimeUs = this.videoTrack.getClipsAtTrackTimeUs(j);
        Transition transition2 = this.videoTrack.getTransition(j);
        if (clipsAtTrackTimeUs.size() == 0) {
            Log.i("VideoDecoder", "ended time: " + j);
            this.isEnded = true;
            if (this.videoTrack.getClips().size() != 0 && this.videoTrack.getLastAvailClipIndex() != -1) {
                Clip clipAtIndex = this.videoTrack.getClipAtIndex(this.videoTrack.getLastAvailClipIndex());
                Transition transition3 = this.videoTrack.getTransition(this.videoTrack.trackTimeFromClipTime(this.videoTrack.getLastAvailClipIndex(), clipAtIndex.getEndTimeUsWithSpeed()) - 1);
                clipsAtTrackTimeUs.add(new Playable(this.videoTrack.getLastAvailClipIndex(), clipAtIndex.getEndTimeUsWithSpeed()));
                i = -1;
                transition = transition3;
            } else {
                return;
            }
        } else if (this.clipRenderingOnly) {
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= clipsAtTrackTimeUs.size()) {
                    i2 = -1;
                    break;
                } else {
                    if (clipsAtTrackTimeUs.get(i4).clipIndex == this.clipRenderingIndex) {
                        i2 = i4;
                        break;
                    }
                    i3 = i4 + 1;
                }
            }
            if (i2 == -1) {
                if (this.videoTrack.getClips().size() != 0) {
                    Clip clipAtIndex2 = this.videoTrack.getClipAtIndex(this.clipRenderingIndex);
                    clipsAtTrackTimeUs.clear();
                    if (j < this.videoTrack.trackStartTimeOfClip(this.clipRenderingIndex)) {
                        clipsAtTrackTimeUs.add(new Playable(this.clipRenderingIndex, clipAtIndex2.getStartTimeUsWithSpeed()));
                    } else {
                        clipsAtTrackTimeUs.add(new Playable(this.clipRenderingIndex, clipAtIndex2.getEndTimeUsWithSpeed()));
                    }
                } else {
                    return;
                }
            }
            this.isEnded = false;
            i = i2;
            transition = transition2;
        } else {
            this.isEnded = false;
            i = -1;
            transition = transition2;
        }
        for (Playable playable : clipsAtTrackTimeUs) {
            if (playable.clipIndex < this.videoTrack.getClips().size() && this.videoTrack.getClips().get(playable.clipIndex).isAvailable()) {
                assignResourcesForClipIndex(playable.clipIndex);
                try {
                    this.clipRenderers.get(playable.clipIndex).getFrameAtTime(playable.clipOffsetUs, j2, list);
                } catch (ExoPlaybackException e2) {
                    int i5 = Integer.parseInt(e2.getMessage());
                    this.videoTrack.getClips().get(i5).setTempUnavailable(true);
                    if (i5 != playable.clipIndex) {
                        getFrameAtTime(j, j2, list);
                        return;
                    }
                }
            }
        }
        if (Sequence.MODE_PLAYBACK && clipsAtTrackTimeUs.size() == 1 && clipsAtTrackTimeUs.get(0).clipIndex < this.videoTrack.getLastAvailClipIndex()) {
            Clip clip = this.videoTrack.getClips().get(clipsAtTrackTimeUs.get(0).clipIndex + 1);
            if (!clip.disabledTransition() && clip.isAvailable()) {
                if (this.clipRenderers.size() == this.videoTrack.getClips().size()) {
                    assignResourcesForClipIndex(clipsAtTrackTimeUs.get(0).clipIndex + 1);
                    this.clipRenderers.get(clipsAtTrackTimeUs.get(0).clipIndex + 1).getFrameAtTimeAsync(this.videoTrack.getClips().get(clipsAtTrackTimeUs.get(0).clipIndex + 1).getStartTimeUs());
                } else {
                    return;
                }
            }
        }
        if (!this.clipRenderingOnly) {
            f2 = transition.blendFactor;
        } else if (i == 1) {
            f2 = 1.0f;
        } else {
            f2 = 0.0f;
        }
        list.add(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.renderers.VideoTrackRenderer.2
            @Override // java.lang.Runnable
            public void run() {
                VideoTrackRenderer.this.trackFilter.setMix(f2);
                int i6 = ((Playable) clipsAtTrackTimeUs.get(0)).clipIndex;
                int size = VideoTrackRenderer.this.videoTrack.getClips().size();
                if (i6 < size) {
                    if (VideoTrackRenderer.this.videoTrack.getClips().get(i6).isAvailable()) {
                        VideoTrackRenderer.this.trackFilter.setGPUMediaTexture(0, ((ClipRenderer) VideoTrackRenderer.this.clipRenderers.get(i6)).getOutputTexture());
                    } else {
                        VideoTrackRenderer.this.trackFilter.setGPUMediaTexture(0, VideoTrackRenderer.this.emptyTexture);
                    }
                    if (clipsAtTrackTimeUs.size() <= 1) {
                        VideoTrackRenderer.this.trackFilter.setGPUMediaTexture(1, VideoTrackRenderer.this.emptyTexture);
                        return;
                    }
                    int i7 = ((Playable) clipsAtTrackTimeUs.get(1)).clipIndex;
                    if (i7 < size) {
                        if (VideoTrackRenderer.this.videoTrack.getClips().get(i7).isAvailable()) {
                            VideoTrackRenderer.this.trackFilter.setGPUMediaTexture(1, ((ClipRenderer) VideoTrackRenderer.this.clipRenderers.get(i7)).getOutputTexture());
                        } else {
                            VideoTrackRenderer.this.trackFilter.setGPUMediaTexture(1, VideoTrackRenderer.this.emptyTexture);
                        }
                    }
                }
            }
        });
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    public boolean isEnded() {
        return this.isEnded;
    }

    @Override // com.adobe.premiereclip.mediaengine.renderers.ComponentRenderer
    protected void onReleased() throws ExoPlaybackException {
        Iterator<ClipRenderer> it = this.clipRenderers.iterator();
        while (it.hasNext()) {
            it.next().onReleased();
        }
        MediaDecoderCache.getInstance().releaseAllDecoders();
        this.clipRendererResourcePool.release();
    }

    class TrackFilter extends GPUMediaBlockFilter {
        private GPUMediaFilter firstFilter;
        private GPUMediaFilter secondFilter;
        private GPUMediaNonAlphaBlendFilter trackMixFilter;

        public TrackFilter() {
            super(2);
            this.trackMixFilter = new GPUMediaNonAlphaBlendFilter(0.0f);
            this.firstFilter = new GPUMediaFilter();
            this.secondFilter = new GPUMediaFilter();
            addFilter(this.firstFilter);
            addFilter(this.secondFilter);
            addFilter(this.trackMixFilter);
        }

        @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter
        protected void buildNodesInternal() {
            setInputNode(0, 0, this.mTextures.get(0));
            setInputNode(1, 0, this.mTextures.get(1));
            setInputNode(2, 0, this.mFrameBuffers.get(0));
            setInputNode(2, 1, this.mFrameBuffers.get(1));
        }

        public void setMix(float f2) {
            this.trackMixFilter.setMix(f2);
        }
    }
}

package com.adobe.premiereclip.mediaengine.resources;

import android.content.Context;
import android.os.Handler;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.looks.LocalLooks;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.ClipExposureFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.ClipLookUpFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.ClipLookUpSurface;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.ImageSurface;
import com.adobe.premiereclip.project.Project;
import com.adobe.premiereclip.project.sequence.ClipOptionsEffects;

/* JADX INFO: loaded from: classes2.dex */
public class LooksPreviewResources {
    private GPUMediaTexture clipLUT;
    private ClipLookUpSurface clipLookUpSurface;
    private GPUMediaSurfaceView gpuMediaSurfaceView;
    private Handler handler;
    private PosterFilter posterFilter;
    private ImageSurface posterSurface;
    private GPUMediaTexture posterTexture;
    private boolean shouldApplyLook;

    public interface Listener {
        void onInit();
    }

    public LooksPreviewResources(Context context, GPUMediaSurfaceView gPUMediaSurfaceView, final Listener listener, final Project project) {
        this.shouldApplyLook = project.shouldApplyLookOnPoster();
        final String normalPosterPath = project.getNormalPosterPath();
        this.handler = new Handler();
        this.gpuMediaSurfaceView = gPUMediaSurfaceView;
        this.posterSurface = new ImageSurface(context);
        this.clipLookUpSurface = new ClipLookUpSurface(context);
        this.posterFilter = new PosterFilter();
        this.gpuMediaSurfaceView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.resources.LooksPreviewResources.1
            @Override // java.lang.Runnable
            public void run() {
                if (LooksPreviewResources.this.gpuMediaSurfaceView != null) {
                    LooksPreviewResources.this.posterTexture = new GPUMediaTexture(LooksPreviewResources.this.gpuMediaSurfaceView.getWidth(), LooksPreviewResources.this.gpuMediaSurfaceView.getHeight(), Rotation.NORMAL, false);
                    LooksPreviewResources.this.posterSurface.start(LooksPreviewResources.this.posterTexture);
                    LooksPreviewResources.this.clipLUT = new GPUMediaTexture(LooksPreviewResources.this.clipLookUpSurface.getWidth(), LooksPreviewResources.this.clipLookUpSurface.getHeight(), LooksPreviewResources.this.clipLookUpSurface.getRotation(), false);
                    LooksPreviewResources.this.clipLookUpSurface.start(LooksPreviewResources.this.clipLUT);
                    LooksPreviewResources.this.posterFilter.setGPUMediaTexture(0, LooksPreviewResources.this.posterTexture);
                    LooksPreviewResources.this.posterFilter.setGPUMediaTexture(1, LooksPreviewResources.this.clipLUT);
                    LooksPreviewResources.this.posterFilter.onOutputSizeChanged(LooksPreviewResources.this.gpuMediaSurfaceView.getWidth(), LooksPreviewResources.this.gpuMediaSurfaceView.getHeight());
                    LooksPreviewResources.this.posterFilter.init();
                    if (listener != null) {
                        LooksPreviewResources.this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.resources.LooksPreviewResources.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (normalPosterPath != null) {
                                    LooksPreviewResources.this.posterSurface.setBitmap(normalPosterPath);
                                    try {
                                        LooksPreviewResources.this.posterSurface.drawImage();
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                if (LooksPreviewResources.this.shouldApplyLook) {
                                    LooksPreviewResources.this.applyLook(project.getSequence().getLook());
                                } else {
                                    LooksPreviewResources.this.applyLook(LocalLooks.getClipLook("0"));
                                }
                                listener.onInit();
                            }
                        });
                    }
                }
            }
        });
        this.gpuMediaSurfaceView.requestRender();
    }

    public boolean applyLook(BaseLook baseLook) {
        boolean look = this.clipLookUpSurface.setLook(baseLook);
        this.posterFilter.setNullEffect(baseLook.getLookId().equals("0"));
        this.gpuMediaSurfaceView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.resources.LooksPreviewResources.2
            @Override // java.lang.Runnable
            public void run() {
                LooksPreviewResources.this.posterFilter.updateSurface();
                LooksPreviewResources.this.posterFilter.onDraw(null);
            }
        });
        this.gpuMediaSurfaceView.requestRender();
        return look;
    }

    public void release() {
        this.posterSurface.release();
        this.clipLookUpSurface.release();
        this.gpuMediaSurfaceView = null;
    }

    class PosterFilter extends GPUMediaBlockFilter {
        private ClipExposureFilter clipExposureFilter;
        private ClipLookUpFilter clipLookUpFilter;

        public PosterFilter() {
            super(2);
            this.clipLookUpFilter = new ClipLookUpFilter();
            this.clipExposureFilter = new ClipExposureFilter();
            addFilter(this.clipLookUpFilter);
        }

        @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter
        protected void buildNodesInternal() {
            setInputNode(0, 0, this.mTextures.get(0));
            setInputNode(0, 1, this.mTextures.get(1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setNullEffect(boolean z) {
            this.clipLookUpFilter.setNullEffect(z);
        }

        private void setClipEffects(ClipOptionsEffects clipOptionsEffects) {
            this.clipExposureFilter.setExposure(clipOptionsEffects.getExposure());
            this.clipExposureFilter.setHighlights(clipOptionsEffects.getHighlights());
            this.clipExposureFilter.setShadows(clipOptionsEffects.getShadows());
        }
    }
}

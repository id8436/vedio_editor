package com.adobe.premiereclip.mediaengine.resources;

import android.content.Context;
import android.util.Log;
import com.adobe.premiereclip.looks.BaseLook;
import com.adobe.premiereclip.looks.LocalLooks;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.ClipCropFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.ClipExposureFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.ClipLookUpFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.ClipExposureSurface;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.ClipLookUpSurface;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaSurface;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.adobe.premiereclip.project.sequence.ClipOptionsEffects;

/* JADX INFO: loaded from: classes2.dex */
public class ClipRendererResources {
    private static final String TAG = "ClipRenderResources";
    private GPUMediaSurfaceView gpuMediaSurfaceView;
    private GPUMediaTexture mClipEffectsLUT;
    private ClipExposureSurface mClipExposureSurface;
    private ClipFilter mClipFilter;
    private GPUMediaTexture mClipFrameBuffer;
    private ClipLookUpSurface mClipLookUpSurface;
    private GPUMediaTexture mClipTexture;
    private GPUMediaTexture mLookLUT;
    private int maxHeight;
    private int maxWidth;
    private GPUMediaSurface mediaSurface;
    private int oriHeight;
    private int oriWidth;

    public ClipRendererResources(Context context, GPUMediaSurfaceView gPUMediaSurfaceView) {
        this.mediaSurface = new GPUMediaSurface(context);
        this.gpuMediaSurfaceView = gPUMediaSurfaceView;
        constructClipEffectsFilter(context);
    }

    private void constructClipEffectsFilter(Context context) {
        this.mClipFilter = new ClipFilter();
        this.mClipExposureSurface = new ClipExposureSurface(context);
        this.mClipLookUpSurface = new ClipLookUpSurface(context);
        setClipEffects(new ClipOptionsEffects());
    }

    public void onClipSizeChanged(boolean z) {
        Log.i("Render_issue", "clip size changed: " + this.mediaSurface.getWidth() + " " + this.mediaSurface.getHeight());
        int width = this.mediaSurface.getWidth();
        int height = this.mediaSurface.getHeight();
        if (width != 0 && height != 0) {
            this.oriWidth = width;
            this.oriHeight = height;
            if (z) {
                float f2 = width / height;
                if (f2 > 1.0f) {
                    if (width > this.maxWidth) {
                        width = this.maxWidth;
                        height = (int) (width / f2);
                    }
                } else if (width > this.maxHeight) {
                    width = this.maxHeight;
                    height = (int) (width / f2);
                }
            }
            Log.i("Render_issue", "new optimized size: " + this.mediaSurface.getWidth() + " " + this.mediaSurface.getHeight());
            if (this.mClipFrameBuffer != null) {
                this.mClipFrameBuffer.onDestroy();
            }
            this.mClipFrameBuffer = new GPUMediaTexture(width, height, null, true);
            this.mClipFilter.onOutputSizeChanged(width, height);
            this.gpuMediaSurfaceView.changeBuffer(this.mClipFilter, this.mClipFrameBuffer);
        }
    }

    public void onClipCropChanged() {
        int cropBottom = this.mediaSurface.getCropBottom();
        int cropRight = this.mediaSurface.getCropRight();
        this.mClipFilter.setCropParams(this.mediaSurface.getStride(), this.mediaSurface.getSlice(), cropRight, cropBottom);
        this.mediaSurface.resetCropParamsChanged();
    }

    public void init(int i, int i2, Rotation rotation) {
        if (i == -1) {
            i = 1920;
        }
        if (i2 == -1) {
            i2 = 1080;
        }
        Log.i("Render_issue", "maxwidth: " + i + " maxheight: " + i2);
        this.maxWidth = i;
        this.maxHeight = i2;
        this.oriWidth = i;
        this.oriHeight = i2;
        this.mClipTexture = new GPUMediaTexture(i, i2, rotation, false);
        this.mediaSurface.start(this.mClipTexture);
        this.mClipEffectsLUT = new GPUMediaTexture(this.mClipExposureSurface.getWidth(), this.mClipExposureSurface.getHeight(), this.mClipExposureSurface.getRotation(), false);
        this.mClipExposureSurface.start(this.mClipEffectsLUT);
        this.mLookLUT = new GPUMediaTexture(this.mClipLookUpSurface.getWidth(), this.mClipLookUpSurface.getHeight(), this.mClipLookUpSurface.getRotation(), false);
        this.mClipLookUpSurface.start(this.mLookLUT);
        this.mClipFrameBuffer = new GPUMediaTexture(i, i2, null, true);
        this.mClipFilter.setGPUMediaTexture(0, this.mClipTexture);
        this.mClipFilter.setGPUMediaTexture(1, this.mLookLUT);
        this.mClipFilter.setGPUMediaTexture(2, this.mClipEffectsLUT);
        this.mClipFilter.onOutputSizeChanged(i, i2);
        this.mClipFilter.init();
        this.gpuMediaSurfaceView.addFilterToChain(this.mClipFilter, this.mClipFrameBuffer);
    }

    public void setMaxSize(int i, int i2) {
        Log.i("Render_issue", "maxwidth: " + i + " maxheight: " + i2);
        this.maxWidth = i;
        this.maxHeight = i2;
        onClipSizeChanged(true);
    }

    public void setLook(BaseLook baseLook, boolean z) {
        if (!z) {
            if (baseLook != null) {
                this.mClipLookUpSurface.setLook(baseLook);
                this.mClipFilter.setNullEffect(baseLook.getLookId().equals("0"));
                return;
            }
            return;
        }
        this.mClipLookUpSurface.setLook(LocalLooks.getClipLook("0"));
        this.mClipFilter.setNullEffect(false);
    }

    public void setClipEffects(ClipOptionsEffects clipOptionsEffects) {
        if (this.mClipExposureSurface.getExposure() != clipOptionsEffects.getExposure() || this.mClipExposureSurface.getShadows() != clipOptionsEffects.getShadows() || this.mClipExposureSurface.getHighlights() != clipOptionsEffects.getHighlights()) {
            this.mClipExposureSurface.setClipExposureParams(clipOptionsEffects);
            this.mClipFilter.setExposure(clipOptionsEffects.getExposure());
            this.mClipFilter.setHighlights(clipOptionsEffects.getHighlights());
            this.mClipFilter.setShadows(clipOptionsEffects.getShadows());
        }
    }

    public void setScale(float f2) {
        this.mClipFilter.setTextureScale(f2);
    }

    public int getWidth() {
        return this.oriWidth;
    }

    public int getHeight() {
        return this.oriHeight;
    }

    public GPUMediaTexture getClipFrameBuffer() {
        return this.mClipFrameBuffer;
    }

    public GPUMediaSurface getMediaSurface() {
        return this.mediaSurface;
    }

    public void release() {
        this.mediaSurface.release();
        this.mClipExposureSurface.release();
        this.mClipLookUpSurface.release();
    }

    class ClipFilter extends GPUMediaBlockFilter {
        private ClipCropFilter clipCropFilter;
        private ClipExposureFilter clipExposureFilter;
        private ClipLookUpFilter clipLookUpFilter;

        public ClipFilter() {
            super(3);
            this.clipCropFilter = new ClipCropFilter();
            this.clipLookUpFilter = new ClipLookUpFilter();
            this.clipExposureFilter = new ClipExposureFilter();
            addFilter(this.clipCropFilter);
            addFilter(this.clipLookUpFilter);
            addFilter(this.clipExposureFilter);
        }

        @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter
        protected void buildNodesInternal() {
            setInputNode(0, 0, this.mTextures.get(0));
            setInputNode(1, 0, this.mFrameBuffers.get(0));
            setInputNode(1, 1, this.mTextures.get(1));
            setInputNode(2, 0, this.mFrameBuffers.get(1));
            setInputNode(2, 1, this.mTextures.get(2));
        }

        public void setNullEffect(boolean z) {
            this.clipLookUpFilter.setNullEffect(z);
        }

        public void setCropParams(int i, int i2, int i3, int i4) {
            this.clipCropFilter.setSizeParams(i, i2);
            this.clipCropFilter.setCropParams(i3, i4);
        }

        public void setExposure(float f2) {
            this.clipExposureFilter.setExposure(f2);
        }

        public void setHighlights(float f2) {
            this.clipExposureFilter.setHighlights(f2);
        }

        public void setShadows(float f2) {
            this.clipExposureFilter.setShadows(f2);
        }
    }
}

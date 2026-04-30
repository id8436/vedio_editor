package com.adobe.premiereclip.mediaengine.resources;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.os.Handler;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.Rotation;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.ClipExposureFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.ClipLookUpFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.ClipExposureSurface;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.ClipLookUpSurface;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.ImageSurface;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.ClipOptionsEffects;
import java.nio.IntBuffer;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes2.dex */
public class ProjectPosterResources {
    private static final int POSTER_HEIGHT = 720;
    private static final int POSTER_WIDTH = 1280;
    private boolean cancelled;
    private ClipExposureSurface clipExposureSurface;
    private GPUMediaTexture clipExposureTexture;
    private GPUMediaTexture clipLUT;
    private ClipLookUpSurface clipLookUpSurface;
    private GPUMediaSurfaceView gpuMediaSurfaceView;
    private GPUMediaTexture posterFrameBuffer;
    private ImageSurface posterSurface;
    private GPUMediaTexture posterTexture;
    private Handler handler = new Handler();
    private PosterFilter posterFilter = new PosterFilter();
    private GPUMediaFilter finalFilter = new GPUMediaFilter();

    public interface Listener {
        void onInit();
    }

    public ProjectPosterResources(Context context, GPUMediaSurfaceView gPUMediaSurfaceView, final Listener listener) {
        this.gpuMediaSurfaceView = gPUMediaSurfaceView;
        this.posterSurface = new ImageSurface(context);
        this.clipLookUpSurface = new ClipLookUpSurface(context);
        this.clipExposureSurface = new ClipExposureSurface(context);
        this.gpuMediaSurfaceView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.resources.ProjectPosterResources.1
            @Override // java.lang.Runnable
            public void run() {
                ProjectPosterResources.this.posterTexture = new GPUMediaTexture(1280, 720, Rotation.NORMAL, false);
                ProjectPosterResources.this.posterSurface.start(ProjectPosterResources.this.posterTexture);
                ProjectPosterResources.this.clipExposureTexture = new GPUMediaTexture(ProjectPosterResources.this.clipExposureSurface.getWidth(), ProjectPosterResources.this.clipExposureSurface.getHeight(), ProjectPosterResources.this.clipExposureSurface.getRotation(), false);
                ProjectPosterResources.this.clipExposureSurface.start(ProjectPosterResources.this.clipExposureTexture);
                ProjectPosterResources.this.clipLUT = new GPUMediaTexture(ProjectPosterResources.this.clipLookUpSurface.getWidth(), ProjectPosterResources.this.clipLookUpSurface.getHeight(), ProjectPosterResources.this.clipLookUpSurface.getRotation(), false);
                ProjectPosterResources.this.clipLookUpSurface.start(ProjectPosterResources.this.clipLUT);
                ProjectPosterResources.this.posterFilter.setGPUMediaTexture(0, ProjectPosterResources.this.posterTexture);
                ProjectPosterResources.this.posterFilter.setGPUMediaTexture(1, ProjectPosterResources.this.clipLUT);
                ProjectPosterResources.this.posterFilter.setGPUMediaTexture(2, ProjectPosterResources.this.clipExposureTexture);
                ProjectPosterResources.this.posterFilter.onOutputSizeChanged(1280, 720);
                ProjectPosterResources.this.posterFilter.init();
                ProjectPosterResources.this.posterFrameBuffer = new GPUMediaTexture(1280, 720, null, true);
                ProjectPosterResources.this.finalFilter.onOutputSizeChanged(1280, 720);
                ProjectPosterResources.this.finalFilter.init();
                if (listener != null) {
                    ProjectPosterResources.this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.resources.ProjectPosterResources.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            listener.onInit();
                        }
                    });
                }
            }
        });
    }

    public void cancel() {
        this.cancelled = true;
    }

    private boolean isCancelled() {
        return this.cancelled;
    }

    public Bitmap applyLook(Bitmap bitmap, Clip clip) throws InterruptedException {
        this.cancelled = false;
        if (bitmap != null) {
            this.posterSurface.resetNewFrame();
            this.posterSurface.setBitmap(bitmap);
            this.posterSurface.drawImage();
            this.posterSurface.awaitsNewImage(true);
        }
        this.clipLookUpSurface.setLook(clip.getLook());
        this.clipExposureSurface.setClipExposureParams(clip.getClipOptionEffects());
        this.posterFilter.setNullEffect(clip.getLook().getLookId().equals("0"));
        this.posterFilter.setClipEffects(clip.getClipOptionEffects());
        final Semaphore semaphore = new Semaphore(0);
        if (isCancelled()) {
            Log.d("ProjectPosterTask", "cancelling 4.1");
            return null;
        }
        int[] iArr = new int[921600];
        final IntBuffer intBufferAllocate = IntBuffer.allocate(921600);
        if (isCancelled()) {
            Log.d("ProjectPosterTask", "cancelling 4.2");
            return null;
        }
        Object[] dimensions = clip.getDimensions();
        final int iIntValue = ((Integer) dimensions[0]).intValue();
        final int iIntValue2 = ((Integer) dimensions[1]).intValue();
        this.gpuMediaSurfaceView.runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.resources.ProjectPosterResources.2
            @Override // java.lang.Runnable
            public void run() {
                ProjectPosterResources.this.posterTexture.onOutputSizeChanged(iIntValue, iIntValue2, Rotation.NORMAL);
                GPUMediaTexture gPUMediaTexture = new GPUMediaTexture(iIntValue, iIntValue2, null, true);
                ProjectPosterResources.this.posterFilter.onOutputSizeChanged(iIntValue, iIntValue2);
                ProjectPosterResources.this.posterFilter.updateSurface();
                ProjectPosterResources.this.posterFilter.onDraw(gPUMediaTexture);
                ProjectPosterResources.this.finalFilter.setGPUMediaTexture(gPUMediaTexture);
                ProjectPosterResources.this.posterFrameBuffer.bindFrameBuffer();
                ProjectPosterResources.this.finalFilter.onDraw(null);
                GLES20.glReadPixels(0, 0, 1280, 720, 6408, 5121, intBufferAllocate);
                GLES20.glBindFramebuffer(36160, 0);
                semaphore.release();
                gPUMediaTexture.onDestroy();
            }
        });
        if (isCancelled()) {
            Log.d("ProjectPosterTask", "cancelling 4.3");
            return null;
        }
        this.gpuMediaSurfaceView.requestRender();
        if (isCancelled()) {
            Log.d("ProjectPosterTask", "cancelling 4.4");
            return null;
        }
        semaphore.acquire();
        if (isCancelled()) {
            Log.d("ProjectPosterTask", "cancelling 4.5");
            return null;
        }
        int[] iArrArray = intBufferAllocate.array();
        for (int i = 0; i < 720; i++) {
            System.arraycopy(iArrArray, i * 1280, iArr, ((720 - i) - 1) * 1280, 1280);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(1280, 720, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.copyPixelsFromBuffer(IntBuffer.wrap(iArr));
        return bitmapCreateBitmap;
    }

    public void release() {
        this.posterSurface.release();
        this.clipLookUpSurface.release();
        this.clipExposureSurface.release();
        this.gpuMediaSurfaceView = null;
    }

    class PosterFilter extends GPUMediaBlockFilter {
        private ClipExposureFilter clipExposureFilter;
        private ClipLookUpFilter clipLookUpFilter;

        public PosterFilter() {
            super(3);
            this.clipLookUpFilter = new ClipLookUpFilter();
            this.clipExposureFilter = new ClipExposureFilter();
            addFilter(new GPUMediaFilter());
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

        /* JADX INFO: Access modifiers changed from: private */
        public void setNullEffect(boolean z) {
            this.clipLookUpFilter.setNullEffect(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setClipEffects(ClipOptionsEffects clipOptionsEffects) {
            this.clipExposureFilter.setExposure(clipOptionsEffects.getExposure());
            this.clipExposureFilter.setHighlights(clipOptionsEffects.getHighlights());
            this.clipExposureFilter.setShadows(clipOptionsEffects.getShadows());
        }
    }
}

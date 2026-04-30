package com.adobe.premiereclip.mediaengine.gpumedia;

import android.content.Context;
import android.opengl.EGL14;
import android.opengl.EGLContext;
import android.opengl.GLSurfaceView;
import com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaRenderer;
import com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import com.adobe.premiereclip.mediaengine.renderers.FilterChain;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaSurfaceView extends GLSurfaceView {
    private EGLContext eglContext;
    private FilterChain filterChain;
    private GPUMediaRenderer renderer;

    public GPUMediaSurfaceView(Context context) {
        super(context);
        setEGLContextClientVersion(2);
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        getHolder().setFormat(1);
        setDebugFlags(3);
        this.filterChain = new FilterChain();
        this.renderer = new GPUMediaRenderer();
        this.renderer.setListener(new GPUMediaRenderer.Listener() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView.1
            @Override // com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaRenderer.Listener
            public void onSurfaceCreated() {
                GPUMediaSurfaceView.this.eglContext = EGL14.eglGetCurrentContext();
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaRenderer.Listener
            public void onSurfaceChanged(int i, int i2) {
            }

            @Override // com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaRenderer.Listener
            public void onDrawFrame() {
                GPUMediaSurfaceView.this.filterChain.onDraw();
            }
        });
        setRenderer(this.renderer);
        setRenderMode(0);
    }

    public EGLContext getEglContext() {
        return this.eglContext;
    }

    public void runOnDraw(Runnable runnable) {
        this.renderer.runOnDraw(runnable);
    }

    public void runOnDrawEnd(Runnable runnable) {
        this.renderer.runOnDrawEnd(runnable);
    }

    public void addFilterToChain(GPUMediaFilter gPUMediaFilter, GPUMediaTexture gPUMediaTexture) {
        this.filterChain.addFilter(gPUMediaFilter, gPUMediaTexture);
    }

    public void changeBuffer(GPUMediaFilter gPUMediaFilter, GPUMediaTexture gPUMediaTexture) {
        this.filterChain.changeBuffer(gPUMediaFilter, gPUMediaTexture);
    }

    public void removeFilterFromChain(int i) {
        this.filterChain.removeFilter(i);
    }

    public void removeFilterFromChain(GPUMediaFilter gPUMediaFilter) {
        this.filterChain.removeFilter(gPUMediaFilter);
    }

    public void queueFilterDraw(GPUMediaFilter gPUMediaFilter) {
        queueFilterDraw(gPUMediaFilter, null, true);
    }

    public void queueFilterDraw(GPUMediaFilter gPUMediaFilter, GPUMediaTexture gPUMediaTexture) {
        queueFilterDraw(gPUMediaFilter, gPUMediaTexture, true);
    }

    public void queueFilterDraw(final GPUMediaFilter gPUMediaFilter, final GPUMediaTexture gPUMediaTexture, final boolean z) {
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.GPUMediaSurfaceView.2
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    gPUMediaFilter.updateSurface();
                }
                gPUMediaFilter.onDraw(gPUMediaTexture);
            }
        });
    }

    public int getDisplayWidth() {
        return this.renderer.getFrameWidth();
    }

    public int getDisplayHeight() {
        return this.renderer.getFrameHeight();
    }

    public void release() {
        this.filterChain.removeFilters();
    }
}

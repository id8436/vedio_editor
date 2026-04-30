package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.annotation.SuppressLint;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GPUMediaBlockFilter extends GPUMediaFilter {
    protected List<GPUMediaFilter> mFilters;
    protected List<GPUMediaTexture> mFrameBuffers;
    protected List<GPUMediaTexture> mTextures;
    private final int numInputNodes;

    protected abstract void buildNodesInternal();

    public GPUMediaBlockFilter() {
        this(1);
    }

    public GPUMediaBlockFilter(int i) {
        this.mFilters = new ArrayList();
        this.mTextures = new ArrayList(i);
        this.mFrameBuffers = new ArrayList();
        this.numInputNodes = i;
    }

    protected final void addFilter(GPUMediaFilter gPUMediaFilter) {
        if (gPUMediaFilter != null) {
            this.mFilters.add(gPUMediaFilter);
        }
    }

    protected final void addFilters(ArrayList<GPUMediaFilter> arrayList) {
        Iterator<GPUMediaFilter> it = arrayList.iterator();
        while (it.hasNext()) {
            addFilter(it.next());
        }
    }

    protected final void setInputNode(int i, int i2, GPUMediaTexture gPUMediaTexture) {
        GPUMediaFilter gPUMediaFilter = this.mFilters.get(i);
        if ((gPUMediaFilter instanceof GPUMediaBlockFilter) && ((GPUMediaBlockFilter) gPUMediaFilter).numInputNodes > i2) {
            ((GPUMediaBlockFilter) gPUMediaFilter).setGPUMediaTexture(i2, gPUMediaTexture);
            return;
        }
        if (i2 == 0) {
            gPUMediaFilter.setGPUMediaTexture(gPUMediaTexture);
        } else if ((gPUMediaFilter instanceof GPUMediaTwoInputFilter) && i2 == 1) {
            ((GPUMediaTwoInputFilter) gPUMediaFilter).setSecondGPUMediaTexture(gPUMediaTexture);
        }
    }

    public final int getNumInputNodes() {
        return this.numInputNodes;
    }

    protected void buildNodes() {
        if (this.mFrameBuffers.size() == this.mFilters.size() - 1 && this.mTextures.size() == this.numInputNodes) {
            buildNodesInternal();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected final void onInit() {
        Iterator<GPUMediaFilter> it = this.mFilters.iterator();
        while (it.hasNext()) {
            it.next().init();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onDestroy() {
        destroyFramebuffers();
        Iterator<GPUMediaFilter> it = this.mFilters.iterator();
        while (it.hasNext()) {
            it.next().destroy();
        }
    }

    private void destroyFramebuffers() {
        Iterator<GPUMediaTexture> it = this.mFrameBuffers.iterator();
        while (it.hasNext()) {
            it.next().onDestroy();
        }
        this.mFrameBuffers.clear();
    }

    public final GPUMediaTexture getGPUMediaTexture(int i) {
        return this.mTextures.get(i);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public final void setGPUMediaTexture(GPUMediaTexture gPUMediaTexture) {
        setGPUMediaTexture(0, gPUMediaTexture);
    }

    public final void setGPUMediaTexture(int i, GPUMediaTexture gPUMediaTexture) {
        if (i < this.numInputNodes) {
            if (i < this.mTextures.size()) {
                if (this.mTextures.get(i) != gPUMediaTexture) {
                    this.mTextures.set(i, gPUMediaTexture);
                    buildNodes();
                    return;
                }
                return;
            }
            this.mTextures.add(i, gPUMediaTexture);
            buildNodes();
        }
    }

    public final void setFilter(final int i, final GPUMediaFilter gPUMediaFilter) {
        if (i < this.mFilters.size()) {
            final GPUMediaFilter gPUMediaFilter2 = this.mFilters.get(i);
            runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBlockFilter.1
                @Override // java.lang.Runnable
                public void run() {
                    if (gPUMediaFilter2 != gPUMediaFilter) {
                        GPUMediaBlockFilter.this.mFilters.set(i, gPUMediaFilter);
                        GPUMediaBlockFilter.this.buildNodes();
                        if (GPUMediaBlockFilter.this.isInitialized()) {
                            gPUMediaFilter.onOutputSizeChanged(GPUMediaBlockFilter.this.mOutputWidth, GPUMediaBlockFilter.this.mOutputHeight);
                            gPUMediaFilter.init();
                        }
                        gPUMediaFilter2.destroy();
                    }
                }
            });
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public final void onOutputSizeChanged(int i, int i2) {
        super.onOutputSizeChanged(i, i2);
        if (this.mFrameBuffers != null) {
            destroyFramebuffers();
        }
        int size = this.mFilters.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.mFilters.get(i3).onOutputSizeChanged(i, i2);
            if (i3 != size - 1) {
                this.mFrameBuffers.add(new GPUMediaTexture(i, i2, null, true));
            }
        }
        buildNodes();
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void setTextureScale(float f2) {
        this.mFilters.get(this.mFilters.size() - 1).setTextureScale(f2);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void setTextureXOffset(float f2) {
        this.mFilters.get(this.mFilters.size() - 1).setTextureXOffset(f2);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void setTextureYOffset(float f2) {
        this.mFilters.get(this.mFilters.size() - 1).setTextureYOffset(f2);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void updateSurface() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mFilters.size()) {
                this.mFilters.get(i2).updateSurface();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    @SuppressLint({"WrongCall"})
    public final void onDraw(GPUMediaTexture gPUMediaTexture) {
        runPendingOnDrawTasks();
        if (isInitialized() && this.mFrameBuffers != null) {
            int size = this.mFilters.size();
            int i = 0;
            while (i < size) {
                GPUMediaFilter gPUMediaFilter = this.mFilters.get(i);
                if (i < size + (-1)) {
                    gPUMediaFilter.onDraw(this.mFrameBuffers.get(i));
                } else {
                    gPUMediaFilter.onDraw(gPUMediaTexture);
                }
                i++;
            }
        }
    }

    public final List<GPUMediaFilter> getFilters() {
        return this.mFilters;
    }
}

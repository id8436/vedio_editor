package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.annotation.SuppressLint;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaFilterGroup extends GPUMediaFilter {
    protected List<GPUMediaFilter> mFilters;
    private GPUMediaTexture[] mFrameBuffers;
    protected List<GPUMediaFilter> mMergedFilters;

    public GPUMediaFilterGroup() {
        this(null);
    }

    public GPUMediaFilterGroup(List<GPUMediaFilter> list) {
        this.mFilters = list;
        if (this.mFilters == null) {
            this.mFilters = new ArrayList();
        } else {
            updateMergedFilters();
        }
    }

    public void addFilter(GPUMediaFilter gPUMediaFilter) {
        if (gPUMediaFilter != null) {
            this.mFilters.add(gPUMediaFilter);
            updateMergedFilters();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        Iterator<GPUMediaFilter> it = this.mMergedFilters.iterator();
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
        for (GPUMediaTexture gPUMediaTexture : this.mFrameBuffers) {
            gPUMediaTexture.onDestroy();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void setGPUMediaTexture(GPUMediaTexture gPUMediaTexture) {
        this.mMergedFilters.get(0).setGPUMediaTexture(gPUMediaTexture);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void onOutputSizeChanged(int i, int i2) {
        super.onOutputSizeChanged(i, i2);
        if (this.mFrameBuffers != null) {
            destroyFramebuffers();
        }
        int size = this.mMergedFilters.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.mMergedFilters.get(i3).onOutputSizeChanged(i, i2);
        }
        if (this.mMergedFilters != null && size > 0) {
            this.mFrameBuffers = new GPUMediaTexture[size - 1];
            for (int i4 = 0; i4 < size - 1; i4++) {
                this.mFrameBuffers[i4] = new GPUMediaTexture(i, i2, null, true);
                this.mMergedFilters.get(i4 + 1).setGPUMediaTexture(this.mFrameBuffers[i4]);
            }
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void updateSurface() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mMergedFilters.size()) {
                this.mMergedFilters.get(i2).updateSurface();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    @SuppressLint({"WrongCall"})
    protected void onDraw() {
        runPendingOnDrawTasks();
        if (isInitialized() && this.mFrameBuffers != null && this.mMergedFilters != null) {
            int size = this.mMergedFilters.size();
            int i = 0;
            while (i < size) {
                GPUMediaFilter gPUMediaFilter = this.mMergedFilters.get(i);
                if (i < size + (-1)) {
                    gPUMediaFilter.onDraw(this.mFrameBuffers[i]);
                } else {
                    gPUMediaFilter.onDraw(null);
                }
                i++;
            }
        }
    }

    public List<GPUMediaFilter> getFilters() {
        return this.mFilters;
    }

    public List<GPUMediaFilter> getMergedFilters() {
        return this.mMergedFilters;
    }

    public void updateMergedFilters() {
        if (this.mFilters != null) {
            if (this.mMergedFilters == null) {
                this.mMergedFilters = new ArrayList();
            } else {
                this.mMergedFilters.clear();
            }
            for (GPUMediaFilter gPUMediaFilter : this.mFilters) {
                if (gPUMediaFilter instanceof GPUMediaFilterGroup) {
                    ((GPUMediaFilterGroup) gPUMediaFilter).updateMergedFilters();
                    List<GPUMediaFilter> mergedFilters = ((GPUMediaFilterGroup) gPUMediaFilter).getMergedFilters();
                    if (mergedFilters != null && !mergedFilters.isEmpty()) {
                        this.mMergedFilters.addAll(mergedFilters);
                    }
                } else {
                    this.mMergedFilters.add(gPUMediaFilter);
                }
            }
        }
    }
}

package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaSmoothToonFilter extends GPUMediaFilterGroup {
    GPUMediaGaussianBlurFilter blurFilter = new GPUMediaGaussianBlurFilter();
    GPUMediaToonFilter toonFilter;

    public GPUMediaSmoothToonFilter() {
        addFilter(this.blurFilter);
        this.toonFilter = new GPUMediaToonFilter();
        addFilter(this.toonFilter);
        getFilters().add(this.blurFilter);
        setBlurSize(0.5f);
        setThreshold(0.2f);
        setQuantizationLevels(10.0f);
    }

    public void setTexelWidth(float f2) {
        this.toonFilter.setTexelWidth(f2);
    }

    public void setTexelHeight(float f2) {
        this.toonFilter.setTexelHeight(f2);
    }

    public void setBlurSize(float f2) {
        this.blurFilter.setBlurSize(f2);
    }

    public void setThreshold(float f2) {
        this.toonFilter.setThreshold(f2);
    }

    public void setQuantizationLevels(float f2) {
        this.toonFilter.setQuantizationLevels(f2);
    }
}

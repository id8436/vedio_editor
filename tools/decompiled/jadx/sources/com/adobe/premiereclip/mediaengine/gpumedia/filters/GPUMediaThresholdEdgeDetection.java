package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaThresholdEdgeDetection extends GPUMediaFilterGroup {
    public GPUMediaThresholdEdgeDetection() {
        addFilter(new GPUMediaGrayscaleFilter());
        addFilter(new GPUMediaSobelThresholdFilter());
    }

    public void setLineSize(float f2) {
        ((GPUMedia3x3TextureSamplingFilter) getFilters().get(1)).setLineSize(f2);
    }

    public void setThreshold(float f2) {
        ((GPUMediaSobelThresholdFilter) getFilters().get(1)).setThreshold(f2);
    }
}

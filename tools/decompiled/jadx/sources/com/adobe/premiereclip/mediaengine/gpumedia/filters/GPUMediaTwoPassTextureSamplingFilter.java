package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaTwoPassTextureSamplingFilter extends GPUMediaTwoPassFilter {
    public GPUMediaTwoPassTextureSamplingFilter(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilterGroup, com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        initTexelOffsets();
    }

    protected void initTexelOffsets() {
        float horizontalTexelOffsetRatio = getHorizontalTexelOffsetRatio();
        GPUMediaFilter gPUMediaFilter = this.mFilters.get(0);
        int iGlGetUniformLocation = GLES20.glGetUniformLocation(gPUMediaFilter.getProgram(), "texelWidthOffset");
        int iGlGetUniformLocation2 = GLES20.glGetUniformLocation(gPUMediaFilter.getProgram(), "texelHeightOffset");
        gPUMediaFilter.setFloat(iGlGetUniformLocation, horizontalTexelOffsetRatio / this.mOutputWidth);
        gPUMediaFilter.setFloat(iGlGetUniformLocation2, 0.0f);
        float verticalTexelOffsetRatio = getVerticalTexelOffsetRatio();
        GPUMediaFilter gPUMediaFilter2 = this.mFilters.get(1);
        int iGlGetUniformLocation3 = GLES20.glGetUniformLocation(gPUMediaFilter2.getProgram(), "texelWidthOffset");
        int iGlGetUniformLocation4 = GLES20.glGetUniformLocation(gPUMediaFilter2.getProgram(), "texelHeightOffset");
        gPUMediaFilter2.setFloat(iGlGetUniformLocation3, 0.0f);
        gPUMediaFilter2.setFloat(iGlGetUniformLocation4, verticalTexelOffsetRatio / this.mOutputHeight);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilterGroup, com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void onOutputSizeChanged(int i, int i2) {
        super.onOutputSizeChanged(i, i2);
    }

    public float getVerticalTexelOffsetRatio() {
        return 1.0f;
    }

    public float getHorizontalTexelOffsetRatio() {
        return 1.0f;
    }
}

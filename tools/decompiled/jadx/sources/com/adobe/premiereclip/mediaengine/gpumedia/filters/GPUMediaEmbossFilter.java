package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaEmbossFilter extends GPUMedia3x3ConvolutionFilter {
    private float mIntensity;

    public GPUMediaEmbossFilter() {
        this(1.0f);
    }

    public GPUMediaEmbossFilter(float f2) {
        this.mIntensity = f2;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMedia3x3ConvolutionFilter, com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMedia3x3TextureSamplingFilter, com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        setIntensity(this.mIntensity);
    }

    public void setIntensity(float f2) {
        this.mIntensity = f2;
        setConvolutionKernel(new float[]{(-2.0f) * f2, -f2, 0.0f, -f2, 1.0f, f2, 0.0f, f2, 2.0f * f2});
    }

    public float getIntensity() {
        return this.mIntensity;
    }
}

package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaMixBlendFilter extends GPUMediaTwoInputFilter {
    private float mMix;
    private int mMixLocation;

    public GPUMediaMixBlendFilter(String str) {
        this(str, 0.5f);
    }

    public GPUMediaMixBlendFilter(String str, float f2) {
        super(str);
        this.mMix = f2;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaTwoInputFilter, com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mMixLocation = GLES20.glGetUniformLocation(getProgram(), "mixturePercent");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setMix(this.mMix);
    }

    public void setMix(float f2) {
        this.mMix = f2;
        setFloat(this.mMixLocation, this.mMix);
    }
}

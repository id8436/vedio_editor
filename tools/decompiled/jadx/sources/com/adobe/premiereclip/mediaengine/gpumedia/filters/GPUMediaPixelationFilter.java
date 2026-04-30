package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaPixelationFilter extends GPUMediaFilter {
    public static final String PIXELATION_FRAGMENT_SHADER = "precision highp float;\nvarying vec2 textureCoordinate;\nuniform float imageWidthFactor;\nuniform float imageHeightFactor;\nuniform sampler2D inputImageTexture;\nuniform float pixel;\nvoid main()\n{\n  vec2 uv  = textureCoordinate.xy;\n  float dx = pixel * imageWidthFactor;\n  float dy = pixel * imageHeightFactor;\n  vec2 coord = vec2(dx * floor(uv.x / dx), dy * floor(uv.y / dy));\n  vec3 tc = texture2D(inputImageTexture, coord).xyz;\n  gl_FragColor = vec4(tc, 1.0);\n}";
    private int mImageHeightFactorLocation;
    private int mImageWidthFactorLocation;
    private float mPixel;
    private int mPixelLocation;

    public GPUMediaPixelationFilter() {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, PIXELATION_FRAGMENT_SHADER);
        this.mPixel = 1.0f;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mImageWidthFactorLocation = GLES20.glGetUniformLocation(getProgram(), "imageWidthFactor");
        this.mImageHeightFactorLocation = GLES20.glGetUniformLocation(getProgram(), "imageHeightFactor");
        setFloat(this.mImageWidthFactorLocation, 1.0f / this.mOutputWidth);
        setFloat(this.mImageHeightFactorLocation, 1.0f / this.mOutputHeight);
        this.mPixelLocation = GLES20.glGetUniformLocation(getProgram(), "pixel");
        setPixel(this.mPixel);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void onOutputSizeChanged(int i, int i2) {
        super.onOutputSizeChanged(i, i2);
    }

    public void setPixel(float f2) {
        this.mPixel = f2;
        setFloat(this.mPixelLocation, this.mPixel);
    }
}

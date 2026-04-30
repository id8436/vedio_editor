package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaColorMatrixFilter extends GPUMediaFilter {
    public static final String COLOR_MATRIX_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp mat4 colorMatrix;\nuniform lowp float intensity;\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 outputColor = textureColor * colorMatrix;\n    \n    gl_FragColor = (intensity * outputColor) + ((1.0 - intensity) * textureColor);\n}";
    private float[] mColorMatrix;
    private int mColorMatrixLocation;
    private float mIntensity;
    private int mIntensityLocation;

    public GPUMediaColorMatrixFilter() {
        this(1.0f, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f});
    }

    public GPUMediaColorMatrixFilter(float f2, float[] fArr) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, COLOR_MATRIX_FRAGMENT_SHADER);
        this.mIntensity = f2;
        this.mColorMatrix = fArr;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mColorMatrixLocation = GLES20.glGetUniformLocation(getProgram(), "colorMatrix");
        this.mIntensityLocation = GLES20.glGetUniformLocation(getProgram(), "intensity");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setIntensity(this.mIntensity);
        setColorMatrix(this.mColorMatrix);
    }

    public void setIntensity(float f2) {
        this.mIntensity = f2;
        setFloat(this.mIntensityLocation, f2);
    }

    public void setColorMatrix(float[] fArr) {
        this.mColorMatrix = fArr;
        setUniformMatrix4f(this.mColorMatrixLocation, fArr);
    }
}

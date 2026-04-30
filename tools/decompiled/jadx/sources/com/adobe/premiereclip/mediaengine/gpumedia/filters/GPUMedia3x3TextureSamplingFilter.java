package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMedia3x3TextureSamplingFilter extends GPUMediaFilter {
    public static final String THREE_X_THREE_TEXTURE_SAMPLING_VERTEX_SHADER = "uniform highp float texelWidth; \nuniform highp float texelHeight; \n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\n    gl_Position = pos;\n\n    vec2 widthStep = vec2(texelWidth, 0.0);\n    vec2 heightStep = vec2(0.0, texelHeight);\n    vec2 widthHeightStep = vec2(texelWidth, texelHeight);\n    vec2 widthNegativeHeightStep = vec2(texelWidth, -texelHeight);\n\n    textureCoordinate = uv;\n    leftTextureCoordinate = uv - widthStep;\n    rightTextureCoordinate = uv + widthStep;\n\n    topTextureCoordinate = uv - heightStep;\n    topLeftTextureCoordinate = uv - widthHeightStep;\n    topRightTextureCoordinate = uv + widthNegativeHeightStep;\n\n    bottomTextureCoordinate = uv + heightStep;\n    bottomLeftTextureCoordinate = uv - widthNegativeHeightStep;\n    bottomRightTextureCoordinate = uv + widthHeightStep;\n}";
    private boolean mHasOverriddenImageSizeFactor;
    private float mLineSize;
    private float mTexelHeight;
    private float mTexelWidth;
    private int mUniformTexelHeightLocation;
    private int mUniformTexelWidthLocation;

    public GPUMedia3x3TextureSamplingFilter() {
        this(GPUMediaFilter.NO_FILTER_VERTEX_SHADER);
    }

    public GPUMedia3x3TextureSamplingFilter(String str) {
        super(THREE_X_THREE_TEXTURE_SAMPLING_VERTEX_SHADER, str);
        this.mHasOverriddenImageSizeFactor = false;
        this.mLineSize = 1.0f;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mUniformTexelWidthLocation = GLES20.glGetUniformLocation(getProgram(), "texelWidth");
        this.mUniformTexelHeightLocation = GLES20.glGetUniformLocation(getProgram(), "texelHeight");
        if (this.mTexelWidth != 0.0f) {
            updateTexelValues();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void onOutputSizeChanged(int i, int i2) {
        super.onOutputSizeChanged(i, i2);
        if (!this.mHasOverriddenImageSizeFactor) {
            setLineSize(this.mLineSize);
        }
    }

    public void setTexelWidth(float f2) {
        this.mHasOverriddenImageSizeFactor = true;
        this.mTexelWidth = f2;
        setFloat(this.mUniformTexelWidthLocation, f2);
    }

    public void setTexelHeight(float f2) {
        this.mHasOverriddenImageSizeFactor = true;
        this.mTexelHeight = f2;
        setFloat(this.mUniformTexelHeightLocation, f2);
    }

    public void setLineSize(float f2) {
        this.mLineSize = f2;
        this.mTexelWidth = f2 / getOutputWidth();
        this.mTexelHeight = f2 / getOutputHeight();
        updateTexelValues();
    }

    private void updateTexelValues() {
        setFloat(this.mUniformTexelWidthLocation, this.mTexelWidth);
        setFloat(this.mUniformTexelHeightLocation, this.mTexelHeight);
    }
}

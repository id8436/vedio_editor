package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaRGBFilter extends GPUMediaFilter {
    public static final String RGB_FRAGMENT_SHADER = "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform highp float red;\n  uniform highp float green;\n  uniform highp float blue;\n  \n  void main()\n  {\n      highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.r * red, textureColor.g * green, textureColor.b * blue, 1.0);\n  }\n";
    private float mBlue;
    private int mBlueLocation;
    private float mGreen;
    private int mGreenLocation;
    private boolean mIsInitialized;
    private float mRed;
    private int mRedLocation;

    public GPUMediaRGBFilter() {
        this(1.0f, 1.0f, 1.0f);
    }

    public GPUMediaRGBFilter(float f2, float f3, float f4) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, RGB_FRAGMENT_SHADER);
        this.mIsInitialized = false;
        this.mRed = f2;
        this.mGreen = f3;
        this.mBlue = f4;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mRedLocation = GLES20.glGetUniformLocation(getProgram(), AdobePSDCompositeConstants.AdobePSDCompositeColorRedKey);
        this.mGreenLocation = GLES20.glGetUniformLocation(getProgram(), AdobePSDCompositeConstants.AdobePSDCompositeColorGreenKey);
        this.mBlueLocation = GLES20.glGetUniformLocation(getProgram(), AdobePSDCompositeConstants.AdobePSDCompositeColorBlueKey);
        this.mIsInitialized = true;
        setRed(this.mRed);
        setGreen(this.mGreen);
        setBlue(this.mBlue);
    }

    public void setRed(float f2) {
        this.mRed = f2;
        if (this.mIsInitialized) {
            setFloat(this.mRedLocation, this.mRed);
        }
    }

    public void setGreen(float f2) {
        this.mGreen = f2;
        if (this.mIsInitialized) {
            setFloat(this.mGreenLocation, this.mGreen);
        }
    }

    public void setBlue(float f2) {
        this.mBlue = f2;
        if (this.mIsInitialized) {
            setFloat(this.mBlueLocation, this.mBlue);
        }
    }
}

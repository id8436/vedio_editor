package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaExposureFilter extends GPUMediaFilter {
    public static final String EXPOSURE_FRAGMENT_SHADER = " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform highp float exposure;\n \n void main()\n {\n     highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(textureColor.rgb * pow(2.0, exposure), textureColor.w);\n } ";
    private float mExposure;
    private int mExposureLocation;

    public GPUMediaExposureFilter() {
        this(1.0f);
    }

    public GPUMediaExposureFilter(float f2) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, EXPOSURE_FRAGMENT_SHADER);
        this.mExposure = f2;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mExposureLocation = GLES20.glGetUniformLocation(getProgram(), "exposure");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setExposure(this.mExposure);
    }

    public void setExposure(float f2) {
        this.mExposure = f2;
        setFloat(this.mExposureLocation, this.mExposure);
    }
}

package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaGammaFilter extends GPUMediaFilter {
    public static final String GAMMA_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float gamma;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(pow(textureColor.rgb, vec3(gamma)), textureColor.w);\n }";
    private float mGamma;
    private int mGammaLocation;

    public GPUMediaGammaFilter() {
        this(1.2f);
    }

    public GPUMediaGammaFilter(float f2) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, GAMMA_FRAGMENT_SHADER);
        this.mGamma = f2;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mGammaLocation = GLES20.glGetUniformLocation(getProgram(), "gamma");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setGamma(this.mGamma);
    }

    public void setGamma(float f2) {
        this.mGamma = f2;
        setFloat(this.mGammaLocation, this.mGamma);
    }
}

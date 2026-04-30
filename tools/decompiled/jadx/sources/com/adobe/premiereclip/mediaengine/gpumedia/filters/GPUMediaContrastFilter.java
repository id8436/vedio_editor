package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaContrastFilter extends GPUMediaFilter {
    public static final String CONTRAST_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float contrast;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4(((textureColor.rgb - vec3(0.5)) * contrast + vec3(0.5)), textureColor.w);\n }";
    private float mContrast;
    private int mContrastLocation;

    public GPUMediaContrastFilter() {
        this(1.2f);
    }

    public GPUMediaContrastFilter(float f2) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, CONTRAST_FRAGMENT_SHADER);
        this.mContrast = f2;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mContrastLocation = GLES20.glGetUniformLocation(getProgram(), "contrast");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setContrast(this.mContrast);
    }

    public void setContrast(float f2) {
        this.mContrast = f2;
        setFloat(this.mContrastLocation, this.mContrast);
    }
}

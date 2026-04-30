package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaBrightnessFilter extends GPUMediaFilter {
    public static final String BRIGHTNESS_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float brightness;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4((textureColor.rgb + vec3(brightness)), textureColor.w);\n }";
    private float mBrightness;
    private int mBrightnessLocation;

    public GPUMediaBrightnessFilter() {
        this(0.0f);
    }

    public GPUMediaBrightnessFilter(float f2) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, BRIGHTNESS_FRAGMENT_SHADER);
        this.mBrightness = f2;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mBrightnessLocation = GLES20.glGetUniformLocation(getProgram(), "brightness");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setBrightness(this.mBrightness);
    }

    public void setBrightness(float f2) {
        this.mBrightness = f2;
        setFloat(this.mBrightnessLocation, this.mBrightness);
    }
}

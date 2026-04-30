package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaPosterizeFilter extends GPUMediaFilter {
    public static final String POSTERIZE_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform highp float colorLevels;\n\nvoid main()\n{\n   highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   \n   gl_FragColor = floor((textureColor * colorLevels) + vec4(0.5)) / colorLevels;\n}";
    private int mColorLevels;
    private int mGLUniformColorLevels;

    public GPUMediaPosterizeFilter() {
        this(10);
    }

    public GPUMediaPosterizeFilter(int i) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, POSTERIZE_FRAGMENT_SHADER);
        this.mColorLevels = i;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mGLUniformColorLevels = GLES20.glGetUniformLocation(getProgram(), "colorLevels");
        setColorLevels(this.mColorLevels);
    }

    public void setColorLevels(int i) {
        this.mColorLevels = i;
        setFloat(this.mGLUniformColorLevels, i);
    }
}

package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;
import com.adobe.premiereclip.mediaengine.gpumedia.surface.GPUMediaTexture;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaTwoInputFilter extends GPUMediaFilter {
    private static final String VERTEX_SHADER = "attribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}";
    private int mFilterInputTextureUniform2;
    private int mFilterSecondTextureCoordinateAttribute;
    private GPUMediaTexture mGPUMediaTexture2;

    public GPUMediaTwoInputFilter(String str) {
        this(VERTEX_SHADER, str);
    }

    public GPUMediaTwoInputFilter(String str, String str2) {
        super(str, str2);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected boolean isExternalOES() {
        return super.isExternalOES() || (this.mGPUMediaTexture2 != null && this.mGPUMediaTexture2.isExternalOES());
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected String getFragmentShaderExternalOES() {
        String fragmentShaderExternalOES = super.getFragmentShaderExternalOES();
        if (this.mGPUMediaTexture2 != null && this.mGPUMediaTexture2.isExternalOES()) {
            return fragmentShaderExternalOES.replaceFirst("uniform sampler2D inputImageTexture2;", "uniform samplerExternalOES inputImageTexture2;");
        }
        return fragmentShaderExternalOES;
    }

    public void setSecondGPUMediaTexture(GPUMediaTexture gPUMediaTexture) {
        this.mGPUMediaTexture2 = gPUMediaTexture;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mFilterSecondTextureCoordinateAttribute = GLES20.glGetAttribLocation(getProgram(), "inputTextureCoordinate2");
        this.mFilterInputTextureUniform2 = GLES20.glGetUniformLocation(getProgram(), "inputImageTexture2");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onDestroy() {
        this.mGPUMediaTexture2 = null;
        super.onDestroy();
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void updateSurface() {
        super.updateSurface();
        if (this.mGPUMediaTexture2 != null && this.mGPUMediaTexture2.isExternalOES()) {
            this.mGPUMediaTexture2.update();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void textureDraw() {
        super.textureDraw();
        if (this.mGPUMediaTexture2 != null) {
            GLES20.glActiveTexture(33985);
            this.mGPUMediaTexture2.onDraw(this.mFilterSecondTextureCoordinateAttribute);
            GLES20.glUniform1i(this.mFilterInputTextureUniform2, 1);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onDrawArraysPre() {
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onDrawArraysPost() {
        GLES20.glDisableVertexAttribArray(this.mFilterSecondTextureCoordinateAttribute);
    }
}

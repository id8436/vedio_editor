package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaColorInvertFilter extends GPUMediaFilter {
    public static final String COLOR_INVERT_FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nvarying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    \n    gl_FragColor = vec4((1.0 - textureColor.rgb), textureColor.w);\n}";

    public GPUMediaColorInvertFilter() {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, COLOR_INVERT_FRAGMENT_SHADER);
    }
}

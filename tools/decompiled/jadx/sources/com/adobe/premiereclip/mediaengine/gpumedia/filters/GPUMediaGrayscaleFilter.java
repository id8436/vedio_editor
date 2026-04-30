package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaGrayscaleFilter extends GPUMediaFilter {
    public static final String GRAYSCALE_FRAGMENT_SHADER = "precision highp float;\n\nvarying vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n  lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n  float luminance = dot(textureColor.rgb, W);\n\n  gl_FragColor = vec4(vec3(luminance), textureColor.a);\n}";

    public GPUMediaGrayscaleFilter() {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, GRAYSCALE_FRAGMENT_SHADER);
    }
}

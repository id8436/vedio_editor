package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaOverlayFilter extends GPUMediaTwoInputFilter {
    public static final String OVERLAY_BLEND_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     mediump vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     mediump vec3 col = texture2D(inputImageTexture, textureCoordinate).xyz;\n     col = mix(col, overlay.xyz, overlay.a);\n     \n     gl_FragColor = vec4(col, 1.0);\n }";

    public GPUMediaOverlayFilter() {
        super(OVERLAY_BLEND_FRAGMENT_SHADER);
    }
}

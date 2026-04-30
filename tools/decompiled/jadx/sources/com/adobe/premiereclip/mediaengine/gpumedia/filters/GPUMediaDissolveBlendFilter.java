package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaDissolveBlendFilter extends GPUMediaMixBlendFilter {
    public static final String DISSOLVE_BLEND_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n uniform lowp float mixturePercent;\n \n void main()\n {\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n    \n    gl_FragColor = mix(textureColor, textureColor2, mixturePercent);\n }";

    public GPUMediaDissolveBlendFilter() {
        super(DISSOLVE_BLEND_FRAGMENT_SHADER);
    }

    public GPUMediaDissolveBlendFilter(float f2) {
        super(DISSOLVE_BLEND_FRAGMENT_SHADER, f2);
    }
}

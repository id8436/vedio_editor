package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaAlphaBlendFilter extends GPUMediaMixBlendFilter {
    public static final String ALPHA_BLEND_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n uniform lowp float mixturePercent;\n\n void main()\n {\n   lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n\n   gl_FragColor = vec4(mix(textureColor.rgb, textureColor2.rgb, textureColor2.a * mixturePercent), textureColor.a);\n }";

    public GPUMediaAlphaBlendFilter() {
        super(ALPHA_BLEND_FRAGMENT_SHADER);
    }

    public GPUMediaAlphaBlendFilter(float f2) {
        super(ALPHA_BLEND_FRAGMENT_SHADER, f2);
    }
}

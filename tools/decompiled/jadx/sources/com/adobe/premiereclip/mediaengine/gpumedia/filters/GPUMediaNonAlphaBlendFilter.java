package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaNonAlphaBlendFilter extends GPUMediaMixBlendFilter {
    public static final String NON_ALPHA_BLEND_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n uniform lowp float mixturePercent;\n\n void main()\n {\n   lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   if(mixturePercent != 0.0) { \n       lowp vec4 textureColor2 = texture2D(inputImageTexture2, textureCoordinate2);\n       gl_FragColor = vec4(mix(textureColor.rgb, textureColor2.rgb, mixturePercent), textureColor.a);\n       } else { \n       gl_FragColor = textureColor;\n   } }";

    public GPUMediaNonAlphaBlendFilter() {
        super(NON_ALPHA_BLEND_FRAGMENT_SHADER);
    }

    public GPUMediaNonAlphaBlendFilter(float f2) {
        super(NON_ALPHA_BLEND_FRAGMENT_SHADER, f2);
    }
}

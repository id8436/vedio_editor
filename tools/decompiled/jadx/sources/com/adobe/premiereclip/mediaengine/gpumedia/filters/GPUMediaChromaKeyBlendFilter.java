package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaChromaKeyBlendFilter extends GPUMediaTwoInputFilter {
    public static final String CHROMA_KEY_BLEND_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n highp float lum(lowp vec3 c) {\n     return dot(c, vec3(0.3, 0.59, 0.11));\n }\n \n lowp vec3 clipcolor(lowp vec3 c) {\n     highp float l = lum(c);\n     lowp float n = min(min(c.r, c.g), c.b);\n     lowp float x = max(max(c.r, c.g), c.b);\n     \n     if (n < 0.0) {\n         c.r = l + ((c.r - l) * l) / (l - n);\n         c.g = l + ((c.g - l) * l) / (l - n);\n         c.b = l + ((c.b - l) * l) / (l - n);\n     }\n     if (x > 1.0) {\n         c.r = l + ((c.r - l) * (1.0 - l)) / (x - l);\n         c.g = l + ((c.g - l) * (1.0 - l)) / (x - l);\n         c.b = l + ((c.b - l) * (1.0 - l)) / (x - l);\n     }\n     \n     return c;\n }\n\n lowp vec3 setlum(lowp vec3 c, highp float l) {\n     highp float d = l - lum(c);\n     c = c + vec3(d);\n     return clipcolor(c);\n }\n \n void main()\n {\n   highp vec4 baseColor = texture2D(inputImageTexture, textureCoordinate);\n   highp vec4 overlayColor = texture2D(inputImageTexture2, textureCoordinate2);\n\n     gl_FragColor = vec4(baseColor.rgb * (1.0 - overlayColor.a) + setlum(overlayColor.rgb, lum(baseColor.rgb)) * overlayColor.a, baseColor.a);\n }";
    private float[] mColorToReplace;
    private int mColorToReplaceLocation;
    private float mSmoothing;
    private int mSmoothingLocation;
    private float mThresholdSensitivity;
    private int mThresholdSensitivityLocation;

    public GPUMediaChromaKeyBlendFilter() {
        super("varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n highp float lum(lowp vec3 c) {\n     return dot(c, vec3(0.3, 0.59, 0.11));\n }\n \n lowp vec3 clipcolor(lowp vec3 c) {\n     highp float l = lum(c);\n     lowp float n = min(min(c.r, c.g), c.b);\n     lowp float x = max(max(c.r, c.g), c.b);\n     \n     if (n < 0.0) {\n         c.r = l + ((c.r - l) * l) / (l - n);\n         c.g = l + ((c.g - l) * l) / (l - n);\n         c.b = l + ((c.b - l) * l) / (l - n);\n     }\n     if (x > 1.0) {\n         c.r = l + ((c.r - l) * (1.0 - l)) / (x - l);\n         c.g = l + ((c.g - l) * (1.0 - l)) / (x - l);\n         c.b = l + ((c.b - l) * (1.0 - l)) / (x - l);\n     }\n     \n     return c;\n }\n\n lowp vec3 setlum(lowp vec3 c, highp float l) {\n     highp float d = l - lum(c);\n     c = c + vec3(d);\n     return clipcolor(c);\n }\n \n void main()\n {\n   highp vec4 baseColor = texture2D(inputImageTexture, textureCoordinate);\n   highp vec4 overlayColor = texture2D(inputImageTexture2, textureCoordinate2);\n\n     gl_FragColor = vec4(baseColor.rgb * (1.0 - overlayColor.a) + setlum(overlayColor.rgb, lum(baseColor.rgb)) * overlayColor.a, baseColor.a);\n }");
        this.mSmoothing = 0.1f;
        this.mThresholdSensitivity = 0.3f;
        this.mColorToReplace = new float[]{0.0f, 1.0f, 0.0f};
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaTwoInputFilter, com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mThresholdSensitivityLocation = GLES20.glGetUniformLocation(getProgram(), "thresholdSensitivity");
        this.mSmoothingLocation = GLES20.glGetUniformLocation(getProgram(), "smoothing");
        this.mColorToReplaceLocation = GLES20.glGetUniformLocation(getProgram(), "colorToReplace");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setSmoothing(this.mSmoothing);
        setThresholdSensitivity(this.mThresholdSensitivity);
        setColorToReplace(this.mColorToReplace[0], this.mColorToReplace[1], this.mColorToReplace[2]);
    }

    public void setSmoothing(float f2) {
        this.mSmoothing = f2;
        setFloat(this.mSmoothingLocation, this.mSmoothing);
    }

    public void setThresholdSensitivity(float f2) {
        this.mThresholdSensitivity = f2;
        setFloat(this.mThresholdSensitivityLocation, this.mThresholdSensitivity);
    }

    public void setColorToReplace(float f2, float f3, float f4) {
        this.mColorToReplace = new float[]{f2, f3, f4};
        setFloatVec3(this.mColorToReplaceLocation, this.mColorToReplace);
    }
}

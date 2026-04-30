package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaDilationFilter extends GPUMediaTwoPassTextureSamplingFilter {
    public static final String FRAGMENT_SHADER_1 = "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n";
    public static final String FRAGMENT_SHADER_2 = "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n";
    public static final String FRAGMENT_SHADER_3 = "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\nfloat threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate).r;\nfloat threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n";
    public static final String FRAGMENT_SHADER_4 = "precision lowp float;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nfloat centerIntensity = texture2D(inputImageTexture, centerTextureCoordinate).r;\nfloat oneStepPositiveIntensity = texture2D(inputImageTexture, oneStepPositiveTextureCoordinate).r;\nfloat oneStepNegativeIntensity = texture2D(inputImageTexture, oneStepNegativeTextureCoordinate).r;\nfloat twoStepsPositiveIntensity = texture2D(inputImageTexture, twoStepsPositiveTextureCoordinate).r;\nfloat twoStepsNegativeIntensity = texture2D(inputImageTexture, twoStepsNegativeTextureCoordinate).r;\nfloat threeStepsPositiveIntensity = texture2D(inputImageTexture, threeStepsPositiveTextureCoordinate).r;\nfloat threeStepsNegativeIntensity = texture2D(inputImageTexture, threeStepsNegativeTextureCoordinate).r;\nfloat fourStepsPositiveIntensity = texture2D(inputImageTexture, fourStepsPositiveTextureCoordinate).r;\nfloat fourStepsNegativeIntensity = texture2D(inputImageTexture, fourStepsNegativeTextureCoordinate).r;\n\nlowp float maxValue = max(centerIntensity, oneStepPositiveIntensity);\nmaxValue = max(maxValue, oneStepNegativeIntensity);\nmaxValue = max(maxValue, twoStepsPositiveIntensity);\nmaxValue = max(maxValue, twoStepsNegativeIntensity);\nmaxValue = max(maxValue, threeStepsPositiveIntensity);\nmaxValue = max(maxValue, threeStepsNegativeIntensity);\nmaxValue = max(maxValue, fourStepsPositiveIntensity);\nmaxValue = max(maxValue, fourStepsNegativeIntensity);\n\ngl_FragColor = vec4(vec3(maxValue), 1.0);\n}\n";
    public static final String VERTEX_SHADER_1 = "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\n}\n";
    public static final String VERTEX_SHADER_2 = "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\n}\n";
    public static final String VERTEX_SHADER_3 = "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\n}\n";
    public static final String VERTEX_SHADER_4 = "uniform float texelWidthOffset;\nuniform float texelHeightOffset;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\nvarying vec2 twoStepsPositiveTextureCoordinate;\nvarying vec2 twoStepsNegativeTextureCoordinate;\nvarying vec2 threeStepsPositiveTextureCoordinate;\nvarying vec2 threeStepsNegativeTextureCoordinate;\nvarying vec2 fourStepsPositiveTextureCoordinate;\nvarying vec2 fourStepsNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\ntwoStepsNegativeTextureCoordinate = uv - (offset * 2.0);\ntwoStepsPositiveTextureCoordinate = uv + (offset * 2.0);\nthreeStepsNegativeTextureCoordinate = uv - (offset * 3.0);\nthreeStepsPositiveTextureCoordinate = uv + (offset * 3.0);\nfourStepsNegativeTextureCoordinate = uv - (offset * 4.0);\nfourStepsPositiveTextureCoordinate = uv + (offset * 4.0);\n}\n";

    public GPUMediaDilationFilter() {
        this(1);
    }

    public GPUMediaDilationFilter(int i) {
        this(getVertexShader(i), getFragmentShader(i));
    }

    private GPUMediaDilationFilter(String str, String str2) {
        super(str, str2, str, str2);
    }

    private static String getVertexShader(int i) {
        switch (i) {
            case 0:
            case 1:
                return "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepPositiveTextureCoordinate;\nvarying vec2 oneStepNegativeTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 offset = vec2(texelWidthOffset, texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepNegativeTextureCoordinate = uv - offset;\noneStepPositiveTextureCoordinate = uv + offset;\n}\n";
            case 2:
                return VERTEX_SHADER_2;
            case 3:
                return VERTEX_SHADER_3;
            default:
                return VERTEX_SHADER_4;
        }
    }

    private static String getFragmentShader(int i) {
        switch (i) {
            case 0:
            case 1:
                return FRAGMENT_SHADER_1;
            case 2:
                return FRAGMENT_SHADER_2;
            case 3:
                return FRAGMENT_SHADER_3;
            default:
                return FRAGMENT_SHADER_4;
        }
    }
}

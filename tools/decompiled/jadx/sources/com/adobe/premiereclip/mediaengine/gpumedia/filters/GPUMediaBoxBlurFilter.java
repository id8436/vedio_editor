package com.adobe.premiereclip.mediaengine.gpumedia.filters;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaBoxBlurFilter extends GPUMediaTwoPassTextureSamplingFilter {
    public static final String FRAGMENT_SHADER = "precision highp float;\n\nuniform sampler2D inputImageTexture;\n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\nlowp vec4 fragmentColor = texture2D(inputImageTexture, centerTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, oneStepRightTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsLeftTextureCoordinate) * 0.2;\nfragmentColor += texture2D(inputImageTexture, twoStepsRightTextureCoordinate) * 0.2;\n\ngl_FragColor = fragmentColor;\n}\n";
    public static final String VERTEX_SHADER = "uniform float texelWidthOffset; \nuniform float texelHeightOffset; \n\nvarying vec2 centerTextureCoordinate;\nvarying vec2 oneStepLeftTextureCoordinate;\nvarying vec2 twoStepsLeftTextureCoordinate;\nvarying vec2 oneStepRightTextureCoordinate;\nvarying vec2 twoStepsRightTextureCoordinate;\n\nvoid main()\n{\ngl_Position = pos;\n\nvec2 firstOffset = vec2(1.5 * texelWidthOffset, 1.5 * texelHeightOffset);\nvec2 secondOffset = vec2(3.5 * texelWidthOffset, 3.5 * texelHeightOffset);\n\ncenterTextureCoordinate = uv;\noneStepLeftTextureCoordinate = uv - firstOffset;\ntwoStepsLeftTextureCoordinate = uv - secondOffset;\noneStepRightTextureCoordinate = uv + firstOffset;\ntwoStepsRightTextureCoordinate = uv + secondOffset;\n}\n";
    private float blurSize;

    public GPUMediaBoxBlurFilter() {
        this(1.0f);
    }

    public GPUMediaBoxBlurFilter(float f2) {
        super(VERTEX_SHADER, FRAGMENT_SHADER, VERTEX_SHADER, FRAGMENT_SHADER);
        this.blurSize = 1.0f;
        this.blurSize = f2;
    }

    public void setBlurSize(float f2) {
        this.blurSize = f2;
        runOnDraw(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaBoxBlurFilter.1
            @Override // java.lang.Runnable
            public void run() {
                GPUMediaBoxBlurFilter.this.initTexelOffsets();
            }
        });
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaTwoPassTextureSamplingFilter
    public float getVerticalTexelOffsetRatio() {
        return this.blurSize;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaTwoPassTextureSamplingFilter
    public float getHorizontalTexelOffsetRatio() {
        return this.blurSize;
    }
}

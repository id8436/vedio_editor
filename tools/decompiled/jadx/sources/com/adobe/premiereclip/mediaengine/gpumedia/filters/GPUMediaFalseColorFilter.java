package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaFalseColorFilter extends GPUMediaFilter {
    public static final String FALSECOLOR_FRAGMENT_SHADER = "precision lowp float;\n\nvarying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform float intensity;\nuniform vec3 firstColor;\nuniform vec3 secondColor;\n\nconst mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\nlowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\nfloat luminance = dot(textureColor.rgb, luminanceWeighting);\n\ngl_FragColor = vec4( mix(firstColor.rgb, secondColor.rgb, luminance), textureColor.a);\n}\n";
    private float[] mFirstColor;
    private int mFirstColorLocation;
    private float[] mSecondColor;
    private int mSecondColorLocation;

    public GPUMediaFalseColorFilter() {
        this(0.0f, 0.0f, 0.5f, 1.0f, 0.0f, 0.0f);
    }

    public GPUMediaFalseColorFilter(float f2, float f3, float f4, float f5, float f6, float f7) {
        this(new float[]{f2, f3, f4}, new float[]{f5, f6, f7});
    }

    public GPUMediaFalseColorFilter(float[] fArr, float[] fArr2) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, FALSECOLOR_FRAGMENT_SHADER);
        this.mFirstColor = fArr;
        this.mSecondColor = fArr2;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mFirstColorLocation = GLES20.glGetUniformLocation(getProgram(), "firstColor");
        this.mSecondColorLocation = GLES20.glGetUniformLocation(getProgram(), "secondColor");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setFirstColor(this.mFirstColor);
        setSecondColor(this.mSecondColor);
    }

    public void setFirstColor(float[] fArr) {
        this.mFirstColor = fArr;
        setFloatVec3(this.mFirstColorLocation, fArr);
    }

    public void setSecondColor(float[] fArr) {
        this.mSecondColor = fArr;
        setFloatVec3(this.mSecondColorLocation, fArr);
    }
}

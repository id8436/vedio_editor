package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaMonochromeFilter extends GPUMediaFilter {
    public static final String MONOCHROME_FRAGMENT_SHADER = " precision lowp float;\n  \n  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform float intensity;\n  uniform vec3 filterColor;\n  \n  const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n  \n  void main()\n  {\n \t//desat, then apply overlay blend\n \tlowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n \tfloat luminance = dot(textureColor.rgb, luminanceWeighting);\n \t\n \tlowp vec4 desat = vec4(vec3(luminance), 1.0);\n \t\n \t//overlay\n \tlowp vec4 outputColor = vec4(\n                                  (desat.r < 0.5 ? (2.0 * desat.r * filterColor.r) : (1.0 - 2.0 * (1.0 - desat.r) * (1.0 - filterColor.r))),\n                                  (desat.g < 0.5 ? (2.0 * desat.g * filterColor.g) : (1.0 - 2.0 * (1.0 - desat.g) * (1.0 - filterColor.g))),\n                                  (desat.b < 0.5 ? (2.0 * desat.b * filterColor.b) : (1.0 - 2.0 * (1.0 - desat.b) * (1.0 - filterColor.b))),\n                                  1.0\n                                  );\n \t\n \t//which is better, or are they equal?\n \tgl_FragColor = vec4( mix(textureColor.rgb, outputColor.rgb, intensity), textureColor.a);\n  }";
    private float[] mColor;
    private int mFilterColorLocation;
    private float mIntensity;
    private int mIntensityLocation;

    public GPUMediaMonochromeFilter() {
        this(1.0f, new float[]{0.6f, 0.45f, 0.3f, 1.0f});
    }

    public GPUMediaMonochromeFilter(float f2, float[] fArr) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, MONOCHROME_FRAGMENT_SHADER);
        this.mIntensity = f2;
        this.mColor = fArr;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mIntensityLocation = GLES20.glGetUniformLocation(getProgram(), "intensity");
        this.mFilterColorLocation = GLES20.glGetUniformLocation(getProgram(), "filterColor");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setIntensity(1.0f);
        setColor(new float[]{0.6f, 0.45f, 0.3f, 1.0f});
    }

    public void setIntensity(float f2) {
        this.mIntensity = f2;
        setFloat(this.mIntensityLocation, this.mIntensity);
    }

    public void setColor(float[] fArr) {
        this.mColor = fArr;
        setColorRed(this.mColor[0], this.mColor[1], this.mColor[2]);
    }

    public void setColorRed(float f2, float f3, float f4) {
        setFloatVec3(this.mFilterColorLocation, new float[]{f2, f3, f4});
    }
}

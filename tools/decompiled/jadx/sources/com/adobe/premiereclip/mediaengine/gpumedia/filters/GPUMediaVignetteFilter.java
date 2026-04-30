package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.graphics.PointF;
import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaVignetteFilter extends GPUMediaFilter {
    public static final String VIGNETTING_FRAGMENT_SHADER = " uniform sampler2D inputImageTexture;\n varying highp vec2 textureCoordinate;\n \n uniform lowp vec2 vignetteCenter;\n uniform lowp vec3 vignetteColor;\n uniform highp float vignetteStart;\n uniform highp float vignetteEnd;\n \n void main()\n {\n     /*\n     lowp vec3 rgb = texture2D(inputImageTexture, textureCoordinate).rgb;\n     lowp float d = distance(textureCoordinate, vec2(0.5,0.5));\n     rgb *= (1.0 - smoothstep(vignetteStart, vignetteEnd, d));\n     gl_FragColor = vec4(vec3(rgb),1.0);\n      */\n     \n     lowp vec3 rgb = texture2D(inputImageTexture, textureCoordinate).rgb;\n     lowp float d = distance(textureCoordinate, vec2(vignetteCenter.x, vignetteCenter.y));\n     lowp float percent = smoothstep(vignetteStart, vignetteEnd, d);\n     gl_FragColor = vec4(mix(rgb.x, vignetteColor.x, percent), mix(rgb.y, vignetteColor.y, percent), mix(rgb.z, vignetteColor.z, percent), 1.0);\n }";
    private PointF mVignetteCenter;
    private int mVignetteCenterLocation;
    private float[] mVignetteColor;
    private int mVignetteColorLocation;
    private float mVignetteEnd;
    private int mVignetteEndLocation;
    private float mVignetteStart;
    private int mVignetteStartLocation;

    public GPUMediaVignetteFilter() {
        this(new PointF(0.5f, 0.5f), new float[]{0.0f, 0.0f, 0.0f}, 0.3f, 0.75f);
    }

    public GPUMediaVignetteFilter(PointF pointF, float[] fArr, float f2, float f3) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, VIGNETTING_FRAGMENT_SHADER);
        this.mVignetteCenter = pointF;
        this.mVignetteColor = fArr;
        this.mVignetteStart = f2;
        this.mVignetteEnd = f3;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mVignetteCenterLocation = GLES20.glGetUniformLocation(getProgram(), "vignetteCenter");
        this.mVignetteColorLocation = GLES20.glGetUniformLocation(getProgram(), "vignetteColor");
        this.mVignetteStartLocation = GLES20.glGetUniformLocation(getProgram(), "vignetteStart");
        this.mVignetteEndLocation = GLES20.glGetUniformLocation(getProgram(), "vignetteEnd");
        setVignetteCenter(this.mVignetteCenter);
        setVignetteColor(this.mVignetteColor);
        setVignetteStart(this.mVignetteStart);
        setVignetteEnd(this.mVignetteEnd);
    }

    public void setVignetteCenter(PointF pointF) {
        this.mVignetteCenter = pointF;
        setPoint(this.mVignetteCenterLocation, this.mVignetteCenter);
    }

    public void setVignetteColor(float[] fArr) {
        this.mVignetteColor = fArr;
        setFloatVec3(this.mVignetteColorLocation, this.mVignetteColor);
    }

    public void setVignetteStart(float f2) {
        this.mVignetteStart = f2;
        setFloat(this.mVignetteStartLocation, this.mVignetteStart);
    }

    public void setVignetteEnd(float f2) {
        this.mVignetteEnd = f2;
        setFloat(this.mVignetteEndLocation, this.mVignetteEnd);
    }
}

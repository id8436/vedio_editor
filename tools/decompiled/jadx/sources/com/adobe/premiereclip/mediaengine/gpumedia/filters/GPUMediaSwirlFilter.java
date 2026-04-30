package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.graphics.PointF;
import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaSwirlFilter extends GPUMediaFilter {
    public static final String SWIRL_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float angle;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = textureCoordinate;\nhighp float dist = distance(center, textureCoordinate);\nif (dist < radius)\n{\ntextureCoordinateToUse -= center;\nhighp float percent = (radius - dist) / radius;\nhighp float theta = percent * percent * angle * 8.0;\nhighp float s = sin(theta);\nhighp float c = cos(theta);\ntextureCoordinateToUse = vec2(dot(textureCoordinateToUse, vec2(c, -s)), dot(textureCoordinateToUse, vec2(s, c)));\ntextureCoordinateToUse += center;\n}\n\ngl_FragColor = texture2D(inputImageTexture, textureCoordinateToUse );\n\n}\n";
    private float mAngle;
    private int mAngleLocation;
    private PointF mCenter;
    private int mCenterLocation;
    private float mRadius;
    private int mRadiusLocation;

    public GPUMediaSwirlFilter() {
        this(0.5f, 1.0f, new PointF(0.5f, 0.5f));
    }

    public GPUMediaSwirlFilter(float f2, float f3, PointF pointF) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, SWIRL_FRAGMENT_SHADER);
        this.mRadius = f2;
        this.mAngle = f3;
        this.mCenter = pointF;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mAngleLocation = GLES20.glGetUniformLocation(getProgram(), "angle");
        this.mRadiusLocation = GLES20.glGetUniformLocation(getProgram(), "radius");
        this.mCenterLocation = GLES20.glGetUniformLocation(getProgram(), "center");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setRadius(this.mRadius);
        setAngle(this.mAngle);
        setCenter(this.mCenter);
    }

    public void setRadius(float f2) {
        this.mRadius = f2;
        setFloat(this.mRadiusLocation, f2);
    }

    public void setAngle(float f2) {
        this.mAngle = f2;
        setFloat(this.mAngleLocation, f2);
    }

    public void setCenter(PointF pointF) {
        this.mCenter = pointF;
        setPoint(this.mCenterLocation, pointF);
    }
}

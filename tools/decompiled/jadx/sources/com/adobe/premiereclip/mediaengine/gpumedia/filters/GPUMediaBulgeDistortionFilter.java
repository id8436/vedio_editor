package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.graphics.PointF;
import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaBulgeDistortionFilter extends GPUMediaFilter {
    public static final String BULGE_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp float aspectRatio;\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float scale;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float dist = distance(center, textureCoordinateToUse);\ntextureCoordinateToUse = textureCoordinate;\n\nif (dist < radius)\n{\ntextureCoordinateToUse -= center;\nhighp float percent = 1.0 - ((radius - dist) / radius) * scale;\npercent = percent * percent;\n\ntextureCoordinateToUse = textureCoordinateToUse * percent;\ntextureCoordinateToUse += center;\n}\n\ngl_FragColor = texture2D(inputImageTexture, textureCoordinateToUse );    \n}\n";
    private float mAspectRatio;
    private int mAspectRatioLocation;
    private PointF mCenter;
    private int mCenterLocation;
    private float mRadius;
    private int mRadiusLocation;
    private float mScale;
    private int mScaleLocation;

    public GPUMediaBulgeDistortionFilter() {
        this(0.25f, 0.5f, new PointF(0.5f, 0.5f));
    }

    public GPUMediaBulgeDistortionFilter(float f2, float f3, PointF pointF) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, BULGE_FRAGMENT_SHADER);
        this.mRadius = f2;
        this.mScale = f3;
        this.mCenter = pointF;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mScaleLocation = GLES20.glGetUniformLocation(getProgram(), "scale");
        this.mRadiusLocation = GLES20.glGetUniformLocation(getProgram(), "radius");
        this.mCenterLocation = GLES20.glGetUniformLocation(getProgram(), "center");
        this.mAspectRatioLocation = GLES20.glGetUniformLocation(getProgram(), "aspectRatio");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setRadius(this.mRadius);
        setScale(this.mScale);
        setCenter(this.mCenter);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    public void onOutputSizeChanged(int i, int i2) {
        this.mAspectRatio = i2 / i;
        setAspectRatio(this.mAspectRatio);
        super.onOutputSizeChanged(i, i2);
    }

    private void setAspectRatio(float f2) {
        this.mAspectRatio = f2;
        setFloat(this.mAspectRatioLocation, f2);
    }

    public void setRadius(float f2) {
        this.mRadius = f2;
        setFloat(this.mRadiusLocation, f2);
    }

    public void setScale(float f2) {
        this.mScale = f2;
        setFloat(this.mScaleLocation, f2);
    }

    public void setCenter(PointF pointF) {
        this.mCenter = pointF;
        setPoint(this.mCenterLocation, pointF);
    }
}

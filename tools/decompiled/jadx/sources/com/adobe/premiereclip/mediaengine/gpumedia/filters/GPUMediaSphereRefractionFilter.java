package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.graphics.PointF;
import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaSphereRefractionFilter extends GPUMediaFilter {
    public static final String SPHERE_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float aspectRatio;\nuniform highp float refractiveIndex;\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float distanceFromCenter = distance(center, textureCoordinateToUse);\nlowp float checkForPresenceWithinSphere = step(distanceFromCenter, radius);\n\ndistanceFromCenter = distanceFromCenter / radius;\n\nhighp float normalizedDepth = radius * sqrt(1.0 - distanceFromCenter * distanceFromCenter);\nhighp vec3 sphereNormal = normalize(vec3(textureCoordinateToUse - center, normalizedDepth));\n\nhighp vec3 refractedVector = refract(vec3(0.0, 0.0, -1.0), sphereNormal, refractiveIndex);\n\ngl_FragColor = texture2D(inputImageTexture, (refractedVector.xy + 1.0) * 0.5) * checkForPresenceWithinSphere;     \n}\n";
    private float mAspectRatio;
    private int mAspectRatioLocation;
    private PointF mCenter;
    private int mCenterLocation;
    private float mRadius;
    private int mRadiusLocation;
    private float mRefractiveIndex;
    private int mRefractiveIndexLocation;

    public GPUMediaSphereRefractionFilter() {
        this(new PointF(0.5f, 0.5f), 0.25f, 0.71f);
    }

    public GPUMediaSphereRefractionFilter(PointF pointF, float f2, float f3) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, SPHERE_FRAGMENT_SHADER);
        this.mCenter = pointF;
        this.mRadius = f2;
        this.mRefractiveIndex = f3;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mCenterLocation = GLES20.glGetUniformLocation(getProgram(), "center");
        this.mRadiusLocation = GLES20.glGetUniformLocation(getProgram(), "radius");
        this.mAspectRatioLocation = GLES20.glGetUniformLocation(getProgram(), "aspectRatio");
        this.mRefractiveIndexLocation = GLES20.glGetUniformLocation(getProgram(), "refractiveIndex");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setRadius(this.mRadius);
        setCenter(this.mCenter);
        setRefractiveIndex(this.mRefractiveIndex);
        this.mAspectRatio = this.mOutputHeight / this.mOutputWidth;
        setAspectRatio(this.mAspectRatio);
    }

    private void setAspectRatio(float f2) {
        this.mAspectRatio = f2;
        setFloat(this.mAspectRatioLocation, f2);
    }

    public void setRefractiveIndex(float f2) {
        this.mRefractiveIndex = f2;
        setFloat(this.mRefractiveIndexLocation, f2);
    }

    public void setCenter(PointF pointF) {
        this.mCenter = pointF;
        setPoint(this.mCenterLocation, pointF);
    }

    public void setRadius(float f2) {
        this.mRadius = f2;
        setFloat(this.mRadiusLocation, f2);
    }
}

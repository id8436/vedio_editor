package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaHazeFilter extends GPUMediaFilter {
    public static final String HAZE_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp float distance;\nuniform highp float slope;\n\nvoid main()\n{\n\t//todo reconsider precision modifiers\t \n\t highp vec4 color = vec4(1.0);//todo reimplement as a parameter\n\n\t highp float  d = textureCoordinate.y * slope  +  distance; \n\n\t highp vec4 c = texture2D(inputImageTexture, textureCoordinate) ; // consider using unpremultiply\n\n\t c = (c - d * color) / (1.0 -d);\n\n\t gl_FragColor = c; //consider using premultiply(c);\n}\n";
    private float mDistance;
    private int mDistanceLocation;
    private float mSlope;
    private int mSlopeLocation;

    public GPUMediaHazeFilter() {
        this(0.2f, 0.0f);
    }

    public GPUMediaHazeFilter(float f2, float f3) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, HAZE_FRAGMENT_SHADER);
        this.mDistance = f2;
        this.mSlope = f3;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mDistanceLocation = GLES20.glGetUniformLocation(getProgram(), "distance");
        this.mSlopeLocation = GLES20.glGetUniformLocation(getProgram(), "slope");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setDistance(this.mDistance);
        setSlope(this.mSlope);
    }

    public void setDistance(float f2) {
        this.mDistance = f2;
        setFloat(this.mDistanceLocation, f2);
    }

    public void setSlope(float f2) {
        this.mSlope = f2;
        setFloat(this.mSlopeLocation, f2);
    }
}

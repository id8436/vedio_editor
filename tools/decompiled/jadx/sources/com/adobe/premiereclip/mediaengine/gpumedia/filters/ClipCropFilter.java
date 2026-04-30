package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class ClipCropFilter extends GPUMediaFilter {
    public static final String CROP_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform highp float crop_bottom;\nuniform highp float height;\nuniform highp float crop_right;\nuniform highp float width;\nvoid main()\n{\n       gl_FragColor = texture2D(inputImageTexture, vec2(textureCoordinate.x * crop_right / width, textureCoordinate.y * crop_bottom / height));\n}";
    private float crop_bottom;
    private float crop_right;
    private float height;
    private int mGLUniformCropBottomLocation;
    private int mGLUniformCropRightLocation;
    private int mGLUniformHeightLocation;
    private int mGLUniformWidthLocation;
    private float width;

    public ClipCropFilter() {
        this(1, 1, 1, 1);
    }

    public ClipCropFilter(int i, int i2, int i3, int i4) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, CROP_FRAGMENT_SHADER);
        this.width = i;
        this.height = i2;
        this.crop_right = i3;
        this.crop_bottom = i4;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mGLUniformWidthLocation = GLES20.glGetUniformLocation(this.mGLProgId, "width");
        this.mGLUniformCropRightLocation = GLES20.glGetUniformLocation(this.mGLProgId, "crop_right");
        this.mGLUniformCropBottomLocation = GLES20.glGetUniformLocation(this.mGLProgId, "crop_bottom");
        this.mGLUniformHeightLocation = GLES20.glGetUniformLocation(this.mGLProgId, "height");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setFloat(this.mGLUniformCropRightLocation, this.crop_right);
        setFloat(this.mGLUniformCropBottomLocation, this.crop_bottom);
        setFloat(this.mGLUniformWidthLocation, this.width);
        setFloat(this.mGLUniformHeightLocation, this.height);
    }

    public void setCropParams(int i, int i2) {
        this.crop_bottom = i2;
        this.crop_right = i;
        setFloat(this.mGLUniformCropRightLocation, this.crop_right);
        setFloat(this.mGLUniformCropBottomLocation, this.crop_bottom);
    }

    public void setSizeParams(int i, int i2) {
        this.width = i;
        this.height = i2;
        setFloat(this.mGLUniformWidthLocation, this.width);
        setFloat(this.mGLUniformHeightLocation, this.height);
    }
}

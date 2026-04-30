package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaCrosshatchFilter extends GPUMediaFilter {
    public static final String CROSSHATCH_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform highp float crossHatchSpacing;\nuniform highp float lineWidth;\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\nvoid main()\n{\nhighp float luminance = dot(texture2D(inputImageTexture, textureCoordinate).rgb, W);\nlowp vec4 colorToDisplay = vec4(1.0, 1.0, 1.0, 1.0);\nif (luminance < 1.00)\n{\nif (mod(textureCoordinate.x + textureCoordinate.y, crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.75)\n{\nif (mod(textureCoordinate.x - textureCoordinate.y, crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.50)\n{\nif (mod(textureCoordinate.x + textureCoordinate.y - (crossHatchSpacing / 2.0), crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.3)\n{\nif (mod(textureCoordinate.x - textureCoordinate.y - (crossHatchSpacing / 2.0), crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\ngl_FragColor = colorToDisplay;\n}\n";
    private float mCrossHatchSpacing;
    private int mCrossHatchSpacingLocation;
    private float mLineWidth;
    private int mLineWidthLocation;

    public GPUMediaCrosshatchFilter() {
        this(0.03f, 0.003f);
    }

    public GPUMediaCrosshatchFilter(float f2, float f3) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, CROSSHATCH_FRAGMENT_SHADER);
        this.mCrossHatchSpacing = f2;
        this.mLineWidth = f3;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mCrossHatchSpacingLocation = GLES20.glGetUniformLocation(getProgram(), "crossHatchSpacing");
        this.mLineWidthLocation = GLES20.glGetUniformLocation(getProgram(), "lineWidth");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setCrossHatchSpacing(this.mCrossHatchSpacing);
        setLineWidth(this.mLineWidth);
    }

    public void setCrossHatchSpacing(float f2) {
        float outputWidth;
        if (getOutputWidth() != 0) {
            outputWidth = 1.0f / getOutputWidth();
        } else {
            outputWidth = 4.8828125E-4f;
        }
        if (f2 < outputWidth) {
            this.mCrossHatchSpacing = outputWidth;
        } else {
            this.mCrossHatchSpacing = f2;
        }
        setFloat(this.mCrossHatchSpacingLocation, this.mCrossHatchSpacing);
    }

    public void setLineWidth(float f2) {
        this.mLineWidth = f2;
        setFloat(this.mLineWidthLocation, this.mLineWidth);
    }
}

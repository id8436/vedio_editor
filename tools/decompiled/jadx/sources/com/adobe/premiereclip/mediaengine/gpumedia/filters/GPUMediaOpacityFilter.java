package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;

/* JADX INFO: loaded from: classes2.dex */
public class GPUMediaOpacityFilter extends GPUMediaFilter {
    public static final String OPACITY_FRAGMENT_SHADER = "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform lowp float opacity;\n  \n  void main()\n  {\n      lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.rgb, textureColor.a * opacity);\n  }\n";
    private float mOpacity;
    private int mOpacityLocation;

    public GPUMediaOpacityFilter() {
        this(1.0f);
    }

    public GPUMediaOpacityFilter(float f2) {
        super(GPUMediaFilter.NO_FILTER_VERTEX_SHADER, OPACITY_FRAGMENT_SHADER);
        this.mOpacity = f2;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mOpacityLocation = GLES20.glGetUniformLocation(getProgram(), AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsOpacityKey);
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setOpacity(this.mOpacity);
    }

    public void setOpacity(float f2) {
        this.mOpacity = f2;
        setFloat(this.mOpacityLocation, this.mOpacity);
    }
}

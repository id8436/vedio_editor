package com.adobe.premiereclip.mediaengine.gpumedia.filters;

import android.opengl.GLES20;

/* JADX INFO: loaded from: classes2.dex */
public class ClipLookUpFilter extends GPUMediaTwoInputFilter {
    public static final String LOOKUP_FRAGMENT_SHADER = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2; // TODO: This is not used\n \n uniform int nullEffect; \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n \n void main()\n {\n   highp vec4 rawColor = texture2D(inputImageTexture, textureCoordinate); \n   highp vec4 outColor, outColor1, outColor2; \n   if(nullEffect == 1) { \n      outColor = rawColor; \n   } \n   else { \n      highp float rf = rawColor.r; \n      highp float gf = rawColor.g; \n      highp float bf = rawColor.b * 16.0; \n      int bfint = int(bf);\n      if(bfint >= 16) { bfint = 15; } \n      highp float bfintf = float(bfint); \n      highp vec2 intCoord;\n      highp float x = rf; \n      highp float y1; \n      highp float y2; \n      if(mod(bfintf, 2.0) == 1.0) { \n          y1 = (1.0 - gf) / 16.0 + (float(bfint) / 16.0); \n          if(bfint != 15) { \n              y2 = (gf / 16.0) + (float(bfint + 1) / 16.0); \n          }\n          else { \n              y2 = y1; \n          }\n      } \n      else { \n          y1 = (gf / 16.0) + (float(bfint) / 16.0); \n          if(bfint != 15) { \n              y2 = (1.0 - gf) / 16.0 + (float(bfint + 1) / 16.0); \n          } \n          else{ \n              y2 = y1; \n          } \n      } \n      highp vec2 lookup1, lookup2; \n      lookup1.x = x; \n      lookup1.y = y1; \n      lookup2.x = x; \n      lookup2.y = y2; \n      outColor1 = texture2D(inputImageTexture2, lookup1); \n      outColor2 = texture2D(inputImageTexture2, lookup2); \n      outColor = vec4(mix(outColor1, outColor2, bf - float(bfint)).rgb, rawColor.a); \n   } \n   gl_FragColor = outColor;\n}";
    private boolean mNullEffect;
    private int mNullEffectLocation;

    public ClipLookUpFilter() {
        super(LOOKUP_FRAGMENT_SHADER);
        this.mNullEffect = true;
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaTwoInputFilter, com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInit() {
        super.onInit();
        this.mNullEffectLocation = GLES20.glGetUniformLocation(getProgram(), "nullEffect");
    }

    @Override // com.adobe.premiereclip.mediaengine.gpumedia.filters.GPUMediaFilter
    protected void onInitialized() {
        super.onInitialized();
        setInteger(this.mNullEffectLocation, this.mNullEffect ? 1 : 0);
    }

    public void setNullEffect(boolean z) {
        if (this.mNullEffect != z) {
            this.mNullEffect = z;
            if (isInitialized()) {
                setInteger(this.mNullEffectLocation, this.mNullEffect ? 1 : 0);
            }
        }
    }
}

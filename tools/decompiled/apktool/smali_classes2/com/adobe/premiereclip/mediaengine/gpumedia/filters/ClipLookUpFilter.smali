.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;
.source "ClipLookUpFilter.java"


# static fields
.field public static final LOOKUP_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2; // TODO: This is not used\n \n uniform int nullEffect; \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n \n void main()\n {\n   highp vec4 rawColor = texture2D(inputImageTexture, textureCoordinate); \n   highp vec4 outColor, outColor1, outColor2; \n   if(nullEffect == 1) { \n      outColor = rawColor; \n   } \n   else { \n      highp float rf = rawColor.r; \n      highp float gf = rawColor.g; \n      highp float bf = rawColor.b * 16.0; \n      int bfint = int(bf);\n      if(bfint >= 16) { bfint = 15; } \n      highp float bfintf = float(bfint); \n      highp vec2 intCoord;\n      highp float x = rf; \n      highp float y1; \n      highp float y2; \n      if(mod(bfintf, 2.0) == 1.0) { \n          y1 = (1.0 - gf) / 16.0 + (float(bfint) / 16.0); \n          if(bfint != 15) { \n              y2 = (gf / 16.0) + (float(bfint + 1) / 16.0); \n          }\n          else { \n              y2 = y1; \n          }\n      } \n      else { \n          y1 = (gf / 16.0) + (float(bfint) / 16.0); \n          if(bfint != 15) { \n              y2 = (1.0 - gf) / 16.0 + (float(bfint + 1) / 16.0); \n          } \n          else{ \n              y2 = y1; \n          } \n      } \n      highp vec2 lookup1, lookup2; \n      lookup1.x = x; \n      lookup1.y = y1; \n      lookup2.x = x; \n      lookup2.y = y2; \n      outColor1 = texture2D(inputImageTexture2, lookup1); \n      outColor2 = texture2D(inputImageTexture2, lookup2); \n      outColor = vec4(mix(outColor1, outColor2, bf - float(bfint)).rgb, rawColor.a); \n   } \n   gl_FragColor = outColor;\n}"


# instance fields
.field private mNullEffect:Z

.field private mNullEffectLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2; // TODO: This is not used\n \n uniform int nullEffect; \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n \n void main()\n {\n   highp vec4 rawColor = texture2D(inputImageTexture, textureCoordinate); \n   highp vec4 outColor, outColor1, outColor2; \n   if(nullEffect == 1) { \n      outColor = rawColor; \n   } \n   else { \n      highp float rf = rawColor.r; \n      highp float gf = rawColor.g; \n      highp float bf = rawColor.b * 16.0; \n      int bfint = int(bf);\n      if(bfint >= 16) { bfint = 15; } \n      highp float bfintf = float(bfint); \n      highp vec2 intCoord;\n      highp float x = rf; \n      highp float y1; \n      highp float y2; \n      if(mod(bfintf, 2.0) == 1.0) { \n          y1 = (1.0 - gf) / 16.0 + (float(bfint) / 16.0); \n          if(bfint != 15) { \n              y2 = (gf / 16.0) + (float(bfint + 1) / 16.0); \n          }\n          else { \n              y2 = y1; \n          }\n      } \n      else { \n          y1 = (gf / 16.0) + (float(bfint) / 16.0); \n          if(bfint != 15) { \n              y2 = (1.0 - gf) / 16.0 + (float(bfint + 1) / 16.0); \n          } \n          else{ \n              y2 = y1; \n          } \n      } \n      highp vec2 lookup1, lookup2; \n      lookup1.x = x; \n      lookup1.y = y1; \n      lookup2.x = x; \n      lookup2.y = y2; \n      outColor1 = texture2D(inputImageTexture2, lookup1); \n      outColor2 = texture2D(inputImageTexture2, lookup2); \n      outColor = vec4(mix(outColor1, outColor2, bf - float(bfint)).rgb, rawColor.a); \n   } \n   gl_FragColor = outColor;\n}"

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->mNullEffect:Z

    .line 88
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->onInit()V

    .line 93
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "nullEffect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->mNullEffectLocation:I

    .line 94
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->onInitialized()V

    .line 99
    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->mNullEffectLocation:I

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->mNullEffect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->setInteger(II)V

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNullEffect(Z)V
    .locals 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->mNullEffect:Z

    if-eq v0, p1, :cond_0

    .line 104
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->mNullEffect:Z

    .line 105
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->mNullEffectLocation:I

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->mNullEffect:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipLookUpFilter;->setInteger(II)V

    .line 109
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

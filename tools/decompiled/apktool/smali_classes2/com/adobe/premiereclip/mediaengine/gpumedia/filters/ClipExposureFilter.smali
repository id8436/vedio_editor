.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;
.source "ClipExposureFilter.java"


# static fields
.field public static final EXPOSURE_FRAGMENT_SHADER:Ljava/lang/String; = " precision highp float;                                                            \n varying highp vec2 textureCoordinate;                                             \n uniform sampler2D inputImageTexture;                                              \n uniform sampler2D inputImageTexture2; // exposurelut                                             \n uniform float exposure;                                                     \n uniform float highlights;                                                   \n uniform float shadows;                                                      \n uniform float exposureLutTextureYOffset;                                     \n void main()                                                                       \n {                                                                                 \n       highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);    \n       highp vec4 outColor = textureColor;                                           \n                                                                                  \n       outColor = vec4(outColor.rgb * pow(10.0, exposure / 20.0), outColor.w);       \n       outColor = clamp(outColor, 0.0, 1.0);                                         \n                                                                                 \n       if(shadows != .5 || highlights != .5) {                                       \n           int minMidMaxIndices[3];                                                    \n           minMidMaxIndices[0] = 0;                                                        \n           minMidMaxIndices[1] = 1;                                                        \n           minMidMaxIndices[2] = 2;                                                        \n           if (outColor.r < outColor.g) {                                                    \n               if (outColor.g < outColor.b) {                                                \n                   minMidMaxIndices[0] = 0;                                                \n                   minMidMaxIndices[1] = 1;                                                \n                   minMidMaxIndices[2] = 2;                                                \n               }                                                                           \n               else {                                                                      \n                   if (outColor.r < outColor.b) {                                            \n                       minMidMaxIndices[0] = 0;                                            \n                       minMidMaxIndices[1] = 2;                                            \n                       minMidMaxIndices[2] = 1;                                            \n                   }                                                                       \n                   else {                                                                  \n                       minMidMaxIndices[0] = 2;                                            \n                       minMidMaxIndices[1] = 0;                                            \n                       minMidMaxIndices[2] = 1;                                            \n                   }                                                                       \n               }                                                                           \n           }                                                                               \n           else {                                                                          \n               if (outColor.r < outColor.b) {                                                \n                   minMidMaxIndices[0] = 1;                                                \n                   minMidMaxIndices[1] = 0;                                                \n                   minMidMaxIndices[2] = 2;                                                \n               }                                                                           \n               else {                                                                      \n                   if (outColor.g < outColor.b) {                                            \n                       minMidMaxIndices[0] = 1;                                            \n                       minMidMaxIndices[1] = 2;                                            \n                       minMidMaxIndices[2] = 0;                                            \n                   }                                                                       \n                   else {                                                                  \n                       minMidMaxIndices[0] = 2;                                            \n                       minMidMaxIndices[1] = 1;                                            \n                       minMidMaxIndices[2] = 0;                                            \n                   }                                                                       \n               }                                                                           \n           }                                                                               \n           float xOffset;                                                                                 \n           float x;                                                                  \n           if(minMidMaxIndices[0] == 0) {                                                      \n               x = outColor.r;                                                          \n               xOffset = outColor.r;                                                   \n           }                                                                                       \n           else if(minMidMaxIndices[0] == 1) {                                                     \n               x = outColor.g;                                                               \n               xOffset = outColor.g;                                                           \n           }                                                                                       \n           else if(minMidMaxIndices[0] == 2) {                                                     \n               x = outColor.b;                                                               \n               xOffset = outColor.b;                                                           \n           }                                                                                       \n           float y;                                                                          \n           if(minMidMaxIndices[1] == 0) {                                                      \n               y = outColor.r;                                                          \n           }                                                                                       \n           else if(minMidMaxIndices[1] == 1) {                                                     \n               y = outColor.g;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[1] == 2) {                                                     \n               y = outColor.b;                                                               \n           }                                                                                       \n           float z;                                                                          \n           if(minMidMaxIndices[2] == 0) {                                                      \n               z = outColor.r;                                                          \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 1) {                                                     \n               z = outColor.g;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 2) {                                                     \n               z = outColor.b;                                                               \n           }                                                                                       \n           float interpT = (y - x) / max(z - x, 1.0 / 256.0);                                              \n           highp vec2 texCoord = vec2(xOffset, 0.0);                                         \n           float c = texture2D(inputImageTexture2, texCoord).r;                       \n           if(minMidMaxIndices[0] == 0) {                                                      \n               outColor.r = c;                                                                 \n           }                                                                                   \n           else if(minMidMaxIndices[0] == 1) {                                                 \n               outColor.g = c;                                                                 \n           }                                                                                   \n           else if(minMidMaxIndices[0] == 2) {                                                 \n               outColor.b = c;                                                                 \n           }                                                                                   \n           x = c;                                                                              \n           if(minMidMaxIndices[2] == 0) {                                                      \n               xOffset = outColor.r;                                                           \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 1) {                                                     \n               xOffset = outColor.g;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 2) {                                                     \n               xOffset = outColor.b;                                                               \n           }                                                                                       \n           texCoord = vec2(xOffset, 0.0);                                          \n           c = texture2D(inputImageTexture2, texCoord).r;                       \n           if(minMidMaxIndices[2] == 0) {                                                      \n               outColor.r = c;                                                                 \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 1) {                                                     \n               outColor.g = c;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 2) {                                                     \n               outColor.b = c;                                                               \n           }                                                                                      \n           z = c;                                                                                  \n           float result = x + (interpT * (z-x));                                           \n           if(minMidMaxIndices[1] == 0) {                                                      \n               outColor.r = result;                                                         \n           }                                                                                       \n           else if(minMidMaxIndices[1] == 1) {                                                     \n               outColor.g = result;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[1] == 2) {                                                     \n               outColor.b = result;                                                               \n           }                                                                                     \n           outColor = clamp(outColor, 0.0, 1.0);                                      \n       }                                                              \n                                                                                          \n       gl_FragColor = outColor;                                                      \n } "


# instance fields
.field private mExposure:F

.field private mExposureLocation:I

.field private mExposureLutTextureYOffset:F

.field private mExposureLutTextureYOffsetLocation:I

.field private mHighlights:F

.field private mHighlightsLocation:I

.field private mShadows:F

.field private mShadowsLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;-><init>(FFF)V

    .line 188
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2

    .prologue
    .line 191
    const-string/jumbo v0, "varying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n}"

    const-string/jumbo v1, " precision highp float;                                                            \n varying highp vec2 textureCoordinate;                                             \n uniform sampler2D inputImageTexture;                                              \n uniform sampler2D inputImageTexture2; // exposurelut                                             \n uniform float exposure;                                                     \n uniform float highlights;                                                   \n uniform float shadows;                                                      \n uniform float exposureLutTextureYOffset;                                     \n void main()                                                                       \n {                                                                                 \n       highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);    \n       highp vec4 outColor = textureColor;                                           \n                                                                                  \n       outColor = vec4(outColor.rgb * pow(10.0, exposure / 20.0), outColor.w);       \n       outColor = clamp(outColor, 0.0, 1.0);                                         \n                                                                                 \n       if(shadows != .5 || highlights != .5) {                                       \n           int minMidMaxIndices[3];                                                    \n           minMidMaxIndices[0] = 0;                                                        \n           minMidMaxIndices[1] = 1;                                                        \n           minMidMaxIndices[2] = 2;                                                        \n           if (outColor.r < outColor.g) {                                                    \n               if (outColor.g < outColor.b) {                                                \n                   minMidMaxIndices[0] = 0;                                                \n                   minMidMaxIndices[1] = 1;                                                \n                   minMidMaxIndices[2] = 2;                                                \n               }                                                                           \n               else {                                                                      \n                   if (outColor.r < outColor.b) {                                            \n                       minMidMaxIndices[0] = 0;                                            \n                       minMidMaxIndices[1] = 2;                                            \n                       minMidMaxIndices[2] = 1;                                            \n                   }                                                                       \n                   else {                                                                  \n                       minMidMaxIndices[0] = 2;                                            \n                       minMidMaxIndices[1] = 0;                                            \n                       minMidMaxIndices[2] = 1;                                            \n                   }                                                                       \n               }                                                                           \n           }                                                                               \n           else {                                                                          \n               if (outColor.r < outColor.b) {                                                \n                   minMidMaxIndices[0] = 1;                                                \n                   minMidMaxIndices[1] = 0;                                                \n                   minMidMaxIndices[2] = 2;                                                \n               }                                                                           \n               else {                                                                      \n                   if (outColor.g < outColor.b) {                                            \n                       minMidMaxIndices[0] = 1;                                            \n                       minMidMaxIndices[1] = 2;                                            \n                       minMidMaxIndices[2] = 0;                                            \n                   }                                                                       \n                   else {                                                                  \n                       minMidMaxIndices[0] = 2;                                            \n                       minMidMaxIndices[1] = 1;                                            \n                       minMidMaxIndices[2] = 0;                                            \n                   }                                                                       \n               }                                                                           \n           }                                                                               \n           float xOffset;                                                                                 \n           float x;                                                                  \n           if(minMidMaxIndices[0] == 0) {                                                      \n               x = outColor.r;                                                          \n               xOffset = outColor.r;                                                   \n           }                                                                                       \n           else if(minMidMaxIndices[0] == 1) {                                                     \n               x = outColor.g;                                                               \n               xOffset = outColor.g;                                                           \n           }                                                                                       \n           else if(minMidMaxIndices[0] == 2) {                                                     \n               x = outColor.b;                                                               \n               xOffset = outColor.b;                                                           \n           }                                                                                       \n           float y;                                                                          \n           if(minMidMaxIndices[1] == 0) {                                                      \n               y = outColor.r;                                                          \n           }                                                                                       \n           else if(minMidMaxIndices[1] == 1) {                                                     \n               y = outColor.g;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[1] == 2) {                                                     \n               y = outColor.b;                                                               \n           }                                                                                       \n           float z;                                                                          \n           if(minMidMaxIndices[2] == 0) {                                                      \n               z = outColor.r;                                                          \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 1) {                                                     \n               z = outColor.g;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 2) {                                                     \n               z = outColor.b;                                                               \n           }                                                                                       \n           float interpT = (y - x) / max(z - x, 1.0 / 256.0);                                              \n           highp vec2 texCoord = vec2(xOffset, 0.0);                                         \n           float c = texture2D(inputImageTexture2, texCoord).r;                       \n           if(minMidMaxIndices[0] == 0) {                                                      \n               outColor.r = c;                                                                 \n           }                                                                                   \n           else if(minMidMaxIndices[0] == 1) {                                                 \n               outColor.g = c;                                                                 \n           }                                                                                   \n           else if(minMidMaxIndices[0] == 2) {                                                 \n               outColor.b = c;                                                                 \n           }                                                                                   \n           x = c;                                                                              \n           if(minMidMaxIndices[2] == 0) {                                                      \n               xOffset = outColor.r;                                                           \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 1) {                                                     \n               xOffset = outColor.g;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 2) {                                                     \n               xOffset = outColor.b;                                                               \n           }                                                                                       \n           texCoord = vec2(xOffset, 0.0);                                          \n           c = texture2D(inputImageTexture2, texCoord).r;                       \n           if(minMidMaxIndices[2] == 0) {                                                      \n               outColor.r = c;                                                                 \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 1) {                                                     \n               outColor.g = c;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[2] == 2) {                                                     \n               outColor.b = c;                                                               \n           }                                                                                      \n           z = c;                                                                                  \n           float result = x + (interpT * (z-x));                                           \n           if(minMidMaxIndices[1] == 0) {                                                      \n               outColor.r = result;                                                         \n           }                                                                                       \n           else if(minMidMaxIndices[1] == 1) {                                                     \n               outColor.g = result;                                                               \n           }                                                                                       \n           else if(minMidMaxIndices[1] == 2) {                                                     \n               outColor.b = result;                                                               \n           }                                                                                     \n           outColor = clamp(outColor, 0.0, 1.0);                                      \n       }                                                              \n                                                                                          \n       gl_FragColor = outColor;                                                      \n } "

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposure:F

    .line 193
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mHighlights:F

    .line 194
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mShadows:F

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLutTextureYOffset:F

    .line 196
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->onInit()V

    .line 201
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "exposure"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLocation:I

    .line 202
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "highlights"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mHighlightsLocation:I

    .line 203
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "shadows"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mShadowsLocation:I

    .line 204
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "exposureLutTextureYOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLutTextureYOffsetLocation:I

    .line 205
    return-void
.end method

.method protected onInitialized()V
    .locals 2

    .prologue
    .line 209
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->onInitialized()V

    .line 210
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposure:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setFloat(IF)V

    .line 211
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mHighlightsLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mHighlights:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setFloat(IF)V

    .line 212
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mShadowsLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mShadows:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setFloat(IF)V

    .line 213
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLutTextureYOffsetLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLutTextureYOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setFloat(IF)V

    .line 214
    return-void
.end method

.method public setExposure(F)V
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposure:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 218
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposure:F

    .line 219
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposure:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setFloat(IF)V

    .line 221
    :cond_0
    return-void
.end method

.method public setExposureLutTextureYOffset(F)V
    .locals 2

    .prologue
    .line 238
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLutTextureYOffset:F

    .line 239
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLutTextureYOffsetLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mExposureLutTextureYOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setFloat(IF)V

    .line 240
    return-void
.end method

.method public setHighlights(F)V
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mHighlights:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 225
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mHighlights:F

    .line 226
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mHighlightsLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mHighlights:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setFloat(IF)V

    .line 228
    :cond_0
    return-void
.end method

.method public setShadows(F)V
    .locals 2

    .prologue
    .line 231
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mShadows:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 232
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mShadows:F

    .line 233
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mShadowsLocation:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->mShadows:F

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/ClipExposureFilter;->setFloat(IF)V

    .line 235
    :cond_0
    return-void
.end method

.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    .locals 1

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createFilterForType(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    return-object v0
.end method

.method private static createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;",
            ">;)",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;"
        }
    .end annotation

    .prologue
    .line 374
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createFilterForType(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 195
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$2;->$SwitchMap$com$adobe$premiereclip$mediaengine$gpumedia$utils$GPUImageFilterTools$FilterType:[I

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No filter of that type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :pswitch_0
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;

    invoke-direct {v0, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;-><init>(F)V

    .line 364
    :goto_0
    return-object v0

    .line 199
    :pswitch_1
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGammaFilter;

    invoke-direct {v0, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGammaFilter;-><init>(F)V

    goto :goto_0

    .line 201
    :pswitch_2
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorInvertFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorInvertFilter;-><init>()V

    goto :goto_0

    .line 203
    :pswitch_3
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;-><init>()V

    goto :goto_0

    .line 205
    :pswitch_4
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHueFilter;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHueFilter;-><init>(F)V

    goto :goto_0

    .line 207
    :pswitch_5
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;-><init>(F)V

    goto :goto_0

    .line 209
    :pswitch_6
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGrayscaleFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGrayscaleFilter;-><init>()V

    goto :goto_0

    .line 211
    :pswitch_7
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSepiaFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSepiaFilter;-><init>()V

    goto :goto_0

    .line 213
    :pswitch_8
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSharpenFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSharpenFilter;-><init>()V

    .line 214
    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSharpenFilter;->setSharpness(F)V

    goto :goto_0

    .line 217
    :pswitch_9
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSobelEdgeDetection;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSobelEdgeDetection;-><init>()V

    goto :goto_0

    .line 219
    :pswitch_a
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3ConvolutionFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3ConvolutionFilter;-><init>()V

    .line 220
    const/16 v1, 0x9

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3ConvolutionFilter;->setConvolutionKernel([F)V

    goto :goto_0

    .line 227
    :pswitch_b
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaEmbossFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaEmbossFilter;-><init>()V

    goto :goto_0

    .line 229
    :pswitch_c
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPosterizeFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPosterizeFilter;-><init>()V

    goto :goto_0

    .line 231
    :pswitch_d
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 232
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDirectionalSobelEdgeDetectionFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDirectionalSobelEdgeDetectionFilter;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGrayscaleFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGrayscaleFilter;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilterGroup;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 237
    :pswitch_e
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSaturationFilter;

    invoke-direct {v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSaturationFilter;-><init>(F)V

    goto/16 :goto_0

    .line 239
    :pswitch_f
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;

    invoke-direct {v0, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;-><init>(F)V

    goto/16 :goto_0

    .line 241
    :pswitch_10
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHighlightShadowFilter;

    invoke-direct {v0, v3, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHighlightShadowFilter;-><init>(FF)V

    goto/16 :goto_0

    .line 243
    :pswitch_11
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMonochromeFilter;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-direct {v0, v2, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMonochromeFilter;-><init>(F[F)V

    goto/16 :goto_0

    .line 245
    :pswitch_12
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;

    invoke-direct {v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;-><init>(F)V

    goto/16 :goto_0

    .line 247
    :pswitch_13
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;

    invoke-direct {v0, v2, v2, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;-><init>(FFF)V

    goto/16 :goto_0

    .line 249
    :pswitch_14
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaWhiteBalanceFilter;

    const v1, 0x459c4000    # 5000.0f

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaWhiteBalanceFilter;-><init>(FF)V

    goto/16 :goto_0

    .line 251
    :pswitch_15
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 252
    iput v5, v1, Landroid/graphics/PointF;->x:F

    .line 253
    iput v5, v1, Landroid/graphics/PointF;->y:F

    .line 254
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaVignetteFilter;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    const v3, 0x3e99999a    # 0.3f

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaVignetteFilter;-><init>(Landroid/graphics/PointF;[FFF)V

    goto/16 :goto_0

    .line 256
    :pswitch_16
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;-><init>()V

    goto/16 :goto_0

    .line 260
    :pswitch_17
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDifferenceBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 262
    :pswitch_18
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSourceOverBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 264
    :pswitch_19
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorBurnBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 266
    :pswitch_1a
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorDodgeBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 268
    :pswitch_1b
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDarkenBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 270
    :pswitch_1c
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDissolveBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 272
    :pswitch_1d
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExclusionBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 276
    :pswitch_1e
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHardLightBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 278
    :pswitch_1f
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLightenBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 280
    :pswitch_20
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaAddBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 282
    :pswitch_21
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDivideBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 284
    :pswitch_22
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMultiplyBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 286
    :pswitch_23
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOverlayBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    :pswitch_24
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaScreenBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 290
    :pswitch_25
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaAlphaBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :pswitch_26
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 294
    :pswitch_27
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHueBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 296
    :pswitch_28
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSaturationBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 298
    :pswitch_29
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLuminosityBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 300
    :pswitch_2a
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLinearBurnBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    :pswitch_2b
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSoftLightBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 304
    :pswitch_2c
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSubtractBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 306
    :pswitch_2d
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaChromaKeyBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 308
    :pswitch_2e
    const-class v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNormalBlendFilter;

    invoke-static {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools;->createBlendFilter(Landroid/content/Context;Ljava/lang/Class;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    move-result-object v0

    goto/16 :goto_0

    .line 311
    :pswitch_2f
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLookupFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLookupFilter;-><init>()V

    goto/16 :goto_0

    .line 320
    :pswitch_30
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;-><init>()V

    goto/16 :goto_0

    .line 322
    :pswitch_31
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCrosshatchFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCrosshatchFilter;-><init>()V

    goto/16 :goto_0

    .line 325
    :pswitch_32
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBoxBlurFilter;-><init>()V

    goto/16 :goto_0

    .line 327
    :pswitch_33
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCGAColorspaceFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCGAColorspaceFilter;-><init>()V

    goto/16 :goto_0

    .line 329
    :pswitch_34
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDilationFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDilationFilter;-><init>()V

    goto/16 :goto_0

    .line 331
    :pswitch_35
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaKuwaharaFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaKuwaharaFilter;-><init>()V

    goto/16 :goto_0

    .line 333
    :pswitch_36
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBDilationFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBDilationFilter;-><init>()V

    goto/16 :goto_0

    .line 335
    :pswitch_37
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSketchFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSketchFilter;-><init>()V

    goto/16 :goto_0

    .line 337
    :pswitch_38
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToonFilter;-><init>()V

    goto/16 :goto_0

    .line 339
    :pswitch_39
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSmoothToonFilter;-><init>()V

    goto/16 :goto_0

    .line 342
    :pswitch_3a
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;-><init>()V

    goto/16 :goto_0

    .line 344
    :pswitch_3b
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;-><init>()V

    goto/16 :goto_0

    .line 346
    :pswitch_3c
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;-><init>()V

    goto/16 :goto_0

    .line 348
    :pswitch_3d
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLaplacianFilter;-><init>()V

    goto/16 :goto_0

    .line 350
    :pswitch_3e
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonMaximumSuppressionFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaNonMaximumSuppressionFilter;-><init>()V

    goto/16 :goto_0

    .line 352
    :pswitch_3f
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;-><init>()V

    goto/16 :goto_0

    .line 354
    :pswitch_40
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSwirlFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSwirlFilter;-><init>()V

    goto/16 :goto_0

    .line 356
    :pswitch_41
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaWeakPixelInclusionFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaWeakPixelInclusionFilter;-><init>()V

    goto/16 :goto_0

    .line 358
    :pswitch_42
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFalseColorFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFalseColorFilter;-><init>()V

    goto/16 :goto_0

    .line 360
    :pswitch_43
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorBalanceFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorBalanceFilter;-><init>()V

    goto/16 :goto_0

    .line 362
    :pswitch_44
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;-><init>()V

    .line 363
    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;->setMin(FFF)V

    goto/16 :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch

    .line 220
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 243
    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3ee66666    # 0.45f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 254
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static showDialog(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;)V
    .locals 4

    .prologue
    .line 104
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    .line 105
    const-string/jumbo v0, "Contrast"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->CONTRAST:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 106
    const-string/jumbo v0, "Invert"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->INVERT:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 107
    const-string/jumbo v0, "Pixelation"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->PIXELATION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 108
    const-string/jumbo v0, "Hue"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->HUE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 109
    const-string/jumbo v0, "Gamma"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->GAMMA:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 110
    const-string/jumbo v0, "Brightness"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BRIGHTNESS:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 111
    const-string/jumbo v0, "Sepia"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->SEPIA:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 112
    const-string/jumbo v0, "Grayscale"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->GRAYSCALE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 113
    const-string/jumbo v0, "Sharpness"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->SHARPEN:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 114
    const-string/jumbo v0, "Sobel Edge Detection"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->SOBEL_EDGE_DETECTION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 115
    const-string/jumbo v0, "3x3 Convolution"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->THREE_X_THREE_CONVOLUTION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 116
    const-string/jumbo v0, "Emboss"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->EMBOSS:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 117
    const-string/jumbo v0, "Posterize"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->POSTERIZE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 118
    const-string/jumbo v0, "Grouped filters"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->FILTER_GROUP:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 119
    const-string/jumbo v0, "Saturation"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->SATURATION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 120
    const-string/jumbo v0, "Exposure"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->EXPOSURE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 121
    const-string/jumbo v0, "Highlight Shadow"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->HIGHLIGHT_SHADOW:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 122
    const-string/jumbo v0, "Monochrome"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->MONOCHROME:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 123
    const-string/jumbo v0, "Opacity"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->OPACITY:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 124
    const-string/jumbo v0, "RGB"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->RGB:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 125
    const-string/jumbo v0, "White Balance"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->WHITE_BALANCE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 126
    const-string/jumbo v0, "Vignette"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->VIGNETTE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 127
    const-string/jumbo v0, "ToneCurve"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->TONE_CURVE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 129
    const-string/jumbo v0, "Blend (Difference)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_DIFFERENCE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 130
    const-string/jumbo v0, "Blend (Source Over)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_SOURCE_OVER:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 131
    const-string/jumbo v0, "Blend (Color Burn)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_COLOR_BURN:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 132
    const-string/jumbo v0, "Blend (Color Dodge)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_COLOR_DODGE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 133
    const-string/jumbo v0, "Blend (Darken)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_DARKEN:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 134
    const-string/jumbo v0, "Blend (Dissolve)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_DISSOLVE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 135
    const-string/jumbo v0, "Blend (Exclusion)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_EXCLUSION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 136
    const-string/jumbo v0, "Blend (Hard Light)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_HARD_LIGHT:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 137
    const-string/jumbo v0, "Blend (Lighten)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_LIGHTEN:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 138
    const-string/jumbo v0, "Blend (Add)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_ADD:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 139
    const-string/jumbo v0, "Blend (Divide)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_DIVIDE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 140
    const-string/jumbo v0, "Blend (Multiply)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_MULTIPLY:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 141
    const-string/jumbo v0, "Blend (Overlay)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_OVERLAY:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 142
    const-string/jumbo v0, "Blend (Screen)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_SCREEN:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 143
    const-string/jumbo v0, "Blend (Alpha)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_ALPHA:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 144
    const-string/jumbo v0, "Blend (Color)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_COLOR:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 145
    const-string/jumbo v0, "Blend (Hue)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_HUE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 146
    const-string/jumbo v0, "Blend (Saturation)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_SATURATION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 147
    const-string/jumbo v0, "Blend (Luminosity)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_LUMINOSITY:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 148
    const-string/jumbo v0, "Blend (Linear Burn)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_LINEAR_BURN:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 149
    const-string/jumbo v0, "Blend (Soft Light)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_SOFT_LIGHT:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 150
    const-string/jumbo v0, "Blend (Subtract)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_SUBTRACT:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 151
    const-string/jumbo v0, "Blend (Chroma Key)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_CHROMA_KEY:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 152
    const-string/jumbo v0, "Blend (Normal)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BLEND_NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 154
    const-string/jumbo v0, "Lookup (Amatorka)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->LOOKUP_AMATORKA:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 155
    const-string/jumbo v0, "Gaussian Blur"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->GAUSSIAN_BLUR:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 156
    const-string/jumbo v0, "Crosshatch"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->CROSSHATCH:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 158
    const-string/jumbo v0, "Box Blur"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BOX_BLUR:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 159
    const-string/jumbo v0, "CGA Color Space"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->CGA_COLORSPACE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 160
    const-string/jumbo v0, "Dilation"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->DILATION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 161
    const-string/jumbo v0, "Kuwahara"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->KUWAHARA:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 162
    const-string/jumbo v0, "RGB Dilation"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->RGB_DILATION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 163
    const-string/jumbo v0, "Sketch"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->SKETCH:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 164
    const-string/jumbo v0, "Toon"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->TOON:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 165
    const-string/jumbo v0, "Smooth Toon"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->SMOOTH_TOON:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 167
    const-string/jumbo v0, "Bulge Distortion"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->BULGE_DISTORTION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 168
    const-string/jumbo v0, "Glass Sphere"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->GLASS_SPHERE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 169
    const-string/jumbo v0, "Haze"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->HAZE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 170
    const-string/jumbo v0, "Laplacian"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->LAPLACIAN:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 171
    const-string/jumbo v0, "Non Maximum Suppression"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->NON_MAXIMUM_SUPPRESSION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 172
    const-string/jumbo v0, "Sphere Refraction"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->SPHERE_REFRACTION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 173
    const-string/jumbo v0, "Swirl"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->SWIRL:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 174
    const-string/jumbo v0, "Weak Pixel Inclusion"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->WEAK_PIXEL_INCLUSION:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 175
    const-string/jumbo v0, "False Color"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->FALSE_COLOR:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 177
    const-string/jumbo v0, "Color Balance"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->COLOR_BALANCE:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 179
    const-string/jumbo v0, "Levels Min (Mid Adjust)"

    sget-object v2, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;->LEVELS_FILTER_MIN:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->addFilter(Ljava/lang/String;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterType;)V

    .line 181
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    const-string/jumbo v0, "Choose a filter"

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 183
    iget-object v0, v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    iget-object v3, v1, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;

    invoke-direct {v3, p1, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$OnGpuImageFilterChosenListener;Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterList;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 192
    return-void
.end method

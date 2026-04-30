.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# instance fields
.field private final adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster",
            "<+",
            "Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSharpenFilter;

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SharpnessAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    .line 469
    :goto_0
    return-void

    .line 410
    :cond_0
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSepiaFilter;

    if-eqz v0, :cond_1

    .line 411
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SepiaAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 412
    :cond_1
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaContrastFilter;

    if-eqz v0, :cond_2

    .line 413
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ContrastAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 414
    :cond_2
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGammaFilter;

    if-eqz v0, :cond_3

    .line 415
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GammaAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 416
    :cond_3
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBrightnessFilter;

    if-eqz v0, :cond_4

    .line 417
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$BrightnessAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 418
    :cond_4
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSobelEdgeDetection;

    if-eqz v0, :cond_5

    .line 419
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SobelAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 420
    :cond_5
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaEmbossFilter;

    if-eqz v0, :cond_6

    .line 421
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$EmbossAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 422
    :cond_6
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMedia3x3TextureSamplingFilter;

    if-eqz v0, :cond_7

    .line 423
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GPU3x3TextureAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 424
    :cond_7
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHueFilter;

    if-eqz v0, :cond_8

    .line 425
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HueAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto :goto_0

    .line 426
    :cond_8
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPosterizeFilter;

    if-eqz v0, :cond_9

    .line 427
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$PosterizeAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 428
    :cond_9
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaPixelationFilter;

    if-eqz v0, :cond_a

    .line 429
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$PixelationAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 430
    :cond_a
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSaturationFilter;

    if-eqz v0, :cond_b

    .line 431
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SaturationAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 432
    :cond_b
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaExposureFilter;

    if-eqz v0, :cond_c

    .line 433
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ExposureAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 434
    :cond_c
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHighlightShadowFilter;

    if-eqz v0, :cond_d

    .line 435
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HighlightShadowAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 436
    :cond_d
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaMonochromeFilter;

    if-eqz v0, :cond_e

    .line 437
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$MonochromeAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 438
    :cond_e
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaOpacityFilter;

    if-eqz v0, :cond_f

    .line 439
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$OpacityAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 440
    :cond_f
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaRGBFilter;

    if-eqz v0, :cond_10

    .line 441
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$RGBAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 442
    :cond_10
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaWhiteBalanceFilter;

    if-eqz v0, :cond_11

    .line 443
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$WhiteBalanceAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 444
    :cond_11
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaVignetteFilter;

    if-eqz v0, :cond_12

    .line 445
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$VignetteAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 446
    :cond_12
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaDissolveBlendFilter;

    if-eqz v0, :cond_13

    .line 447
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$DissolveBlendAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 448
    :cond_13
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGaussianBlurFilter;

    if-eqz v0, :cond_14

    .line 449
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GaussianBlurAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GaussianBlurAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GaussianBlurAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 450
    :cond_14
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaCrosshatchFilter;

    if-eqz v0, :cond_15

    .line 451
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$CrosshatchBlurAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 452
    :cond_15
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaBulgeDistortionFilter;

    if-eqz v0, :cond_16

    .line 453
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$BulgeDistortionAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 454
    :cond_16
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaGlassSphereFilter;

    if-eqz v0, :cond_17

    .line 455
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GlassSphereAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GlassSphereAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$GlassSphereAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 456
    :cond_17
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaHazeFilter;

    if-eqz v0, :cond_18

    .line 457
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$HazeAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 458
    :cond_18
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSphereRefractionFilter;

    if-eqz v0, :cond_19

    .line 459
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SphereRefractionAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SphereRefractionAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SphereRefractionAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 460
    :cond_19
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaSwirlFilter;

    if-eqz v0, :cond_1a

    .line 461
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SwirlAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SwirlAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$SwirlAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 462
    :cond_1a
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaColorBalanceFilter;

    if-eqz v0, :cond_1b

    .line 463
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ColorBalanceAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ColorBalanceAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$ColorBalanceAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 464
    :cond_1b
    instance-of v0, p1, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaLevelsFilter;

    if-eqz v0, :cond_1c

    .line 465
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$LevelsMinMidAdjuster;

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$LevelsMinMidAdjuster;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$1;)V

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$LevelsMinMidAdjuster;->filter(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0

    .line 467
    :cond_1c
    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    goto/16 :goto_0
.end method


# virtual methods
.method public adjust(I)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;->adjust(I)V

    .line 479
    :cond_0
    return-void
.end method

.method public canAdjust()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster;->adjuster:Lcom/adobe/premiereclip/mediaengine/gpumedia/utils/GPUImageFilterTools$FilterAdjuster$Adjuster;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

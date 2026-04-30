.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;
.source "ClipExposureSurface.java"


# instance fields
.field private clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

.field private mLUTSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 32
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ImageSurface;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x100

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mLUTSize:I

    .line 34
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mLUTSize:I

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mWidth:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mHeight:I

    .line 36
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-direct {v0, v1, v1, v1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;-><init>(FFF)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    .line 38
    return-void
.end method

.method private copyClipOptions(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setHighlights(F)V

    .line 86
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setShadows(F)V

    .line 87
    return-void
.end method

.method private fillLut()V
    .locals 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getLUTData()[B

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mWidth:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->setBitmap([BII)V

    .line 122
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->drawImage()V

    .line 123
    return-void
.end method

.method private getExponent(F)F
    .locals 7

    .prologue
    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 61
    .line 63
    float-to-double v2, p1

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move v0, v1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    float-to-double v2, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    .line 68
    sub-float v2, p1, v6

    div-float/2addr v2, v6

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    .line 74
    :cond_2
    :goto_1
    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_4

    .line 75
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 70
    :cond_3
    float-to-double v2, p1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 71
    div-float v1, p1, v6

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    goto :goto_1

    .line 77
    :cond_4
    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getExposure()F
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v0

    return v0
.end method

.method public getHighlights()F
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v0

    return v0
.end method

.method public getLUTData()[B
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f000000    # 0.5f

    .line 90
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mWidth:I

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    .line 91
    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mLUTSize:I

    .line 92
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->mLUTSize:I

    int-to-float v0, v0

    sub-float v4, v0, v13

    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getExponent(F)F

    move-result v5

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->getExponent(F)F

    move-result v6

    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 99
    int-to-float v0, v1

    div-float/2addr v0, v4

    .line 101
    float-to-double v8, v0

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_0

    .line 102
    sub-float/2addr v0, v12

    div-float/2addr v0, v12

    .line 103
    sub-float v0, v13, v0

    float-to-double v8, v0

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v0, v8

    sub-float v0, v13, v0

    .line 104
    mul-float/2addr v0, v12

    add-float/2addr v0, v12

    .line 112
    :goto_1
    mul-int/lit8 v7, v1, 0x4

    mul-float v8, v0, v4

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 113
    mul-int/lit8 v7, v1, 0x4

    add-int/lit8 v7, v7, 0x1

    mul-float v8, v0, v4

    float-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 114
    mul-int/lit8 v7, v1, 0x4

    add-int/lit8 v7, v7, 0x2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v7

    .line 115
    mul-int/lit8 v0, v1, 0x4

    add-int/lit8 v0, v0, 0x3

    const/4 v7, -0x1

    aput-byte v7, v2, v0

    .line 98
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_0
    div-float/2addr v0, v12

    .line 108
    float-to-double v8, v0

    float-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v0, v8

    .line 109
    mul-float/2addr v0, v12

    goto :goto_1

    .line 117
    :cond_1
    return-object v2
.end method

.method public getShadows()F
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v0

    return v0
.end method

.method public setClipExposureParams(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->clipOptionsEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    .line 54
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->copyClipOptions(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V

    .line 56
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/ClipExposureSurface;->fillLut()V

    .line 58
    :cond_1
    return-void
.end method

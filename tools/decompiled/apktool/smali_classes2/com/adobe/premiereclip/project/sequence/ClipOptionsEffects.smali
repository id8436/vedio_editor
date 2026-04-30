.class public Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;
.super Ljava/lang/Object;
.source "ClipOptionsEffects.java"


# instance fields
.field private exposure:F

.field private highlights:F

.field private shadows:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;-><init>(FFF)V

    .line 30
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->exposure:F

    .line 34
    iput p2, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->highlights:F

    .line 35
    iput p3, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->shadows:F

    .line 36
    return-void
.end method


# virtual methods
.method public getDCXExposure()D
    .locals 6

    .prologue
    .line 74
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iget v2, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->exposure:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public getExposure()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->exposure:F

    return v0
.end method

.method public getHighlights()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->highlights:F

    return v0
.end method

.method public getSeekExposure()F
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 66
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->exposure:F

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    return v0
.end method

.method public getShadows()F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->shadows:F

    return v0
.end method

.method public setDCXExposure(F)V
    .locals 6

    .prologue
    const/high16 v0, 0x40c00000    # 6.0f

    const/high16 v1, -0x3f400000    # -6.0f

    .line 47
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 48
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 51
    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 54
    :goto_1
    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->exposure:F

    .line 55
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public setExposure(F)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->exposure:F

    .line 44
    return-void
.end method

.method public setHighlights(F)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->highlights:F

    .line 59
    return-void
.end method

.method public setSeekExposure(F)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 39
    sub-float v0, p1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->exposure:F

    .line 40
    return-void
.end method

.method public setShadows(F)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->shadows:F

    .line 63
    return-void
.end method

.class public Lcom/google/android/exoplayer/VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "VideoSurfaceView.java"


# static fields
.field private static final MAX_ASPECT_RATIO_DEFORMATION_PERCENT:F = 0.01f


# instance fields
.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/exoplayer/VideoSurfaceView;->getMeasuredWidth()I

    move-result v1

    .line 64
    invoke-virtual {p0}, Lcom/google/android/exoplayer/VideoSurfaceView;->getMeasuredHeight()I

    move-result v0

    .line 65
    iget v2, p0, Lcom/google/android/exoplayer/VideoSurfaceView;->videoAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 66
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 67
    iget v3, p0, Lcom/google/android/exoplayer/VideoSurfaceView;->videoAspectRatio:F

    div-float v2, v3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    .line 68
    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 69
    int-to-float v0, v1

    iget v2, p0, Lcom/google/android/exoplayer/VideoSurfaceView;->videoAspectRatio:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer/VideoSurfaceView;->setMeasuredDimension(II)V

    .line 75
    return-void

    .line 70
    :cond_1
    const v3, -0x43dc28f6    # -0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 71
    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/exoplayer/VideoSurfaceView;->videoAspectRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0
.end method

.method public setVideoWidthHeightRatio(F)V
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/exoplayer/VideoSurfaceView;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 55
    iput p1, p0, Lcom/google/android/exoplayer/VideoSurfaceView;->videoAspectRatio:F

    .line 56
    invoke-virtual {p0}, Lcom/google/android/exoplayer/VideoSurfaceView;->requestLayout()V

    .line 58
    :cond_0
    return-void
.end method

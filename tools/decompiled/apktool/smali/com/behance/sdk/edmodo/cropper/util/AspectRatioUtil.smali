.class public Lcom/behance/sdk/edmodo/cropper/util/AspectRatioUtil;
.super Ljava/lang/Object;
.source "AspectRatioUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAspectRatio(FFFF)F
    .locals 2

    .prologue
    .line 29
    sub-float v0, p2, p0

    .line 30
    sub-float v1, p3, p1

    .line 31
    div-float/2addr v0, v1

    .line 33
    return v0
.end method

.method public static calculateAspectRatio(Landroid/graphics/Rect;)F
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 43
    return v0
.end method

.method public static calculateBottom(FFFF)F
    .locals 1

    .prologue
    .line 98
    sub-float v0, p2, p0

    .line 103
    div-float/2addr v0, p3

    add-float/2addr v0, p1

    .line 105
    return v0
.end method

.method public static calculateHeight(FFF)F
    .locals 1

    .prologue
    .line 126
    sub-float v0, p1, p0

    .line 127
    div-float/2addr v0, p2

    .line 129
    return v0
.end method

.method public static calculateLeft(FFFF)F
    .locals 1

    .prologue
    .line 52
    sub-float v0, p2, p0

    .line 56
    mul-float/2addr v0, p3

    sub-float v0, p1, v0

    .line 58
    return v0
.end method

.method public static calculateRight(FFFF)F
    .locals 1

    .prologue
    .line 83
    sub-float v0, p2, p1

    .line 87
    mul-float/2addr v0, p3

    add-float/2addr v0, p0

    .line 89
    return v0
.end method

.method public static calculateTop(FFFF)F
    .locals 1

    .prologue
    .line 67
    sub-float v0, p1, p0

    .line 72
    div-float/2addr v0, p3

    sub-float v0, p2, v0

    .line 74
    return v0
.end method

.method public static calculateWidth(FFF)F
    .locals 1

    .prologue
    .line 114
    sub-float v0, p1, p0

    .line 115
    mul-float/2addr v0, p2

    .line 117
    return v0
.end method

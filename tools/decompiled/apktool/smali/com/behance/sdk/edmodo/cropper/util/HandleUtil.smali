.class public Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;
.super Ljava/lang/Object;
.source "HandleUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TARGET_RADIUS_DP:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static focusCenter()Z
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/cropwindow/CropOverlayView;->showGuidelines()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOffset(Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;FFFFFF)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;",
            "FFFFFF)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 127
    :cond_0
    sget-object v1, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil$1;->$SwitchMap$com$behance$sdk$edmodo$cropper$cropwindow$handle$Handle:[I

    invoke-virtual {p0}, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move v1, v0

    .line 169
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 170
    goto :goto_0

    .line 130
    :pswitch_0
    sub-float v1, p3, p1

    .line 131
    sub-float v0, p4, p2

    .line 132
    goto :goto_1

    .line 134
    :pswitch_1
    sub-float v1, p5, p1

    .line 135
    sub-float v0, p4, p2

    .line 136
    goto :goto_1

    .line 138
    :pswitch_2
    sub-float v1, p3, p1

    .line 139
    sub-float v0, p6, p2

    .line 140
    goto :goto_1

    .line 142
    :pswitch_3
    sub-float v1, p5, p1

    .line 143
    sub-float v0, p6, p2

    .line 144
    goto :goto_1

    .line 146
    :pswitch_4
    sub-float v1, p3, p1

    .line 148
    goto :goto_1

    .line 151
    :pswitch_5
    sub-float v1, p4, p2

    move v4, v1

    move v1, v0

    move v0, v4

    .line 152
    goto :goto_1

    .line 154
    :pswitch_6
    sub-float v1, p5, p1

    .line 156
    goto :goto_1

    .line 159
    :pswitch_7
    sub-float v1, p6, p2

    move v4, v1

    move v1, v0

    move v0, v4

    .line 160
    goto :goto_1

    .line 162
    :pswitch_8
    add-float v0, p5, p3

    div-float/2addr v0, v3

    .line 163
    add-float v1, p4, p6

    div-float v2, v1, v3

    .line 164
    sub-float v1, v0, p1

    .line 165
    sub-float v0, v2, p2

    goto :goto_1

    .line 127
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
    .end packed-switch
.end method

.method public static getPressedHandle(FFFFFFF)Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;
    .locals 7

    .prologue
    .line 74
    const/4 v6, 0x0

    .line 78
    invoke-static {p0, p1, p2, p3, p6}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->TOP_LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    .line 101
    :goto_0
    return-object v0

    .line 80
    :cond_0
    invoke-static {p0, p1, p4, p3, p6}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->TOP_RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p0, p1, p2, p5, p6}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {p0, p1, p4, p5, p6}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInCornerTargetZone(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM_RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 86
    :cond_3
    invoke-static/range {p0 .. p5}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->focusCenter()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_4
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    move v5, p6

    .line 88
    invoke-static/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->TOP:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_5
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInHorizontalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->BOTTOM:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_6
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->LEFT:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_7
    move v0, p0

    move v1, p1

    move v2, p4

    move v3, p3

    move v4, p5

    move v5, p6

    .line 94
    invoke-static/range {v0 .. v5}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInVerticalTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 95
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->RIGHT:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    .line 96
    :cond_8
    invoke-static/range {p0 .. p5}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->isInCenterTargetZone(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/behance/sdk/edmodo/cropper/util/HandleUtil;->focusCenter()Z

    move-result v0

    if-nez v0, :cond_9

    .line 97
    sget-object v0, Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;->CENTER:Lcom/behance/sdk/edmodo/cropper/cropwindow/handle/Handle;

    goto :goto_0

    :cond_9
    move-object v0, v6

    goto :goto_0
.end method

.method public static getTargetRadius(Landroid/content/Context;)F
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x1

    const/high16 v1, 0x41c00000    # 24.0f

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 47
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 50
    return v0
.end method

.method private static isInCenterTargetZone(FFFFFF)Z
    .locals 1

    .prologue
    .line 271
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p4

    if-gez v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p5

    if-gez v0, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInCornerTargetZone(FFFFF)Z
    .locals 1

    .prologue
    .line 193
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gtz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInHorizontalTargetZone(FFFFFF)Z
    .locals 1

    .prologue
    .line 219
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpg-float v0, p0, p3

    if-gez v0, :cond_0

    sub-float v0, p1, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInVerticalTargetZone(FFFFFF)Z
    .locals 1

    .prologue
    .line 245
    sub-float v0, p0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p5

    if-gtz v0, :cond_0

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    cmpg-float v0, p1, p4

    if-gez v0, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

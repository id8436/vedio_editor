.class public Lcom/adobe/creativesdk/foundation/internal/utils/ColumnCountUtil;
.super Ljava/lang/Object;
.source "ColumnCountUtil.java"


# static fields
.field private static final MIN_COLUMN_COUNT:I = 0x1

.field private static final PHONE_COLUMN_WIDTH:D = 1.5

.field private static final TABLET_COLUMN_WIDTH:D = 1.75


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColumnCount(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 20
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v0, v0

    div-double/2addr v2, v0

    .line 21
    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$bool;->tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ffc000000000000L    # 1.75

    :goto_0
    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_0
.end method

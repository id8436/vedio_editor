.class Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter$2;
.super Ljava/lang/Object;
.source "GPUMediaToneCurveFilter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter$2;->this$0:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/PointF;Landroid/graphics/PointF;)I
    .locals 2

    .prologue
    .line 212
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 213
    const/4 v0, -0x1

    .line 217
    :goto_0
    return v0

    .line 214
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 209
    check-cast p1, Landroid/graphics/PointF;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaToneCurveFilter$2;->compare(Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v0

    return v0
.end method

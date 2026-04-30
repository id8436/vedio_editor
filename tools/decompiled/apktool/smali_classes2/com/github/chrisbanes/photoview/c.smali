.class Lcom/github/chrisbanes/photoview/c;
.super Ljava/lang/Object;
.source "CustomGestureDetector.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# instance fields
.field final synthetic a:Lcom/github/chrisbanes/photoview/b;


# direct methods
.method constructor <init>(Lcom/github/chrisbanes/photoview/b;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/c;->a:Lcom/github/chrisbanes/photoview/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 56
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/c;->a:Lcom/github/chrisbanes/photoview/b;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/b;->a(Lcom/github/chrisbanes/photoview/b;)Lcom/github/chrisbanes/photoview/d;

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 59
    invoke-interface {v1, v0, v2, v3}, Lcom/github/chrisbanes/photoview/d;->a(FFF)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

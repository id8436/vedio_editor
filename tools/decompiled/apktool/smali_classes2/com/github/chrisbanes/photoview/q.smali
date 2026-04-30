.class Lcom/github/chrisbanes/photoview/q;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/github/chrisbanes/photoview/l;

.field private final b:F

.field private final c:F

.field private final d:J

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Lcom/github/chrisbanes/photoview/l;FFFF)V
    .locals 2

    .prologue
    .line 762
    iput-object p1, p0, Lcom/github/chrisbanes/photoview/q;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput p4, p0, Lcom/github/chrisbanes/photoview/q;->b:F

    .line 764
    iput p5, p0, Lcom/github/chrisbanes/photoview/q;->c:F

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/github/chrisbanes/photoview/q;->d:J

    .line 766
    iput p2, p0, Lcom/github/chrisbanes/photoview/q;->e:F

    .line 767
    iput p3, p0, Lcom/github/chrisbanes/photoview/q;->f:F

    .line 768
    return-void
.end method

.method private a()F
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/github/chrisbanes/photoview/q;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/github/chrisbanes/photoview/q;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/l;->t(Lcom/github/chrisbanes/photoview/l;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 787
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 788
    iget-object v1, p0, Lcom/github/chrisbanes/photoview/q;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-static {v1}, Lcom/github/chrisbanes/photoview/l;->u(Lcom/github/chrisbanes/photoview/l;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 789
    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/github/chrisbanes/photoview/q;->a()F

    move-result v0

    .line 774
    iget v1, p0, Lcom/github/chrisbanes/photoview/q;->e:F

    iget v2, p0, Lcom/github/chrisbanes/photoview/q;->f:F

    iget v3, p0, Lcom/github/chrisbanes/photoview/q;->e:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 775
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/q;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-virtual {v2}, Lcom/github/chrisbanes/photoview/l;->e()F

    move-result v2

    div-float/2addr v1, v2

    .line 777
    iget-object v2, p0, Lcom/github/chrisbanes/photoview/q;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-static {v2}, Lcom/github/chrisbanes/photoview/l;->s(Lcom/github/chrisbanes/photoview/l;)Lcom/github/chrisbanes/photoview/d;

    move-result-object v2

    iget v3, p0, Lcom/github/chrisbanes/photoview/q;->b:F

    iget v4, p0, Lcom/github/chrisbanes/photoview/q;->c:F

    invoke-interface {v2, v1, v3, v4}, Lcom/github/chrisbanes/photoview/d;->a(FFF)V

    .line 780
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/github/chrisbanes/photoview/q;->a:Lcom/github/chrisbanes/photoview/l;

    invoke-static {v0}, Lcom/github/chrisbanes/photoview/l;->e(Lcom/github/chrisbanes/photoview/l;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/github/chrisbanes/photoview/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 783
    :cond_0
    return-void
.end method

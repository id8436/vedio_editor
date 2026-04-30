.class public Lcom/e/a/a/a/b/d;
.super Ljava/lang/Object;
.source "BasicSwapTargetTranslationInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0}, Lcom/e/a/a/a/b/d;-><init>(F)V

    .line 29
    return-void
.end method

.method public constructor <init>(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid threshold range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    sub-float v0, v2, v0

    .line 37
    iput p1, p0, Lcom/e/a/a/a/b/d;->a:F

    .line 38
    mul-float/2addr v1, v0

    iput v1, p0, Lcom/e/a/a/a/b/d;->b:F

    .line 39
    div-float v0, v2, v0

    iput v0, p0, Lcom/e/a/a/a/b/d;->c:F

    .line 40
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 44
    sub-float v0, p1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/e/a/a/a/b/d;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 45
    iget v0, p0, Lcom/e/a/a/a/b/d;->a:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/e/a/a/a/b/d;->c:F

    mul-float/2addr v0, v1

    .line 47
    :goto_0
    return v0

    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

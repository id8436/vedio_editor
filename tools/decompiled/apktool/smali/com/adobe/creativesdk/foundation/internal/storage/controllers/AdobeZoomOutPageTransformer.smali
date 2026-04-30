.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeZoomOutPageTransformer;
.super Ljava/lang/Object;
.source "AdobeZoomOutPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static final MIN_ALPHA:F = 0.5f

.field private static final MIN_SCALE:F = 0.85f


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 9

    .prologue
    const v8, 0x3f59999a    # 0.85f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 18
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    .line 20
    invoke-static {p1, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 46
    :goto_0
    return-void

    .line 22
    :cond_0
    cmpg-float v2, p2, v4

    if-gtz v2, :cond_2

    .line 24
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v4, v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 25
    int-to-float v1, v1

    sub-float v3, v4, v2

    mul-float/2addr v1, v3

    div-float/2addr v1, v5

    .line 26
    int-to-float v0, v0

    sub-float v3, v4, v2

    mul-float/2addr v0, v3

    div-float/2addr v0, v5

    .line 27
    cmpg-float v3, p2, v6

    if-gez v3, :cond_1

    .line 28
    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 34
    :goto_1
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 35
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 38
    sub-float v0, v2, v8

    const v1, 0x3e199998    # 0.14999998f

    div-float/2addr v0, v1

    mul-float/2addr v0, v7

    add-float/2addr v0, v7

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 30
    :cond_1
    neg-float v0, v0

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p1, v6}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeDepthPageTransformer;
.super Ljava/lang/Object;
.source "AdobeDepthPageTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# static fields
.field private static final MIN_SCALE:F = 0.75f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 16
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 18
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 44
    :goto_0
    return-void

    .line 20
    :cond_0
    cmpg-float v1, p2, v2

    if-gtz v1, :cond_1

    .line 22
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 23
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 24
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 25
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 27
    :cond_1
    cmpg-float v1, p2, v3

    if-gtz v1, :cond_2

    .line 29
    sub-float v1, v3, p2

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 32
    int-to-float v0, v0

    neg-float v1, p2

    mul-float/2addr v0, v1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 35
    const/high16 v0, 0x3f400000    # 0.75f

    const/high16 v1, 0x3e800000    # 0.25f

    .line 36
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 37
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 38
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 42
    :cond_2
    invoke-static {p1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    goto :goto_0
.end method

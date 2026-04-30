.class public Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;
.super Ljava/lang/Object;
.source "BehanceSDKCustomFadeInBitmapDisplayer.java"

# interfaces
.implements Lcom/i/a/b/c/a;


# instance fields
.field private final animateFromDisk:Z

.field private final animateFromMemory:Z

.field private final animateFromNetwork:Z

.field private final durationMillis:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;-><init>(IZZZ)V

    .line 29
    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;->durationMillis:I

    .line 40
    iput-boolean p2, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;->animateFromNetwork:Z

    .line 41
    iput-boolean p3, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;->animateFromDisk:Z

    .line 42
    iput-boolean p4, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;->animateFromMemory:Z

    .line 43
    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/i/a/b/e/a;Lcom/i/a/b/a/g;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 48
    iget-boolean v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;->animateFromNetwork:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/i/a/b/a/g;->a:Lcom/i/a/b/a/g;

    if-eq p3, v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;->animateFromDisk:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/i/a/b/a/g;->b:Lcom/i/a/b/a/g;

    if-eq p3, v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;->animateFromMemory:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/i/a/b/a/g;->c:Lcom/i/a/b/a/g;

    if-ne p3, v0, :cond_3

    .line 52
    :cond_2
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0xf0f0f0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 58
    invoke-interface {p2, v0}, Lcom/i/a/b/e/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 59
    iget v1, p0, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;->durationMillis:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_3
    invoke-interface {p2, p1}, Lcom/i/a/b/e/a;->a(Landroid/graphics/Bitmap;)Z

    goto :goto_0
.end method

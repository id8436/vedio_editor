.class public Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;
.super Ljava/lang/Object;
.source "BehanceSDKImageLoaderUtils.java"


# static fields
.field private static final ANIMATION_DURATION_IN_MILLISECONDS:I = 0x12c

.field private static imageOptions:Lcom/i/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/f/a;)V

    .line 106
    return-void
.end method

.method public static displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/f/a;)V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->getDefaultImageLoaderOptions()Lcom/i/a/b/d;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/f/a;Lcom/i/a/b/d;)V

    .line 73
    return-void
.end method

.method public static displayImageFromCacheOrLoadFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/f/a;Lcom/i/a/b/d;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v2

    .line 78
    invoke-virtual {v2, p1}, Lcom/i/a/b/g;->a(Landroid/widget/ImageView;)V

    .line 79
    invoke-virtual {v2}, Lcom/i/a/b/g;->c()Lcom/i/a/a/b/a;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-static {p0, v0}, Lcom/i/a/c/f;->a(Ljava/lang/String;Lcom/i/a/a/b/a;)Ljava/util/List;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 83
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 84
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    const/4 v1, 0x1

    .line 86
    if-eqz p2, :cond_1

    .line 87
    invoke-interface {p2, p0, p1, v0}, Lcom/i/a/b/f/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    move v0, v1

    .line 95
    :goto_0
    if-nez v0, :cond_0

    .line 96
    if-eqz p2, :cond_3

    .line 97
    invoke-virtual {v2, p0, p1, p3, p2}, Lcom/i/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/d;Lcom/i/a/b/f/a;)V

    .line 102
    :cond_0
    :goto_1
    return-void

    .line 89
    :cond_1
    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    move v0, v1

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v2, p0, p1, p3}, Lcom/i/a/b/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/i/a/b/d;)V

    goto :goto_1
.end method

.method public static getDefaultImageLoaderOptions()Lcom/i/a/b/d;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->imageOptions:Lcom/i/a/b/d;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/i/a/b/f;

    invoke-direct {v0}, Lcom/i/a/b/f;-><init>()V

    .line 59
    invoke-virtual {v0, v4}, Lcom/i/a/b/f;->b(Z)Lcom/i/a/b/f;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v4}, Lcom/i/a/b/f;->a(Z)Lcom/i/a/b/f;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v4}, Lcom/i/a/b/f;->c(Z)Lcom/i/a/b/f;

    move-result-object v0

    sget-object v1, Lcom/i/a/b/a/e;->d:Lcom/i/a/b/a/e;

    .line 62
    invoke-virtual {v0, v1}, Lcom/i/a/b/f;->a(Lcom/i/a/b/a/e;)Lcom/i/a/b/f;

    move-result-object v0

    new-instance v1, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;

    const/16 v2, 0x12c

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/behance/sdk/ui/animations/BehanceSDKCustomFadeInBitmapDisplayer;-><init>(IZZZ)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/i/a/b/f;->a(Lcom/i/a/b/c/a;)Lcom/i/a/b/f;

    move-result-object v0

    const v1, 0x1080078

    .line 64
    invoke-virtual {v0, v1}, Lcom/i/a/b/f;->a(I)Lcom/i/a/b/f;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 65
    invoke-virtual {v0, v1}, Lcom/i/a/b/f;->a(Landroid/graphics/Bitmap$Config;)Lcom/i/a/b/f;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/i/a/b/f;->a()Lcom/i/a/b/d;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->imageOptions:Lcom/i/a/b/d;

    .line 68
    :cond_0
    sget-object v0, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->imageOptions:Lcom/i/a/b/d;

    return-object v0
.end method

.method public static getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 109
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/behance/sdk/util/BehanceSDKImageLoaderUtils;->getDefaultImageLoaderOptions()Lcom/i/a/b/d;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/i/a/b/g;->a(Ljava/lang/String;Lcom/i/a/b/d;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImageBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/i/a/b/g;->a()Lcom/i/a/b/g;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/i/a/b/g;->c()Lcom/i/a/a/b/a;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0, v0}, Lcom/i/a/c/f;->a(Ljava/lang/String;Lcom/i/a/a/b/a;)Ljava/util/List;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 122
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 123
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImageLoaderConfig(Landroid/content/Context;)Lcom/i/a/b/j;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/i/a/b/l;

    invoke-direct {v0, p0}, Lcom/i/a/b/l;-><init>(Landroid/content/Context;)V

    .line 52
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/i/a/b/l;->a(I)Lcom/i/a/b/l;

    move-result-object v0

    sget-object v1, Lcom/i/a/b/a/h;->b:Lcom/i/a/b/a/h;

    invoke-virtual {v0, v1}, Lcom/i/a/b/l;->a(Lcom/i/a/b/a/h;)Lcom/i/a/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/i/a/b/l;->a()Lcom/i/a/b/j;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public static updateBitmapForRotation(Landroid/graphics/Bitmap;Lcom/behance/sdk/project/modules/ImageModule;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/behance/sdk/project/modules/ImageModule;->getRotation()I

    move-result v0

    .line 133
    if-lez v0, :cond_0

    .line 134
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 136
    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 139
    :cond_0
    return-object p0
.end method

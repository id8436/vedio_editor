.class public Lcom/facebook/imagepipeline/nativecode/Bitmaps;
.super Ljava/lang/Object;
.source "Bitmaps.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/a;->a()V

    .line 32
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p0}, Lcom/facebook/imagepipeline/nativecode/Bitmaps;->nativePinBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    return-void
.end method

.method private static native nativePinBitmap(Landroid/graphics/Bitmap;)V
.end method

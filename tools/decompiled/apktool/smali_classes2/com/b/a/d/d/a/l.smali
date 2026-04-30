.class public Lcom/b/a/d/d/a/l;
.super Lcom/b/a/d/d/a/d;
.source "FitCenter.java"


# direct methods
.method public constructor <init>(Lcom/b/a/d/b/a/e;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/b/a/d/d/a/d;-><init>(Lcom/b/a/d/b/a/e;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lcom/b/a/d/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    invoke-static {p2, p1, p3, p4}, Lcom/b/a/d/d/a/z;->a(Landroid/graphics/Bitmap;Lcom/b/a/d/b/a/e;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "FitCenter.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.class public Lcom/b/a/d/d/f/b;
.super Ljava/lang/Object;
.source "GlideBitmapDrawableTranscoder.java"

# interfaces
.implements Lcom/b/a/d/d/f/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/d/f/c",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/b/a/d/d/a/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/b/a/d/b/a/e;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/b/a/d/b/a/e;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/b/a/d/d/f/b;->a:Landroid/content/res/Resources;

    .line 27
    iput-object p2, p0, Lcom/b/a/d/d/f/b;->b:Lcom/b/a/d/b/a/e;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/d/b/z;)Lcom/b/a/d/b/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/z",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/a/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Lcom/b/a/d/d/a/m;

    iget-object v2, p0, Lcom/b/a/d/d/f/b;->a:Landroid/content/res/Resources;

    invoke-interface {p1}, Lcom/b/a/d/b/z;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Lcom/b/a/d/d/a/m;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 33
    new-instance v0, Lcom/b/a/d/d/a/o;

    iget-object v2, p0, Lcom/b/a/d/d/f/b;->b:Lcom/b/a/d/b/a/e;

    invoke-direct {v0, v1, v2}, Lcom/b/a/d/d/a/o;-><init>(Lcom/b/a/d/d/a/m;Lcom/b/a/d/b/a/e;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

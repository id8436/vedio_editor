.class public Lcom/b/a/d/d/f/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lcom/b/a/d/d/f/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/a/d/d/f/c",
        "<",
        "Lcom/b/a/d/d/e/a;",
        "Lcom/b/a/d/d/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/b/a/d/d/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/d/d/f/c",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/b/a/d/d/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/b/a/d/d/f/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/d/f/c",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/b/a/d/d/a/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/b/a/d/d/f/a;->a:Lcom/b/a/d/d/f/c;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/d/b/z;)Lcom/b/a/d/b/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/e/a;",
            ">;)",
            "Lcom/b/a/d/b/z",
            "<",
            "Lcom/b/a/d/d/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/b/a/d/b/z;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/d/d/e/a;

    .line 27
    invoke-virtual {v0}, Lcom/b/a/d/d/e/a;->b()Lcom/b/a/d/b/z;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/b/a/d/d/f/a;->a:Lcom/b/a/d/d/f/c;

    invoke-interface {v0, v1}, Lcom/b/a/d/d/f/c;->a(Lcom/b/a/d/b/z;)Lcom/b/a/d/b/z;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/b/a/d/d/e/a;->c()Lcom/b/a/d/b/z;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.class Lcom/facebook/imagepipeline/memory/f;
.super Ljava/lang/Object;
.source "BitmapCounter.java"

# interfaces
.implements Lcom/facebook/d/h/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/h/i",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/memory/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/memory/e;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/f;->a:Lcom/facebook/imagepipeline/memory/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/f;->a:Lcom/facebook/imagepipeline/memory/e;

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/memory/e;->b(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    return-void

    .line 54
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/f;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

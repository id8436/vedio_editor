.class Lcom/facebook/imagepipeline/k/be;
.super Lcom/facebook/imagepipeline/k/cu;
.source "LocalVideoThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/cu",
        "<",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/l/a;

.field final synthetic c:Lcom/facebook/imagepipeline/k/bd;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/bd;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/l/a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/be;->c:Lcom/facebook/imagepipeline/k/bd;

    iput-object p6, p0, Lcom/facebook/imagepipeline/k/be;->b:Lcom/facebook/imagepipeline/l/a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/k/cu;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/d/h/a;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-string/jumbo v1, "createdThumbnail"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/facebook/d/h/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 86
    return-void
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/be;->b(Lcom/facebook/d/h/a;)V

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/be;->d()Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 59
    check-cast p1, Lcom/facebook/d/h/a;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/be;->a(Lcom/facebook/d/h/a;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/facebook/d/h/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/be;->b:Lcom/facebook/imagepipeline/l/a;

    .line 63
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->n()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/be;->b:Lcom/facebook/imagepipeline/l/a;

    .line 64
    invoke-static {v1}, Lcom/facebook/imagepipeline/k/bd;->a(Lcom/facebook/imagepipeline/l/a;)I

    move-result v1

    .line 62
    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/h/c;

    .line 72
    invoke-static {}, Lcom/facebook/imagepipeline/b/h;->a()Lcom/facebook/imagepipeline/b/h;

    move-result-object v2

    sget-object v3, Lcom/facebook/imagepipeline/h/f;->a:Lcom/facebook/imagepipeline/h/g;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/facebook/imagepipeline/h/c;-><init>(Landroid/graphics/Bitmap;Lcom/facebook/d/h/i;Lcom/facebook/imagepipeline/h/g;I)V

    .line 69
    invoke-static {v1}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;

    move-result-object v0

    goto :goto_0
.end method

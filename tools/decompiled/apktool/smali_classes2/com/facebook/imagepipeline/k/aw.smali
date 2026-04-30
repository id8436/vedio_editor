.class Lcom/facebook/imagepipeline/k/aw;
.super Lcom/facebook/imagepipeline/k/cu;
.source "LocalExifThumbnailProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/cu",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/facebook/imagepipeline/l/a;

.field final synthetic c:Lcom/facebook/imagepipeline/k/av;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/av;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/l/a;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/aw;->c:Lcom/facebook/imagepipeline/k/av;

    iput-object p6, p0, Lcom/facebook/imagepipeline/k/aw;->b:Lcom/facebook/imagepipeline/l/a;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/facebook/imagepipeline/k/cu;-><init>(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;)V
    .locals 0

    .prologue
    .line 115
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    .line 116
    return-void
.end method

.method protected b(Lcom/facebook/imagepipeline/h/d;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/h/d;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v1, "createdThumbnail"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/aw;->a(Lcom/facebook/imagepipeline/h/d;)V

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
    .line 97
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/aw;->d()Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 97
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/aw;->b(Lcom/facebook/imagepipeline/h/d;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/facebook/imagepipeline/h/d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/aw;->b:Lcom/facebook/imagepipeline/l/a;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->b()Landroid/net/Uri;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/aw;->c:Lcom/facebook/imagepipeline/k/av;

    invoke-virtual {v1, v0}, Lcom/facebook/imagepipeline/k/av;->a(Landroid/net/Uri;)Landroid/media/ExifInterface;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/aw;->c:Lcom/facebook/imagepipeline/k/av;

    invoke-static {v2}, Lcom/facebook/imagepipeline/k/av;->a(Lcom/facebook/imagepipeline/k/av;)Lcom/facebook/imagepipeline/memory/aj;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/facebook/imagepipeline/memory/aj;->b([B)Lcom/facebook/imagepipeline/memory/ah;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/aw;->c:Lcom/facebook/imagepipeline/k/av;

    invoke-static {v2, v1, v0}, Lcom/facebook/imagepipeline/k/av;->a(Lcom/facebook/imagepipeline/k/av;Lcom/facebook/imagepipeline/memory/ah;Landroid/media/ExifInterface;)Lcom/facebook/imagepipeline/h/d;

    move-result-object v0

    goto :goto_0
.end method

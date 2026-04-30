.class Lcom/facebook/imagepipeline/c/j;
.super Ljava/lang/Object;
.source "BufferedDiskCache.java"

# interfaces
.implements Lcom/facebook/c/a/l;


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/h/d;

.field final synthetic b:Lcom/facebook/imagepipeline/c/g;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/h/d;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/facebook/imagepipeline/c/j;->b:Lcom/facebook/imagepipeline/c/g;

    iput-object p2, p0, Lcom/facebook/imagepipeline/c/j;->a:Lcom/facebook/imagepipeline/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/facebook/imagepipeline/c/j;->b:Lcom/facebook/imagepipeline/c/g;

    invoke-static {v0}, Lcom/facebook/imagepipeline/c/g;->c(Lcom/facebook/imagepipeline/c/g;)Lcom/facebook/imagepipeline/memory/am;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/c/j;->a:Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/h/d;->d()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/memory/am;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 372
    return-void
.end method

.class Lcom/facebook/imagepipeline/g/b;
.super Ljava/lang/Object;
.source "DefaultImageDecoder.java"

# interfaces
.implements Lcom/facebook/imagepipeline/g/c;


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/g/a;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/g/a;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/facebook/imagepipeline/g/b;->a:Lcom/facebook/imagepipeline/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/h/d;ILcom/facebook/imagepipeline/h/g;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->e()Lcom/facebook/g/c;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/facebook/g/b;->a:Lcom/facebook/g/c;

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/b;->a:Lcom/facebook/imagepipeline/g/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/g/a;->b(Lcom/facebook/imagepipeline/h/d;ILcom/facebook/imagepipeline/h/g;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/c;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    .line 64
    :cond_0
    sget-object v1, Lcom/facebook/g/b;->c:Lcom/facebook/g/c;

    if-ne v0, v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/b;->a:Lcom/facebook/imagepipeline/g/a;

    invoke-virtual {v0, p1, p4}, Lcom/facebook/imagepipeline/g/a;->a(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_1
    sget-object v1, Lcom/facebook/g/b;->i:Lcom/facebook/g/c;

    if-ne v0, v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/b;->a:Lcom/facebook/imagepipeline/g/a;

    invoke-virtual {v0, p1, p4}, Lcom/facebook/imagepipeline/g/a;->c(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_2
    sget-object v1, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    if-ne v0, v1, :cond_3

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown image format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/g/b;->a:Lcom/facebook/imagepipeline/g/a;

    invoke-virtual {v0, p1, p4}, Lcom/facebook/imagepipeline/g/a;->b(Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/c;

    move-result-object v0

    goto :goto_0
.end method

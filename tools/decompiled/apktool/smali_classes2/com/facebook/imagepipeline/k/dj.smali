.class Lcom/facebook/imagepipeline/k/dj;
.super Lcom/facebook/imagepipeline/k/w;
.source "WebpTranscodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/dh;

.field private final b:Lcom/facebook/imagepipeline/k/cm;

.field private c:Lcom/facebook/d/m/e;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/dh;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/dj;->a:Lcom/facebook/imagepipeline/k/dh;

    .line 69
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 70
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/dj;->b:Lcom/facebook/imagepipeline/k/cm;

    .line 71
    sget-object v0, Lcom/facebook/d/m/e;->c:Lcom/facebook/d/m/e;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/dj;->c:Lcom/facebook/d/m/e;

    .line 72
    return-void
.end method


# virtual methods
.method protected a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 3
    .param p1    # Lcom/facebook/imagepipeline/h/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/dj;->c:Lcom/facebook/d/m/e;

    sget-object v1, Lcom/facebook/d/m/e;->c:Lcom/facebook/d/m/e;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 78
    invoke-static {p1}, Lcom/facebook/imagepipeline/k/dh;->a(Lcom/facebook/imagepipeline/h/d;)Lcom/facebook/d/m/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/dj;->c:Lcom/facebook/d/m/e;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/dj;->c:Lcom/facebook/d/m/e;

    sget-object v1, Lcom/facebook/d/m/e;->b:Lcom/facebook/d/m/e;

    if-ne v0, v1, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/dj;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    if-eqz p2, :cond_1

    .line 88
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/dj;->c:Lcom/facebook/d/m/e;

    sget-object v1, Lcom/facebook/d/m/e;->a:Lcom/facebook/d/m/e;

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_3

    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/dj;->a:Lcom/facebook/imagepipeline/k/dh;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/dj;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/dj;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-static {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/k/dh;->a(Lcom/facebook/imagepipeline/k/dh;Lcom/facebook/imagepipeline/h/d;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/dj;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/dj;->a(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method

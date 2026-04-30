.class Lcom/facebook/imagepipeline/k/u;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/ap;


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/k/q;

.field final synthetic b:Lcom/facebook/imagepipeline/k/cm;

.field final synthetic c:Lcom/facebook/imagepipeline/k/t;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/u;->c:Lcom/facebook/imagepipeline/k/t;

    iput-object p2, p0, Lcom/facebook/imagepipeline/k/u;->a:Lcom/facebook/imagepipeline/k/q;

    iput-object p3, p0, Lcom/facebook/imagepipeline/k/u;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 2

    .prologue
    .line 135
    if-eqz p1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/u;->c:Lcom/facebook/imagepipeline/k/t;

    iget-object v0, v0, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/q;

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/q;->a(Lcom/facebook/imagepipeline/k/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/u;->b:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/u;->c:Lcom/facebook/imagepipeline/k/t;

    iget-object v1, v1, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/q;

    invoke-static {v1}, Lcom/facebook/imagepipeline/k/q;->b(Lcom/facebook/imagepipeline/k/q;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/d/m/f;->a(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/k/ad;->a(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/imagepipeline/h/d;->d(I)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/u;->c:Lcom/facebook/imagepipeline/k/t;

    invoke-static {v0, p1, p2}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/h/d;Z)V

    .line 146
    :cond_2
    return-void
.end method

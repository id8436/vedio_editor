.class public Lcom/facebook/imagepipeline/memory/ad;
.super Ljava/lang/Object;
.source "PoolFactory.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/memory/aa;

.field private b:Lcom/facebook/imagepipeline/memory/h;

.field private c:Lcom/facebook/imagepipeline/memory/o;

.field private d:Lcom/facebook/imagepipeline/memory/s;

.field private e:Lcom/facebook/imagepipeline/memory/aj;

.field private f:Lcom/facebook/imagepipeline/memory/am;

.field private g:Lcom/facebook/imagepipeline/memory/j;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/aa;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/aa;

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/memory/h;
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->b:Lcom/facebook/imagepipeline/memory/h;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/memory/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 39
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/aa;->c()Lcom/facebook/d/g/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 40
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/aa;->a()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 41
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/aa;->b()Lcom/facebook/imagepipeline/memory/af;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/h;-><init>(Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/memory/ae;Lcom/facebook/imagepipeline/memory/af;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->b:Lcom/facebook/imagepipeline/memory/h;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->b:Lcom/facebook/imagepipeline/memory/h;

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/memory/o;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->c:Lcom/facebook/imagepipeline/memory/o;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/facebook/imagepipeline/memory/o;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 49
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/aa;->c()Lcom/facebook/d/g/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 50
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/aa;->f()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/o;-><init>(Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/memory/ae;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->c:Lcom/facebook/imagepipeline/memory/o;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->c:Lcom/facebook/imagepipeline/memory/o;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/memory/aa;->f()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v0

    iget v0, v0, Lcom/facebook/imagepipeline/memory/ae;->f:I

    return v0
.end method

.method public d()Lcom/facebook/imagepipeline/memory/s;
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->d:Lcom/facebook/imagepipeline/memory/s;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/facebook/imagepipeline/memory/s;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 62
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/aa;->c()Lcom/facebook/d/g/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 63
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/aa;->d()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 64
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/aa;->e()Lcom/facebook/imagepipeline/memory/af;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/s;-><init>(Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/memory/ae;Lcom/facebook/imagepipeline/memory/af;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->d:Lcom/facebook/imagepipeline/memory/s;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->d:Lcom/facebook/imagepipeline/memory/s;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/memory/aj;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->e:Lcom/facebook/imagepipeline/memory/aj;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/imagepipeline/memory/u;

    .line 72
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ad;->d()Lcom/facebook/imagepipeline/memory/s;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ad;->f()Lcom/facebook/imagepipeline/memory/am;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/memory/u;-><init>(Lcom/facebook/imagepipeline/memory/s;Lcom/facebook/imagepipeline/memory/am;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->e:Lcom/facebook/imagepipeline/memory/aj;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->e:Lcom/facebook/imagepipeline/memory/aj;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/memory/am;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->f:Lcom/facebook/imagepipeline/memory/am;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/facebook/imagepipeline/memory/am;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ad;->g()Lcom/facebook/imagepipeline/memory/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/memory/am;-><init>(Lcom/facebook/imagepipeline/memory/j;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->f:Lcom/facebook/imagepipeline/memory/am;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->f:Lcom/facebook/imagepipeline/memory/am;

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/memory/j;
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->g:Lcom/facebook/imagepipeline/memory/j;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/facebook/imagepipeline/memory/r;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 97
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/aa;->c()Lcom/facebook/d/g/b;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 98
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/aa;->g()Lcom/facebook/imagepipeline/memory/ae;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/ad;->a:Lcom/facebook/imagepipeline/memory/aa;

    .line 99
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/aa;->h()Lcom/facebook/imagepipeline/memory/af;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/memory/r;-><init>(Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/memory/ae;Lcom/facebook/imagepipeline/memory/af;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->g:Lcom/facebook/imagepipeline/memory/j;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/ad;->g:Lcom/facebook/imagepipeline/memory/j;

    return-object v0
.end method

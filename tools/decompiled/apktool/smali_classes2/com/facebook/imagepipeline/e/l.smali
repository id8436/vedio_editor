.class public Lcom/facebook/imagepipeline/e/l;
.super Ljava/lang/Object;
.source "ImagePipelineExperiments.java"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/d/n/c;

.field private final f:Z

.field private final g:Lcom/facebook/d/n/b;

.field private final h:Z

.field private final i:Z


# direct methods
.method private constructor <init>(Lcom/facebook/imagepipeline/e/n;Lcom/facebook/imagepipeline/e/j;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->a(Lcom/facebook/imagepipeline/e/n;)I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/e/l;->a:I

    .line 35
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->b(Lcom/facebook/imagepipeline/e/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->b:Z

    .line 36
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->c(Lcom/facebook/imagepipeline/e/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->c:Z

    .line 37
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->d(Lcom/facebook/imagepipeline/e/n;)Lcom/facebook/d/d/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->d(Lcom/facebook/imagepipeline/e/n;)Lcom/facebook/d/d/m;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/l;->d:Lcom/facebook/d/d/m;

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->e(Lcom/facebook/imagepipeline/e/n;)Lcom/facebook/d/n/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/l;->e:Lcom/facebook/d/n/c;

    .line 48
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->f(Lcom/facebook/imagepipeline/e/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->f:Z

    .line 49
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->g(Lcom/facebook/imagepipeline/e/n;)Lcom/facebook/d/n/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/l;->g:Lcom/facebook/d/n/b;

    .line 50
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->h(Lcom/facebook/imagepipeline/e/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->h:Z

    .line 51
    invoke-static {p1}, Lcom/facebook/imagepipeline/e/n;->i(Lcom/facebook/imagepipeline/e/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->i:Z

    .line 52
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/facebook/imagepipeline/e/m;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/e/m;-><init>(Lcom/facebook/imagepipeline/e/l;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/l;->d:Lcom/facebook/d/d/m;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/imagepipeline/e/n;Lcom/facebook/imagepipeline/e/j;Lcom/facebook/imagepipeline/e/m;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/e/l;-><init>(Lcom/facebook/imagepipeline/e/n;Lcom/facebook/imagepipeline/e/j;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->c:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/facebook/imagepipeline/e/l;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/l;->d:Lcom/facebook/d/d/m;

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->i:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->b:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/e/l;->f:Z

    return v0
.end method

.method public g()Lcom/facebook/d/n/c;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/l;->e:Lcom/facebook/d/n/c;

    return-object v0
.end method

.method public h()Lcom/facebook/d/n/b;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/l;->g:Lcom/facebook/d/n/b;

    return-object v0
.end method

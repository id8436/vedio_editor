.class public Lcom/facebook/imagepipeline/k/bd;
.super Ljava/lang/Object;
.source "LocalVideoThumbnailProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bd;->a:Ljava/util/concurrent/Executor;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/l/a;)I
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lcom/facebook/imagepipeline/k/bd;->b(Lcom/facebook/imagepipeline/l/a;)I

    move-result v0

    return v0
.end method

.method private static b(Lcom/facebook/imagepipeline/l/a;)I
    .locals 2

    .prologue
    const/16 v1, 0x60

    .line 99
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/a;->d()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/a;->e()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v3

    .line 52
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v6

    .line 54
    new-instance v0, Lcom/facebook/imagepipeline/k/be;

    const-string/jumbo v4, "VideoThumbnailProducer"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/be;-><init>(Lcom/facebook/imagepipeline/k/bd;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/l/a;)V

    .line 88
    new-instance v1, Lcom/facebook/imagepipeline/k/bf;

    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/k/bf;-><init>(Lcom/facebook/imagepipeline/k/bd;Lcom/facebook/imagepipeline/k/cu;)V

    invoke-interface {p2, v1}, Lcom/facebook/imagepipeline/k/cm;->a(Lcom/facebook/imagepipeline/k/cn;)V

    .line 95
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bd;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

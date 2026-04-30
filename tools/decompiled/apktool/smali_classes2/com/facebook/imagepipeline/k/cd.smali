.class public Lcom/facebook/imagepipeline/k/cd;
.super Ljava/lang/Object;
.source "PostprocessorProducer.java"

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
.field private final a:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/imagepipeline/b/f;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/b/f;Ljava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;",
            "Lcom/facebook/imagepipeline/b/f;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/k/cl;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cd;->a:Lcom/facebook/imagepipeline/k/cl;

    .line 51
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/cd;->b:Lcom/facebook/imagepipeline/b/f;

    .line 52
    invoke-static {p3}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cd;->c:Ljava/util/concurrent/Executor;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cd;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cd;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/cd;)Lcom/facebook/imagepipeline/b/f;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cd;->b:Lcom/facebook/imagepipeline/b/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 8
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
    const/4 v7, 0x0

    .line 59
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v3

    .line 60
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->o()Lcom/facebook/imagepipeline/l/h;

    move-result-object v5

    .line 61
    new-instance v0, Lcom/facebook/imagepipeline/k/cf;

    .line 62
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/cf;-><init>(Lcom/facebook/imagepipeline/k/cd;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/l/h;Lcom/facebook/imagepipeline/k/cm;)V

    .line 64
    instance-of v1, v5, Lcom/facebook/imagepipeline/l/i;

    if-eqz v1, :cond_0

    .line 65
    new-instance v1, Lcom/facebook/imagepipeline/k/ci;

    move-object v4, v5

    check-cast v4, Lcom/facebook/imagepipeline/l/i;

    move-object v2, p0

    move-object v3, v0

    move-object v5, p2

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/k/ci;-><init>(Lcom/facebook/imagepipeline/k/cd;Lcom/facebook/imagepipeline/k/cf;Lcom/facebook/imagepipeline/l/i;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/k/ce;)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cd;->a:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 73
    return-void

    .line 70
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/k/ck;

    invoke-direct {v1, p0, v0, v7}, Lcom/facebook/imagepipeline/k/ck;-><init>(Lcom/facebook/imagepipeline/k/cd;Lcom/facebook/imagepipeline/k/cf;Lcom/facebook/imagepipeline/k/ce;)V

    goto :goto_0
.end method

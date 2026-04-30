.class public Lcom/facebook/imagepipeline/k/q;
.super Ljava/lang/Object;
.source "DecodeProducer.java"

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
.field private final a:Lcom/facebook/imagepipeline/memory/j;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/facebook/imagepipeline/g/c;

.field private final d:Lcom/facebook/imagepipeline/g/e;

.field private final e:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Z

.field private final h:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/memory/j;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/g/c;Lcom/facebook/imagepipeline/g/e;ZZZLcom/facebook/imagepipeline/k/cl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/j;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/g/c;",
            "Lcom/facebook/imagepipeline/g/e;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/j;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/q;->a:Lcom/facebook/imagepipeline/memory/j;

    .line 79
    invoke-static {p2}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/q;->b:Ljava/util/concurrent/Executor;

    .line 80
    invoke-static {p3}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/c;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/q;->c:Lcom/facebook/imagepipeline/g/c;

    .line 81
    invoke-static {p4}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/g/e;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/q;->d:Lcom/facebook/imagepipeline/g/e;

    .line 82
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/k/q;->f:Z

    .line 83
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/k/q;->g:Z

    .line 84
    invoke-static {p8}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/k/cl;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/q;->e:Lcom/facebook/imagepipeline/k/cl;

    .line 85
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/k/q;->h:Z

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/q;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/q;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/q;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/q;->g:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/k/q;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/q;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/k/q;)Lcom/facebook/imagepipeline/g/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/q;->c:Lcom/facebook/imagepipeline/g/c;

    return-object v0
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
    .line 92
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/d/m/f;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/facebook/imagepipeline/k/r;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/k/q;->h:Z

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/imagepipeline/k/r;-><init>(Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/q;->e:Lcom/facebook/imagepipeline/k/cl;

    invoke-interface {v1, v0, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 109
    return-void

    .line 100
    :cond_0
    new-instance v4, Lcom/facebook/imagepipeline/g/f;

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/q;->a:Lcom/facebook/imagepipeline/memory/j;

    invoke-direct {v4, v0}, Lcom/facebook/imagepipeline/g/f;-><init>(Lcom/facebook/imagepipeline/memory/j;)V

    .line 101
    new-instance v0, Lcom/facebook/imagepipeline/k/s;

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/q;->d:Lcom/facebook/imagepipeline/g/e;

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/k/q;->h:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/s;-><init>(Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/g/f;Lcom/facebook/imagepipeline/g/e;Z)V

    goto :goto_0
.end method

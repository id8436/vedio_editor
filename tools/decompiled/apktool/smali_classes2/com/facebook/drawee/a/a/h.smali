.class public Lcom/facebook/drawee/a/a/h;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerBuilderSupplier.java"

# interfaces
.implements Lcom/facebook/d/d/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/d/d/m",
        "<",
        "Lcom/facebook/drawee/a/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/imagepipeline/e/g;

.field private final c:Lcom/facebook/drawee/a/a/i;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/c/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/drawee/a/a/b;)V
    .locals 1
    .param p2    # Lcom/facebook/drawee/a/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 42
    invoke-static {}, Lcom/facebook/imagepipeline/e/o;->a()Lcom/facebook/imagepipeline/e/o;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/drawee/a/a/h;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/e/o;Lcom/facebook/drawee/a/a/b;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/e/o;Lcom/facebook/drawee/a/a/b;)V
    .locals 1
    .param p3    # Lcom/facebook/drawee/a/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/drawee/a/a/h;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/e/o;Ljava/util/Set;Lcom/facebook/drawee/a/a/b;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/e/o;Ljava/util/Set;Lcom/facebook/drawee/a/a/b;)V
    .locals 8
    .param p4    # Lcom/facebook/drawee/a/a/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/imagepipeline/e/o;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/drawee/c/i;",
            ">;",
            "Lcom/facebook/drawee/a/a/b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/drawee/a/a/h;->a:Landroid/content/Context;

    .line 58
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/e/o;->h()Lcom/facebook/imagepipeline/e/g;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/a/a/h;->b:Lcom/facebook/imagepipeline/e/g;

    .line 60
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/e/o;->b()Lcom/facebook/imagepipeline/a/a/b;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/a/a/b;->a(Landroid/content/Context;)Lcom/facebook/imagepipeline/a/a/a;

    move-result-object v3

    .line 65
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/facebook/drawee/a/a/b;->b()Lcom/facebook/drawee/a/a/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p4}, Lcom/facebook/drawee/a/a/b;->b()Lcom/facebook/drawee/a/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/drawee/a/a/h;->c:Lcom/facebook/drawee/a/a/i;

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/facebook/drawee/a/a/h;->c:Lcom/facebook/drawee/a/a/i;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/facebook/drawee/b/a;->a()Lcom/facebook/drawee/b/a;

    move-result-object v2

    .line 74
    invoke-static {}, Lcom/facebook/d/b/f;->b()Lcom/facebook/d/b/f;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/drawee/a/a/h;->b:Lcom/facebook/imagepipeline/e/g;

    .line 75
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/e/g;->a()Lcom/facebook/imagepipeline/c/ad;

    move-result-object v5

    if-eqz p4, :cond_2

    .line 77
    invoke-virtual {p4}, Lcom/facebook/drawee/a/a/b;->a()Lcom/facebook/d/d/d;

    move-result-object v6

    :goto_2
    if-eqz p4, :cond_0

    .line 80
    invoke-virtual {p4}, Lcom/facebook/drawee/a/a/b;->c()Lcom/facebook/d/d/m;

    move-result-object v7

    .line 70
    :cond_0
    invoke-virtual/range {v0 .. v7}, Lcom/facebook/drawee/a/a/i;->a(Landroid/content/res/Resources;Lcom/facebook/drawee/b/a;Lcom/facebook/imagepipeline/a/a/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/d/d/d;Lcom/facebook/d/d/m;)V

    .line 82
    iput-object p3, p0, Lcom/facebook/drawee/a/a/h;->d:Ljava/util/Set;

    .line 83
    return-void

    .line 68
    :cond_1
    new-instance v0, Lcom/facebook/drawee/a/a/i;

    invoke-direct {v0}, Lcom/facebook/drawee/a/a/i;-><init>()V

    iput-object v0, p0, Lcom/facebook/drawee/a/a/h;->c:Lcom/facebook/drawee/a/a/i;

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 77
    goto :goto_2

    :cond_3
    move-object v3, v7

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/facebook/drawee/a/a/f;
    .locals 5

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/drawee/a/a/f;

    iget-object v1, p0, Lcom/facebook/drawee/a/a/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/drawee/a/a/h;->c:Lcom/facebook/drawee/a/a/i;

    iget-object v3, p0, Lcom/facebook/drawee/a/a/h;->b:Lcom/facebook/imagepipeline/e/g;

    iget-object v4, p0, Lcom/facebook/drawee/a/a/h;->d:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/drawee/a/a/f;-><init>(Landroid/content/Context;Lcom/facebook/drawee/a/a/i;Lcom/facebook/imagepipeline/e/g;Ljava/util/Set;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/facebook/drawee/a/a/h;->a()Lcom/facebook/drawee/a/a/f;

    move-result-object v0

    return-object v0
.end method

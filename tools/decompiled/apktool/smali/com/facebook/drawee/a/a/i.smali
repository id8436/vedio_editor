.class public Lcom/facebook/drawee/a/a/i;
.super Ljava/lang/Object;
.source "PipelineDraweeControllerFactory.java"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/facebook/drawee/b/a;

.field private c:Lcom/facebook/imagepipeline/a/a/a;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Lcom/facebook/imagepipeline/c/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/facebook/d/d/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/d",
            "<",
            "Lcom/facebook/drawee/a/a/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/d/d/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;Lcom/facebook/drawee/b/a;Lcom/facebook/imagepipeline/a/a/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/d/d/d;Lcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/f;Ljava/lang/Object;)Lcom/facebook/drawee/a/a/d;
    .locals 11
    .param p6    # Lcom/facebook/d/d/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/b/a;",
            "Lcom/facebook/imagepipeline/a/a/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;",
            "Lcom/facebook/d/d/d",
            "<",
            "Lcom/facebook/drawee/a/a/a;",
            ">;",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lcom/facebook/c/a/f;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/drawee/a/a/d;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/facebook/drawee/a/a/d;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/facebook/drawee/a/a/d;-><init>(Landroid/content/res/Resources;Lcom/facebook/drawee/b/a;Lcom/facebook/imagepipeline/a/a/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/f;Ljava/lang/Object;Lcom/facebook/d/d/d;)V

    return-object v0
.end method

.method public a(Lcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/f;Ljava/lang/Object;)Lcom/facebook/drawee/a/a/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lcom/facebook/c/a/f;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/drawee/a/a/d;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/drawee/a/a/i;->a:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "init() not called"

    invoke-static {v0, v1}, Lcom/facebook/d/d/k;->b(ZLjava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/facebook/drawee/a/a/i;->a:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/facebook/drawee/a/a/i;->b:Lcom/facebook/drawee/b/a;

    iget-object v3, p0, Lcom/facebook/drawee/a/a/i;->c:Lcom/facebook/imagepipeline/a/a/a;

    iget-object v4, p0, Lcom/facebook/drawee/a/a/i;->d:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/facebook/drawee/a/a/i;->e:Lcom/facebook/imagepipeline/c/ad;

    iget-object v6, p0, Lcom/facebook/drawee/a/a/i;->f:Lcom/facebook/d/d/d;

    move-object v0, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/facebook/drawee/a/a/i;->a(Landroid/content/res/Resources;Lcom/facebook/drawee/b/a;Lcom/facebook/imagepipeline/a/a/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/d/d/d;Lcom/facebook/d/d/m;Ljava/lang/String;Lcom/facebook/c/a/f;Ljava/lang/Object;)Lcom/facebook/drawee/a/a/d;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lcom/facebook/drawee/a/a/i;->g:Lcom/facebook/d/d/m;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/drawee/a/a/i;->g:Lcom/facebook/d/d/m;

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/a/a/d;->a(Z)V

    .line 83
    :cond_0
    return-object v1

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/res/Resources;Lcom/facebook/drawee/b/a;Lcom/facebook/imagepipeline/a/a/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/d/d/d;Lcom/facebook/d/d/m;)V
    .locals 0
    .param p6    # Lcom/facebook/d/d/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/d/d/m;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/b/a;",
            "Lcom/facebook/imagepipeline/a/a/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;",
            "Lcom/facebook/d/d/d",
            "<",
            "Lcom/facebook/drawee/a/a/a;",
            ">;",
            "Lcom/facebook/d/d/m",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/drawee/a/a/i;->a:Landroid/content/res/Resources;

    .line 53
    iput-object p2, p0, Lcom/facebook/drawee/a/a/i;->b:Lcom/facebook/drawee/b/a;

    .line 54
    iput-object p3, p0, Lcom/facebook/drawee/a/a/i;->c:Lcom/facebook/imagepipeline/a/a/a;

    .line 55
    iput-object p4, p0, Lcom/facebook/drawee/a/a/i;->d:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p5, p0, Lcom/facebook/drawee/a/a/i;->e:Lcom/facebook/imagepipeline/c/ad;

    .line 57
    iput-object p6, p0, Lcom/facebook/drawee/a/a/i;->f:Lcom/facebook/d/d/d;

    .line 58
    iput-object p7, p0, Lcom/facebook/drawee/a/a/i;->g:Lcom/facebook/d/d/m;

    .line 59
    return-void
.end method

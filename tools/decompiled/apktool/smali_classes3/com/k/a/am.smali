.class public Lcom/k/a/am;
.super Ljava/lang/Object;
.source "Picasso.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/k/a/w;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/k/a/k;

.field private e:Lcom/k/a/ap;

.field private f:Lcom/k/a/as;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/k/a/bb;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    if-nez p1, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/k/a/am;->a:Landroid/content/Context;

    .line 704
    return-void
.end method


# virtual methods
.method public a()Lcom/k/a/ak;
    .locals 19

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/k/a/am;->a:Landroid/content/Context;

    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/k/a/am;->b:Lcom/k/a/w;

    if-nez v1, :cond_0

    .line 832
    invoke-static {v2}, Lcom/k/a/bm;->a(Landroid/content/Context;)Lcom/k/a/w;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/k/a/am;->b:Lcom/k/a/w;

    .line 834
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/k/a/am;->d:Lcom/k/a/k;

    if-nez v1, :cond_1

    .line 835
    new-instance v1, Lcom/k/a/ab;

    invoke-direct {v1, v2}, Lcom/k/a/ab;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/k/a/am;->d:Lcom/k/a/k;

    .line 837
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/k/a/am;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_2

    .line 838
    new-instance v1, Lcom/k/a/av;

    invoke-direct {v1}, Lcom/k/a/av;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/k/a/am;->c:Ljava/util/concurrent/ExecutorService;

    .line 840
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/k/a/am;->f:Lcom/k/a/as;

    if-nez v1, :cond_3

    .line 841
    sget-object v1, Lcom/k/a/as;->a:Lcom/k/a/as;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/k/a/am;->f:Lcom/k/a/as;

    .line 844
    :cond_3
    new-instance v7, Lcom/k/a/be;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/k/a/am;->d:Lcom/k/a/k;

    invoke-direct {v7, v1}, Lcom/k/a/be;-><init>(Lcom/k/a/k;)V

    .line 846
    new-instance v1, Lcom/k/a/r;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/k/a/am;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v4, Lcom/k/a/ak;->a:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/k/a/am;->b:Lcom/k/a/w;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/k/a/am;->d:Lcom/k/a/k;

    invoke-direct/range {v1 .. v7}, Lcom/k/a/r;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/k/a/w;Lcom/k/a/k;Lcom/k/a/be;)V

    .line 848
    new-instance v8, Lcom/k/a/ak;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/k/a/am;->d:Lcom/k/a/k;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/k/a/am;->e:Lcom/k/a/ap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/k/a/am;->f:Lcom/k/a/as;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/k/a/am;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/k/a/am;->h:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/k/a/am;->i:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/k/a/am;->j:Z

    move/from16 v18, v0

    move-object v9, v2

    move-object v10, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v18}, Lcom/k/a/ak;-><init>(Landroid/content/Context;Lcom/k/a/r;Lcom/k/a/k;Lcom/k/a/ap;Lcom/k/a/as;Ljava/util/List;Lcom/k/a/be;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v8
.end method

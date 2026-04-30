.class public Lcom/facebook/imagepipeline/e/r;
.super Ljava/lang/Object;
.source "ProducerFactory.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/res/Resources;

.field private c:Landroid/content/res/AssetManager;

.field private final d:Lcom/facebook/imagepipeline/memory/j;

.field private final e:Lcom/facebook/imagepipeline/g/c;

.field private final f:Lcom/facebook/imagepipeline/g/e;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/facebook/imagepipeline/e/e;

.field private final k:Lcom/facebook/imagepipeline/memory/aj;

.field private final l:Lcom/facebook/imagepipeline/c/g;

.field private final m:Lcom/facebook/imagepipeline/c/g;

.field private final n:Lcom/facebook/imagepipeline/c/w;

.field private final o:Lcom/facebook/imagepipeline/c/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/facebook/imagepipeline/c/ad;
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

.field private final q:Lcom/facebook/imagepipeline/c/k;

.field private r:Lcom/facebook/imagepipeline/k/bl;

.field private final s:Lcom/facebook/imagepipeline/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/imagepipeline/memory/j;Lcom/facebook/imagepipeline/g/c;Lcom/facebook/imagepipeline/g/e;ZZZLcom/facebook/imagepipeline/e/e;Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/k/bl;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/b/f;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/imagepipeline/memory/j;",
            "Lcom/facebook/imagepipeline/g/c;",
            "Lcom/facebook/imagepipeline/g/e;",
            "ZZZ",
            "Lcom/facebook/imagepipeline/e/e;",
            "Lcom/facebook/imagepipeline/memory/aj;",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;",
            "Lcom/facebook/imagepipeline/c/g;",
            "Lcom/facebook/imagepipeline/c/g;",
            "Lcom/facebook/imagepipeline/k/bl;",
            "Lcom/facebook/imagepipeline/c/k;",
            "Lcom/facebook/imagepipeline/b/f;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/imagepipeline/e/r;->a:Landroid/content/ContentResolver;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/imagepipeline/e/r;->b:Landroid/content/res/Resources;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/imagepipeline/e/r;->c:Landroid/content/res/AssetManager;

    .line 123
    iput-object p2, p0, Lcom/facebook/imagepipeline/e/r;->d:Lcom/facebook/imagepipeline/memory/j;

    .line 124
    iput-object p3, p0, Lcom/facebook/imagepipeline/e/r;->e:Lcom/facebook/imagepipeline/g/c;

    .line 125
    iput-object p4, p0, Lcom/facebook/imagepipeline/e/r;->f:Lcom/facebook/imagepipeline/g/e;

    .line 126
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/e/r;->g:Z

    .line 127
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/e/r;->h:Z

    .line 128
    iput-boolean p7, p0, Lcom/facebook/imagepipeline/e/r;->i:Z

    .line 130
    iput-object p8, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 131
    iput-object p9, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    .line 133
    iput-object p10, p0, Lcom/facebook/imagepipeline/e/r;->p:Lcom/facebook/imagepipeline/c/ad;

    .line 134
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/r;->o:Lcom/facebook/imagepipeline/c/ad;

    .line 135
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/r;->l:Lcom/facebook/imagepipeline/c/g;

    .line 136
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/r;->m:Lcom/facebook/imagepipeline/c/g;

    .line 137
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/r;->r:Lcom/facebook/imagepipeline/k/bl;

    .line 138
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/r;->q:Lcom/facebook/imagepipeline/c/k;

    .line 140
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/r;->s:Lcom/facebook/imagepipeline/b/f;

    .line 142
    if-lez p17, :cond_0

    .line 143
    new-instance v4, Lcom/facebook/imagepipeline/c/aj;

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    move-object/from16 v2, p15

    move/from16 v3, p17

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/imagepipeline/c/aj;-><init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/k;I)V

    iput-object v4, p0, Lcom/facebook/imagepipeline/e/r;->n:Lcom/facebook/imagepipeline/c/w;

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v4, Lcom/facebook/imagepipeline/c/ai;

    move-object/from16 v0, p12

    move-object/from16 v1, p13

    move-object/from16 v2, p15

    invoke-direct {v4, v0, v1, v2}, Lcom/facebook/imagepipeline/c/ai;-><init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/k;)V

    iput-object v4, p0, Lcom/facebook/imagepipeline/e/r;->n:Lcom/facebook/imagepipeline/c/w;

    goto :goto_0
.end method

.method public static a(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/a;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/facebook/imagepipeline/k/a;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/k/a;-><init>(Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/l;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/facebook/imagepipeline/k/l;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/k/l;-><init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/by;)Lcom/facebook/imagepipeline/k/bw;
    .locals 3

    .prologue
    .line 290
    new-instance v0, Lcom/facebook/imagepipeline/k/bw;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->d:Lcom/facebook/imagepipeline/memory/j;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/bw;-><init>(Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/memory/j;Lcom/facebook/imagepipeline/k/by;)V

    return-object v0
.end method

.method public a(Lcom/facebook/imagepipeline/k/cl;ZZ)Lcom/facebook/imagepipeline/k/cp;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;ZZ)",
            "Lcom/facebook/imagepipeline/k/cp;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lcom/facebook/imagepipeline/k/cp;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 317
    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/facebook/imagepipeline/e/r;->g:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/k/cp;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;ZLcom/facebook/imagepipeline/k/cl;Z)V

    .line 316
    return-object v0

    .line 317
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public a(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/cy;)Lcom/facebook/imagepipeline/k/cv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<TT;>;",
            "Lcom/facebook/imagepipeline/k/cy;",
            ")",
            "Lcom/facebook/imagepipeline/k/cv",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/facebook/imagepipeline/k/cv;

    invoke-direct {v0, p1, p2}, Lcom/facebook/imagepipeline/k/cv;-><init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/k/cy;)V

    return-object v0
.end method

.method public a([Lcom/facebook/imagepipeline/k/df;)Lcom/facebook/imagepipeline/k/dd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/imagepipeline/k/df",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/dd;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/facebook/imagepipeline/k/dd;

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/k/dd;-><init>([Lcom/facebook/imagepipeline/k/df;)V

    return-object v0
.end method

.method public a()Lcom/facebook/imagepipeline/k/p;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Lcom/facebook/imagepipeline/k/p;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/k/p;-><init>(Lcom/facebook/imagepipeline/memory/aj;)V

    return-object v0
.end method

.method public b()Lcom/facebook/imagepipeline/k/as;
    .locals 4

    .prologue
    .line 235
    new-instance v0, Lcom/facebook/imagepipeline/k/as;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 236
    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/r;->c:Landroid/content/res/AssetManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/as;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;Landroid/content/res/AssetManager;)V

    .line 235
    return-object v0
.end method

.method public b(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/h;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/facebook/imagepipeline/k/h;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->p:Lcom/facebook/imagepipeline/c/ad;

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->q:Lcom/facebook/imagepipeline/c/k;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/h;-><init>(Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/k/at;
    .locals 4

    .prologue
    .line 243
    new-instance v0, Lcom/facebook/imagepipeline/k/at;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 244
    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/r;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/at;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;Landroid/content/ContentResolver;)V

    .line 243
    return-object v0
.end method

.method public c(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/i;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/facebook/imagepipeline/k/i;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->q:Lcom/facebook/imagepipeline/c/k;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/k/i;-><init>(Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/k/au;
    .locals 4

    .prologue
    .line 251
    new-instance v0, Lcom/facebook/imagepipeline/k/au;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 252
    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/r;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/au;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;Landroid/content/ContentResolver;)V

    .line 251
    return-object v0
.end method

.method public d(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/j;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/facebook/imagepipeline/k/j;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->p:Lcom/facebook/imagepipeline/c/ad;

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->q:Lcom/facebook/imagepipeline/c/k;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/j;-><init>(Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/k/av;
    .locals 4

    .prologue
    .line 259
    new-instance v0, Lcom/facebook/imagepipeline/k/av;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 260
    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/r;->a:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/av;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;Landroid/content/ContentResolver;)V

    .line 259
    return-object v0
.end method

.method public e(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/q;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/facebook/imagepipeline/k/q;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->d:Lcom/facebook/imagepipeline/memory/j;

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 190
    invoke-interface {v2}, Lcom/facebook/imagepipeline/e/e;->c()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/r;->e:Lcom/facebook/imagepipeline/g/c;

    iget-object v4, p0, Lcom/facebook/imagepipeline/e/r;->f:Lcom/facebook/imagepipeline/g/e;

    iget-boolean v5, p0, Lcom/facebook/imagepipeline/e/r;->g:Z

    iget-boolean v6, p0, Lcom/facebook/imagepipeline/e/r;->h:Z

    iget-boolean v7, p0, Lcom/facebook/imagepipeline/e/r;->i:Z

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/imagepipeline/k/q;-><init>(Lcom/facebook/imagepipeline/memory/j;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/g/c;Lcom/facebook/imagepipeline/g/e;ZZZLcom/facebook/imagepipeline/k/cl;)V

    .line 188
    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/k/bb;
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lcom/facebook/imagepipeline/k/bb;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 272
    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/k/bb;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;)V

    .line 271
    return-object v0
.end method

.method public f(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/x;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/facebook/imagepipeline/k/x;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->n:Lcom/facebook/imagepipeline/c/w;

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/k/x;-><init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/c/w;)V

    return-object v0
.end method

.method public g(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/aa;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/aa;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lcom/facebook/imagepipeline/k/aa;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->n:Lcom/facebook/imagepipeline/c/w;

    invoke-direct {v0, p1, v1}, Lcom/facebook/imagepipeline/k/aa;-><init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/c/w;)V

    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/k/bc;
    .locals 4

    .prologue
    .line 278
    new-instance v0, Lcom/facebook/imagepipeline/k/bc;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 279
    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/r;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/bc;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;Landroid/content/res/Resources;)V

    .line 278
    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/k/bd;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Lcom/facebook/imagepipeline/k/bd;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/k/bd;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public h(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/bg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/bg;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lcom/facebook/imagepipeline/k/bg;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->l:Lcom/facebook/imagepipeline/c/g;

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->m:Lcom/facebook/imagepipeline/c/g;

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/r;->q:Lcom/facebook/imagepipeline/c/k;

    iget-object v4, p0, Lcom/facebook/imagepipeline/e/r;->r:Lcom/facebook/imagepipeline/k/bl;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/k/bg;-><init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/bl;Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method

.method public i(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/ae;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/facebook/imagepipeline/k/ae;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->q:Lcom/facebook/imagepipeline/c/k;

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/k/ae;-><init>(Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method

.method public j(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/af;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/af;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/facebook/imagepipeline/k/af;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->o:Lcom/facebook/imagepipeline/c/ad;

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->q:Lcom/facebook/imagepipeline/c/k;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/af;-><init>(Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method

.method public k(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/cb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/cb;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lcom/facebook/imagepipeline/k/cb;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->p:Lcom/facebook/imagepipeline/c/ad;

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->q:Lcom/facebook/imagepipeline/c/k;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/cb;-><init>(Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cl;)V

    return-object v0
.end method

.method public l(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/cd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/d/h/a",
            "<",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;>;)",
            "Lcom/facebook/imagepipeline/k/cd;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Lcom/facebook/imagepipeline/k/cd;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->s:Lcom/facebook/imagepipeline/b/f;

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 309
    invoke-interface {v2}, Lcom/facebook/imagepipeline/e/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/imagepipeline/k/cd;-><init>(Lcom/facebook/imagepipeline/k/cl;Lcom/facebook/imagepipeline/b/f;Ljava/util/concurrent/Executor;)V

    .line 308
    return-object v0
.end method

.method public m(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/cz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<TT;>;)",
            "Lcom/facebook/imagepipeline/k/cz",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcom/facebook/imagepipeline/k/cz;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 339
    invoke-interface {v2}, Lcom/facebook/imagepipeline/e/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/cz;-><init>(ILjava/util/concurrent/Executor;Lcom/facebook/imagepipeline/k/cl;)V

    .line 337
    return-object v0
.end method

.method public n(Lcom/facebook/imagepipeline/k/cl;)Lcom/facebook/imagepipeline/k/dh;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)",
            "Lcom/facebook/imagepipeline/k/dh;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lcom/facebook/imagepipeline/k/dh;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/r;->j:Lcom/facebook/imagepipeline/e/e;

    .line 346
    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->d()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/r;->k:Lcom/facebook/imagepipeline/memory/aj;

    invoke-direct {v0, v1, v2, p1}, Lcom/facebook/imagepipeline/k/dh;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/k/cl;)V

    .line 345
    return-object v0
.end method

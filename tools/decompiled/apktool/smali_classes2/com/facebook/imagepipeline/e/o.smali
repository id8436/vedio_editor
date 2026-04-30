.class public Lcom/facebook/imagepipeline/e/o;
.super Ljava/lang/Object;
.source "ImagePipelineFactory.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static a:Lcom/facebook/imagepipeline/e/o;


# instance fields
.field private final b:Lcom/facebook/imagepipeline/k/cy;

.field private final c:Lcom/facebook/imagepipeline/e/h;

.field private d:Lcom/facebook/imagepipeline/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/m",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation
.end field

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

.field private f:Lcom/facebook/imagepipeline/c/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/c/m",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/c/ad;
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

.field private h:Lcom/facebook/imagepipeline/c/g;

.field private i:Lcom/facebook/c/b/ab;

.field private j:Lcom/facebook/imagepipeline/g/c;

.field private k:Lcom/facebook/imagepipeline/e/g;

.field private l:Lcom/facebook/imagepipeline/e/r;

.field private m:Lcom/facebook/imagepipeline/e/s;

.field private n:Lcom/facebook/imagepipeline/c/g;

.field private o:Lcom/facebook/c/b/ab;

.field private p:Lcom/facebook/imagepipeline/k/bl;

.field private q:Lcom/facebook/imagepipeline/b/f;

.field private r:Lcom/facebook/imagepipeline/j/e;

.field private s:Lcom/facebook/imagepipeline/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/imagepipeline/e/o;->a:Lcom/facebook/imagepipeline/e/o;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/e/h;)V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/e/h;

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 119
    new-instance v0, Lcom/facebook/imagepipeline/k/cy;

    .line 120
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/imagepipeline/e/e;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/k/cy;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->b:Lcom/facebook/imagepipeline/k/cy;

    .line 121
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/j/e;)Lcom/facebook/imagepipeline/b/f;
    .locals 3

    .prologue
    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 261
    new-instance v0, Lcom/facebook/imagepipeline/b/a;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ad;->a()Lcom/facebook/imagepipeline/memory/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/b/a;-><init>(Lcom/facebook/imagepipeline/memory/h;)V

    .line 267
    :goto_0
    return-object v0

    .line 262
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 263
    new-instance v0, Lcom/facebook/imagepipeline/b/e;

    new-instance v1, Lcom/facebook/imagepipeline/b/b;

    .line 264
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ad;->e()Lcom/facebook/imagepipeline/memory/aj;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/imagepipeline/b/b;-><init>(Lcom/facebook/imagepipeline/memory/aj;)V

    invoke-direct {v0, v1, p1}, Lcom/facebook/imagepipeline/b/e;-><init>(Lcom/facebook/imagepipeline/b/b;Lcom/facebook/imagepipeline/j/e;)V

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/b/c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/b/c;-><init>()V

    goto :goto_0
.end method

.method public static a()Lcom/facebook/imagepipeline/e/o;
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/imagepipeline/e/o;->a:Lcom/facebook/imagepipeline/e/o;

    const-string/jumbo v1, "ImagePipelineFactory was not initialized!"

    invoke-static {v0, v1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/e/o;

    return-object v0
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/ad;Z)Lcom/facebook/imagepipeline/j/e;
    .locals 4

    .prologue
    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ad;->c()I

    move-result v1

    .line 292
    new-instance v0, Lcom/facebook/imagepipeline/j/a;

    .line 293
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ad;->a()Lcom/facebook/imagepipeline/memory/h;

    move-result-object v2

    new-instance v3, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v3, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/imagepipeline/j/a;-><init>(Lcom/facebook/imagepipeline/memory/h;ILandroid/support/v4/util/Pools$SynchronizedPool;)V

    .line 301
    :goto_0
    return-object v0

    .line 297
    :cond_0
    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 299
    new-instance v0, Lcom/facebook/imagepipeline/j/c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/j/c;-><init>()V

    goto :goto_0

    .line 301
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/j/d;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/ad;->b()Lcom/facebook/imagepipeline/memory/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/j/d;-><init>(Lcom/facebook/imagepipeline/memory/o;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p0}, Lcom/facebook/imagepipeline/e/h;->a(Landroid/content/Context;)Lcom/facebook/imagepipeline/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/j;->a()Lcom/facebook/imagepipeline/e/h;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/e/o;->a(Lcom/facebook/imagepipeline/e/h;)V

    .line 80
    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/e/h;)V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/facebook/imagepipeline/e/o;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/e/o;-><init>(Lcom/facebook/imagepipeline/e/h;)V

    sput-object v0, Lcom/facebook/imagepipeline/e/o;->a:Lcom/facebook/imagepipeline/e/o;

    .line 85
    return-void
.end method

.method private m()Lcom/facebook/imagepipeline/g/c;
    .locals 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->j:Lcom/facebook/imagepipeline/g/c;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->k()Lcom/facebook/imagepipeline/g/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->k()Lcom/facebook/imagepipeline/g/c;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->j:Lcom/facebook/imagepipeline/g/c;

    .line 206
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->j:Lcom/facebook/imagepipeline/g/c;

    return-object v0

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->b()Lcom/facebook/imagepipeline/a/a/b;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->b()Lcom/facebook/imagepipeline/a/a/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/a/a/b;->a()Lcom/facebook/imagepipeline/a/a/d;

    move-result-object v0

    .line 188
    :goto_1
    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->u()Lcom/facebook/imagepipeline/g/d;

    move-result-object v1

    if-nez v1, :cond_3

    .line 189
    new-instance v1, Lcom/facebook/imagepipeline/g/a;

    .line 191
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->j()Lcom/facebook/imagepipeline/j/e;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 192
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/imagepipeline/g/a;-><init>(Lcom/facebook/imagepipeline/a/a/d;Lcom/facebook/imagepipeline/j/e;Landroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/e/o;->j:Lcom/facebook/imagepipeline/g/c;

    goto :goto_0

    .line 186
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 194
    :cond_3
    new-instance v1, Lcom/facebook/imagepipeline/g/a;

    .line 196
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->j()Lcom/facebook/imagepipeline/j/e;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 197
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 198
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/e/h;->u()Lcom/facebook/imagepipeline/g/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/g/d;->a()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/facebook/imagepipeline/g/a;-><init>(Lcom/facebook/imagepipeline/a/a/d;Lcom/facebook/imagepipeline/j/e;Landroid/graphics/Bitmap$Config;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/e/o;->j:Lcom/facebook/imagepipeline/g/c;

    .line 200
    invoke-static {}, Lcom/facebook/g/e;->a()Lcom/facebook/g/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 202
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->u()Lcom/facebook/imagepipeline/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/g/d;->b()Ljava/util/List;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Lcom/facebook/g/e;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private n()Lcom/facebook/imagepipeline/c/g;
    .locals 7

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->h:Lcom/facebook/imagepipeline/c/g;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/facebook/imagepipeline/c/g;

    .line 213
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->g()Lcom/facebook/c/b/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 214
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/ad;->e()Lcom/facebook/imagepipeline/memory/aj;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 215
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/ad;->f()Lcom/facebook/imagepipeline/memory/am;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 216
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 217
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/imagepipeline/e/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 218
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/e/h;->j()Lcom/facebook/imagepipeline/c/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/c/g;-><init>(Lcom/facebook/c/b/ab;Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/memory/am;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ab;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->h:Lcom/facebook/imagepipeline/c/g;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->h:Lcom/facebook/imagepipeline/c/g;

    return-object v0
.end method

.method private o()Lcom/facebook/imagepipeline/e/r;
    .locals 19

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/e/o;->l:Lcom/facebook/imagepipeline/e/r;

    if-nez v1, :cond_0

    .line 317
    new-instance v1, Lcom/facebook/imagepipeline/e/r;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 319
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/e/h;->d()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 320
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/ad;->g()Lcom/facebook/imagepipeline/memory/j;

    move-result-object v3

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/e/o;->m()Lcom/facebook/imagepipeline/g/c;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 322
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/e/h;->q()Lcom/facebook/imagepipeline/g/e;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 323
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/e/h;->g()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 324
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/e/h;->s()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 325
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/e/h;->v()Lcom/facebook/imagepipeline/e/l;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/imagepipeline/e/l;->f()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 326
    invoke-virtual {v9}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 327
    invoke-virtual {v10}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v10

    invoke-virtual {v10}, Lcom/facebook/imagepipeline/memory/ad;->e()Lcom/facebook/imagepipeline/memory/aj;

    move-result-object v10

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/e/o;->d()Lcom/facebook/imagepipeline/c/ad;

    move-result-object v11

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/e/o;->f()Lcom/facebook/imagepipeline/c/ad;

    move-result-object v12

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/e/o;->n()Lcom/facebook/imagepipeline/c/g;

    move-result-object v13

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/e/o;->q()Lcom/facebook/imagepipeline/c/g;

    move-result-object v14

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/e/o;->l()Lcom/facebook/imagepipeline/k/bl;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    move-object/from16 v16, v0

    .line 333
    invoke-virtual/range {v16 .. v16}, Lcom/facebook/imagepipeline/e/h;->c()Lcom/facebook/imagepipeline/c/k;

    move-result-object v16

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/e/o;->i()Lcom/facebook/imagepipeline/b/f;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    move-object/from16 v18, v0

    .line 335
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/imagepipeline/e/h;->v()Lcom/facebook/imagepipeline/e/l;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/facebook/imagepipeline/e/l;->b()I

    move-result v18

    invoke-direct/range {v1 .. v18}, Lcom/facebook/imagepipeline/e/r;-><init>(Landroid/content/Context;Lcom/facebook/imagepipeline/memory/j;Lcom/facebook/imagepipeline/g/c;Lcom/facebook/imagepipeline/g/e;ZZZLcom/facebook/imagepipeline/e/e;Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/k/bl;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/b/f;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/imagepipeline/e/o;->l:Lcom/facebook/imagepipeline/e/r;

    .line 337
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/imagepipeline/e/o;->l:Lcom/facebook/imagepipeline/e/r;

    return-object v1
.end method

.method private p()Lcom/facebook/imagepipeline/e/s;
    .locals 7

    .prologue
    .line 341
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->m:Lcom/facebook/imagepipeline/e/s;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/facebook/imagepipeline/e/s;

    .line 344
    invoke-direct {p0}, Lcom/facebook/imagepipeline/e/o;->o()Lcom/facebook/imagepipeline/e/r;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 345
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/e/h;->o()Lcom/facebook/imagepipeline/k/by;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 346
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->s()Z

    move-result v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 347
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/e/h;->v()Lcom/facebook/imagepipeline/e/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/e/l;->e()Z

    move-result v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/e/o;->b:Lcom/facebook/imagepipeline/k/cy;

    iget-object v6, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 349
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/e/h;->v()Lcom/facebook/imagepipeline/e/l;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/imagepipeline/e/l;->d()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/e/s;-><init>(Lcom/facebook/imagepipeline/e/r;Lcom/facebook/imagepipeline/k/by;ZZLcom/facebook/imagepipeline/k/cy;Z)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->m:Lcom/facebook/imagepipeline/e/s;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->m:Lcom/facebook/imagepipeline/e/s;

    return-object v0
.end method

.method private q()Lcom/facebook/imagepipeline/c/g;
    .locals 7

    .prologue
    .line 363
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->n:Lcom/facebook/imagepipeline/c/g;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/facebook/imagepipeline/c/g;

    .line 366
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->k()Lcom/facebook/c/b/ab;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 367
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/imagepipeline/memory/ad;->e()Lcom/facebook/imagepipeline/memory/aj;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 368
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/memory/ad;->f()Lcom/facebook/imagepipeline/memory/am;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 369
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 370
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/imagepipeline/e/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 371
    invoke-virtual {v6}, Lcom/facebook/imagepipeline/e/h;->j()Lcom/facebook/imagepipeline/c/ab;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/c/g;-><init>(Lcom/facebook/c/b/ab;Lcom/facebook/imagepipeline/memory/aj;Lcom/facebook/imagepipeline/memory/am;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/c/ab;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->n:Lcom/facebook/imagepipeline/c/g;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->n:Lcom/facebook/imagepipeline/c/g;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/facebook/imagepipeline/a/a/b;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->s:Lcom/facebook/imagepipeline/a/a/b;

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->i()Lcom/facebook/imagepipeline/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 127
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/a/a/c;->a(Lcom/facebook/imagepipeline/b/f;Lcom/facebook/imagepipeline/e/e;)Lcom/facebook/imagepipeline/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->s:Lcom/facebook/imagepipeline/a/a/b;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->s:Lcom/facebook/imagepipeline/a/a/b;

    return-object v0
.end method

.method public c()Lcom/facebook/imagepipeline/c/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/m",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->d:Lcom/facebook/imagepipeline/c/m;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 137
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->b()Lcom/facebook/d/d/m;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 138
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->n()Lcom/facebook/d/g/b;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->i()Lcom/facebook/imagepipeline/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 140
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->v()Lcom/facebook/imagepipeline/e/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/l;->a()Z

    move-result v3

    .line 136
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/c/a;->a(Lcom/facebook/d/d/m;Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/b/f;Z)Lcom/facebook/imagepipeline/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->d:Lcom/facebook/imagepipeline/c/m;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->d:Lcom/facebook/imagepipeline/c/m;

    return-object v0
.end method

.method public d()Lcom/facebook/imagepipeline/c/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/h/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->e:Lcom/facebook/imagepipeline/c/ad;

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->c()Lcom/facebook/imagepipeline/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 150
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->j()Lcom/facebook/imagepipeline/c/ab;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/c;->a(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/ab;)Lcom/facebook/imagepipeline/c/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->e:Lcom/facebook/imagepipeline/c/ad;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->e:Lcom/facebook/imagepipeline/c/ad;

    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/c/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/m",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->f:Lcom/facebook/imagepipeline/c/m;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 159
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->h()Lcom/facebook/d/d/m;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 160
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->n()Lcom/facebook/d/g/b;

    move-result-object v1

    .line 161
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->i()Lcom/facebook/imagepipeline/b/f;

    move-result-object v2

    .line 158
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/c/x;->a(Lcom/facebook/d/d/m;Lcom/facebook/d/g/b;Lcom/facebook/imagepipeline/b/f;)Lcom/facebook/imagepipeline/c/m;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->f:Lcom/facebook/imagepipeline/c/m;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->f:Lcom/facebook/imagepipeline/c/m;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/c/ad;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/c/ad",
            "<",
            "Lcom/facebook/c/a/f;",
            "Lcom/facebook/imagepipeline/memory/ah;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->g:Lcom/facebook/imagepipeline/c/ad;

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->e()Lcom/facebook/imagepipeline/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 171
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->j()Lcom/facebook/imagepipeline/c/ab;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/c/z;->a(Lcom/facebook/imagepipeline/c/m;Lcom/facebook/imagepipeline/c/ab;)Lcom/facebook/imagepipeline/c/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->g:Lcom/facebook/imagepipeline/c/ad;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->g:Lcom/facebook/imagepipeline/c/ad;

    return-object v0
.end method

.method public g()Lcom/facebook/c/b/ab;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->i:Lcom/facebook/c/b/ab;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->m()Lcom/facebook/c/b/l;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->f()Lcom/facebook/imagepipeline/e/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/e/f;->a(Lcom/facebook/c/b/l;)Lcom/facebook/c/b/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->i:Lcom/facebook/c/b/ab;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->i:Lcom/facebook/c/b/ab;

    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/e/g;
    .locals 11

    .prologue
    .line 232
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->k:Lcom/facebook/imagepipeline/e/g;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/facebook/imagepipeline/e/g;

    .line 235
    invoke-direct {p0}, Lcom/facebook/imagepipeline/e/o;->p()Lcom/facebook/imagepipeline/e/s;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 236
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/e/h;->r()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 237
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->l()Lcom/facebook/d/d/m;

    move-result-object v3

    .line 238
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->d()Lcom/facebook/imagepipeline/c/ad;

    move-result-object v4

    .line 239
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->f()Lcom/facebook/imagepipeline/c/ad;

    move-result-object v5

    .line 240
    invoke-direct {p0}, Lcom/facebook/imagepipeline/e/o;->n()Lcom/facebook/imagepipeline/c/g;

    move-result-object v6

    .line 241
    invoke-direct {p0}, Lcom/facebook/imagepipeline/e/o;->q()Lcom/facebook/imagepipeline/c/g;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 242
    invoke-virtual {v8}, Lcom/facebook/imagepipeline/e/h;->c()Lcom/facebook/imagepipeline/c/k;

    move-result-object v8

    iget-object v9, p0, Lcom/facebook/imagepipeline/e/o;->b:Lcom/facebook/imagepipeline/k/cy;

    const/4 v10, 0x0

    .line 244
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/d/d/n;->a(Ljava/lang/Object;)Lcom/facebook/d/d/m;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/facebook/imagepipeline/e/g;-><init>(Lcom/facebook/imagepipeline/e/s;Ljava/util/Set;Lcom/facebook/d/d/m;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/ad;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/cy;Lcom/facebook/d/d/m;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->k:Lcom/facebook/imagepipeline/e/g;

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->k:Lcom/facebook/imagepipeline/e/g;

    return-object v0
.end method

.method public i()Lcom/facebook/imagepipeline/b/f;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->q:Lcom/facebook/imagepipeline/b/f;

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 274
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/e/o;->j()Lcom/facebook/imagepipeline/j/e;

    move-result-object v1

    .line 273
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/e/o;->a(Lcom/facebook/imagepipeline/memory/ad;Lcom/facebook/imagepipeline/j/e;)Lcom/facebook/imagepipeline/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->q:Lcom/facebook/imagepipeline/b/f;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->q:Lcom/facebook/imagepipeline/b/f;

    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/j/e;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->r:Lcom/facebook/imagepipeline/j/e;

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 309
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->p()Lcom/facebook/imagepipeline/memory/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 310
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->v()Lcom/facebook/imagepipeline/e/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/l;->e()Z

    move-result v1

    .line 308
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/e/o;->a(Lcom/facebook/imagepipeline/memory/ad;Z)Lcom/facebook/imagepipeline/j/e;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->r:Lcom/facebook/imagepipeline/j/e;

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->r:Lcom/facebook/imagepipeline/j/e;

    return-object v0
.end method

.method public k()Lcom/facebook/c/b/ab;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->o:Lcom/facebook/c/b/ab;

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->t()Lcom/facebook/c/b/l;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->f()Lcom/facebook/imagepipeline/e/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/e/f;->a(Lcom/facebook/c/b/l;)Lcom/facebook/c/b/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->o:Lcom/facebook/c/b/ab;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->o:Lcom/facebook/c/b/ab;

    return-object v0
.end method

.method public l()Lcom/facebook/imagepipeline/k/bl;
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->p:Lcom/facebook/imagepipeline/k/bl;

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/h;->v()Lcom/facebook/imagepipeline/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/e/l;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/facebook/imagepipeline/k/bm;

    iget-object v1, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 379
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/e/h;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 380
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/imagepipeline/e/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/e/o;->c:Lcom/facebook/imagepipeline/e/h;

    .line 381
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/e/h;->i()Lcom/facebook/imagepipeline/e/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/imagepipeline/e/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/k/bm;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/e/o;->p:Lcom/facebook/imagepipeline/k/bl;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/e/o;->p:Lcom/facebook/imagepipeline/k/bl;

    return-object v0

    .line 381
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/k/ca;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/k/ca;-><init>()V

    goto :goto_0
.end method

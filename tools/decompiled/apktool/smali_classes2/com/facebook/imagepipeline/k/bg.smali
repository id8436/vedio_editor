.class public Lcom/facebook/imagepipeline/k/bg;
.super Ljava/lang/Object;
.source "MediaVariationsFallbackProducer.java"

# interfaces
.implements Lcom/facebook/imagepipeline/k/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/k/cl",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/c/g;

.field private final b:Lcom/facebook/imagepipeline/c/g;

.field private final c:Lcom/facebook/imagepipeline/c/k;

.field private final d:Lcom/facebook/imagepipeline/k/bl;

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


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/g;Lcom/facebook/imagepipeline/c/k;Lcom/facebook/imagepipeline/k/bl;Lcom/facebook/imagepipeline/k/cl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/c/g;",
            "Lcom/facebook/imagepipeline/c/g;",
            "Lcom/facebook/imagepipeline/c/k;",
            "Lcom/facebook/imagepipeline/k/bl;",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/bg;->a:Lcom/facebook/imagepipeline/c/g;

    .line 65
    iput-object p2, p0, Lcom/facebook/imagepipeline/k/bg;->b:Lcom/facebook/imagepipeline/c/g;

    .line 66
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/bg;->c:Lcom/facebook/imagepipeline/c/k;

    .line 67
    iput-object p4, p0, Lcom/facebook/imagepipeline/k/bg;->d:Lcom/facebook/imagepipeline/k/bl;

    .line 68
    iput-object p5, p0, Lcom/facebook/imagepipeline/k/bg;->e:Lcom/facebook/imagepipeline/k/cl;

    .line 69
    return-void
.end method

.method private a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)La/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            "Z)",
            "La/j",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v2

    .line 206
    new-instance v0, Lcom/facebook/imagepipeline/k/bi;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/k/bi;-><init>(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/l/f;Ljava/util/List;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/d/d;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;
    .locals 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p7}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/l/f;Ljava/util/List;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/d/d;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/l/f;Ljava/util/List;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/d/d;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            "Lcom/facebook/imagepipeline/l/f;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/imagepipeline/l/g;",
            ">;",
            "Lcom/facebook/imagepipeline/l/a;",
            "Lcom/facebook/imagepipeline/d/d;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "La/l;"
        }
    .end annotation

    .prologue
    .line 143
    .line 144
    invoke-virtual {p5}, Lcom/facebook/imagepipeline/l/a;->a()Lcom/facebook/imagepipeline/l/b;

    move-result-object v1

    sget-object v2, Lcom/facebook/imagepipeline/l/b;->a:Lcom/facebook/imagepipeline/l/b;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bg;->b:Lcom/facebook/imagepipeline/c/g;

    move-object v2, v1

    .line 146
    :goto_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/k/cm;->d()Ljava/lang/Object;

    move-result-object v7

    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v4, 0x0

    .line 152
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 153
    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/imagepipeline/l/g;

    .line 154
    iget-object v3, p0, Lcom/facebook/imagepipeline/k/bg;->c:Lcom/facebook/imagepipeline/c/k;

    .line 155
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/l/g;->a()Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v3, p5, v8, v7}, Lcom/facebook/imagepipeline/c/k;->a(Lcom/facebook/imagepipeline/l/a;Landroid/net/Uri;Ljava/lang/Object;)Lcom/facebook/c/a/f;

    move-result-object v3

    .line 156
    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 157
    move-object/from16 v0, p6

    invoke-static {v1, v5, v0}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/l/g;Lcom/facebook/imagepipeline/l/g;Lcom/facebook/imagepipeline/d/d;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    .line 152
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-object v5, v3

    move-object v4, v1

    goto :goto_1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/bg;->a:Lcom/facebook/imagepipeline/c/g;

    move-object v2, v1

    goto :goto_0

    .line 165
    :cond_1
    if-nez v4, :cond_2

    .line 166
    const/4 v1, 0x0

    invoke-static {v1}, La/l;->a(Ljava/lang/Object;)La/l;

    move-result-object v2

    .line 167
    const/4 v1, 0x0

    .line 175
    :goto_3
    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)La/j;

    move-result-object v1

    .line 176
    invoke-virtual {v2, v1}, La/l;->a(La/j;)La/l;

    move-result-object v1

    return-object v1

    .line 169
    :cond_2
    move-object/from16 v0, p7

    invoke-virtual {v2, v4, v0}, Lcom/facebook/imagepipeline/c/g;->a(Lcom/facebook/c/a/f;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    move-result-object v2

    .line 170
    invoke-virtual {p3}, Lcom/facebook/imagepipeline/l/f;->c()Z

    move-result v1

    if-nez v1, :cond_3

    .line 171
    move-object/from16 v0, p6

    invoke-static {v5, v0}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/l/g;Lcom/facebook/imagepipeline/d/d;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    move-object v1, v4

    move-object v3, v5

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/bg;)Lcom/facebook/imagepipeline/c/k;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bg;->c:Lcom/facebook/imagepipeline/c/k;

    return-object v0
.end method

.method static a(Lcom/facebook/imagepipeline/k/co;Ljava/lang/String;ZZ)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/co;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-interface {p0, p1}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    .line 272
    :cond_0
    if-eqz p2, :cond_1

    .line 273
    const-string/jumbo v0, "cached_value_found"

    const/4 v1, 0x1

    .line 275
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cached_value_used_as_last"

    .line 277
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_1
    const-string/jumbo v0, "cached_value_found"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/d/d/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/bg;->b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/facebook/imagepipeline/k/bj;

    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/k/bj;-><init>(Lcom/facebook/imagepipeline/k/bg;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p2, v0}, Lcom/facebook/imagepipeline/k/cm;->a(Lcom/facebook/imagepipeline/k/cn;)V

    .line 293
    return-void
.end method

.method static synthetic a(La/l;)Z
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lcom/facebook/imagepipeline/k/bg;->b(La/l;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/facebook/imagepipeline/l/g;Lcom/facebook/imagepipeline/d/d;)Z
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/g;->b()I

    move-result v0

    iget v1, p1, Lcom/facebook/imagepipeline/d/d;->a:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/g;->c()I

    move-result v0

    iget v1, p1, Lcom/facebook/imagepipeline/d/d;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/facebook/imagepipeline/l/g;Lcom/facebook/imagepipeline/l/g;Lcom/facebook/imagepipeline/d/d;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 189
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 192
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/l/g;Lcom/facebook/imagepipeline/d/d;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/g;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/g;->b()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 194
    invoke-static {p0, p2}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/l/g;Lcom/facebook/imagepipeline/d/d;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/g;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/l/g;->b()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/bg;)Lcom/facebook/imagepipeline/k/bl;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bg;->d:Lcom/facebook/imagepipeline/k/bl;

    return-object v0
.end method

.method private b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/bg;->e:Lcom/facebook/imagepipeline/k/cl;

    new-instance v1, Lcom/facebook/imagepipeline/k/bk;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/k/bk;-><init>(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 255
    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 256
    return-void
.end method

.method private static b(La/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/l",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, La/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, La/l;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/l;->f()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/k/o",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;",
            "Lcom/facebook/imagepipeline/k/cm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v7

    .line 75
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v8

    .line 76
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/l/a;->c()Lcom/facebook/imagepipeline/l/f;

    move-result-object v5

    .line 78
    invoke-virtual {v7}, Lcom/facebook/imagepipeline/l/a;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v8, :cond_0

    iget v2, v8, Lcom/facebook/imagepipeline/d/d;->b:I

    if-lez v2, :cond_0

    iget v2, v8, Lcom/facebook/imagepipeline/d/d;->a:I

    if-lez v2, :cond_0

    if-nez v5, :cond_1

    .line 83
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/facebook/imagepipeline/k/bg;->b(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 133
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v2

    invoke-interface/range {p2 .. p2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MediaVariationsFallbackProducer"

    invoke-interface {v2, v3, v4}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 91
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/l/f;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/l/f;->b()Ljava/util/List;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 92
    invoke-direct/range {v2 .. v9}, Lcom/facebook/imagepipeline/k/bg;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/l/f;Ljava/util/List;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/d/d;Ljava/util/concurrent/atomic/AtomicBoolean;)La/l;

    .line 132
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/facebook/imagepipeline/k/bg;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/imagepipeline/k/cm;)V

    goto :goto_0

    .line 101
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/imagepipeline/k/bg;->d:Lcom/facebook/imagepipeline/k/bl;

    .line 102
    invoke-virtual {v5}, Lcom/facebook/imagepipeline/l/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/k/bl;->a(Ljava/lang/String;)La/l;

    move-result-object v2

    .line 103
    new-instance v10, Lcom/facebook/imagepipeline/k/bh;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object v14, v5

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/facebook/imagepipeline/k/bh;-><init>(Lcom/facebook/imagepipeline/k/bg;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Lcom/facebook/imagepipeline/l/f;Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/d/d;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v10}, La/l;->a(La/j;)La/l;

    goto :goto_1
.end method

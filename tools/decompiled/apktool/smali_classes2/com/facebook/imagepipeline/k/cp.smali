.class public Lcom/facebook/imagepipeline/k/cp;
.super Ljava/lang/Object;
.source "ResizeAndRotateProducer.java"

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
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/facebook/imagepipeline/memory/aj;

.field private final c:Z

.field private final d:Lcom/facebook/imagepipeline/k/cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/memory/aj;ZLcom/facebook/imagepipeline/k/cl;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/memory/aj;",
            "Z",
            "Lcom/facebook/imagepipeline/k/cl",
            "<",
            "Lcom/facebook/imagepipeline/h/d;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cp;->a:Ljava/util/concurrent/Executor;

    .line 72
    invoke-static {p2}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/aj;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cp;->b:Lcom/facebook/imagepipeline/memory/aj;

    .line 73
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/k/cp;->c:Z

    .line 74
    invoke-static {p4}, Lcom/facebook/d/d/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/k/cl;

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/cp;->d:Lcom/facebook/imagepipeline/k/cl;

    .line 75
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/k/cp;->e:Z

    .line 76
    return-void
.end method

.method static a(Lcom/facebook/imagepipeline/d/d;II)F
    .locals 3

    .prologue
    .line 271
    if-nez p0, :cond_1

    .line 272
    const/high16 v0, 0x3f800000    # 1.0f

    .line 285
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget v0, p0, Lcom/facebook/imagepipeline/d/d;->a:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 276
    iget v1, p0, Lcom/facebook/imagepipeline/d/d;->b:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    .line 277
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 279
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/facebook/imagepipeline/d/d;->c:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 280
    iget v0, p0, Lcom/facebook/imagepipeline/d/d;->c:F

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 282
    :cond_2
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/facebook/imagepipeline/d/d;->c:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 283
    iget v0, p0, Lcom/facebook/imagepipeline/d/d;->c:F

    int-to-float v1, p2

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method static a(FF)I
    .locals 1

    .prologue
    .line 289
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method static a(I)I
    .locals 2

    .prologue
    .line 356
    const/4 v0, 0x1

    const/16 v1, 0x8

    div-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/h/d;)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/k/cp;->b(Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/h/d;)I

    move-result v0

    return v0
.end method

.method private static a(Lcom/facebook/imagepipeline/h/d;)I
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 337
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 335
    :sswitch_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/h/d;->f()I

    move-result v0

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)Lcom/facebook/d/m/e;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cp;->c(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)Lcom/facebook/d/m/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/cp;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cp;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static b(Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/h/d;)I
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    const/4 v0, 0x0

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    invoke-static {p1}, Lcom/facebook/imagepipeline/k/cp;->a(Lcom/facebook/imagepipeline/h/d;)I

    move-result v0

    .line 324
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->e()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)I
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cp;->d(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)I

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 342
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/cp;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/cp;->c:Z

    return v0
.end method

.method private static c(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)Lcom/facebook/d/m/e;
    .locals 2

    .prologue
    .line 255
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->e()Lcom/facebook/g/c;

    move-result-object v0

    sget-object v1, Lcom/facebook/g/c;->a:Lcom/facebook/g/c;

    if-ne v0, v1, :cond_1

    .line 256
    :cond_0
    sget-object v0, Lcom/facebook/d/m/e;->c:Lcom/facebook/d/m/e;

    .line 261
    :goto_0
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->e()Lcom/facebook/g/c;

    move-result-object v0

    sget-object v1, Lcom/facebook/g/b;->a:Lcom/facebook/g/c;

    if-eq v0, v1, :cond_2

    .line 259
    sget-object v0, Lcom/facebook/d/m/e;->b:Lcom/facebook/d/m/e;

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/a;->g()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/k/cp;->c(Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/h/d;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    invoke-static {p0, p1, p2}, Lcom/facebook/imagepipeline/k/cp;->d(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/imagepipeline/k/cp;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 261
    :goto_1
    invoke-static {v0}, Lcom/facebook/d/m/e;->a(Z)Lcom/facebook/d/m/e;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/k/cp;)Lcom/facebook/imagepipeline/memory/aj;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cp;->b:Lcom/facebook/imagepipeline/memory/aj;

    return-object v0
.end method

.method private static c(Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/h/d;)Z
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/d/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-static {p0, p1}, Lcom/facebook/imagepipeline/k/cp;->b(Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/h/d;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/facebook/imagepipeline/l/a;Lcom/facebook/imagepipeline/h/d;Z)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v2, 0x8

    .line 296
    if-nez p2, :cond_1

    move v0, v2

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v5

    .line 300
    if-nez v5, :cond_2

    move v0, v2

    .line 301
    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/l/a;->g()Lcom/facebook/imagepipeline/d/e;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/imagepipeline/k/cp;->b(Lcom/facebook/imagepipeline/d/e;Lcom/facebook/imagepipeline/h/d;)I

    move-result v0

    .line 305
    const/16 v3, 0x5a

    if-eq v0, v3, :cond_3

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_4

    :cond_3
    move v4, v1

    .line 306
    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->h()I

    move-result v0

    move v3, v0

    .line 308
    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->g()I

    move-result v0

    .line 311
    :goto_3
    invoke-static {v5, v3, v0}, Lcom/facebook/imagepipeline/k/cp;->a(Lcom/facebook/imagepipeline/d/d;II)F

    move-result v0

    .line 312
    iget v3, v5, Lcom/facebook/imagepipeline/d/d;->d:F

    invoke-static {v0, v3}, Lcom/facebook/imagepipeline/k/cp;->a(FF)I

    move-result v0

    .line 313
    if-le v0, v2, :cond_7

    move v0, v2

    .line 314
    goto :goto_0

    .line 305
    :cond_4
    const/4 v0, 0x0

    move v4, v0

    goto :goto_1

    .line 307
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->g()I

    move-result v0

    move v3, v0

    goto :goto_2

    .line 309
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->h()I

    move-result v0

    goto :goto_3

    .line 316
    :cond_7
    if-ge v0, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/k/cp;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/cp;->e:Z

    return v0
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V
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
    .line 82
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/cp;->d:Lcom/facebook/imagepipeline/k/cl;

    new-instance v1, Lcom/facebook/imagepipeline/k/cq;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/imagepipeline/k/cq;-><init>(Lcom/facebook/imagepipeline/k/cp;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/cl;->a(Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;)V

    .line 83
    return-void
.end method

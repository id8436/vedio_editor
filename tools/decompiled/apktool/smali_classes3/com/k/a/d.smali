.class Lcom/k/a/d;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final t:Ljava/lang/Object;

.field private static final u:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final w:Lcom/k/a/bb;


# instance fields
.field final a:I

.field final b:Lcom/k/a/ak;

.field final c:Lcom/k/a/r;

.field final d:Lcom/k/a/k;

.field final e:Lcom/k/a/be;

.field final f:Ljava/lang/String;

.field final g:Lcom/k/a/ax;

.field final h:I

.field i:I

.field final j:Lcom/k/a/bb;

.field k:Lcom/k/a/a;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/k/a/a;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Bitmap;

.field n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field o:Lcom/k/a/aq;

.field p:Ljava/lang/Exception;

.field q:I

.field r:I

.field s:Lcom/k/a/ar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/k/a/d;->t:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/k/a/e;

    invoke-direct {v0}, Lcom/k/a/e;-><init>()V

    sput-object v0, Lcom/k/a/d;->u:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/k/a/d;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lcom/k/a/f;

    invoke-direct {v0}, Lcom/k/a/f;-><init>()V

    sput-object v0, Lcom/k/a/d;->w:Lcom/k/a/bb;

    return-void
.end method

.method constructor <init>(Lcom/k/a/ak;Lcom/k/a/r;Lcom/k/a/k;Lcom/k/a/be;Lcom/k/a/a;Lcom/k/a/bb;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/k/a/d;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/k/a/d;->a:I

    .line 94
    iput-object p1, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    .line 95
    iput-object p2, p0, Lcom/k/a/d;->c:Lcom/k/a/r;

    .line 96
    iput-object p3, p0, Lcom/k/a/d;->d:Lcom/k/a/k;

    .line 97
    iput-object p4, p0, Lcom/k/a/d;->e:Lcom/k/a/be;

    .line 98
    iput-object p5, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    .line 99
    invoke-virtual {p5}, Lcom/k/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/k/a/d;->f:Ljava/lang/String;

    .line 100
    invoke-virtual {p5}, Lcom/k/a/a;->c()Lcom/k/a/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    .line 101
    invoke-virtual {p5}, Lcom/k/a/a;->k()Lcom/k/a/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/k/a/d;->s:Lcom/k/a/ar;

    .line 102
    invoke-virtual {p5}, Lcom/k/a/a;->h()I

    move-result v0

    iput v0, p0, Lcom/k/a/d;->h:I

    .line 103
    invoke-virtual {p5}, Lcom/k/a/a;->i()I

    move-result v0

    iput v0, p0, Lcom/k/a/d;->i:I

    .line 104
    iput-object p6, p0, Lcom/k/a/d;->j:Lcom/k/a/bb;

    .line 105
    invoke-virtual {p6}, Lcom/k/a/bb;->a()I

    move-result v0

    iput v0, p0, Lcom/k/a/d;->r:I

    .line 106
    return-void
.end method

.method static a(Lcom/k/a/ax;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 16

    .prologue
    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 489
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/k/a/ax;->l:Z

    .line 491
    const/4 v9, 0x0

    .line 492
    const/4 v6, 0x0

    .line 496
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/k/a/ax;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 499
    move-object/from16 v0, p0

    iget v12, v0, Lcom/k/a/ax;->h:I

    .line 500
    move-object/from16 v0, p0

    iget v13, v0, Lcom/k/a/ax;->i:I

    .line 502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/k/a/ax;->m:F

    .line 503
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 504
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/k/a/ax;->p:Z

    if-eqz v3, :cond_4

    .line 505
    move-object/from16 v0, p0

    iget v3, v0, Lcom/k/a/ax;->n:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/k/a/ax;->o:F

    invoke-virtual {v7, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 511
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/k/a/ax;->j:Z

    if-eqz v2, :cond_6

    .line 512
    int-to-float v2, v12

    int-to-float v3, v8

    div-float v3, v2, v3

    .line 513
    int-to-float v2, v13

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 515
    cmpl-float v4, v3, v2

    if-lez v4, :cond_5

    .line 516
    int-to-float v4, v5

    div-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 517
    sub-int v2, v5, v4

    div-int/lit8 v6, v2, 0x2

    .line 520
    int-to-float v2, v13

    int-to-float v10, v4

    div-float/2addr v2, v10

    move v10, v9

    move v9, v6

    move v6, v8

    .line 528
    :goto_1
    invoke-static {v11, v8, v5, v12, v13}, Lcom/k/a/d;->a(ZIIII)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1
    move v5, v6

    move v3, v10

    move v6, v4

    move v4, v9

    .line 553
    :goto_2
    if-eqz p2, :cond_2

    .line 554
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 557
    :cond_2
    const/4 v8, 0x1

    move-object/from16 v2, p1

    .line 558
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 559
    move-object/from16 v0, p1

    if-eq v2, v0, :cond_3

    .line 560
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 p1, v2

    .line 564
    :cond_3
    return-object p1

    .line 507
    :cond_4
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 522
    :cond_5
    int-to-float v4, v8

    div-float/2addr v3, v2

    mul-float/2addr v3, v4

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v4, v14

    .line 523
    sub-int v3, v8, v4

    div-int/lit8 v9, v3, 0x2

    .line 525
    int-to-float v3, v12

    int-to-float v10, v4

    div-float/2addr v3, v10

    move v10, v9

    move v9, v6

    move v6, v4

    move v4, v5

    .line 526
    goto :goto_1

    .line 531
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/k/a/ax;->k:Z

    if-eqz v2, :cond_9

    .line 532
    int-to-float v2, v12

    int-to-float v3, v8

    div-float/2addr v2, v3

    .line 533
    int-to-float v3, v13

    int-to-float v4, v5

    div-float/2addr v3, v4

    .line 534
    cmpg-float v4, v2, v3

    if-gez v4, :cond_8

    .line 535
    :goto_3
    invoke-static {v11, v8, v5, v12, v13}, Lcom/k/a/d;->a(ZIIII)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 536
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_7
    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    .line 538
    goto :goto_2

    :cond_8
    move v2, v3

    .line 534
    goto :goto_3

    .line 538
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_c

    :cond_a
    if-ne v12, v8, :cond_b

    if-eq v13, v5, :cond_c

    .line 543
    :cond_b
    if-eqz v12, :cond_d

    int-to-float v2, v12

    int-to-float v3, v8

    div-float/2addr v2, v3

    move v3, v2

    .line 545
    :goto_4
    if-eqz v13, :cond_e

    int-to-float v2, v13

    int-to-float v4, v5

    div-float/2addr v2, v4

    .line 547
    :goto_5
    invoke-static {v11, v8, v5, v12, v13}, Lcom/k/a/d;->a(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 548
    invoke-virtual {v7, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_c
    move v4, v6

    move v3, v9

    move v6, v5

    move v5, v8

    goto :goto_2

    .line 543
    :cond_d
    int-to-float v2, v13

    int-to-float v3, v5

    div-float/2addr v2, v3

    move v3, v2

    goto :goto_4

    .line 545
    :cond_e
    int-to-float v2, v12

    int-to-float v4, v8

    div-float/2addr v2, v4

    goto :goto_5
.end method

.method static a(Ljava/io/InputStream;Lcom/k/a/ax;)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 114
    new-instance v0, Lcom/k/a/ac;

    invoke-direct {v0, p0}, Lcom/k/a/ac;-><init>(Ljava/io/InputStream;)V

    .line 117
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/k/a/ac;->a(I)J

    move-result-wide v2

    .line 119
    invoke-static {p1}, Lcom/k/a/bb;->c(Lcom/k/a/ax;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/k/a/bb;->a(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    .line 122
    invoke-static {v0}, Lcom/k/a/bm;->c(Ljava/io/InputStream;)Z

    move-result v5

    .line 123
    invoke-virtual {v0, v2, v3}, Lcom/k/a/ac;->a(J)V

    .line 126
    if-eqz v5, :cond_2

    .line 127
    invoke-static {v0}, Lcom/k/a/bm;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 128
    if-eqz v4, :cond_0

    .line 129
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    iget v2, p1, Lcom/k/a/ax;->h:I

    iget v3, p1, Lcom/k/a/ax;->i:I

    invoke-static {v2, v3, v1, p1}, Lcom/k/a/bb;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/k/a/ax;)V

    .line 133
    :cond_0
    array-length v2, v0

    invoke-static {v0, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    :cond_1
    return-object v0

    .line 135
    :cond_2
    if-eqz v4, :cond_3

    .line 136
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    iget v4, p1, Lcom/k/a/ax;->h:I

    iget v5, p1, Lcom/k/a/ax;->i:I

    invoke-static {v4, v5, v1, p1}, Lcom/k/a/bb;->a(IILandroid/graphics/BitmapFactory$Options;Lcom/k/a/ax;)V

    .line 140
    invoke-virtual {v0, v2, v3}, Lcom/k/a/ac;->a(J)V

    .line 142
    :cond_3
    invoke-static {v0, v7, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to decode stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/k/a/bi;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 425
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    move-object v2, p1

    :goto_0
    if-ge v3, v4, :cond_4

    .line 426
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/k/a/bi;

    .line 429
    :try_start_0
    invoke-interface {v0, v2}, Lcom/k/a/bi;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 440
    if-nez p1, :cond_1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transformation "

    .line 442
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    invoke-interface {v0}, Lcom/k/a/bi;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " returned null after "

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " previous transformation(s).\n\nTransformation list:\n"

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/k/a/bi;

    .line 448
    invoke-interface {v0}, Lcom/k/a/bi;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 430
    :catch_0
    move-exception v2

    .line 431
    sget-object v3, Lcom/k/a/ak;->a:Landroid/os/Handler;

    new-instance v4, Lcom/k/a/g;

    invoke-direct {v4, v0, v2}, Lcom/k/a/g;-><init>(Lcom/k/a/bi;Ljava/lang/RuntimeException;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 483
    :goto_2
    return-object v0

    .line 450
    :cond_0
    sget-object v0, Lcom/k/a/ak;->a:Landroid/os/Handler;

    new-instance v3, Lcom/k/a/h;

    invoke-direct {v3, v2}, Lcom/k/a/h;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 455
    goto :goto_2

    .line 458
    :cond_1
    if-ne p1, v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    sget-object v2, Lcom/k/a/ak;->a:Landroid/os/Handler;

    new-instance v3, Lcom/k/a/i;

    invoke-direct {v3, v0}, Lcom/k/a/i;-><init>(Lcom/k/a/bi;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 466
    goto :goto_2

    .line 470
    :cond_2
    if-eq p1, v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 471
    sget-object v2, Lcom/k/a/ak;->a:Landroid/os/Handler;

    new-instance v3, Lcom/k/a/j;

    invoke-direct {v3, v0}, Lcom/k/a/j;-><init>(Lcom/k/a/bi;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v1

    .line 478
    goto :goto_2

    .line 425
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v2, p1

    goto/16 :goto_0

    :cond_4
    move-object v0, v2

    .line 483
    goto :goto_2
.end method

.method static a(Lcom/k/a/ak;Lcom/k/a/r;Lcom/k/a/k;Lcom/k/a/be;Lcom/k/a/a;)Lcom/k/a/d;
    .locals 7

    .prologue
    .line 409
    invoke-virtual {p4}, Lcom/k/a/a;->c()Lcom/k/a/ax;

    move-result-object v1

    .line 410
    invoke-virtual {p0}, Lcom/k/a/ak;->a()Ljava/util/List;

    move-result-object v2

    .line 414
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    .line 415
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/k/a/bb;

    .line 416
    invoke-virtual {v6, v1}, Lcom/k/a/bb;->a(Lcom/k/a/ax;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    new-instance v0, Lcom/k/a/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/k/a/d;-><init>(Lcom/k/a/ak;Lcom/k/a/r;Lcom/k/a/k;Lcom/k/a/be;Lcom/k/a/a;Lcom/k/a/bb;)V

    .line 421
    :goto_1
    return-object v0

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Lcom/k/a/d;

    sget-object v6, Lcom/k/a/d;->w:Lcom/k/a/bb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/k/a/d;-><init>(Lcom/k/a/ak;Lcom/k/a/r;Lcom/k/a/k;Lcom/k/a/be;Lcom/k/a/a;Lcom/k/a/bb;)V

    goto :goto_1
.end method

.method static a(Lcom/k/a/ax;)V
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/k/a/ax;->c()Ljava/lang/String;

    move-result-object v1

    .line 400
    sget-object v0, Lcom/k/a/d;->u:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 402
    const-string/jumbo v2, "Picasso-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private static a(ZIIII)Z
    .locals 1

    .prologue
    .line 569
    if-eqz p0, :cond_0

    if-gt p1, p3, :cond_0

    if-le p2, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Lcom/k/a/ar;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    sget-object v3, Lcom/k/a/ar;->a:Lcom/k/a/ar;

    .line 308
    iget-object v0, p0, Lcom/k/a/d;->l:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/k/a/d;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 309
    :goto_0
    iget-object v4, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    if-nez v4, :cond_0

    if-eqz v0, :cond_3

    .line 312
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    move-object v1, v3

    .line 330
    :cond_1
    return-object v1

    :cond_2
    move v0, v2

    .line 308
    goto :goto_0

    :cond_3
    move v1, v2

    .line 309
    goto :goto_1

    .line 316
    :cond_4
    iget-object v1, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    if-eqz v1, :cond_6

    .line 317
    iget-object v1, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    invoke-virtual {v1}, Lcom/k/a/a;->k()Lcom/k/a/ar;

    move-result-object v1

    .line 320
    :goto_2
    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/k/a/d;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_1

    .line 323
    iget-object v0, p0, Lcom/k/a/d;->l:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/k/a/a;

    invoke-virtual {v0}, Lcom/k/a/a;->k()Lcom/k/a/ar;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Lcom/k/a/ar;->ordinal()I

    move-result v4

    invoke-virtual {v1}, Lcom/k/a/ar;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_5

    .line 322
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v1, v3

    goto :goto_2
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    iget v1, p0, Lcom/k/a/d;->h:I

    invoke-static {v1}, Lcom/k/a/af;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/k/a/d;->d:Lcom/k/a/k;

    iget-object v1, p0, Lcom/k/a/d;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/k/a/k;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/k/a/d;->e:Lcom/k/a/be;

    invoke-virtual {v1}, Lcom/k/a/be;->a()V

    .line 197
    sget-object v1, Lcom/k/a/aq;->a:Lcom/k/a/aq;

    iput-object v1, p0, Lcom/k/a/d;->o:Lcom/k/a/aq;

    .line 198
    iget-object v1, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    iget-boolean v1, v1, Lcom/k/a/ak;->l:Z

    if-eqz v1, :cond_0

    .line 199
    const-string/jumbo v1, "Hunter"

    const-string/jumbo v2, "decoded"

    iget-object v3, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-virtual {v3}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    iget v1, p0, Lcom/k/a/d;->r:I

    if-nez v1, :cond_8

    sget-object v1, Lcom/k/a/ag;->c:Lcom/k/a/ag;

    iget v1, v1, Lcom/k/a/ag;->d:I

    :goto_1
    iput v1, v2, Lcom/k/a/ax;->c:I

    .line 206
    iget-object v1, p0, Lcom/k/a/d;->j:Lcom/k/a/bb;

    iget-object v2, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    iget v3, p0, Lcom/k/a/d;->i:I

    invoke-virtual {v1, v2, v3}, Lcom/k/a/bb;->a(Lcom/k/a/ax;I)Lcom/k/a/bc;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {v1}, Lcom/k/a/bc;->c()Lcom/k/a/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/k/a/d;->o:Lcom/k/a/aq;

    .line 209
    invoke-virtual {v1}, Lcom/k/a/bc;->d()I

    move-result v0

    iput v0, p0, Lcom/k/a/d;->q:I

    .line 211
    invoke-virtual {v1}, Lcom/k/a/bc;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    if-nez v0, :cond_2

    .line 215
    invoke-virtual {v1}, Lcom/k/a/bc;->b()Ljava/io/InputStream;

    move-result-object v1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-static {v1, v0}, Lcom/k/a/d;->a(Ljava/io/InputStream;Lcom/k/a/ax;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 219
    invoke-static {v1}, Lcom/k/a/bm;->a(Ljava/io/InputStream;)V

    .line 224
    :cond_2
    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    iget-boolean v1, v1, Lcom/k/a/ak;->l:Z

    if-eqz v1, :cond_3

    .line 226
    const-string/jumbo v1, "Hunter"

    const-string/jumbo v2, "decoded"

    iget-object v3, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-virtual {v3}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_3
    iget-object v1, p0, Lcom/k/a/d;->e:Lcom/k/a/be;

    invoke-virtual {v1, v0}, Lcom/k/a/be;->a(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v1, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-virtual {v1}, Lcom/k/a/ax;->e()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/k/a/d;->q:I

    if-eqz v1, :cond_0

    .line 230
    :cond_4
    sget-object v1, Lcom/k/a/d;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_1
    iget-object v2, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-virtual {v2}, Lcom/k/a/ax;->f()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/k/a/d;->q:I

    if-eqz v2, :cond_6

    .line 232
    :cond_5
    iget-object v2, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    iget v3, p0, Lcom/k/a/d;->q:I

    invoke-static {v2, v0, v3}, Lcom/k/a/d;->a(Lcom/k/a/ax;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    iget-boolean v2, v2, Lcom/k/a/ak;->l:Z

    if-eqz v2, :cond_6

    .line 234
    const-string/jumbo v2, "Hunter"

    const-string/jumbo v3, "transformed"

    iget-object v4, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-virtual {v4}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_6
    iget-object v2, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-virtual {v2}, Lcom/k/a/ax;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    iget-object v2, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    iget-object v2, v2, Lcom/k/a/ax;->g:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/k/a/d;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    iget-boolean v2, v2, Lcom/k/a/ak;->l:Z

    if-eqz v2, :cond_7

    .line 240
    const-string/jumbo v2, "Hunter"

    const-string/jumbo v3, "transformed"

    iget-object v4, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-virtual {v4}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/k/a/d;->e:Lcom/k/a/be;

    invoke-virtual {v1, v0}, Lcom/k/a/be;->b(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 205
    :cond_8
    iget v1, p0, Lcom/k/a/d;->i:I

    goto/16 :goto_1

    .line 219
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/k/a/bm;->a(Ljava/io/InputStream;)V

    throw v0

    .line 243
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method a(Lcom/k/a/a;)V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    iget-boolean v0, v0, Lcom/k/a/ak;->l:Z

    .line 255
    iget-object v1, p1, Lcom/k/a/a;->b:Lcom/k/a/ax;

    .line 257
    iget-object v2, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    if-nez v2, :cond_3

    .line 258
    iput-object p1, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    .line 259
    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/k/a/d;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/k/a/d;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    :cond_0
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    invoke-virtual {v1}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to empty hunter"

    invoke-static {v0, v2, v1, v3}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    invoke-virtual {v1}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to "

    invoke-static {p0, v3}, Lcom/k/a/bm;->a(Lcom/k/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/k/a/d;->l:Ljava/util/List;

    if-nez v2, :cond_4

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/k/a/d;->l:Ljava/util/List;

    .line 273
    :cond_4
    iget-object v2, p0, Lcom/k/a/d;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    if-eqz v0, :cond_5

    .line 276
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v2, "joined"

    invoke-virtual {v1}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "to "

    invoke-static {p0, v3}, Lcom/k/a/bm;->a(Lcom/k/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_5
    invoke-virtual {p1}, Lcom/k/a/a;->k()Lcom/k/a/ar;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/k/a/ar;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/k/a/d;->s:Lcom/k/a/ar;

    invoke-virtual {v2}, Lcom/k/a/ar;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 281
    iput-object v0, p0, Lcom/k/a/d;->s:Lcom/k/a/ar;

    goto :goto_0
.end method

.method a(ZLandroid/net/NetworkInfo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 345
    iget v1, p0, Lcom/k/a/d;->r:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 346
    :goto_0
    if-nez v1, :cond_1

    .line 350
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 345
    goto :goto_0

    .line 349
    :cond_1
    iget v0, p0, Lcom/k/a/d;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/k/a/d;->r:I

    .line 350
    iget-object v0, p0, Lcom/k/a/d;->j:Lcom/k/a/bb;

    invoke-virtual {v0, p1, p2}, Lcom/k/a/bb;->a(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    goto :goto_1
.end method

.method b(Lcom/k/a/a;)V
    .locals 4

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    if-ne v1, p1, :cond_3

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    .line 289
    const/4 v0, 0x1

    .line 296
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/k/a/a;->k()Lcom/k/a/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/k/a/d;->s:Lcom/k/a/ar;

    if-ne v0, v1, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/k/a/d;->o()Lcom/k/a/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/k/a/d;->s:Lcom/k/a/ar;

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    iget-boolean v0, v0, Lcom/k/a/ak;->l:Z

    if-eqz v0, :cond_2

    .line 301
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v1, "removed"

    iget-object v2, p1, Lcom/k/a/a;->b:Lcom/k/a/ax;

    invoke-virtual {v2}, Lcom/k/a/ax;->a()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "from "

    invoke-static {p0, v3}, Lcom/k/a/bm;->a(Lcom/k/a/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_2
    return-void

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/k/a/d;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/k/a/d;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    iget-object v1, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/k/a/d;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/k/a/d;->l:Ljava/util/List;

    .line 335
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/k/a/d;->n:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/k/a/d;->n:Ljava/util/concurrent/Future;

    .line 337
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/k/a/d;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/k/a/d;->n:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/k/a/d;->j:Lcom/k/a/bb;

    invoke-virtual {v0}, Lcom/k/a/bb;->b()Z

    move-result v0

    return v0
.end method

.method e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/k/a/d;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/k/a/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method g()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/k/a/d;->h:I

    return v0
.end method

.method h()Lcom/k/a/ax;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    return-object v0
.end method

.method i()Lcom/k/a/a;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/k/a/d;->k:Lcom/k/a/a;

    return-object v0
.end method

.method j()Lcom/k/a/ak;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    return-object v0
.end method

.method k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/k/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/k/a/d;->l:Ljava/util/List;

    return-object v0
.end method

.method l()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/k/a/d;->p:Ljava/lang/Exception;

    return-object v0
.end method

.method m()Lcom/k/a/aq;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/k/a/d;->o:Lcom/k/a/aq;

    return-object v0
.end method

.method n()Lcom/k/a/ar;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/k/a/d;->s:Lcom/k/a/ar;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/k/a/d;->g:Lcom/k/a/ax;

    invoke-static {v0}, Lcom/k/a/d;->a(Lcom/k/a/ax;)V

    .line 155
    iget-object v0, p0, Lcom/k/a/d;->b:Lcom/k/a/ak;

    iget-boolean v0, v0, Lcom/k/a/ak;->l:Z

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "Hunter"

    const-string/jumbo v1, "executing"

    invoke-static {p0}, Lcom/k/a/bm;->a(Lcom/k/a/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/k/a/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/k/a/d;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/k/a/d;->m:Landroid/graphics/Bitmap;

    .line 161
    iget-object v0, p0, Lcom/k/a/d;->m:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/k/a/d;->c:Lcom/k/a/r;

    invoke-virtual {v0, p0}, Lcom/k/a/r;->c(Lcom/k/a/d;)V
    :try_end_0
    .catch Lcom/k/a/y; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/k/a/ai; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 188
    :goto_1
    return-void

    .line 164
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/k/a/d;->c:Lcom/k/a/r;

    invoke-virtual {v0, p0}, Lcom/k/a/r;->a(Lcom/k/a/d;)V
    :try_end_1
    .catch Lcom/k/a/y; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/k/a/ai; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    :try_start_2
    iget-boolean v1, v0, Lcom/k/a/y;->a:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/k/a/y;->b:I

    const/16 v2, 0x1f8

    if-eq v1, v2, :cond_3

    .line 168
    :cond_2
    iput-object v0, p0, Lcom/k/a/d;->p:Ljava/lang/Exception;

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/k/a/d;->c:Lcom/k/a/r;

    invoke-virtual {v0, p0}, Lcom/k/a/r;->c(Lcom/k/a/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    :try_start_3
    iput-object v0, p0, Lcom/k/a/d;->p:Ljava/lang/Exception;

    .line 173
    iget-object v0, p0, Lcom/k/a/d;->c:Lcom/k/a/r;

    invoke-virtual {v0, p0}, Lcom/k/a/r;->b(Lcom/k/a/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :catch_2
    move-exception v0

    .line 175
    :try_start_4
    iput-object v0, p0, Lcom/k/a/d;->p:Ljava/lang/Exception;

    .line 176
    iget-object v0, p0, Lcom/k/a/d;->c:Lcom/k/a/r;

    invoke-virtual {v0, p0}, Lcom/k/a/r;->b(Lcom/k/a/d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :catch_3
    move-exception v0

    .line 178
    :try_start_5
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/k/a/d;->e:Lcom/k/a/be;

    invoke-virtual {v2}, Lcom/k/a/be;->e()Lcom/k/a/bh;

    move-result-object v2

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v3}, Lcom/k/a/bh;->a(Ljava/io/PrintWriter;)V

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/k/a/d;->p:Ljava/lang/Exception;

    .line 181
    iget-object v0, p0, Lcom/k/a/d;->c:Lcom/k/a/r;

    invoke-virtual {v0, p0}, Lcom/k/a/r;->c(Lcom/k/a/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :catch_4
    move-exception v0

    .line 183
    :try_start_6
    iput-object v0, p0, Lcom/k/a/d;->p:Ljava/lang/Exception;

    .line 184
    iget-object v0, p0, Lcom/k/a/d;->c:Lcom/k/a/r;

    invoke-virtual {v0, p0}, Lcom/k/a/r;->c(Lcom/k/a/d;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Picasso-Idle"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "Picasso-Idle"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method

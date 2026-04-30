.class abstract Lcom/facebook/imagepipeline/k/t;
.super Lcom/facebook/imagepipeline/k/w;
.source "DecodeProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/k/w",
        "<",
        "Lcom/facebook/imagepipeline/h/d;",
        "Lcom/facebook/d/h/a",
        "<",
        "Lcom/facebook/imagepipeline/h/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/k/cm;

.field final synthetic b:Lcom/facebook/imagepipeline/k/q;

.field private final c:Lcom/facebook/imagepipeline/k/co;

.field private final d:Lcom/facebook/imagepipeline/d/a;

.field private e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/k/al;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/o;Lcom/facebook/imagepipeline/k/cm;Z)V
    .locals 4
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
            "Z)V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/q;

    .line 127
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/w;-><init>(Lcom/facebook/imagepipeline/k/o;)V

    .line 128
    iput-object p3, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    .line 129
    invoke-interface {p3}, Lcom/facebook/imagepipeline/k/cm;->c()Lcom/facebook/imagepipeline/k/co;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/t;->c:Lcom/facebook/imagepipeline/k/co;

    .line 130
    invoke-interface {p3}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->h()Lcom/facebook/imagepipeline/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/k/t;->d:Lcom/facebook/imagepipeline/d/a;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/k/t;->e:Z

    .line 132
    new-instance v0, Lcom/facebook/imagepipeline/k/u;

    invoke-direct {v0, p0, p1, p3}, Lcom/facebook/imagepipeline/k/u;-><init>(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/k/q;Lcom/facebook/imagepipeline/k/cm;)V

    .line 148
    new-instance v1, Lcom/facebook/imagepipeline/k/al;

    invoke-static {p1}, Lcom/facebook/imagepipeline/k/q;->c(Lcom/facebook/imagepipeline/k/q;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/t;->d:Lcom/facebook/imagepipeline/d/a;

    iget v3, v3, Lcom/facebook/imagepipeline/d/a;->a:I

    invoke-direct {v1, v2, v0, v3}, Lcom/facebook/imagepipeline/k/al;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/k/ap;I)V

    iput-object v1, p0, Lcom/facebook/imagepipeline/k/t;->f:Lcom/facebook/imagepipeline/k/al;

    .line 149
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    new-instance v1, Lcom/facebook/imagepipeline/k/v;

    invoke-direct {v1, p0, p1, p4}, Lcom/facebook/imagepipeline/k/v;-><init>(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/k/q;Z)V

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/cm;->a(Lcom/facebook/imagepipeline/k/cn;)V

    .line 165
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/t;)Lcom/facebook/imagepipeline/k/cm;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    return-object v0
.end method

.method private a(Lcom/facebook/imagepipeline/h/b;JLcom/facebook/imagepipeline/h/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1    # Lcom/facebook/imagepipeline/h/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/h/b;",
            "J",
            "Lcom/facebook/imagepipeline/h/g;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->c:Lcom/facebook/imagepipeline/k/co;

    iget-object v1, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v1}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/co;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 311
    :goto_0
    return-object v0

    .line 284
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-interface {p4}, Lcom/facebook/imagepipeline/h/g;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {p5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 287
    instance-of v3, p1, Lcom/facebook/imagepipeline/h/c;

    if-eqz v3, :cond_1

    .line 288
    check-cast p1, Lcom/facebook/imagepipeline/h/c;

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/c;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 292
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 293
    const-string/jumbo v5, "bitmapSize"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string/jumbo v3, "queueTime"

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v0, "hasGoodQuality"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v0, "isFinal"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v0, "encodedImageSize"

    invoke-interface {v4, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v0, "imageFormat"

    invoke-interface {v4, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v0, "requestedImageSize"

    invoke-interface {v4, v0, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string/jumbo v0, "sampleSize"

    invoke-interface {v4, v0, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {v4}, Lcom/facebook/d/d/e;->a(Ljava/util/Map;)Lcom/facebook/d/d/e;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 304
    const-string/jumbo v4, "queueTime"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v0, "hasGoodQuality"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string/jumbo v0, "isFinal"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v0, "encodedImageSize"

    invoke-interface {v3, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string/jumbo v0, "imageFormat"

    invoke-interface {v3, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string/jumbo v0, "requestedImageSize"

    invoke-interface {v3, v0, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v0, "sampleSize"

    invoke-interface {v3, v0, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {v3}, Lcom/facebook/d/d/e;->a(Ljava/util/Map;)Lcom/facebook/d/d/e;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(Lcom/facebook/imagepipeline/h/b;Z)V
    .locals 2

    .prologue
    .line 341
    invoke-static {p1}, Lcom/facebook/d/h/a;->a(Ljava/io/Closeable;)Lcom/facebook/d/h/a;

    move-result-object v1

    .line 343
    :try_start_0
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/k/t;->a(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/t;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    .line 348
    return-void

    .line 346
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/d/h/a;->c(Lcom/facebook/d/h/a;)V

    throw v0
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/k/t;Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/k/t;->c(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    .line 328
    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/t;->e:Z

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    monitor-exit p0

    .line 335
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/t;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/k/o;->b(F)V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/k/t;->e:Z

    .line 333
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->f:Lcom/facebook/imagepipeline/k/al;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/al;->a()V

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/k/t;)Lcom/facebook/imagepipeline/k/al;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->f:Lcom/facebook/imagepipeline/k/al;

    return-object v0
.end method

.method private c(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 11

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/t;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->e(Lcom/facebook/imagepipeline/h/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->e()Lcom/facebook/g/c;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/facebook/g/c;->a()Ljava/lang/String;

    move-result-object v6

    .line 215
    :goto_1
    if-eqz p1, :cond_3

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 224
    :goto_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->a()Lcom/facebook/imagepipeline/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/l/a;->f()Lcom/facebook/imagepipeline/d/d;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_4

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/facebook/imagepipeline/d/d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/facebook/imagepipeline/d/d;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 231
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->f:Lcom/facebook/imagepipeline/k/al;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/al;->c()J

    move-result-wide v2

    .line 232
    if-eqz p2, :cond_5

    .line 233
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/h/d;->k()I

    move-result v0

    .line 234
    :goto_4
    if-eqz p2, :cond_6

    sget-object v4, Lcom/facebook/imagepipeline/h/f;->a:Lcom/facebook/imagepipeline/h/g;

    .line 236
    :goto_5
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/t;->c:Lcom/facebook/imagepipeline/k/co;

    iget-object v5, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v5}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "DecodeProducer"

    invoke-interface {v1, v5, v10}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    const/4 v1, 0x0

    .line 239
    :try_start_1
    iget-object v5, p0, Lcom/facebook/imagepipeline/k/t;->b:Lcom/facebook/imagepipeline/k/q;

    invoke-static {v5}, Lcom/facebook/imagepipeline/k/q;->d(Lcom/facebook/imagepipeline/k/q;)Lcom/facebook/imagepipeline/g/c;

    move-result-object v5

    iget-object v10, p0, Lcom/facebook/imagepipeline/k/t;->d:Lcom/facebook/imagepipeline/d/a;

    invoke-interface {v5, p1, v0, v4, v10}, Lcom/facebook/imagepipeline/g/c;->a(Lcom/facebook/imagepipeline/h/d;ILcom/facebook/imagepipeline/h/g;Lcom/facebook/imagepipeline/d/a;)Lcom/facebook/imagepipeline/h/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    move-object v0, p0

    move v5, p2

    .line 255
    :try_start_2
    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/h/b;JLcom/facebook/imagepipeline/h/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lcom/facebook/imagepipeline/k/t;->c:Lcom/facebook/imagepipeline/k/co;

    iget-object v3, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    .line 265
    invoke-interface {v3}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "DecodeProducer"

    invoke-interface {v2, v3, v4, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    invoke-direct {p0, v1, p2}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/h/b;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    goto/16 :goto_0

    .line 211
    :cond_2
    const-string/jumbo v6, "unknown"

    goto/16 :goto_1

    .line 220
    :cond_3
    const-string/jumbo v7, "unknown"

    .line 221
    const-string/jumbo v9, "unknown"

    goto :goto_2

    .line 228
    :cond_4
    const-string/jumbo v8, "unknown"

    goto :goto_3

    .line 233
    :cond_5
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/h/d;)I

    move-result v0

    goto :goto_4

    .line 234
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/t;->c()Lcom/facebook/imagepipeline/h/g;

    move-result-object v4

    goto :goto_5

    .line 240
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, p0

    move v5, p2

    .line 241
    invoke-direct/range {v0 .. v9}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/h/b;JLcom/facebook/imagepipeline/h/g;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/facebook/imagepipeline/k/t;->c:Lcom/facebook/imagepipeline/k/co;

    iget-object v2, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    .line 251
    invoke-interface {v2}, Lcom/facebook/imagepipeline/k/cm;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DecodeProducer"

    invoke-interface {v1, v2, v3, v10, v0}, Lcom/facebook/imagepipeline/k/co;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 252
    invoke-direct {p0, v10}, Lcom/facebook/imagepipeline/k/t;->c(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->d(Lcom/facebook/imagepipeline/h/d;)V

    throw v0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/k/t;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/t;->f()V

    return-void
.end method

.method private c(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/k/t;->a(Z)V

    .line 355
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/t;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/k/o;->b(Ljava/lang/Throwable;)V

    .line 356
    return-void
.end method

.method private declared-synchronized e()Z
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/k/t;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/k/t;->a(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/k/t;->d()Lcom/facebook/imagepipeline/k/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/o;->b()V

    .line 364
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/imagepipeline/h/d;)I
.end method

.method public a()V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/facebook/imagepipeline/k/t;->f()V

    .line 194
    return-void
.end method

.method protected a(F)V
    .locals 1

    .prologue
    .line 183
    const v0, 0x3f7d70a4    # 0.99f

    mul-float/2addr v0, p1

    invoke-super {p0, v0}, Lcom/facebook/imagepipeline/k/w;->a(F)V

    .line 184
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 111
    check-cast p1, Lcom/facebook/imagepipeline/h/d;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/t;->b(Lcom/facebook/imagepipeline/h/d;Z)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/k/t;->c(Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method protected a(Lcom/facebook/imagepipeline/h/d;Z)Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->f:Lcom/facebook/imagepipeline/k/al;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/k/al;->a(Lcom/facebook/imagepipeline/h/d;Z)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/facebook/imagepipeline/h/d;Z)V
    .locals 2

    .prologue
    .line 169
    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/facebook/imagepipeline/h/d;->e(Lcom/facebook/imagepipeline/h/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/facebook/d/m/a;

    const-string/jumbo v1, "Encoded image is not valid."

    invoke-direct {v0, v1}, Lcom/facebook/d/m/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/k/t;->c(Ljava/lang/Throwable;)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/facebook/imagepipeline/k/t;->a(Lcom/facebook/imagepipeline/h/d;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->a:Lcom/facebook/imagepipeline/k/cm;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/k/cm;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/k/t;->f:Lcom/facebook/imagepipeline/k/al;

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/k/al;->b()Z

    goto :goto_0
.end method

.method protected abstract c()Lcom/facebook/imagepipeline/h/g;
.end method

.class public Lcom/c/a/a/b;
.super Lcom/c/a/a/g;
.source "Expression.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/c/a/a/a/b;

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/a/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    .line 266
    invoke-direct {p0, p2}, Lcom/c/a/a/g;-><init>(I)V

    .line 267
    iput p2, p0, Lcom/c/a/a/b;->c:I

    .line 268
    invoke-direct {p0, p1}, Lcom/c/a/a/b;->a(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/c/a/a/d;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 293
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 296
    sget-object v0, Lcom/c/a/a/a/b;->a:Lcom/c/a/a/a/b;

    .line 297
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-static {v4}, Lcom/c/a/a/e;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 302
    :try_start_0
    invoke-static {v4}, Lcom/c/a/a/a/b;->a(Ljava/lang/String;)Lcom/c/a/a/a/b;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 308
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 311
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 313
    array-length v6, v4

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_3

    aget-object v7, v4, v1

    .line 315
    sget-object v8, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    invoke-virtual {v8}, Lcom/c/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 319
    if-lez v8, :cond_1

    .line 321
    sget-object v9, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    invoke-virtual {v9}, Lcom/c/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 324
    add-int/lit8 v8, v8, 0x1

    :try_start_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 325
    new-instance v8, Lcom/c/a/a/a/e;

    const/4 v10, 0x0

    aget-object v10, v9, v10

    sget-object v11, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    invoke-direct {v8, v10, v11, v7}, Lcom/c/a/a/a/e;-><init>(Ljava/lang/String;Lcom/c/a/a/a/a;Ljava/lang/Integer;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 306
    new-instance v1, Lcom/c/a/a/d;

    const-string/jumbo v2, "Invalid operator"

    iget v3, p0, Lcom/c/a/a/b;->c:I

    invoke-direct {v1, v2, v3, v0}, Lcom/c/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 327
    :catch_1
    move-exception v0

    .line 329
    new-instance v1, Lcom/c/a/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The prefix value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v9, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was not a number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/c/a/a/b;->c:I

    invoke-direct {v1, v2, v3, v0}, Lcom/c/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 336
    :cond_1
    sget-object v8, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    invoke-virtual {v8}, Lcom/c/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    .line 338
    new-instance v8, Lcom/c/a/a/a/e;

    sget-object v9, Lcom/c/a/a/a/a;->c:Lcom/c/a/a/a/a;

    invoke-direct {v8, v7, v9}, Lcom/c/a/a/a/e;-><init>(Ljava/lang/String;Lcom/c/a/a/a/a;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 345
    :cond_2
    new-instance v8, Lcom/c/a/a/a/e;

    sget-object v9, Lcom/c/a/a/a/a;->a:Lcom/c/a/a/a/a;

    invoke-direct {v8, v7, v9}, Lcom/c/a/a/a/e;-><init>(Ljava/lang/String;Lcom/c/a/a/a/a;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    :cond_3
    iput-object v3, p0, Lcom/c/a/a/b;->a:Ljava/lang/String;

    .line 349
    iput-object v0, p0, Lcom/c/a/a/b;->b:Lcom/c/a/a/a/b;

    .line 350
    iput-object v5, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    .line 351
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/c/a/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/c/a/a/a/b;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/c/a/a/b;->b:Lcom/c/a/a/a/b;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/c/a/a/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 468
    if-ne p0, p1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return v0

    .line 472
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 474
    goto :goto_0

    .line 476
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 478
    goto :goto_0

    .line 480
    :cond_3
    check-cast p1, Lcom/c/a/a/b;

    .line 481
    iget-object v2, p0, Lcom/c/a/a/b;->b:Lcom/c/a/a/a/b;

    iget-object v3, p1, Lcom/c/a/a/b;->b:Lcom/c/a/a/a/b;

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 483
    goto :goto_0

    .line 485
    :cond_4
    iget-object v2, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    if-nez v2, :cond_5

    .line 487
    iget-object v2, p1, Lcom/c/a/a/b;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    .line 489
    goto :goto_0

    .line 492
    :cond_5
    iget-object v2, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/c/a/a/b;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 494
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 458
    .line 460
    iget-object v0, p0, Lcom/c/a/a/b;->b:Lcom/c/a/a/a/b;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 461
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 462
    return v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/c/a/a/b;->b:Lcom/c/a/a/a/b;

    invoke-virtual {v0}, Lcom/c/a/a/a/b;->hashCode()I

    move-result v0

    goto :goto_0

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    const-string/jumbo v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/c/a/a/b;->b()Lcom/c/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/c/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/a/e;

    .line 424
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/c/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 427
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/c/a/a/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/c/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 429
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/c/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_0
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->a()Lcom/c/a/a/a/a;

    move-result-object v3

    sget-object v4, Lcom/c/a/a/a/a;->b:Lcom/c/a/a/a/a;

    if-ne v3, v4, :cond_1

    .line 434
    invoke-virtual {v0}, Lcom/c/a/a/a/e;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/c/a/a/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_2

    .line 438
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 441
    :cond_3
    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

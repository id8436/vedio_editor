.class public Ld/be;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field a:Ld/ax;

.field b:Ld/au;

.field c:I

.field d:Ljava/lang/String;

.field e:Ld/af;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Ld/ah;

.field g:Ld/bf;

.field h:Ld/bd;

.field i:Ld/bd;

.field j:Ld/bd;

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Ld/be;->c:I

    .line 313
    new-instance v0, Ld/ah;

    invoke-direct {v0}, Ld/ah;-><init>()V

    iput-object v0, p0, Ld/be;->f:Ld/ah;

    .line 314
    return-void
.end method

.method constructor <init>(Ld/bd;)V
    .locals 2

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Ld/be;->c:I

    .line 317
    iget-object v0, p1, Ld/bd;->a:Ld/ax;

    iput-object v0, p0, Ld/be;->a:Ld/ax;

    .line 318
    iget-object v0, p1, Ld/bd;->b:Ld/au;

    iput-object v0, p0, Ld/be;->b:Ld/au;

    .line 319
    iget v0, p1, Ld/bd;->c:I

    iput v0, p0, Ld/be;->c:I

    .line 320
    iget-object v0, p1, Ld/bd;->d:Ljava/lang/String;

    iput-object v0, p0, Ld/be;->d:Ljava/lang/String;

    .line 321
    iget-object v0, p1, Ld/bd;->e:Ld/af;

    iput-object v0, p0, Ld/be;->e:Ld/af;

    .line 322
    iget-object v0, p1, Ld/bd;->f:Ld/ag;

    invoke-virtual {v0}, Ld/ag;->c()Ld/ah;

    move-result-object v0

    iput-object v0, p0, Ld/be;->f:Ld/ah;

    .line 323
    iget-object v0, p1, Ld/bd;->g:Ld/bf;

    iput-object v0, p0, Ld/be;->g:Ld/bf;

    .line 324
    iget-object v0, p1, Ld/bd;->h:Ld/bd;

    iput-object v0, p0, Ld/be;->h:Ld/bd;

    .line 325
    iget-object v0, p1, Ld/bd;->i:Ld/bd;

    iput-object v0, p0, Ld/be;->i:Ld/bd;

    .line 326
    iget-object v0, p1, Ld/bd;->j:Ld/bd;

    iput-object v0, p0, Ld/be;->j:Ld/bd;

    .line 327
    iget-wide v0, p1, Ld/bd;->k:J

    iput-wide v0, p0, Ld/be;->k:J

    .line 328
    iget-wide v0, p1, Ld/bd;->l:J

    iput-wide v0, p0, Ld/be;->l:J

    .line 329
    return-void
.end method

.method private a(Ljava/lang/String;Ld/bd;)V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p2, Ld/bd;->g:Ld/bf;

    if-eqz v0, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    iget-object v0, p2, Ld/bd;->h:Ld/bd;

    if-eqz v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    iget-object v0, p2, Ld/bd;->i:Ld/bd;

    if-eqz v0, :cond_2

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_2
    iget-object v0, p2, Ld/bd;->j:Ld/bd;

    if-eqz v0, :cond_3

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_3
    return-void
.end method

.method private d(Ld/bd;)V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p1, Ld/bd;->g:Ld/bf;

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ld/bd;
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Ld/be;->a:Ld/ax;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    iget-object v0, p0, Ld/be;->b:Ld/au;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1
    iget v0, p0, Ld/be;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ld/be;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_2
    iget-object v0, p0, Ld/be;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_3
    new-instance v0, Ld/bd;

    invoke-direct {v0, p0}, Ld/bd;-><init>(Ld/be;)V

    return-object v0
.end method

.method public a(I)Ld/be;
    .locals 0

    .prologue
    .line 342
    iput p1, p0, Ld/be;->c:I

    .line 343
    return-object p0
.end method

.method public a(J)Ld/be;
    .locals 1

    .prologue
    .line 427
    iput-wide p1, p0, Ld/be;->k:J

    .line 428
    return-object p0
.end method

.method public a(Ld/af;)Ld/be;
    .locals 0
    .param p1    # Ld/af;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 352
    iput-object p1, p0, Ld/be;->e:Ld/af;

    .line 353
    return-object p0
.end method

.method public a(Ld/ag;)Ld/be;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p1}, Ld/ag;->c()Ld/ah;

    move-result-object v0

    iput-object v0, p0, Ld/be;->f:Ld/ah;

    .line 382
    return-object p0
.end method

.method public a(Ld/au;)Ld/be;
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Ld/be;->b:Ld/au;

    .line 338
    return-object p0
.end method

.method public a(Ld/ax;)Ld/be;
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Ld/be;->a:Ld/ax;

    .line 333
    return-object p0
.end method

.method public a(Ld/bd;)Ld/be;
    .locals 1
    .param p1    # Ld/bd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 391
    if-eqz p1, :cond_0

    const-string/jumbo v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Ld/be;->a(Ljava/lang/String;Ld/bd;)V

    .line 392
    :cond_0
    iput-object p1, p0, Ld/be;->h:Ld/bd;

    .line 393
    return-object p0
.end method

.method public a(Ld/bf;)Ld/be;
    .locals 0
    .param p1    # Ld/bf;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 386
    iput-object p1, p0, Ld/be;->g:Ld/bf;

    .line 387
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ld/be;
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Ld/be;->d:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ld/be;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Ld/be;->f:Ld/ah;

    invoke-virtual {v0, p1, p2}, Ld/ah;->a(Ljava/lang/String;Ljava/lang/String;)Ld/ah;

    .line 371
    return-object p0
.end method

.method public b(J)Ld/be;
    .locals 1

    .prologue
    .line 432
    iput-wide p1, p0, Ld/be;->l:J

    .line 433
    return-object p0
.end method

.method public b(Ld/bd;)Ld/be;
    .locals 1
    .param p1    # Ld/bd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 397
    if-eqz p1, :cond_0

    const-string/jumbo v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Ld/be;->a(Ljava/lang/String;Ld/bd;)V

    .line 398
    :cond_0
    iput-object p1, p0, Ld/be;->i:Ld/bd;

    .line 399
    return-object p0
.end method

.method public c(Ld/bd;)Ld/be;
    .locals 0
    .param p1    # Ld/bd;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 415
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Ld/be;->d(Ld/bd;)V

    .line 416
    :cond_0
    iput-object p1, p0, Ld/be;->j:Ld/bd;

    .line 417
    return-object p0
.end method

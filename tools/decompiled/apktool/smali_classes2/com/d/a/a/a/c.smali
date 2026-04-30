.class public abstract Lcom/d/a/a/a/c;
.super Lcom/d/a/a/k;
.source "ParserMinimalBase.java"


# instance fields
.field protected K:Lcom/d/a/a/o;


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/d/a/a/k;-><init>(I)V

    return-void
.end method

.method protected static final d(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 510
    int-to-char v0, p0

    .line 511
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(CTRL-CHAR, code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 514
    :cond_0
    const/16 v1, 0xff

    if-le p0, v1, :cond_1

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' (code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract C()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation
.end method

.method protected O()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/a/a/c;->K:Lcom/d/a/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->c(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method protected P()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 462
    const-string/jumbo v0, " in a value"

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->c(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method protected final Q()V
    .locals 0

    .prologue
    .line 529
    invoke-static {}, Lcom/d/a/a/e/j;->a()V

    .line 530
    return-void
.end method

.method protected a(C)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/m;
        }
    .end annotation

    .prologue
    .line 491
    sget-object v0, Lcom/d/a/a/l;->g:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return p1

    .line 495
    :cond_1
    const/16 v0, 0x27

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/d/a/a/l;->e:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unrecognized character escape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/d/a/a/a/c;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract a()Lcom/d/a/a/o;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected a(Ljava/lang/String;Lcom/d/a/a/e/b;Lcom/d/a/a/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/d/a/a/a;->a(Ljava/lang/String;Lcom/d/a/a/e/b;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0, p1, p2}, Lcom/d/a/a/a/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/d/a/a/j;
    .locals 1

    .prologue
    .line 533
    new-instance v0, Lcom/d/a/a/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public b()Lcom/d/a/a/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/d/a/a/a/c;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/d/a/a/a/c;->K:Lcom/d/a/a/o;

    sget-object v1, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 160
    :goto_0
    return-object p0

    .line 141
    :cond_0
    const/4 v0, 0x1

    .line 147
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/d/a/a/a/c;->a()Lcom/d/a/a/o;

    move-result-object v1

    .line 148
    if-nez v1, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/d/a/a/a/c;->C()V

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v1}, Lcom/d/a/a/o;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v1}, Lcom/d/a/a/o;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method protected b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 466
    const-string/jumbo v0, "Expected space separating root-level values"

    invoke-virtual {p0, p1, v0}, Lcom/d/a/a/a/c;->b(ILjava/lang/String;)V

    .line 467
    return-void
.end method

.method protected b(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 443
    if-gez p1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/d/a/a/a/c;->O()V

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/d/a/a/a/c;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    if-eqz p2, :cond_1

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_1
    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->d(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public c()Lcom/d/a/a/o;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/d/a/a/a/c;->K:Lcom/d/a/a/o;

    return-object v0
.end method

.method protected c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 470
    int-to-char v0, p1

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/d/a/a/a/c;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->d(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method protected c(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 482
    sget-object v0, Lcom/d/a/a/l;->f:Lcom/d/a/a/l;

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->a(Lcom/d/a/a/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 483
    :cond_0
    int-to-char v0, p1

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal unquoted character ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/d/a/a/a/c;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->d(Ljava/lang/String;)V

    .line 487
    :cond_1
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected end-of-input"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/d/a/a/a/c;->d(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/d/a/a/a/c;->a(Ljava/lang/String;)Lcom/d/a/a/j;

    move-result-object v0

    throw v0
.end method

.method public abstract g()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

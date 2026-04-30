.class public final Lcom/d/a/a/c/a;
.super Ljava/lang/Object;
.source "ByteSourceJsonBootstrapper.java"


# instance fields
.field protected final a:Lcom/d/a/a/b/c;

.field protected final b:Ljava/io/InputStream;

.field protected final c:[B

.field protected d:I

.field protected e:Z

.field protected f:I

.field private g:I

.field private h:I

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/d/a/a/b/c;Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/d/a/a/c/a;->e:Z

    .line 85
    iput-object p1, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    .line 86
    iput-object p2, p0, Lcom/d/a/a/c/a;->b:Ljava/io/InputStream;

    .line 87
    invoke-virtual {p1}, Lcom/d/a/a/b/c;->e()[B

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/a/c/a;->c:[B

    .line 88
    iput v1, p0, Lcom/d/a/a/c/a;->g:I

    iput v1, p0, Lcom/d/a/a/c/a;->h:I

    .line 89
    iput v1, p0, Lcom/d/a/a/c/a;->d:I

    .line 90
    iput-boolean v2, p0, Lcom/d/a/a/c/a;->i:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/d/a/a/b/c;[BII)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/d/a/a/c/a;->e:Z

    .line 94
    iput-object p1, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/a/c/a;->b:Ljava/io/InputStream;

    .line 96
    iput-object p2, p0, Lcom/d/a/a/c/a;->c:[B

    .line 97
    iput p3, p0, Lcom/d/a/a/c/a;->g:I

    .line 98
    add-int v0, p3, p4

    iput v0, p0, Lcom/d/a/a/c/a;->h:I

    .line 100
    neg-int v0, p3

    iput v0, p0, Lcom/d/a/a/c/a;->d:I

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/d/a/a/c/a;->i:Z

    .line 102
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 384
    sparse-switch p1, :sswitch_data_0

    .line 401
    :goto_0
    ushr-int/lit8 v2, p1, 0x10

    .line 402
    const v3, 0xfeff

    if-ne v2, v3, :cond_0

    .line 403
    iget v1, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/d/a/a/c/a;->g:I

    .line 404
    iput v4, p0, Lcom/d/a/a/c/a;->f:I

    .line 405
    iput-boolean v0, p0, Lcom/d/a/a/c/a;->e:Z

    .line 421
    :goto_1
    return v0

    .line 386
    :sswitch_0
    iput-boolean v0, p0, Lcom/d/a/a/c/a;->e:Z

    .line 387
    iget v1, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/d/a/a/c/a;->g:I

    .line 388
    iput v3, p0, Lcom/d/a/a/c/a;->f:I

    goto :goto_1

    .line 391
    :sswitch_1
    iget v2, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/d/a/a/c/a;->g:I

    .line 392
    iput v3, p0, Lcom/d/a/a/c/a;->f:I

    .line 393
    iput-boolean v1, p0, Lcom/d/a/a/c/a;->e:Z

    goto :goto_1

    .line 396
    :sswitch_2
    const-string/jumbo v2, "2143"

    invoke-direct {p0, v2}, Lcom/d/a/a/c/a;->a(Ljava/lang/String;)V

    .line 398
    :sswitch_3
    const-string/jumbo v2, "3412"

    invoke-direct {p0, v2}, Lcom/d/a/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 408
    :cond_0
    const v3, 0xfffe

    if-ne v2, v3, :cond_1

    .line 409
    iget v2, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/d/a/a/c/a;->g:I

    .line 410
    iput v4, p0, Lcom/d/a/a/c/a;->f:I

    .line 411
    iput-boolean v1, p0, Lcom/d/a/a/c/a;->e:Z

    goto :goto_1

    .line 415
    :cond_1
    ushr-int/lit8 v2, p1, 0x8

    const v3, 0xefbbbf

    if-ne v2, v3, :cond_2

    .line 416
    iget v1, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/d/a/a/c/a;->g:I

    .line 417
    iput v0, p0, Lcom/d/a/a/c/a;->f:I

    .line 418
    iput-boolean v0, p0, Lcom/d/a/a/c/a;->e:Z

    goto :goto_1

    :cond_2
    move v0, v1

    .line 421
    goto :goto_1

    .line 384
    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch
.end method

.method private c(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 429
    shr-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_1

    .line 430
    iput-boolean v1, p0, Lcom/d/a/a/c/a;->e:Z

    .line 443
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/d/a/a/c/a;->f:I

    move v0, v1

    .line 444
    :cond_0
    return v0

    .line 431
    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, p1

    if-nez v2, :cond_2

    .line 432
    iput-boolean v0, p0, Lcom/d/a/a/c/a;->e:Z

    goto :goto_0

    .line 433
    :cond_2
    const v2, -0xff0001

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    .line 434
    const-string/jumbo v0, "3412"

    invoke-direct {p0, v0}, Lcom/d/a/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_3
    const v2, -0xff01

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 436
    const-string/jumbo v0, "2143"

    invoke-direct {p0, v0}, Lcom/d/a/a/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 449
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 450
    iput-boolean v1, p0, Lcom/d/a/a/c/a;->e:Z

    .line 458
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/d/a/a/c/a;->f:I

    move v0, v1

    .line 459
    :cond_0
    return v0

    .line 451
    :cond_1
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    .line 452
    iput-boolean v0, p0, Lcom/d/a/a/c/a;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/d/a/a/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 117
    const/4 v1, 0x0

    .line 126
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p0, Lcom/d/a/a/c/a;->c:[B

    iget v3, p0, Lcom/d/a/a/c/a;->g:I

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/d/a/a/c/a;->c:[B

    iget v4, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/d/a/a/c/a;->c:[B

    iget v4, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/d/a/a/c/a;->c:[B

    iget v4, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 132
    invoke-direct {p0, v2}, Lcom/d/a/a/c/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 159
    sget-object v0, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    .line 171
    :goto_1
    iget-object v1, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    invoke-virtual {v1, v0}, Lcom/d/a/a/b/c;->a(Lcom/d/a/a/c;)V

    .line 172
    return-object v0

    .line 141
    :cond_1
    invoke-direct {p0, v2}, Lcom/d/a/a/c/a;->c(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    ushr-int/lit8 v2, v2, 0x10

    invoke-direct {p0, v2}, Lcom/d/a/a/c/a;->d(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 147
    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/d/a/a/c/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p0, Lcom/d/a/a/c/a;->c:[B

    iget v3, p0, Lcom/d/a/a/c/a;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/d/a/a/c/a;->c:[B

    iget v4, p0, Lcom/d/a/a/c/a;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 150
    invoke-direct {p0, v2}, Lcom/d/a/a/c/a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 161
    :cond_4
    iget v0, p0, Lcom/d/a/a/c/a;->f:I

    packed-switch v0, :pswitch_data_0

    .line 168
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :pswitch_1
    sget-object v0, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    goto :goto_1

    .line 164
    :pswitch_2
    iget-boolean v0, p0, Lcom/d/a/a/c/a;->e:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/d/a/a/c;->b:Lcom/d/a/a/c;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/d/a/a/c;->c:Lcom/d/a/a/c;

    goto :goto_1

    .line 166
    :pswitch_3
    iget-boolean v0, p0, Lcom/d/a/a/c/a;->e:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/d/a/a/c;->d:Lcom/d/a/a/c;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/d/a/a/c;->e:Lcom/d/a/a/c;

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(ILcom/d/a/a/p;Lcom/d/a/a/d/a;Lcom/d/a/a/d/c;I)Lcom/d/a/a/k;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/d/a/a/c/a;->a()Lcom/d/a/a/c;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/d/a/a/c;->a:Lcom/d/a/a/c;

    if-ne v0, v1, :cond_0

    .line 221
    sget-object v0, Lcom/d/a/a/e;->b:Lcom/d/a/a/e;

    invoke-virtual {v0, p5}, Lcom/d/a/a/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p3, p5}, Lcom/d/a/a/d/a;->b(I)Lcom/d/a/a/d/a;

    move-result-object v5

    .line 223
    new-instance v0, Lcom/d/a/a/c/h;

    iget-object v1, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    iget-object v3, p0, Lcom/d/a/a/c/a;->b:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/d/a/a/c/a;->c:[B

    iget v7, p0, Lcom/d/a/a/c/a;->g:I

    iget v8, p0, Lcom/d/a/a/c/a;->h:I

    iget-boolean v9, p0, Lcom/d/a/a/c/a;->i:Z

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/d/a/a/c/h;-><init>(Lcom/d/a/a/b/c;ILjava/io/InputStream;Lcom/d/a/a/p;Lcom/d/a/a/d/a;[BIIZ)V

    .line 228
    :goto_0
    return-object v0

    .line 227
    :cond_0
    new-instance v0, Lcom/d/a/a/c/f;

    iget-object v1, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    invoke-virtual {p0}, Lcom/d/a/a/c/a;->b()Ljava/io/Reader;

    move-result-object v3

    .line 228
    invoke-virtual {p4, p5}, Lcom/d/a/a/d/c;->b(I)Lcom/d/a/a/d/c;

    move-result-object v5

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/c/f;-><init>(Lcom/d/a/a/b/c;ILjava/io/Reader;Lcom/d/a/a/p;Lcom/d/a/a/d/c;)V

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 482
    iget v1, p0, Lcom/d/a/a/c/a;->h:I

    iget v2, p0, Lcom/d/a/a/c/a;->g:I

    sub-int/2addr v1, v2

    move v2, v1

    .line 483
    :goto_0
    if-ge v2, p1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/d/a/a/c/a;->b:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 487
    const/4 v1, -0x1

    .line 491
    :goto_1
    if-ge v1, v0, :cond_2

    .line 492
    const/4 v0, 0x0

    .line 497
    :cond_0
    return v0

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/d/a/a/c/a;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/d/a/a/c/a;->c:[B

    iget v4, p0, Lcom/d/a/a/c/a;->h:I

    iget-object v5, p0, Lcom/d/a/a/c/a;->c:[B

    array-length v5, v5

    iget v6, p0, Lcom/d/a/a/c/a;->h:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_1

    .line 494
    :cond_2
    iget v3, p0, Lcom/d/a/a/c/a;->h:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/d/a/a/c/a;->h:I

    .line 495
    add-int/2addr v1, v2

    move v2, v1

    .line 496
    goto :goto_0
.end method

.method public b()Ljava/io/Reader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    invoke-virtual {v0}, Lcom/d/a/a/b/c;->b()Lcom/d/a/a/c;

    move-result-object v6

    .line 185
    invoke-virtual {v6}, Lcom/d/a/a/c;->c()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :sswitch_0
    iget-object v2, p0, Lcom/d/a/a/c/a;->b:Ljava/io/InputStream;

    .line 192
    if-nez v2, :cond_0

    .line 193
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/d/a/a/c/a;->c:[B

    iget v2, p0, Lcom/d/a/a/c/a;->g:I

    iget v3, p0, Lcom/d/a/a/c/a;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 202
    :goto_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Lcom/d/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    .line 206
    :goto_1
    return-object v0

    .line 198
    :cond_0
    iget v0, p0, Lcom/d/a/a/c/a;->g:I

    iget v1, p0, Lcom/d/a/a/c/a;->h:I

    if-ge v0, v1, :cond_1

    .line 199
    new-instance v0, Lcom/d/a/a/b/f;

    iget-object v1, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    iget-object v3, p0, Lcom/d/a/a/c/a;->c:[B

    iget v4, p0, Lcom/d/a/a/c/a;->g:I

    iget v5, p0, Lcom/d/a/a/c/a;->h:I

    invoke-direct/range {v0 .. v5}, Lcom/d/a/a/b/f;-><init>(Lcom/d/a/a/b/c;Ljava/io/InputStream;[BII)V

    goto :goto_0

    .line 205
    :sswitch_1
    new-instance v0, Lcom/d/a/a/b/k;

    iget-object v1, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    iget-object v2, p0, Lcom/d/a/a/c/a;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/d/a/a/c/a;->c:[B

    iget v4, p0, Lcom/d/a/a/c/a;->g:I

    iget v5, p0, Lcom/d/a/a/c/a;->h:I

    iget-object v6, p0, Lcom/d/a/a/c/a;->a:Lcom/d/a/a/b/c;

    .line 206
    invoke-virtual {v6}, Lcom/d/a/a/b/c;->b()Lcom/d/a/a/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/d/a/a/c;->b()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/d/a/a/b/k;-><init>(Lcom/d/a/a/b/c;Ljava/io/InputStream;[BIIZ)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

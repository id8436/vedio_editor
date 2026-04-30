.class public Lcom/l/b/a/b;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final h:[C

.field private static final i:[B


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 185
    const/16 v1, 0x40

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/l/b/a/b;->h:[C

    .line 196
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lcom/l/b/a/b;->i:[B

    move v1, v0

    .line 199
    :goto_0
    const/16 v2, 0xff

    if-ge v1, v2, :cond_0

    .line 200
    sget-object v2, Lcom/l/b/a/b;->i:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    :goto_1
    sget-object v1, Lcom/l/b/a/b;->h:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 202
    sget-object v1, Lcom/l/b/a/b;->i:[B

    sget-object v2, Lcom/l/b/a/b;->h:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 203
    :cond_1
    return-void

    .line 185
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/l/b/a/b;->a:[B

    .line 45
    iput v0, p0, Lcom/l/b/a/b;->b:I

    .line 46
    iput v0, p0, Lcom/l/b/a/b;->c:I

    .line 50
    const/16 v1, 0x1ffe

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/l/b/a/b;->d:[B

    .line 51
    iput v0, p0, Lcom/l/b/a/b;->e:I

    .line 52
    iput v0, p0, Lcom/l/b/a/b;->f:I

    .line 54
    iput-boolean v0, p0, Lcom/l/b/a/b;->g:Z

    .line 67
    :try_start_0
    const-string/jumbo v1, "mail.mime.base64.ignoreerrors"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    const-string/jumbo v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/l/b/a/b;->g:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 335
    :cond_0
    iget v1, p0, Lcom/l/b/a/b;->e:I

    iget v2, p0, Lcom/l/b/a/b;->f:I

    if-lt v1, v2, :cond_2

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/l/b/a/b;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/l/b/a/b;->d:[B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    iput v1, p0, Lcom/l/b/a/b;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    iget v1, p0, Lcom/l/b/a/b;->f:I

    if-gtz v1, :cond_1

    .line 354
    :goto_0
    return v0

    .line 343
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/l/b/a/b;->e:I

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/l/b/a/b;->d:[B

    iget v2, p0, Lcom/l/b/a/b;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/l/b/a/b;->e:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 348
    const/16 v2, 0x3d

    if-ne v1, v2, :cond_3

    .line 349
    const/4 v0, -0x2

    goto :goto_0

    .line 351
    :cond_3
    sget-object v2, Lcom/l/b/a/b;->i:[B

    aget-byte v1, v2, v1

    .line 353
    if-eq v1, v0, :cond_0

    move v0, v1

    .line 354
    goto :goto_0

    .line 338
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v0, 0x1

    const/4 v8, -0x2

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 220
    move v5, p2

    .line 221
    :goto_0
    const/4 v2, 0x3

    if-lt p3, v2, :cond_c

    move v4, v1

    move v2, v1

    .line 229
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_b

    .line 230
    invoke-direct {p0}, Lcom/l/b/a/b;->a()I

    move-result v6

    .line 231
    if-eq v6, v7, :cond_0

    if-ne v6, v8, :cond_a

    .line 233
    :cond_0
    if-ne v6, v7, :cond_3

    .line 234
    if-nez v2, :cond_1

    .line 235
    sub-int v0, v5, p2

    .line 321
    :goto_2
    return v0

    .line 236
    :cond_1
    iget-boolean v1, p0, Lcom/l/b/a/b;->g:Z

    if-nez v1, :cond_2

    .line 237
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " before EOF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/l/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v3, v0

    .line 262
    :goto_3
    add-int/lit8 v1, v2, -0x1

    .line 263
    if-nez v1, :cond_d

    .line 267
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 268
    shl-int/lit8 v1, v4, 0x6

    .line 270
    :goto_5
    const/4 v4, 0x4

    if-ge v2, v4, :cond_8

    .line 271
    if-nez v3, :cond_7

    .line 274
    invoke-direct {p0}, Lcom/l/b/a/b;->a()I

    move-result v4

    .line 275
    if-ne v4, v7, :cond_6

    .line 276
    iget-boolean v4, p0, Lcom/l/b/a/b;->g:Z

    if-nez v4, :cond_7

    .line 277
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/l/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_3
    if-ge v2, v9, :cond_4

    iget-boolean v3, p0, Lcom/l/b/a/b;->g:Z

    if-nez v3, :cond_4

    .line 246
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " before padding character (=)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/l/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_4
    if-nez v2, :cond_5

    .line 254
    sub-int v0, v5, p2

    goto/16 :goto_2

    :cond_5
    move v3, v1

    .line 255
    goto :goto_3

    .line 282
    :cond_6
    if-eq v4, v8, :cond_7

    .line 283
    iget-boolean v4, p0, Lcom/l/b/a/b;->g:Z

    if-nez v4, :cond_7

    .line 284
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-direct {p0}, Lcom/l/b/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_7
    shl-int/lit8 v1, v1, 0x6

    .line 292
    add-int/lit8 v2, v2, 0x1

    .line 293
    goto/16 :goto_5

    .line 296
    :cond_8
    shr-int/lit8 v1, v1, 0x8

    .line 297
    if-ne v0, v9, :cond_9

    .line 298
    add-int/lit8 v2, v5, 0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 299
    :cond_9
    shr-int/lit8 v1, v1, 0x8

    .line 300
    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v5

    .line 301
    sub-int v1, p3, v0

    .line 302
    add-int/2addr v0, v5

    .line 303
    sub-int/2addr v0, p2

    goto/16 :goto_2

    .line 306
    :cond_a
    shl-int/lit8 v4, v4, 0x6

    .line 307
    add-int/lit8 v3, v2, 0x1

    .line 308
    or-int v2, v4, v6

    move v4, v2

    move v2, v3

    .line 310
    goto/16 :goto_1

    .line 313
    :cond_b
    add-int/lit8 v2, v5, 0x2

    and-int/lit16 v3, v4, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 314
    shr-int/lit8 v2, v4, 0x8

    .line 315
    add-int/lit8 v3, v5, 0x1

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 316
    shr-int/lit8 v2, v2, 0x8

    .line 317
    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v5

    .line 318
    add-int/lit8 p3, p3, -0x3

    .line 319
    add-int/lit8 v2, v5, 0x3

    move v5, v2

    .line 320
    goto/16 :goto_0

    .line 321
    :cond_c
    sub-int v0, v5, p2

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_4
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v1, 0xa

    .line 363
    const-string/jumbo v0, ""

    .line 364
    iget v2, p0, Lcom/l/b/a/b;->e:I

    if-le v2, v1, :cond_0

    move v2, v1

    .line 365
    :goto_0
    if-lez v2, :cond_3

    .line 366
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ", the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " most recent characters were: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    iget v0, p0, Lcom/l/b/a/b;->e:I

    sub-int/2addr v0, v2

    :goto_1
    iget v2, p0, Lcom/l/b/a/b;->e:I

    if-ge v0, v2, :cond_2

    .line 369
    iget-object v2, p0, Lcom/l/b/a/b;->d:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    .line 370
    packed-switch v2, :pswitch_data_0

    .line 375
    :pswitch_0
    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 376
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    :cond_0
    iget v1, p0, Lcom/l/b/a/b;->e:I

    move v2, v1

    goto :goto_0

    .line 371
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 372
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 373
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 378
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v3, "\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 381
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    :cond_3
    return-object v0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/l/b/a/b;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/l/b/a/b;->b:I

    iget v2, p0, Lcom/l/b/a/b;->c:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    iget v0, p0, Lcom/l/b/a/b;->c:I

    iget v1, p0, Lcom/l/b/a/b;->b:I

    if-lt v0, v1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/l/b/a/b;->a:[B

    iget-object v1, p0, Lcom/l/b/a/b;->a:[B

    array-length v1, v1

    invoke-direct {p0, v0, v2, v1}, Lcom/l/b/a/b;->a([BII)I

    move-result v0

    iput v0, p0, Lcom/l/b/a/b;->b:I

    .line 102
    iget v0, p0, Lcom/l/b/a/b;->b:I

    if-gtz v0, :cond_0

    .line 103
    const/4 v0, -0x1

    .line 106
    :goto_0
    return v0

    .line 104
    :cond_0
    iput v2, p0, Lcom/l/b/a/b;->c:I

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/l/b/a/b;->a:[B

    iget v1, p0, Lcom/l/b/a/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/l/b/a/b;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 125
    move v0, p2

    .line 126
    :goto_0
    iget v1, p0, Lcom/l/b/a/b;->c:I

    iget v3, p0, Lcom/l/b/a/b;->b:I

    if-ge v1, v3, :cond_0

    if-lez p3, :cond_0

    .line 127
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lcom/l/b/a/b;->a:[B

    iget v4, p0, Lcom/l/b/a/b;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/l/b/a/b;->c:I

    aget-byte v3, v3, v4

    aput-byte v3, p1, v0

    .line 128
    add-int/lit8 p3, p3, -0x1

    move v0, v1

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    iget v1, p0, Lcom/l/b/a/b;->c:I

    iget v3, p0, Lcom/l/b/a/b;->b:I

    if-lt v1, v3, :cond_1

    .line 131
    const/4 v1, 0x0

    iput v1, p0, Lcom/l/b/a/b;->c:I

    iput v1, p0, Lcom/l/b/a/b;->b:I

    .line 133
    :cond_1
    div-int/lit8 v1, p3, 0x3

    mul-int/lit8 v1, v1, 0x3

    .line 134
    if-lez v1, :cond_4

    .line 135
    invoke-direct {p0, p1, v0, v1}, Lcom/l/b/a/b;->a([BII)I

    move-result v3

    .line 136
    add-int/2addr v0, v3

    .line 137
    sub-int/2addr p3, v3

    .line 139
    if-eq v3, v1, :cond_4

    .line 140
    if-ne v0, p2, :cond_2

    move v0, v2

    .line 158
    :goto_1
    return v0

    .line 143
    :cond_2
    sub-int/2addr v0, p2

    goto :goto_1

    .line 152
    :cond_3
    add-int/lit8 v1, v0, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 148
    add-int/lit8 p3, p3, -0x1

    move v0, v1

    :cond_4
    if-lez p3, :cond_5

    .line 149
    invoke-virtual {p0}, Lcom/l/b/a/b;->read()I

    move-result v3

    .line 150
    if-ne v3, v2, :cond_3

    .line 155
    :cond_5
    if-ne v0, p2, :cond_6

    move v0, v2

    .line 156
    goto :goto_1

    .line 158
    :cond_6
    sub-int/2addr v0, p2

    goto :goto_1
.end method

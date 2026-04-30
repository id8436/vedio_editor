.class public Ljavax/mail/util/SharedFileInputStream;
.super Ljava/io/BufferedInputStream;
.source "SharedFileInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# static fields
.field private static defaultBufferSize:I


# instance fields
.field protected bufpos:J

.field protected bufsize:I

.field protected datalen:J

.field protected in:Ljava/io/RandomAccessFile;

.field private master:Z

.field private sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

.field protected start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x800

    sput v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/io/File;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 170
    if-gtz p2, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljavax/mail/util/SharedFileInputStream;Ljava/io/File;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    sget v0, Ljavax/mail/util/SharedFileInputStream;->defaultBufferSize:I

    invoke-direct {p0, p1, v0}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 185
    if-gtz p2, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    new-instance v0, Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-direct {v0, p0, p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;-><init>(Ljavax/mail/util/SharedFileInputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Ljavax/mail/util/SharedFileInputStream;->init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V

    .line 188
    return-void
.end method

.method private constructor <init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V
    .locals 2

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    .line 206
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 207
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 208
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 209
    iput-wide p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 210
    iput-wide p4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 211
    iput p6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 212
    new-array v0, p6, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 213
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-void
.end method

.method private fill()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 223
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v0, :cond_3

    .line 224
    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 225
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 245
    :cond_0
    :goto_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 246
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 248
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 249
    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v2, v4

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 250
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget-wide v4, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v2, v4

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 251
    :cond_1
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 252
    if-lez v0, :cond_2

    .line 253
    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    .line 254
    :cond_2
    return-void

    .line 226
    :cond_3
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 227
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-lez v0, :cond_4

    .line 228
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    sub-int/2addr v0, v1

    .line 229
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iget-object v3, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 231
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    .line 232
    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    goto :goto_0

    .line 233
    :cond_4
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-lt v0, v1, :cond_5

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    .line 235
    iput v4, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    .line 236
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    goto :goto_0

    .line 238
    :cond_5
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    mul-int/lit8 v0, v0, 0x2

    .line 239
    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    if-le v0, v1, :cond_6

    .line 240
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 241
    :cond_6
    new-array v0, v0, [B

    .line 242
    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto/16 :goto_0
.end method

.method private in_available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v4, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Ljavax/mail/util/SharedFileInputStream$SharedFile;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 192
    invoke-virtual {p1}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->open()Ljava/io/RandomAccessFile;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    .line 194
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 195
    iput p2, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    .line 196
    new-array v0, p2, [B

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 197
    return-void
.end method

.method private read1([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 280
    if-gtz v0, :cond_0

    .line 291
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 292
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 293
    if-gtz v0, :cond_0

    const/4 p3, -0x1

    .line 298
    :goto_0
    return p3

    .line 295
    :cond_0
    if-ge v0, p3, :cond_1

    move p3, v0

    .line 296
    :cond_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 380
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->in_available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 447
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Ljavax/mail/util/SharedFileInputStream;->master:Z

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v0}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :goto_1
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 453
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 454
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    goto :goto_0

    .line 450
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    invoke-virtual {v0}, Ljavax/mail/util/SharedFileInputStream$SharedFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 452
    :catchall_0
    move-exception v0

    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    .line 453
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    .line 454
    iput-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    .line 455
    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 516
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 517
    invoke-virtual {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    .line 518
    return-void
.end method

.method public getPosition()J
    .locals 4

    .prologue
    .line 466
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    iget-wide v0, p0, Ljavax/mail/util/SharedFileInputStream;->bufpos:J

    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ljavax/mail/util/SharedFileInputStream;->marklimit:I

    .line 398
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    monitor-exit p0

    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x1

    return v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 7

    .prologue
    .line 484
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->in:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_2

    .line 489
    iget-wide p3, p0, Ljavax/mail/util/SharedFileInputStream;->datalen:J

    .line 490
    :cond_2
    new-instance v0, Ljavax/mail/util/SharedFileInputStream;

    iget-object v1, p0, Ljavax/mail/util/SharedFileInputStream;->sf:Ljavax/mail/util/SharedFileInputStream$SharedFile;

    iget-wide v2, p0, Ljavax/mail/util/SharedFileInputStream;->start:J

    long-to-int v4, p1

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long v4, p3, p1

    long-to-int v4, v4

    int-to-long v4, v4

    iget v6, p0, Ljavax/mail/util/SharedFileInputStream;->bufsize:I

    invoke-direct/range {v0 .. v6}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljavax/mail/util/SharedFileInputStream$SharedFile;JJI)V

    return-object v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 266
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    if-lt v0, v1, :cond_0

    .line 267
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 268
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 269
    const/4 v0, -0x1

    .line 271
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream;->buf:[B

    iget v1, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 320
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 322
    :cond_0
    if-nez p3, :cond_2

    .line 323
    const/4 v0, 0x0

    .line 333
    :cond_1
    monitor-exit p0

    return v0

    .line 326
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I

    move-result v0

    .line 327
    if-lez v0, :cond_1

    .line 328
    :goto_0
    if-ge v0, p3, :cond_1

    .line 329
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-direct {p0, p1, v1, v2}, Ljavax/mail/util/SharedFileInputStream;->read1([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 330
    if-lez v1, :cond_1

    .line 331
    add-int/2addr v0, v1

    .line 332
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V

    .line 417
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    if-gez v0, :cond_0

    .line 418
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 419
    :cond_0
    :try_start_1
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream;->markpos:I

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 345
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->ensureOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 367
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 349
    :cond_1
    :try_start_1
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 351
    cmp-long v4, v2, v0

    if-gtz v4, :cond_2

    .line 359
    invoke-direct {p0}, Ljavax/mail/util/SharedFileInputStream;->fill()V

    .line 360
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->count:I

    iget v3, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 361
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    :cond_2
    move-wide v0, v2

    .line 365
    cmp-long v2, v0, p1

    if-gez v2, :cond_3

    .line 366
    :goto_1
    iget v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Ljavax/mail/util/SharedFileInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move-wide v0, p1

    .line 365
    goto :goto_1
.end method

.class final Lcom/dropbox/core/util/IOUtil$LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "IOUtil.java"


# instance fields
.field private left:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    if-nez p1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "limit must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iput-wide p2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    .line 239
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 258
    iget-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 267
    :goto_0
    return v0

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 263
    if-eq v1, v0, :cond_1

    .line 264
    iget-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    :cond_1
    move v0, v1

    .line 267
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
    const/4 v0, -0x1

    .line 272
    iget-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 283
    :goto_0
    return v0

    .line 276
    :cond_0
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 277
    iget-object v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 279
    if-eq v1, v0, :cond_1

    .line 280
    iget-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    :cond_1
    move v0, v1

    .line 283
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
    .line 248
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 289
    iget-object v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 290
    iget-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/dropbox/core/util/IOUtil$LimitInputStream;->left:J

    .line 291
    return-wide v0
.end method

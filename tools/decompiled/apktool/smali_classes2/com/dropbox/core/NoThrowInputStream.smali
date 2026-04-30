.class public final Lcom/dropbox/core/NoThrowInputStream;
.super Ljava/io/InputStream;
.source "NoThrowInputStream.java"


# instance fields
.field private bytesRead:J

.field private final underlying:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->bytesRead:J

    .line 28
    iput-object p1, p0, Lcom/dropbox/core/NoThrowInputStream;->underlying:Ljava/io/InputStream;

    .line 29
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "don\'t call close()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBytesRead()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->bytesRead:J

    return-wide v0
.end method

.method public read()I
    .locals 4

    .prologue
    .line 39
    :try_start_0
    iget-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->bytesRead:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/NoThrowInputStream;->bytesRead:J

    .line 40
    iget-object v0, p0, Lcom/dropbox/core/NoThrowInputStream;->underlying:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Lcom/dropbox/core/NoThrowInputStream$HiddenException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NoThrowInputStream$HiddenException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([B)I
    .locals 6

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/NoThrowInputStream;->underlying:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 62
    iget-wide v2, p0, Lcom/dropbox/core/NoThrowInputStream;->bytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dropbox/core/NoThrowInputStream;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v1, Lcom/dropbox/core/NoThrowInputStream$HiddenException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NoThrowInputStream$HiddenException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public read([BII)I
    .locals 6

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/NoThrowInputStream;->underlying:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 50
    iget-wide v2, p0, Lcom/dropbox/core/NoThrowInputStream;->bytesRead:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dropbox/core/NoThrowInputStream;->bytesRead:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lcom/dropbox/core/NoThrowInputStream$HiddenException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NoThrowInputStream$HiddenException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

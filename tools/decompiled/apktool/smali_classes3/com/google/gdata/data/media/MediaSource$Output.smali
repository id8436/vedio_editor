.class public Lcom/google/gdata/data/media/MediaSource$Output;
.super Ljava/lang/Object;
.source "MediaSource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeTo(Lcom/google/gdata/data/media/MediaSource;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p0}, Lcom/google/gdata/data/media/MediaSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 85
    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [B

    .line 87
    :goto_0
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 88
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    throw v0

    .line 90
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 94
    return-void
.end method

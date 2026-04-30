.class public Lorg/apache/http/conn/EofSensorInputStreamHC4;
.super Ljava/io/InputStream;
.source "EofSensorInputStreamHC4.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionReleaseTrigger;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/conn/EofSensorWatcher;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 84
    const-string/jumbo v0, "Wrapped stream"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iput-object p1, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->selfClosed:Z

    .line 87
    iput-object p2, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    .line 88
    return-void
.end method


# virtual methods
.method public abortConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->selfClosed:Z

    .line 285
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->checkAbort()V

    .line 286
    return-void
.end method

.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    :cond_0
    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->checkAbort()V

    .line 163
    throw v0
.end method

.method protected checkAbort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 255
    const/4 v0, 0x1

    .line 256
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 257
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lorg/apache/http/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v0

    .line 259
    :cond_0
    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_1
    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    .line 266
    :cond_2
    return-void

    .line 263
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected checkClose()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 225
    const/4 v0, 0x1

    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lorg/apache/http/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v0

    .line 229
    :cond_0
    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_1
    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    .line 236
    :cond_2
    return-void

    .line 233
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected checkEOF(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    if-gez p1, :cond_2

    .line 197
    const/4 v0, 0x1

    .line 198
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    if-eqz v1, :cond_0

    .line 199
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->eofWatcher:Lorg/apache/http/conn/EofSensorWatcher;

    iget-object v1, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lorg/apache/http/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result v0

    .line 201
    :cond_0
    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    .line 208
    :cond_2
    return-void

    .line 205
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->selfClosed:Z

    .line 174
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->checkClose()V

    .line 175
    return-void
.end method

.method getWrappedStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    return-object v0
.end method

.method protected isReadAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->selfClosed:Z

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSelfClosed()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->selfClosed:Z

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, -0x1

    .line 118
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 121
    invoke-virtual {p0, v0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    return v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->checkAbort()V

    .line 124
    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, -0x1

    .line 135
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->isReadAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/conn/EofSensorInputStreamHC4;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 138
    invoke-virtual {p0, v0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    return v0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->checkAbort()V

    .line 141
    throw v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/apache/http/conn/EofSensorInputStreamHC4;->close()V

    .line 273
    return-void
.end method

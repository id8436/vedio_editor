.class public Lorg/mortbay/io/nio/ChannelEndPoint;
.super Ljava/lang/Object;
.source "ChannelEndPoint.java"

# interfaces
.implements Lorg/mortbay/io/EndPoint;


# instance fields
.field protected final _channel:Ljava/nio/channels/ByteChannel;

.field protected final _gather2:[Ljava/nio/ByteBuffer;

.field protected final _local:Ljava/net/InetSocketAddress;

.field protected final _remote:Ljava/net/InetSocketAddress;

.field protected final _socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    .line 53
    iput-object p1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    .line 54
    instance-of v0, p1, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    .line 57
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 58
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    .line 63
    iput-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 64
    iput-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    goto :goto_0
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 114
    return-void
.end method

.method public fill(Lorg/mortbay/io/Buffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 123
    instance-of v1, v0, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v1, :cond_1

    .line 125
    check-cast v0, Lorg/mortbay/io/nio/NIOBuffer;

    .line 126
    invoke-interface {v0}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 127
    monitor-enter v0

    .line 131
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1, v2}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 133
    if-gez v1, :cond_0

    .line 134
    iget-object v3, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    .line 139
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    monitor-exit v0

    .line 148
    return v1

    .line 138
    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->setPutIndex(I)V

    .line 139
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v1

    .line 141
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 145
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush(Lorg/mortbay/io/Buffer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 158
    instance-of v1, v0, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v1, :cond_2

    .line 160
    check-cast v0, Lorg/mortbay/io/nio/NIOBuffer;

    .line 161
    invoke-interface {v0}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 164
    monitor-enter v1

    .line 168
    :try_start_0
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0, v1}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 174
    if-lez v0, :cond_0

    .line 175
    :try_start_1
    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 176
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 179
    monitor-exit v1

    .line 192
    :cond_1
    :goto_0
    return v0

    .line 174
    :catchall_0
    move-exception v0

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 179
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 181
    :cond_2
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v0

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 185
    if-lez v0, :cond_1

    .line 186
    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_0

    .line 190
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 200
    .line 202
    if-nez p1, :cond_4

    move-object v0, v1

    .line 203
    :goto_0
    if-nez p2, :cond_5

    .line 205
    :goto_1
    iget-object v3, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v3, v3, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v3, :cond_9

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, p1, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v3, :cond_9

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, p2, Lorg/mortbay/io/nio/NIOBuffer;

    if-eqz v3, :cond_9

    .line 209
    check-cast v0, Lorg/mortbay/io/nio/NIOBuffer;

    .line 210
    invoke-interface {v0}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, v1

    .line 211
    check-cast v0, Lorg/mortbay/io/nio/NIOBuffer;

    .line 212
    invoke-interface {v0}, Lorg/mortbay/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 214
    monitor-enter p0

    .line 217
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 219
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 224
    :try_start_2
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 226
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 230
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 233
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Ljava/nio/channels/GatheringByteChannel;

    iget-object v3, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    invoke-interface {v0, v3}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 235
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    .line 236
    if-le v0, v3, :cond_6

    .line 238
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    .line 239
    sub-int v3, v0, v3

    invoke-interface {p2, v3}, Lorg/mortbay/io/Buffer;->skip(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :cond_0
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 251
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 252
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 253
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-interface {p2, v3}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 255
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 258
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 260
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 262
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 296
    :cond_3
    :goto_3
    return v0

    .line 202
    :cond_4
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    goto/16 :goto_0

    .line 203
    :cond_5
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v1

    goto/16 :goto_1

    .line 241
    :cond_6
    if-lez v0, :cond_0

    .line 243
    :try_start_6
    invoke-interface {p1, v0}, Lorg/mortbay/io/Buffer;->skip(I)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 250
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v3

    if-nez v3, :cond_7

    .line 251
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 252
    :cond_7
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 253
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-interface {p2, v3}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 255
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 258
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 260
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    .line 261
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 262
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 266
    :cond_9
    if-eqz p1, :cond_b

    .line 268
    if-eqz p2, :cond_a

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_a

    .line 270
    invoke-interface {p1, p2}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 271
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->clear()V

    .line 273
    :cond_a
    if-eqz p3, :cond_b

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_b

    .line 275
    invoke-interface {p1, p3}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    .line 276
    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->clear()V

    .line 281
    :cond_b
    if-eqz p1, :cond_10

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 282
    invoke-virtual {p0, p1}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v0

    .line 285
    :goto_4
    if-eqz p1, :cond_c

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 287
    invoke-virtual {p0, p2}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_d
    if-eqz p1, :cond_e

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_e
    if-eqz p2, :cond_f

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_f
    if-eqz p3, :cond_3

    invoke-interface {p3}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 293
    invoke-virtual {p0, p3}, Lorg/mortbay/io/nio/ChannelEndPoint;->flush(Lorg/mortbay/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_3

    :cond_10
    move v0, v2

    goto :goto_4
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    return-void
.end method

.method public getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    :cond_1
    const-string/jumbo v0, "0.0.0.0"

    goto :goto_0

    .line 320
    :cond_2
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    :cond_1
    const-string/jumbo v0, "0.0.0.0"

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    .line 347
    const/4 v0, -0x1

    goto :goto_0

    .line 348
    :cond_1
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :cond_1
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 362
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 371
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v0

    .line 374
    :cond_1
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 376
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 385
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 386
    const/4 v0, 0x0

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 388
    :cond_1
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isBufferingInput()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public isBufferingOutput()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public isBufferred()Z
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/mortbay/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 104
    :cond_0
    return-void
.end method

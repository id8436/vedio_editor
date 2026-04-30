.class public Lorg/mortbay/io/nio/DirectNIOBuffer;
.super Lorg/mortbay/io/AbstractBuffer;
.source "DirectNIOBuffer.java"

# interfaces
.implements Lorg/mortbay/io/nio/NIOBuffer;


# instance fields
.field protected _buf:Ljava/nio/ByteBuffer;

.field private _in:Ljava/nio/channels/ReadableByteChannel;

.field private _inStream:Ljava/io/InputStream;

.field private _out:Ljava/nio/channels/WritableByteChannel;

.field private _outStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 47
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 48
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0, v6}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 68
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 70
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p0, v6}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 73
    iput v6, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_access:I

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/mortbay/io/AbstractBuffer;-><init>(IZ)V

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 57
    :cond_1
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public peek(I)B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public peek(I[BII)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 102
    .line 103
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    .line 106
    if-nez v1, :cond_2

    .line 122
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p4

    .line 110
    :cond_2
    if-ltz v1, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v1

    .line 122
    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public poke(ILorg/mortbay/io/Buffer;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    .line 141
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/mortbay/io/nio/DirectNIOBuffer;->poke(I[BII)I

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->buffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    if-eqz v1, :cond_2

    .line 149
    check-cast v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    iget-object v0, v0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 150
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_4

    .line 151
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 154
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 157
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    .line 158
    if-le v1, v0, :cond_3

    .line 161
    :goto_2
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    invoke-interface {p2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 164
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    .line 175
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/mortbay/io/AbstractBuffer;->poke(ILorg/mortbay/io/Buffer;)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public poke(I[BII)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 187
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v0

    sub-int v1, v0, p1

    .line 188
    if-gez v1, :cond_3

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, p4

    .line 194
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 198
    if-le v1, v0, :cond_5

    .line 200
    :goto_0
    if-lez v0, :cond_4

    .line 201
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_4
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public poke(IB)V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 132
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    if-eq p1, v0, :cond_1

    .line 221
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 222
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 225
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->space()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 226
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->space()I

    move-result p2

    .line 227
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v5

    move v6, v3

    move v4, p2

    move v0, v3

    move v1, v3

    .line 233
    :goto_0
    if-ge v0, p2, :cond_4

    .line 235
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    add-int v2, v5, v4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 237
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 238
    if-gez v1, :cond_6

    .line 240
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 241
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_4
    :goto_1
    if-gez v1, :cond_9

    if-nez v0, :cond_9

    .line 258
    const/4 v0, -0x1

    .line 270
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_5

    .line 272
    iput-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 273
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 275
    :cond_5
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_2
    return v0

    .line 244
    :cond_6
    if-lez v1, :cond_8

    .line 246
    add-int/2addr v5, v1

    .line 247
    add-int v2, v0, v1

    .line 248
    sub-int v0, v4, v1

    .line 249
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/mortbay/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    move v4, v0

    move v0, v2

    move v2, v3

    .line 254
    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-lez v6, :cond_4

    move v6, v2

    goto :goto_0

    .line 252
    :cond_8
    add-int/lit8 v2, v6, 0x1

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    goto :goto_1

    .line 270
    :cond_9
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_a

    .line 272
    iput-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 273
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 275
    :cond_a
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 262
    :catch_0
    move-exception v0

    .line 264
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 265
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 266
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_b

    .line 272
    iput-object v8, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_in:Ljava/nio/channels/ReadableByteChannel;

    .line 273
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_inStream:Ljava/io/InputStream;

    .line 275
    :cond_b
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 276
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    if-eq v0, v2, :cond_1

    .line 285
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 286
    iput-object p1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 289
    :cond_1
    iget-object v3, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    monitor-enter v3

    move v2, v1

    .line 294
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 298
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 299
    if-gez v0, :cond_4

    .line 319
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 324
    :cond_3
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 325
    iget-object v0, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 327
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 328
    return-void

    .line 301
    :cond_4
    if-lez v0, :cond_6

    .line 303
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/mortbay/io/nio/DirectNIOBuffer;->skip(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    :cond_5
    move v2, v0

    .line 308
    goto :goto_0

    .line 306
    :cond_6
    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 313
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 315
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_7

    .line 321
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_out:Ljava/nio/channels/WritableByteChannel;

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_outStream:Ljava/io/OutputStream;

    .line 324
    :cond_7
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 325
    iget-object v1, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/mortbay/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 327
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

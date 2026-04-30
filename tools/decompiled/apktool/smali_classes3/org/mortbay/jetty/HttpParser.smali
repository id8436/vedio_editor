.class public Lorg/mortbay/jetty/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"

# interfaces
.implements Lorg/mortbay/jetty/Parser;


# static fields
.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xc

.field public static final STATE_FIELD1:I = -0xa

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SPACE1:I = -0xb

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xd


# instance fields
.field private _body:Lorg/mortbay/io/Buffer;

.field private _buffer:Lorg/mortbay/io/Buffer;

.field private _buffers:Lorg/mortbay/io/Buffers;

.field private _cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field protected _chunkLength:I

.field protected _chunkPosition:I

.field private _contentBufferSize:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field private _contentView:Lorg/mortbay/io/View;

.field private _endp:Lorg/mortbay/io/EndPoint;

.field protected _eol:B

.field private _forceContentBuffer:Z

.field private _handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

.field private _header:Lorg/mortbay/io/Buffer;

.field private _headerBufferSize:I

.field private _input:Lorg/mortbay/jetty/HttpParser$Input;

.field protected _length:I

.field private _multiLineValue:Ljava/lang/String;

.field private _responseStatus:I

.field protected _state:I

.field private _tok0:Lorg/mortbay/io/View$CaseInsensitive;

.field private _tok1:Lorg/mortbay/io/View$CaseInsensitive;


# direct methods
.method public constructor <init>(Lorg/mortbay/io/Buffer;Lorg/mortbay/jetty/HttpParser$EventHandler;)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0}, Lorg/mortbay/io/View;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    .line 78
    const/16 v0, -0xd

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 92
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    .line 93
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 94
    iput-object p2, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    .line 96
    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    invoke-direct {v0, p1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    .line 99
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    invoke-direct {v0, p1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    .line 100
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 101
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/io/Buffers;Lorg/mortbay/io/EndPoint;Lorg/mortbay/jetty/HttpParser$EventHandler;II)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lorg/mortbay/io/View;

    invoke-direct {v0}, Lorg/mortbay/io/View;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    .line 78
    const/16 v0, -0xd

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 113
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    .line 114
    iput-object p2, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    .line 115
    iput-object p3, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    .line 116
    iput p4, p0, Lorg/mortbay/jetty/HttpParser;->_headerBufferSize:I

    .line 117
    iput p5, p0, Lorg/mortbay/jetty/HttpParser;->_contentBufferSize:I

    .line 118
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/EndPoint;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    return-object v0
.end method

.method static access$100(Lorg/mortbay/jetty/HttpParser;)Lorg/mortbay/io/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    return-object v0
.end method

.method static access$202(Lorg/mortbay/jetty/HttpParser;Lorg/mortbay/jetty/HttpParser$Input;)Lorg/mortbay/jetty/HttpParser$Input;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/mortbay/jetty/HttpParser;->_input:Lorg/mortbay/jetty/HttpParser$Input;

    return-object p1
.end method


# virtual methods
.method public fill()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->getHeaderBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 863
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    .line 864
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    .line 866
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eq v0, v1, :cond_1

    .line 867
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 868
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-ne v0, v1, :cond_2

    .line 869
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->compact()V

    .line 871
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    .line 874
    if-nez v0, :cond_4

    .line 875
    new-instance v1, Lorg/mortbay/jetty/HttpException;

    const/16 v2, 0x19d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "FULL "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-ne v0, v4, :cond_3

    const-string/jumbo v0, "body"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3
    const-string/jumbo v0, "head"

    goto :goto_0

    .line 878
    :cond_4
    const/4 v0, -0x1

    .line 880
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    if-eqz v1, :cond_5

    .line 884
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/EndPoint;->fill(Lorg/mortbay/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 894
    :cond_5
    int-to-long v0, v0

    return-wide v0

    .line 886
    :catch_0
    move-exception v0

    .line 888
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 889
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    .line 890
    instance-of v1, v0, Lorg/mortbay/jetty/EofException;

    if-eqz v1, :cond_6

    :goto_1
    throw v0

    :cond_6
    new-instance v1, Lorg/mortbay/jetty/EofException;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public getBodyBuffer()Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/mortbay/io/Buffer;
    .locals 2

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    .line 1026
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_headerBufferSize:I

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    .line 1028
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    return v0
.end method

.method public inContentState()Z
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inHeaderState()Z
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunking()Z
    .locals 4

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 158
    const/16 v0, -0xd

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isMoreInBuffer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isState(I)Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    .line 194
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/16 v1, -0xd

    if-eq v0, v1, :cond_1

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "!START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    :goto_0
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    goto :goto_0

    .line 200
    :cond_2
    return-void
.end method

.method public parseAvailable()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 212
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    move-result-wide v0

    .line 213
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->isComplete()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 218
    invoke-virtual {p0}, Lorg/mortbay/jetty/HttpParser;->parseNext()J

    move-result-wide v4

    .line 219
    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 220
    add-long/2addr v0, v4

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 213
    goto :goto_0

    .line 222
    :cond_2
    return-wide v0
.end method

.method public parseNext()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const-wide/16 v2, -0x1

    .line 236
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-nez v0, :cond_1

    .line 237
    const-wide/16 v2, -0x1

    .line 851
    :cond_0
    :goto_0
    return-wide v2

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_3

    .line 241
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_2

    .line 243
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_headerBufferSize:I

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    .line 245
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 246
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    .line 247
    new-instance v0, Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-direct {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;-><init>(Lorg/mortbay/io/Buffer;)V

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    .line 248
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 249
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 253
    :cond_3
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 256
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 263
    if-nez v0, :cond_e

    .line 265
    const/4 v0, -0x1

    .line 266
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eq v1, v4, :cond_5

    .line 268
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 269
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 272
    :cond_5
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->putIndex()I

    move-result v1

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v4

    if-ne v1, v4, :cond_6

    .line 273
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x19d

    const-string/jumbo v2, "FULL"

    invoke-direct {v0, v1, v2}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 275
    :cond_6
    const/4 v4, 0x0

    .line 277
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    if-eqz v1, :cond_4c

    if-gtz v0, :cond_4c

    .line 281
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-ne v0, v1, :cond_7

    .line 282
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->compact()V

    .line 284
    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_9

    .line 285
    new-instance v1, Lorg/mortbay/jetty/HttpException;

    const/16 v2, 0x19d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "FULL "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-ne v0, v4, :cond_8

    const-string/jumbo v0, "body"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_8
    const-string/jumbo v0, "head"

    goto :goto_1

    .line 288
    :cond_9
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_4b

    .line 289
    const-wide/16 v0, 0x0

    .line 290
    :goto_2
    :try_start_0
    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_endp:Lorg/mortbay/io/EndPoint;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v2, v3}, Lorg/mortbay/io/EndPoint;->fill(Lorg/mortbay/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 291
    if-lez v2, :cond_a

    .line 292
    int-to-long v6, v2

    add-long/2addr v0, v6

    :cond_a
    move v12, v2

    move-wide v2, v0

    move-object v0, v4

    move v1, v12

    .line 302
    :goto_3
    if-gez v1, :cond_d

    .line 304
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c

    .line 306
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 309
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 310
    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 311
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    invoke-virtual {v1, v0}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 312
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    .line 314
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 315
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_0

    .line 294
    :catch_0
    move-exception v2

    .line 296
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 298
    const/4 v3, -0x1

    move-object v12, v2

    move v13, v3

    move-wide v2, v0

    move-object v0, v12

    move v1, v13

    goto :goto_3

    .line 318
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/HttpParser;->reset(Z)V

    .line 319
    new-instance v1, Lorg/mortbay/jetty/EofException;

    invoke-direct {v1, v0}, Lorg/mortbay/jetty/EofException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 321
    :cond_d
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 327
    :cond_e
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->array()[B

    move-result-object v5

    .line 329
    :goto_4
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-gez v1, :cond_37

    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_37

    .line 331
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v6

    .line 333
    iget-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    const/16 v4, 0xd

    if-ne v0, v4, :cond_f

    const/16 v0, 0xa

    if-ne v6, v0, :cond_f

    .line 335
    const/16 v0, 0xa

    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    move v0, v1

    .line 336
    goto :goto_4

    .line 338
    :cond_f
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 340
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    packed-switch v0, :pswitch_data_0

    :cond_10
    :goto_5
    :pswitch_0
    move v0, v1

    goto :goto_4

    .line 343
    :pswitch_1
    const-wide/16 v8, -0x3

    iput-wide v8, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 345
    const/16 v0, 0x20

    if-gt v6, v0, :cond_11

    if-gez v6, :cond_10

    .line 347
    :cond_11
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    .line 348
    const/16 v0, -0xc

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    goto :goto_4

    .line 353
    :pswitch_2
    const/16 v0, 0x20

    if-ne v6, v0, :cond_12

    .line 355
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v6, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v4, v6}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 356
    const/16 v0, -0xb

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 357
    goto :goto_4

    .line 359
    :cond_12
    const/16 v0, 0x20

    if-ge v6, v0, :cond_10

    if-ltz v6, :cond_10

    .line 361
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v0

    .line 366
    :pswitch_3
    const/16 v0, 0x20

    if-gt v6, v0, :cond_13

    if-gez v6, :cond_14

    .line 368
    :cond_13
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    .line 369
    const/16 v0, -0xa

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    goto :goto_4

    .line 371
    :cond_14
    const/16 v0, 0x20

    if-ge v6, v0, :cond_10

    .line 373
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v0

    .line 378
    :pswitch_4
    const/16 v0, 0x20

    if-ne v6, v0, :cond_15

    .line 380
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v6, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v4, v6}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 381
    const/16 v0, -0x9

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 382
    goto/16 :goto_4

    .line 384
    :cond_15
    const/16 v0, 0x20

    if-ge v6, v0, :cond_10

    if-ltz v6, :cond_10

    .line 387
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    sget-object v1, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v1, v4}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v1

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 389
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 390
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    .line 391
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_0

    .line 397
    :pswitch_5
    const/16 v0, 0x20

    if-gt v6, v0, :cond_16

    if-gez v6, :cond_17

    .line 399
    :cond_16
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    .line 400
    const/4 v0, -0x6

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    goto/16 :goto_4

    .line 402
    :cond_17
    const/16 v0, 0x20

    if-ge v6, v0, :cond_10

    .line 405
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    sget-object v1, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v1, v4}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v1

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 406
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 407
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    .line 408
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_0

    .line 414
    :pswitch_6
    const/16 v0, 0xd

    if-eq v6, v0, :cond_18

    const/16 v0, 0xa

    if-ne v6, v0, :cond_10

    .line 417
    :cond_18
    sget-object v0, Lorg/mortbay/jetty/HttpMethods;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0, v4}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 418
    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    if-ne v0, v4, :cond_19

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_19

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4}, Lorg/mortbay/io/View$CaseInsensitive;->peek()B

    move-result v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 420
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->toInt(Lorg/mortbay/io/Buffer;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    .line 421
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    sget-object v4, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4, v7}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v4

    iget v7, p0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    iget-object v8, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v8}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v8

    invoke-virtual {v0, v4, v7, v8}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startResponse(Lorg/mortbay/io/Buffer;ILorg/mortbay/io/Buffer;)V

    .line 427
    :goto_6
    iput-byte v6, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 428
    const/4 v0, -0x5

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 429
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 430
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    move v0, v1

    .line 432
    goto/16 :goto_4

    .line 425
    :cond_19
    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    sget-object v8, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v9, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v9}, Lorg/mortbay/io/Buffer;->sliceFromMark()Lorg/mortbay/io/Buffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mortbay/io/BufferCache;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v8

    invoke-virtual {v4, v0, v7, v8}, Lorg/mortbay/jetty/HttpParser$EventHandler;->startRequest(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_6

    .line 438
    :pswitch_7
    sparse-switch v6, :sswitch_data_0

    .line 453
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v0

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v0

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 456
    :cond_1a
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 457
    :goto_7
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 458
    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v4, :cond_23

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    .line 460
    :goto_8
    sget-object v7, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    invoke-virtual {v7, v0}, Lorg/mortbay/jetty/HttpHeaders;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v7

    .line 461
    if-ltz v7, :cond_1b

    .line 465
    sparse-switch v7, :sswitch_data_1

    .line 502
    :cond_1b
    :goto_9
    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v7, v0, v4}, Lorg/mortbay/jetty/HttpParser$EventHandler;->parsedHeader(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 503
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 504
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4}, Lorg/mortbay/io/View$CaseInsensitive;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/mortbay/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 510
    :cond_1c
    const/16 v0, 0xd

    if-eq v6, v0, :cond_1d

    const/16 v0, 0xa

    if-ne v6, v0, :cond_2a

    .line 515
    :cond_1d
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/16 v4, -0x3

    cmp-long v0, v0, v4

    if-nez v0, :cond_1f

    .line 517
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    if-eqz v0, :cond_1e

    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_1e

    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1e

    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_26

    .line 521
    :cond_1e
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    .line 526
    :cond_1f
    :goto_a
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 527
    iput-byte v6, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 530
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v0, v4

    if-lez v0, :cond_27

    const v0, 0x7fffffff

    :goto_b
    packed-switch v0, :pswitch_data_1

    .line 554
    const/4 v0, 0x2

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 555
    iget-boolean v0, p0, Lorg/mortbay/jetty/HttpParser;->_forceContentBuffer:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_21

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-ne v0, v1, :cond_21

    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v4

    iget-object v5, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v5}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_21

    .line 557
    :cond_20
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentBufferSize:I

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    .line 558
    :cond_21
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_0

    .line 445
    :sswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 446
    const/4 v0, -0x2

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 447
    goto/16 :goto_4

    .line 456
    :cond_22
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/HttpHeaders;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v0

    goto/16 :goto_7

    .line 458
    :cond_23
    new-instance v4, Lorg/mortbay/io/ByteArrayBuffer;

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 468
    :sswitch_1
    iget-wide v8, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/16 v10, -0x2

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1b

    .line 472
    :try_start_1
    invoke-static {v4}, Lorg/mortbay/io/BufferUtil;->toLong(Lorg/mortbay/io/Buffer;)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 479
    iget-wide v8, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1b

    .line 480
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto/16 :goto_9

    .line 474
    :catch_1
    move-exception v0

    .line 476
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 477
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/HttpException;-><init>(I)V

    throw v0

    .line 485
    :sswitch_2
    sget-object v7, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v7, v4}, Lorg/mortbay/jetty/HttpHeaderValues;->lookup(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v4

    .line 486
    sget-object v7, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v7, v4}, Lorg/mortbay/jetty/HttpHeaderValues;->getOrdinal(Lorg/mortbay/io/Buffer;)I

    move-result v7

    .line 487
    const/4 v8, 0x2

    if-ne v8, v7, :cond_24

    .line 488
    const-wide/16 v8, -0x2

    iput-wide v8, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto/16 :goto_9

    .line 491
    :cond_24
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 492
    const-string/jumbo v8, "chunked"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 493
    const-wide/16 v8, -0x2

    iput-wide v8, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto/16 :goto_9

    .line 495
    :cond_25
    const-string/jumbo v8, "chunked"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_1b

    .line 496
    new-instance v0, Lorg/mortbay/jetty/HttpException;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mortbay/jetty/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 523
    :cond_26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    goto/16 :goto_a

    .line 530
    :cond_27
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    long-to-int v0, v0

    goto/16 :goto_b

    .line 533
    :pswitch_8
    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 534
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_28

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    if-eqz v0, :cond_28

    .line 535
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentBufferSize:I

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    .line 537
    :cond_28
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_0

    .line 541
    :pswitch_9
    const/4 v0, 0x3

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 542
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_29

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    if-eqz v0, :cond_29

    .line 543
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentBufferSize:I

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->getBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    .line 544
    :cond_29
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_0

    .line 548
    :pswitch_a
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 549
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->headerComplete()V

    .line 550
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_0

    .line 566
    :cond_2a
    const/4 v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 567
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    .line 568
    const/4 v0, -0x4

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 571
    if-eqz v5, :cond_10

    .line 573
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE:Lorg/mortbay/jetty/HttpHeaders;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v5, v4, v6}, Lorg/mortbay/jetty/HttpHeaders;->getBest([BII)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 575
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_10

    .line 577
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->length()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 578
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v1

    iget v4, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v1, v4

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->setGetIndex(I)V

    .line 579
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    move v0, v1

    goto/16 :goto_4

    .line 589
    :pswitch_b
    sparse-switch v6, :sswitch_data_2

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 610
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2b

    .line 611
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    .line 612
    :cond_2b
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 613
    const/4 v0, -0x3

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 617
    goto/16 :goto_4

    .line 593
    :sswitch_3
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v0, :cond_2c

    .line 594
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v7

    iget v8, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v7}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 595
    :cond_2c
    iput-byte v6, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 596
    const/4 v0, -0x5

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 597
    goto/16 :goto_4

    .line 599
    :sswitch_4
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v0, :cond_2d

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_2d

    .line 600
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v6, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v6

    iget v7, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v4, v6}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 601
    :cond_2d
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 602
    const/4 v0, -0x2

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 603
    goto/16 :goto_4

    :sswitch_5
    move v0, v1

    .line 606
    goto/16 :goto_4

    .line 620
    :pswitch_c
    sparse-switch v6, :sswitch_data_3

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 642
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    move v0, v1

    .line 645
    goto/16 :goto_4

    .line 624
    :sswitch_6
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v0, :cond_2e

    .line 625
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v7

    iget v8, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v7}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 626
    :cond_2e
    iput-byte v6, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 627
    const/4 v0, -0x5

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 628
    goto/16 :goto_4

    .line 630
    :sswitch_7
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v0, :cond_2f

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_cached:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-nez v0, :cond_2f

    .line 631
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v6, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v6}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v6

    iget v7, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v6, v7

    invoke-virtual {v0, v4, v6}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 632
    :cond_2f
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 633
    const/4 v0, -0x2

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 634
    goto/16 :goto_4

    .line 637
    :sswitch_8
    const/4 v0, -0x4

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 638
    goto/16 :goto_4

    .line 648
    :pswitch_d
    sparse-switch v6, :sswitch_data_4

    .line 672
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_30

    .line 673
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->mark()V

    .line 674
    :cond_30
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 675
    const/4 v0, -0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 678
    goto/16 :goto_4

    .line 652
    :sswitch_9
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v0, :cond_31

    .line 654
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v0

    if-nez v0, :cond_32

    .line 655
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v7

    iget v8, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v7}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 664
    :cond_31
    :goto_c
    iput-byte v6, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 665
    const/4 v0, -0x5

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 666
    goto/16 :goto_4

    .line 659
    :cond_32
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v0, :cond_33

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/View$CaseInsensitive;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 660
    :cond_33
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v7

    iget v8, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v7}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 661
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4}, Lorg/mortbay/io/View$CaseInsensitive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_c

    :sswitch_a
    move v0, v1

    .line 669
    goto/16 :goto_4

    .line 681
    :pswitch_e
    sparse-switch v6, :sswitch_data_5

    .line 705
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    goto/16 :goto_5

    .line 685
    :sswitch_b
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    if-lez v0, :cond_34

    .line 687
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/View$CaseInsensitive;->length()I

    move-result v0

    if-nez v0, :cond_35

    .line 688
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v7

    iget v8, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v7}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 697
    :cond_34
    :goto_d
    iput-byte v6, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 698
    const/4 v0, -0x5

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 699
    goto/16 :goto_4

    .line 692
    :cond_35
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    if-nez v0, :cond_36

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v0}, Lorg/mortbay/io/View$CaseInsensitive;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 693
    :cond_36
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v4

    iget-object v7, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v7}, Lorg/mortbay/io/Buffer;->markIndex()I

    move-result v7

    iget v8, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v7}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 694
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    invoke-virtual {v4}, Lorg/mortbay/io/View$CaseInsensitive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_d

    .line 702
    :sswitch_c
    const/4 v0, -0x2

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    move v0, v1

    .line 703
    goto/16 :goto_4

    .line 714
    :cond_37
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 717
    :goto_e
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 719
    iget-byte v1, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    const/16 v4, 0xd

    if-ne v1, v4, :cond_38

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_38

    .line 721
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 722
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    goto :goto_e

    .line 725
    :cond_38
    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 726
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    packed-switch v1, :pswitch_data_2

    .line 849
    :cond_39
    :goto_f
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    goto :goto_e

    .line 729
    :pswitch_f
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 730
    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 731
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    invoke-virtual {v1, v0}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 732
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 738
    :pswitch_10
    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    iget-wide v6, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    sub-long/2addr v4, v6

    .line 739
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3a

    .line 741
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 742
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_0

    .line 746
    :cond_3a
    int-to-long v6, v0

    cmp-long v1, v6, v4

    if-lez v1, :cond_3b

    .line 750
    long-to-int v0, v4

    .line 753
    :cond_3b
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v0}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 754
    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 755
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    invoke-virtual {v1, v0}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 756
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    .line 758
    iget-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 761
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_0

    .line 769
    :pswitch_11
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    .line 770
    const/16 v1, 0xd

    if-eq v0, v1, :cond_3c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3d

    .line 771
    :cond_3c
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    goto/16 :goto_f

    .line 772
    :cond_3d
    const/16 v1, 0x20

    if-gt v0, v1, :cond_3e

    .line 773
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    goto/16 :goto_f

    .line 776
    :cond_3e
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    .line 777
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    .line 778
    const/4 v0, 0x4

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 785
    :pswitch_12
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    .line 786
    const/16 v1, 0xd

    if-eq v0, v1, :cond_3f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_41

    .line 788
    :cond_3f
    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 789
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    if-nez v0, :cond_40

    .line 791
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 792
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_0

    .line 796
    :cond_40
    const/4 v0, 0x6

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 798
    :cond_41
    const/16 v1, 0x20

    if-le v0, v1, :cond_42

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_43

    .line 799
    :cond_42
    const/4 v0, 0x5

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 800
    :cond_43
    const/16 v1, 0x30

    if-lt v0, v1, :cond_44

    const/16 v1, 0x39

    if-gt v0, v1, :cond_44

    .line 801
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto/16 :goto_f

    .line 802
    :cond_44
    const/16 v1, 0x61

    if-lt v0, v1, :cond_45

    const/16 v1, 0x66

    if-gt v0, v1, :cond_45

    .line 803
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x61

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto/16 :goto_f

    .line 804
    :cond_45
    const/16 v1, 0x41

    if-lt v0, v1, :cond_46

    const/16 v1, 0x46

    if-gt v0, v1, :cond_46

    .line 805
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x41

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    goto/16 :goto_f

    .line 807
    :cond_46
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "bad chunk char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    :pswitch_13
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->get()B

    move-result v0

    .line 814
    const/16 v1, 0xd

    if-eq v0, v1, :cond_47

    const/16 v1, 0xa

    if-ne v0, v1, :cond_39

    .line 816
    :cond_47
    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 817
    iget v0, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    if-nez v0, :cond_48

    .line 819
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 820
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/HttpParser$EventHandler;->messageComplete(J)V

    goto/16 :goto_0

    .line 824
    :cond_48
    const/4 v0, 0x6

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 831
    :pswitch_14
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_chunkLength:I

    iget v4, p0, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    sub-int/2addr v1, v4

    .line 832
    if-nez v1, :cond_49

    .line 834
    const/4 v0, 0x3

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    goto/16 :goto_f

    .line 837
    :cond_49
    if-le v0, v1, :cond_4a

    move v0, v1

    .line 839
    :cond_4a
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v1, v0}, Lorg/mortbay/io/Buffer;->get(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    .line 840
    iget-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 841
    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lorg/mortbay/jetty/HttpParser;->_chunkPosition:I

    .line 842
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    invoke-virtual {v1, v0}, Lorg/mortbay/io/View;->update(Lorg/mortbay/io/Buffer;)V

    .line 843
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_handler:Lorg/mortbay/jetty/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpParser$EventHandler;->content(Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    :cond_4b
    move-wide v0, v2

    goto/16 :goto_2

    :cond_4c
    move v1, v0

    move-object v0, v4

    goto/16 :goto_3

    .line 340
    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 438
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x3a -> :sswitch_0
    .end sparse-switch

    .line 465
    :sswitch_data_1
    .sparse-switch
        0x5 -> :sswitch_2
        0xc -> :sswitch_1
    .end sparse-switch

    .line 530
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 589
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xd -> :sswitch_3
        0x20 -> :sswitch_5
        0x3a -> :sswitch_4
    .end sparse-switch

    .line 620
    :sswitch_data_3
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_6
        0xd -> :sswitch_6
        0x20 -> :sswitch_8
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 648
    :sswitch_data_4
    .sparse-switch
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xd -> :sswitch_9
        0x20 -> :sswitch_a
    .end sparse-switch

    .line 681
    :sswitch_data_5
    .sparse-switch
        0x9 -> :sswitch_c
        0xa -> :sswitch_b
        0xd -> :sswitch_b
        0x20 -> :sswitch_c
    .end sparse-switch

    .line 726
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 5

    .prologue
    const/16 v2, 0xa

    .line 933
    monitor-enter p0

    .line 935
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_contentView:Lorg/mortbay/io/View;

    invoke-virtual {v1}, Lorg/mortbay/io/View;->putIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View;->setGetIndex(I)V

    .line 937
    const/16 v0, -0xd

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 938
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    .line 939
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentPosition:J

    .line 940
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    .line 941
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/HttpParser;->_responseStatus:I

    .line 943
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    if-ne v0, v2, :cond_0

    .line 945
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 946
    const/16 v0, 0xa

    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 949
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_4

    .line 951
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    .line 957
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->compact()V

    .line 958
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->space()I

    move-result v0

    .line 959
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 960
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    .line 961
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    .line 962
    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    iget-object v3, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    iget-object v4, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v4}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/mortbay/io/Buffer;->put(Lorg/mortbay/io/Buffer;)I

    move-result v0

    invoke-interface {v1, v0}, Lorg/mortbay/io/Buffer;->skip(I)I

    .line 965
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 967
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 968
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    .line 969
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    .line 979
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_5

    .line 981
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    .line 982
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 984
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffers:Lorg/mortbay/io/Buffers;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffers;->returnBuffer(Lorg/mortbay/io/Buffer;)V

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 998
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_buffer:Lorg/mortbay/io/Buffer;

    .line 999
    monitor-exit p0

    .line 1000
    return-void

    .line 973
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->setMarkIndex(I)V

    .line 974
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->compact()V

    goto :goto_0

    .line 999
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 990
    :cond_7
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->compact()V

    .line 991
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;->update(Lorg/mortbay/io/Buffer;)V

    .line 992
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok0:Lorg/mortbay/io/View$CaseInsensitive;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V

    .line 993
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/View$CaseInsensitive;->update(Lorg/mortbay/io/Buffer;)V

    .line 994
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_tok1:Lorg/mortbay/io/View$CaseInsensitive;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/View$CaseInsensitive;->update(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setForceContentBuffer(Z)V
    .locals 0

    .prologue
    .line 1043
    iput-boolean p1, p0, Lorg/mortbay/jetty/HttpParser;->_forceContentBuffer:Z

    .line 1044
    return-void
.end method

.method public setState(I)V
    .locals 2

    .prologue
    .line 1005
    iput p1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    .line 1006
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    .line 1007
    return-void
.end method

.method public skipCRLF()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 905
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 907
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    .line 908
    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 910
    :cond_0
    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 911
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_header:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_0

    .line 917
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 919
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->peek()B

    move-result v0

    .line 920
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_3

    .line 922
    :cond_2
    iput-byte v0, p0, Lorg/mortbay/jetty/HttpParser;->_eol:B

    .line 923
    iget-object v0, p0, Lorg/mortbay/jetty/HttpParser;->_body:Lorg/mortbay/io/Buffer;

    invoke-interface {v0, v1}, Lorg/mortbay/io/Buffer;->skip(I)I

    goto :goto_1

    .line 929
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1018
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/mortbay/jetty/HttpParser;->_contentLength:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/mortbay/io/Buffer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1012
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " buf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

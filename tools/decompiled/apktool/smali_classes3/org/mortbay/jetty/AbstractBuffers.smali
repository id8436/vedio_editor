.class public abstract Lorg/mortbay/jetty/AbstractBuffers;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "AbstractBuffers.java"

# interfaces
.implements Lorg/mortbay/io/Buffers;


# static fields
.field private static final __HEADER:I = 0x0

.field private static final __OTHER:I = 0x3

.field private static final __REQUEST:I = 0x1

.field private static final __RESPONSE:I = 0x2


# instance fields
.field private final _buffers:Ljava/lang/ThreadLocal;

.field private _headerBufferSize:I

.field private final _pool:[I

.field private _requestBufferSize:I

.field private _responseBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 31
    const/16 v0, 0x1000

    iput v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    .line 32
    const/16 v0, 0x2000

    iput v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    .line 33
    const/16 v0, 0x6000

    iput v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    .line 41
    new-instance v0, Lorg/mortbay/jetty/AbstractBuffers$1;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/AbstractBuffers$1;-><init>(Lorg/mortbay/jetty/AbstractBuffers;)V

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_buffers:Ljava/lang/ThreadLocal;

    .line 52
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x1
        0x2
    .end array-data
.end method

.method static access$000(Lorg/mortbay/jetty/AbstractBuffers;)[I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    return-object v0
.end method


# virtual methods
.method protected doStart()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    invoke-super {p0}, Lorg/mortbay/component/AbstractLifeCycle;->doStart()V

    .line 106
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v1, v0, v4

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v2, v2, v5

    iget-object v3, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v3, v3, v6

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 109
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aput v4, v0, v5

    .line 110
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aput v4, v0, v6

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    if-ne v0, v1, :cond_2

    .line 114
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v1, v0, v4

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v2, v2, v5

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 115
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aput v4, v0, v5

    goto :goto_0

    .line 117
    :cond_2
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v1, v0, v4

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v2, v2, v6

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 120
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aput v4, v0, v6

    goto :goto_0

    .line 122
    :cond_3
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v1, v0, v6

    iget-object v2, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aget v2, v2, v5

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 125
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_pool:[I

    aput v4, v0, v5

    goto :goto_0
.end method

.method public getBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 58
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    if-ne p1, v0, :cond_0

    move v1, v2

    .line 62
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;

    .line 64
    iget-object v0, v0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->_buffers:[[Lorg/mortbay/io/Buffer;

    aget-object v1, v0, v1

    .line 65
    :goto_1
    array-length v0, v1

    if-ge v2, v0, :cond_4

    .line 67
    aget-object v0, v1, v2

    .line 68
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 70
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 75
    :goto_2
    return-object v0

    .line 58
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    move v1, v0

    goto :goto_0

    .line 65
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/AbstractBuffers;->newBuffer(I)Lorg/mortbay/io/Buffer;

    move-result-object v0

    goto :goto_2
.end method

.method public getHeaderBufferSize()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    return v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    return v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    return v0
.end method

.method protected abstract newBuffer(I)Lorg/mortbay/io/Buffer;
.end method

.method public returnBuffer(Lorg/mortbay/io/Buffer;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    .line 81
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v0

    .line 85
    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 89
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;

    .line 90
    iget-object v0, v0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->_buffers:[[Lorg/mortbay/io/Buffer;

    aget-object v0, v0, v1

    .line 91
    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 93
    aget-object v1, v0, v2

    if-nez v1, :cond_5

    .line 95
    aput-object p1, v0, v2

    goto :goto_0

    .line 85
    :cond_2
    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    move v1, v0

    goto :goto_1

    :cond_3
    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    move v1, v0

    goto :goto_1

    .line 91
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public setHeaderBufferSize(I)V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractBuffers;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 145
    :cond_0
    iput p1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    .line 146
    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractBuffers;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 163
    :cond_0
    iput p1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    .line 164
    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/mortbay/jetty/AbstractBuffers;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 181
    :cond_0
    iput p1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_headerBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_requestBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/AbstractBuffers;->_responseBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

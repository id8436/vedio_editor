.class public Lorg/mortbay/io/SimpleBuffers;
.super Ljava/lang/Object;
.source "SimpleBuffers.java"

# interfaces
.implements Lorg/mortbay/io/Buffers;


# instance fields
.field _buffers:[Lorg/mortbay/io/Buffer;


# direct methods
.method public constructor <init>([Lorg/mortbay/io/Buffer;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    .line 35
    return-void
.end method


# virtual methods
.method public getBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 47
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/mortbay/io/Buffer;->capacity()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aget-object v1, v1, v0

    .line 50
    iget-object v2, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    move-object v0, v1

    .line 55
    :goto_1
    return-object v0

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(I)V

    goto :goto_1
.end method

.method public returnBuffer(Lorg/mortbay/io/Buffer;)V
    .locals 2

    .prologue
    .line 64
    invoke-interface {p1}, Lorg/mortbay/io/Buffer;->clear()V

    .line 65
    iget-object v0, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    if-eqz v0, :cond_1

    .line 67
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 69
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lorg/mortbay/io/SimpleBuffers;->_buffers:[Lorg/mortbay/io/Buffer;

    aput-object p1, v1, v0

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method

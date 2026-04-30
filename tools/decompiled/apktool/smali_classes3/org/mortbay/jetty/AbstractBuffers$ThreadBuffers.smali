.class public Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;
.super Ljava/lang/Object;
.source "AbstractBuffers.java"


# instance fields
.field final _buffers:[[Lorg/mortbay/io/Buffer;


# direct methods
.method constructor <init>(IIII)V
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [[Lorg/mortbay/io/Buffer;

    iput-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->_buffers:[[Lorg/mortbay/io/Buffer;

    .line 192
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->_buffers:[[Lorg/mortbay/io/Buffer;

    const/4 v1, 0x0

    new-array v2, p1, [Lorg/mortbay/io/Buffer;

    aput-object v2, v0, v1

    .line 193
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->_buffers:[[Lorg/mortbay/io/Buffer;

    const/4 v1, 0x1

    new-array v2, p2, [Lorg/mortbay/io/Buffer;

    aput-object v2, v0, v1

    .line 194
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->_buffers:[[Lorg/mortbay/io/Buffer;

    const/4 v1, 0x2

    new-array v2, p3, [Lorg/mortbay/io/Buffer;

    aput-object v2, v0, v1

    .line 195
    iget-object v0, p0, Lorg/mortbay/jetty/AbstractBuffers$ThreadBuffers;->_buffers:[[Lorg/mortbay/io/Buffer;

    const/4 v1, 0x3

    new-array v2, p4, [Lorg/mortbay/io/Buffer;

    aput-object v2, v0, v1

    .line 197
    return-void
.end method

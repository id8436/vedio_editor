.class public abstract Lorg/mortbay/jetty/nio/AbstractNIOConnector;
.super Lorg/mortbay/jetty/AbstractConnector;
.source "AbstractNIOConnector.java"

# interfaces
.implements Lorg/mortbay/jetty/nio/NIOConnector;


# instance fields
.field private _useDirectBuffers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/mortbay/jetty/AbstractConnector;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->_useDirectBuffers:Z

    return-void
.end method


# virtual methods
.method public getUseDirectBuffers()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->_useDirectBuffers:Z

    return v0
.end method

.method protected newBuffer(I)Lorg/mortbay/io/Buffer;
    .locals 1

    .prologue
    .line 67
    .line 68
    invoke-virtual {p0}, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->getHeaderBufferSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 69
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    .line 74
    :goto_0
    return-object v0

    .line 71
    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->_useDirectBuffers:Z

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    goto :goto_0
.end method

.method public setUseDirectBuffers(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lorg/mortbay/jetty/nio/AbstractNIOConnector;->_useDirectBuffers:Z

    .line 49
    return-void
.end method

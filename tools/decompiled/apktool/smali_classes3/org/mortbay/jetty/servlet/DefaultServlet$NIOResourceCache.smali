.class Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;
.super Lorg/mortbay/jetty/ResourceCache;
.source "DefaultServlet.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/jetty/MimeTypes;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;

    .line 1000
    invoke-direct {p0, p2}, Lorg/mortbay/jetty/ResourceCache;-><init>(Lorg/mortbay/jetty/MimeTypes;)V

    .line 1001
    return-void
.end method


# virtual methods
.method protected fill(Lorg/mortbay/jetty/ResourceCache$Content;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    .line 1007
    invoke-virtual {p1}, Lorg/mortbay/jetty/ResourceCache$Content;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 1008
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v2

    .line 1010
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->this$0:Lorg/mortbay/jetty/servlet/DefaultServlet;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->access$100(Lorg/mortbay/jetty/servlet/DefaultServlet;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1012
    new-instance v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(Ljava/io/File;)V

    .line 1034
    :goto_0
    invoke-virtual {p1, v0}, Lorg/mortbay/jetty/ResourceCache$Content;->setBuffer(Lorg/mortbay/io/Buffer;)V

    .line 1035
    return-void

    .line 1016
    :cond_0
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1019
    :try_start_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v0

    .line 1020
    check-cast v0, Lorg/mortbay/jetty/nio/NIOConnector;

    invoke-interface {v0}, Lorg/mortbay/jetty/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mortbay/io/nio/DirectNIOBuffer;

    long-to-int v4, v2

    invoke-direct {v0, v4}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :goto_1
    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lorg/mortbay/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    .line 1032
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 1020
    :cond_1
    :try_start_1
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    long-to-int v4, v2

    invoke-direct {v0, v4}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1025
    :catch_0
    move-exception v0

    .line 1027
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 1028
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 1029
    new-instance v0, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    long-to-int v4, v2

    invoke-direct {v0, v4}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(I)V

    goto :goto_1
.end method

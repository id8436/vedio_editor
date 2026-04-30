.class public Lorg/mortbay/jetty/handler/DefaultHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "DefaultHandler.java"


# static fields
.field static class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;


# instance fields
.field _favicon:[B

.field _faviconModified:J

.field _serveIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 57
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_faviconModified:J

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_serveIcon:Z

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "org/mortbay/jetty/favicon.ico"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/IO;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_favicon:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 123
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getServeIcon()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_serveIcon:Z

    return v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x194

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 76
    instance-of v0, p2, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    .line 78
    :goto_0
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    :cond_0
    :goto_1
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0, v7}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 82
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-boolean v1, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_serveIcon:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_favicon:[B

    if-eqz v1, :cond_4

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "/favicon.ico"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const-string/jumbo v0, "If-Modified-Since"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_faviconModified:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 88
    const/16 v0, 0x130

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_1

    .line 91
    :cond_3
    const/16 v0, 0xc8

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 92
    const-string/jumbo v0, "image/x-icon"

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_favicon:[B

    array-length v0, v0

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 94
    const-string/jumbo v0, "Last-Modified"

    iget-wide v2, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_faviconModified:J

    invoke-interface {p3, v0, v2, v3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 95
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_favicon:[B

    invoke-virtual {v0, v1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    goto :goto_1

    .line 101
    :cond_4
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 103
    :cond_5
    invoke-interface {p3, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_1

    .line 107
    :cond_6
    invoke-interface {p3, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 108
    const-string/jumbo v0, "text/html"

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 110
    new-instance v4, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v0, 0x5dc

    invoke-direct {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 112
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string/jumbo v1, "<"

    const-string/jumbo v3, "&lt;"

    invoke-static {v0, v1, v3}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string/jumbo v1, ">"

    const-string/jumbo v3, "&gt;"

    invoke-static {v0, v1, v3}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "<HTML>\n<HEAD>\n<TITLE>Error 404 - Not Found"

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "</TITLE>\n<BODY>\n<H2>Error 404 - Not Found.</H2>\n"

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v0, "No context on this server matched or handled this request.<BR>"

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v0, "Contexts known to this server are: <ul>"

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/DefaultHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    .line 123
    if-nez v1, :cond_a

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    move v3, v2

    .line 125
    :goto_3
    if-eqz v1, :cond_10

    array-length v0, v1

    if-ge v3, v0, :cond_10

    .line 127
    aget-object v0, v1, v3

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 128
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 130
    const-string/jumbo v5, "<li><a href=\""

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_7

    .line 132
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 133
    :cond_7
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_8

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 135
    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 136
    :cond_8
    const-string/jumbo v5, "\">"

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_9

    .line 139
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "&nbsp;@&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 140
    :cond_9
    const-string/jumbo v5, "&nbsp;--->&nbsp;"

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "</a></li>\n"

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 125
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    .line 123
    :cond_a
    sget-object v0, Lorg/mortbay/jetty/handler/DefaultHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v0, :cond_b

    const-string/jumbo v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/DefaultHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/DefaultHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_5
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/Server;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_b
    sget-object v0, Lorg/mortbay/jetty/handler/DefaultHandler;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_5

    .line 146
    :cond_c
    const-string/jumbo v5, "<li>"

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_d

    .line 149
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "&nbsp;@&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getLocalPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 150
    :cond_d
    const-string/jumbo v5, "&nbsp;--->&nbsp;"

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->isFailed()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 153
    const-string/jumbo v5, " [failed]"

    invoke-virtual {v4, v5}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 154
    :cond_e
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 155
    const-string/jumbo v0, " [stopped]"

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 156
    :cond_f
    const-string/jumbo v0, "</li>\n"

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    move v0, v2

    .line 160
    :goto_6
    const/16 v1, 0xa

    if-ge v0, v1, :cond_11

    .line 161
    const-string/jumbo v1, "\n<!-- Padding for IE                  -->"

    invoke-virtual {v4, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 163
    :cond_11
    const-string/jumbo v0, "\n</BODY>\n</HTML>\n"

    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    .line 165
    invoke-virtual {v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result v0

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 166
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    .line 167
    invoke-virtual {v4, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_1
.end method

.method public setServeIcon(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/DefaultHandler;->_serveIcon:Z

    .line 189
    return-void
.end method

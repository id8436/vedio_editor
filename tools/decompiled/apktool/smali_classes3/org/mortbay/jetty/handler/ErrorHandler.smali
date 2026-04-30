.class public Lorg/mortbay/jetty/handler/ErrorHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "ErrorHandler.java"


# instance fields
.field _cacheControl:Ljava/lang/String;

.field _showStacks:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_showStacks:Z

    .line 43
    const-string/jumbo v0, "must-revalidate,no-cache,no-store"

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 53
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string/jumbo v1, "text/html; charset=iso-8859-1"

    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 58
    const-string/jumbo v1, "Cache-Control"

    iget-object v2, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    invoke-interface {p3, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    new-instance v1, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 60
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v2

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Response;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v1, v2, v0}, Lorg/mortbay/jetty/handler/ErrorHandler;->handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    .line 62
    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result v0

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 63
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 64
    invoke-virtual {v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->destroy()V

    goto :goto_0
.end method

.method protected handleErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-boolean v5, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_showStacks:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public isShowStacks()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_showStacks:Z

    return v0
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_cacheControl:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setShowStacks(Z)V
    .locals 0

    .prologue
    .line 181
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ErrorHandler;->_showStacks:Z

    .line 182
    return-void
.end method

.method protected write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p2, :cond_1

    .line 214
    :cond_0
    return-void

    .line 191
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 195
    sparse-switch v1, :sswitch_data_0

    .line 208
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 191
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :sswitch_0
    const-string/jumbo v1, "&amp;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :sswitch_1
    const-string/jumbo v1, "&lt;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :sswitch_2
    const-string/jumbo v1, "&gt;"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method protected writeErrorPage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    if-nez p4, :cond_0

    .line 79
    invoke-static {p3}, Lorg/mortbay/jetty/HttpGenerator;->getReason(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    :goto_0
    const-string/jumbo v0, "<html>\n<head>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V

    .line 83
    const-string/jumbo v0, "</head>\n<body>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 84
    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V

    .line 85
    const-string/jumbo v0, "\n</body>\n</html>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    return-void

    :cond_0
    move-object v4, p4

    goto :goto_0
.end method

.method protected writeErrorPageBody(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 106
    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz p5, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/handler/ErrorHandler;->writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V

    .line 109
    :cond_0
    const-string/jumbo v0, "<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 111
    const-string/jumbo v1, "<br/>                                                \n"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method

.method protected writeErrorPageHead(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v0, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "<title>Error "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 94
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 95
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 96
    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "</title>\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method protected writeErrorPageMessage(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    const-string/jumbo v0, "<h2>HTTP ERROR "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "</h2>\n<p>Problem accessing "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p2, p5}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v0, ". Reason:\n<pre>    "

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p2, p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v0, "</pre></p>"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected writeErrorPageStacks(Ljavax/servlet/http/HttpServletRequest;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    const-string/jumbo v0, "javax.servlet.error.exception"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 132
    :goto_0
    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v1, "<h3>Caused by:</h3><pre>"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 136
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 138
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 139
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lorg/mortbay/jetty/handler/ErrorHandler;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v1, "</pre>\n"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

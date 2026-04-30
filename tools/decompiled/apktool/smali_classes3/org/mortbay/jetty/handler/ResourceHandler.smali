.class public Lorg/mortbay/jetty/handler/ResourceHandler;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "ResourceHandler.java"


# instance fields
.field _aliases:Z

.field _baseResource:Lorg/mortbay/resource/Resource;

.field _cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

.field _context:Lorg/mortbay/jetty/handler/ContextHandler;

.field _mimeTypes:Lorg/mortbay/jetty/MimeTypes;

.field _welcomeFiles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "index.html"

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 59
    new-instance v0, Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v0}, Lorg/mortbay/jetty/MimeTypes;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 66
    return-void
.end method


# virtual methods
.method protected doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 344
    if-eqz p3, :cond_0

    .line 345
    invoke-interface {p1, p3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 347
    :cond_0
    invoke-virtual {p2}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v0

    .line 349
    instance-of v2, p1, Lorg/mortbay/jetty/Response;

    if-eqz v2, :cond_3

    .line 351
    check-cast p1, Lorg/mortbay/jetty/Response;

    invoke-virtual {p1}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v2

    .line 353
    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 354
    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v2, v3, v0, v1}, Lorg/mortbay/jetty/HttpFields;->putLongField(Lorg/mortbay/io/Buffer;J)V

    .line 356
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz v0, :cond_2

    .line 357
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v2, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 368
    :cond_2
    :goto_0
    return-void

    .line 361
    :cond_3
    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    .line 362
    const-string/jumbo v2, "Content-Length"

    invoke-static {v0, v1}, Lorg/mortbay/util/TypeUtil;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz v0, :cond_2

    .line 365
    const-string/jumbo v0, "Cache-Control"

    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_context:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 107
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_aliases:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/mortbay/resource/FileResource;->getCheckAliases()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Alias checking disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;->doStart()V

    .line 111
    return-void
.end method

.method public getBaseResource()Lorg/mortbay/resource/Resource;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    goto :goto_0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypes()Lorg/mortbay/jetty/MimeTypes;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 186
    if-eqz p1, :cond_0

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    :cond_0
    new-instance v0, Ljava/net/MalformedURLException;

    invoke-direct {v0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    .line 190
    if-nez v1, :cond_4

    .line 192
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_context:Lorg/mortbay/jetty/handler/ContextHandler;

    if-nez v1, :cond_3

    .line 210
    :cond_2
    :goto_0
    return-object v0

    .line 194
    :cond_3
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_context:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getBaseResource()Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_2

    .line 201
    :cond_4
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v1, v2}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 207
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/resource/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ResourceHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getWelcome(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 241
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 245
    :goto_1
    return-object v0

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getWelcomeFiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 254
    instance-of v0, p2, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    .line 255
    :goto_0
    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 254
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_2
    const/4 v1, 0x0

    .line 259
    const-string/jumbo v2, "GET"

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    const-string/jumbo v1, "HEAD"

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x1

    .line 266
    :cond_3
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/handler/ResourceHandler;->getResource(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 268
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    iget-boolean v3, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_aliases:Z

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 272
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " aliased to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 279
    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 283
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-static {v0, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 286
    :cond_5
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/handler/ResourceHandler;->getWelcome(Lorg/mortbay/resource/Resource;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 290
    :cond_6
    const/16 v0, 0x193

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_1

    :cond_7
    move-object v0, v2

    .line 296
    :cond_8
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    .line 297
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_9

    .line 299
    const-string/jumbo v2, "If-Modified-Since"

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v2

    .line 300
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_9

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    cmp-long v2, v6, v2

    if-gtz v2, :cond_9

    .line 302
    const/16 v0, 0x130

    invoke-interface {p3, v0}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto/16 :goto_1

    .line 307
    :cond_9
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 308
    if-nez v2, :cond_a

    .line 309
    iget-object v2, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 312
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, p3, v0, v2}, Lorg/mortbay/jetty/handler/ResourceHandler;->doResponseHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Ljava/lang/String;)V

    .line 313
    const-string/jumbo v2, "Last-Modified"

    invoke-interface {p3, v2, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 314
    if-nez v1, :cond_0

    .line 318
    :try_start_0
    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 322
    :goto_3
    instance-of v2, v1, Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz v2, :cond_c

    .line 325
    check-cast v1, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 312
    :cond_b
    const/4 v2, 0x0

    goto :goto_2

    .line 319
    :catch_0
    move-exception v1

    new-instance v1, Lorg/mortbay/io/WriterOutputStream;

    invoke-interface {p3}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mortbay/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    goto :goto_3

    .line 330
    :cond_c
    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_1
.end method

.method public isAliases()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_aliases:Z

    return v0
.end method

.method public setAliases(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_aliases:Z

    .line 98
    return-void
.end method

.method public setBaseResource(Lorg/mortbay/resource/Resource;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_baseResource:Lorg/mortbay/resource/Resource;

    .line 143
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 178
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    .line 179
    return-void

    .line 178
    :cond_0
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMimeTypes(Lorg/mortbay/jetty/MimeTypes;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 78
    return-void
.end method

.method public setResourceBase(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 153
    :try_start_0
    invoke-static {p1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ResourceHandler;->setBaseResource(Lorg/mortbay/resource/Resource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWelcomeFiles([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ResourceHandler;->_welcomeFiles:[Ljava/lang/String;

    .line 233
    return-void
.end method

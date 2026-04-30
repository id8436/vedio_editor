.class public Lorg/mortbay/jetty/servlet/DefaultServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "DefaultServlet.java"

# interfaces
.implements Lorg/mortbay/resource/ResourceFactory;


# static fields
.field static class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;


# instance fields
.field private _acceptRanges:Z

.field private _aliases:Z

.field private _bioCache:Lorg/mortbay/jetty/ResourceCache;

.field _cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

.field private _context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field private _defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

.field private _dirAllowed:Z

.field private _gzip:Z

.field private _mimeTypes:Lorg/mortbay/jetty/MimeTypes;

.field private _nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

.field private _redirectWelcome:Z

.field private _resourceBase:Lorg/mortbay/resource/Resource;

.field private _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field private _useFileMappedBuffer:Z

.field private _welcomeServlets:Z

.field private _welcomes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 130
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 131
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 132
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 133
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 134
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 142
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    .line 143
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    .line 995
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/servlet/DefaultServlet;)Lorg/mortbay/jetty/MimeTypes;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    return-object v0
.end method

.method static access$100(Lorg/mortbay/jetty/servlet/DefaultServlet;)Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    return v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 258
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

.method private getInitBoolean(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v0, p2

    .line 282
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getInitInt(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 296
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 297
    :cond_1
    return p2
.end method

.method private getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-object v1

    .line 567
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 569
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v3

    .line 571
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v1, v0, v2

    goto :goto_0

    .line 574
    :cond_2
    iget-boolean v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 576
    iget-object v3, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v3

    .line 577
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    if-eq v3, v4, :cond_3

    .line 567
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 911
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 922
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0}, Lorg/mortbay/jetty/ResourceCache;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 931
    :cond_1
    :goto_0
    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    .line 934
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 916
    :try_start_2
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 922
    :try_start_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0}, Lorg/mortbay/jetty/ResourceCache;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 925
    :catch_1
    move-exception v0

    .line 927
    :try_start_4
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 931
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    throw v0

    .line 920
    :catchall_1
    move-exception v0

    .line 922
    :try_start_5
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    if-eqz v1, :cond_2

    .line 923
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v1}, Lorg/mortbay/jetty/ResourceCache;->stop()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 931
    :cond_2
    :goto_1
    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    .line 920
    throw v0

    .line 925
    :catch_2
    move-exception v1

    .line 927
    :try_start_6
    const-string/jumbo v2, "EXCEPTION "

    invoke-static {v2, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 931
    :catchall_2
    move-exception v0

    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    throw v0

    .line 925
    :catch_3
    move-exception v0

    .line 927
    :try_start_7
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    .line 931
    :catchall_3
    move-exception v0

    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    throw v0
.end method

.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 335
    .line 338
    const-string/jumbo v0, "org.mortbay.jetty.included"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 339
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 341
    const-string/jumbo v1, "javax.servlet.include.servlet_path"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    const-string/jumbo v2, "javax.servlet.include.path_info"

    invoke-interface {p1, v2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 343
    if-nez v1, :cond_2a

    .line 345
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    .line 361
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 362
    const-string/jumbo v1, "/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    .line 367
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_29

    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    if-eqz v1, :cond_29

    if-nez v6, :cond_29

    if-nez v10, :cond_29

    .line 369
    const-string/jumbo v1, "Accept-Encoding"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    if-eqz v1, :cond_29

    const-string/jumbo v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_29

    move v1, v5

    .line 378
    :goto_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v2

    .line 379
    instance-of v2, v2, Lorg/mortbay/jetty/nio/NIOConnector;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    .line 383
    :goto_2
    if-eqz v1, :cond_28

    .line 385
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v8, ".gz"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 386
    invoke-virtual {p0, v8}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 388
    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_1
    move v1, v7

    .line 400
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_27

    :cond_3
    move v8, v7

    .line 408
    :goto_4
    if-nez v8, :cond_4

    .line 410
    if-nez v2, :cond_d

    .line 411
    invoke-virtual {p0, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v4

    .line 423
    :cond_4
    :goto_5
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 424
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "resource="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    if-eqz v3, :cond_f

    const-string/jumbo v1, " content"

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 427
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 428
    :cond_6
    const/16 v0, 0x194

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    :cond_7
    :goto_7
    if-eqz v3, :cond_24

    .line 525
    :cond_8
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->release()V

    .line 530
    :cond_9
    :goto_8
    return-void

    .line 351
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 352
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    .line 356
    const-string/jumbo v4, "Range"

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v6

    .line 357
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v6, v3

    .line 358
    goto/16 :goto_0

    .line 379
    :cond_b
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    goto/16 :goto_2

    .line 393
    :cond_c
    if-eqz v2, :cond_2

    .line 395
    :try_start_2
    invoke-virtual {v2, v8, v4}, Lorg/mortbay/jetty/ResourceCache;->lookup(Ljava/lang/String;Lorg/mortbay/resource/Resource;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object v3

    .line 396
    if-eqz v3, :cond_2

    .line 397
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v4

    goto :goto_3

    .line 414
    :cond_d
    invoke-virtual {v2, v9, p0}, Lorg/mortbay/jetty/ResourceCache;->lookup(Ljava/lang/String;Lorg/mortbay/resource/ResourceFactory;)Lorg/mortbay/jetty/ResourceCache$Content;

    move-result-object v3

    .line 416
    if-eqz v3, :cond_e

    .line 417
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v4

    goto :goto_5

    .line 419
    :cond_e
    invoke-virtual {p0, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v4

    goto :goto_5

    .line 424
    :cond_f
    const-string/jumbo v1, ""

    goto :goto_6

    .line 429
    :cond_10
    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_16

    .line 431
    if-eqz v10, :cond_13

    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-eqz v1, :cond_13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_13

    .line 433
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 434
    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 435
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_11

    .line 436
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_11
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    .line 516
    :catch_0
    move-exception v0

    .line 518
    :goto_9
    :try_start_3
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_12

    .line 520
    const/16 v1, 0x1f4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    :cond_12
    if-nez v3, :cond_8

    .line 526
    if-eqz v4, :cond_9

    .line 527
    :goto_a
    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->release()V

    goto/16 :goto_8

    .line 442
    :cond_13
    if-nez v3, :cond_26

    .line 443
    :try_start_4
    new-instance v5, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;

    invoke-direct {v5, p0, v4}, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/resource/Resource;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 445
    :goto_b
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/mortbay/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 447
    :cond_14
    if-eqz v8, :cond_15

    .line 449
    const-string/jumbo v1, "Content-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v1, v9}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    if-eqz v1, :cond_15

    .line 452
    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 454
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/mortbay/jetty/servlet/DefaultServlet;->sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;Ljava/util/Enumeration;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v3, v5

    goto/16 :goto_7

    .line 462
    :cond_16
    if-eqz v10, :cond_17

    :try_start_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_1b

    const-string/jumbo v1, "org.mortbay.jetty.nullPathInfo"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 464
    :cond_17
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 465
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 466
    if-gez v1, :cond_1a

    .line 467
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 470
    :goto_c
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    .line 473
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    :cond_18
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_7

    .line 524
    :catchall_0
    move-exception v0

    :goto_d
    if-eqz v3, :cond_23

    .line 525
    invoke-interface {v3}, Lorg/mortbay/jetty/HttpContent;->release()V

    .line 524
    :cond_19
    :goto_e
    throw v0

    .line 469
    :cond_1a
    const/16 v2, 0x2f

    :try_start_7
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 480
    :cond_1b
    invoke-direct {p0, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 482
    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    if-eqz v2, :cond_1d

    .line 485
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 486
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1c

    .line 488
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v5}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 490
    :cond_1c
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 495
    :cond_1d
    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v2

    .line 496
    if-eqz v2, :cond_7

    .line 498
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 499
    invoke-interface {v2, p1, p2}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto/16 :goto_7

    .line 502
    :cond_1e
    const-string/jumbo v0, "org.mortbay.jetty.welcome"

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    invoke-interface {v2, p1, p2}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto/16 :goto_7

    .line 510
    :cond_1f
    new-instance v1, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;

    invoke-direct {v1, p0, v4}, Lorg/mortbay/jetty/servlet/DefaultServlet$UnCachedContent;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/resource/Resource;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 511
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0, p1, p2, v4, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 512
    :cond_20
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_22

    :goto_f
    invoke-virtual {p0, p1, p2, v4, v5}, Lorg/mortbay/jetty/servlet/DefaultServlet;->sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Z)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_21
    move-object v3, v1

    goto/16 :goto_7

    :cond_22
    move v5, v7

    goto :goto_f

    .line 526
    :cond_23
    if-eqz v4, :cond_19

    .line 527
    invoke-virtual {v4}, Lorg/mortbay/resource/Resource;->release()V

    goto/16 :goto_e

    .line 526
    :cond_24
    if-eqz v4, :cond_9

    goto/16 :goto_a

    .line 524
    :catchall_1
    move-exception v0

    move-object v4, v3

    goto/16 :goto_d

    :catchall_2
    move-exception v0

    move-object v3, v5

    goto/16 :goto_d

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto/16 :goto_d

    .line 516
    :catch_1
    move-exception v0

    move-object v4, v3

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v3, v5

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object v3, v1

    goto/16 :goto_9

    :cond_25
    move-object v3, v5

    goto/16 :goto_7

    :cond_26
    move-object v5, v3

    goto/16 :goto_b

    :cond_27
    move v8, v1

    goto/16 :goto_4

    :cond_28
    move-object v4, v3

    move v8, v1

    goto/16 :goto_4

    :cond_29
    move v1, v7

    goto/16 :goto_1

    :cond_2a
    move-object v6, v3

    goto/16 :goto_0
.end method

.method protected doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 537
    return-void
.end method

.method protected doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 546
    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "org.mortbay.jetty.servlet.Default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-nez v0, :cond_0

    .line 272
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 310
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 328
    :cond_0
    :goto_0
    return-object v0

    .line 315
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0, p1}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 316
    :try_start_1
    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 318
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 319
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Aliased resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getAlias()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 320
    goto :goto_0

    .line 322
    :cond_3
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "RESOURCE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 326
    :goto_1
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 324
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1
.end method

.method public init()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 153
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    move-object v0, v1

    .line 154
    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 155
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getMimeTypes()Lorg/mortbay/jetty/MimeTypes;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    .line 157
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "index.jsp"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "index.html"

    aput-object v3, v0, v2

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 161
    :cond_0
    const-string/jumbo v0, "acceptRanges"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    invoke-direct {p0, v0, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 162
    const-string/jumbo v0, "dirAllowed"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    invoke-direct {p0, v0, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 163
    const-string/jumbo v0, "welcomeServlets"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    invoke-direct {p0, v0, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 164
    const-string/jumbo v0, "redirectWelcome"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    invoke-direct {p0, v0, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 165
    const-string/jumbo v0, "gzip"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    invoke-direct {p0, v0, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 167
    const-string/jumbo v0, "aliases"

    iget-boolean v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    invoke-direct {p0, v0, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    .line 169
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-nez v0, :cond_1

    invoke-static {}, Lorg/mortbay/resource/FileResource;->getCheckAliases()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Alias checking disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_aliases:Z

    if-eqz v0, :cond_2

    .line 172
    const-string/jumbo v0, "Aliases are enabled"

    invoke-interface {v1, v0}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 174
    :cond_2
    const-string/jumbo v0, "useFileMappedBuffer"

    iget-boolean v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    invoke-direct {p0, v0, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    .line 176
    const-string/jumbo v0, "relativeResourceBase"

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_4

    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 182
    if-nez v1, :cond_3

    .line 183
    new-instance v0, Ljavax/servlet/UnavailableException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No base resourceBase for relativeResourceBase in"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_3
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :cond_4
    const-string/jumbo v1, "resourceBase"

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 195
    new-instance v0, Ljavax/servlet/UnavailableException;

    const-string/jumbo v1, "resourceBase & relativeResourceBase"

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_5
    if-eqz v1, :cond_6

    .line 199
    :try_start_2
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 207
    :cond_6
    const-string/jumbo v0, "cacheControl"

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_7

    .line 209
    new-instance v1, Lorg/mortbay/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    .line 213
    :cond_7
    :try_start_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    if-nez v0, :cond_8

    .line 214
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    .line 216
    :cond_8
    const-string/jumbo v0, "cacheType"

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string/jumbo v1, "maxCacheSize"

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v1

    .line 218
    const-string/jumbo v2, "maxCachedFileSize"

    const/4 v3, -0x2

    invoke-direct {p0, v2, v3}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v2

    .line 219
    const-string/jumbo v3, "maxCachedFiles"

    const/4 v4, -0x2

    invoke-direct {p0, v3, v4}, Lorg/mortbay/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v3

    .line 221
    if-eqz v0, :cond_9

    const-string/jumbo v4, "nio"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string/jumbo v4, "both"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 223
    :cond_9
    if-eq v1, v6, :cond_a

    if-lez v1, :cond_e

    .line 225
    :cond_a
    new-instance v4, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    iget-object v5, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v4, p0, v5}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;-><init>(Lorg/mortbay/jetty/servlet/DefaultServlet;Lorg/mortbay/jetty/MimeTypes;)V

    iput-object v4, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    .line 226
    if-lez v1, :cond_b

    .line 227
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v4, v1}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->setMaxCacheSize(I)V

    .line 228
    :cond_b
    if-lt v2, v7, :cond_c

    .line 229
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v4, v2}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->setMaxCachedFileSize(I)V

    .line 230
    :cond_c
    if-lt v3, v7, :cond_d

    .line 231
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v4, v3}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->setMaxCachedFiles(I)V

    .line 232
    :cond_d
    iget-object v4, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    invoke-virtual {v4}, Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;->start()V

    .line 235
    :cond_e
    const-string/jumbo v4, "bio"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "both"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 237
    :cond_f
    if-eq v1, v6, :cond_10

    if-lez v1, :cond_14

    .line 239
    :cond_10
    new-instance v0, Lorg/mortbay/jetty/ResourceCache;

    iget-object v4, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/mortbay/jetty/MimeTypes;

    invoke-direct {v0, v4}, Lorg/mortbay/jetty/ResourceCache;-><init>(Lorg/mortbay/jetty/MimeTypes;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    .line 240
    if-lez v1, :cond_11

    .line 241
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/ResourceCache;->setMaxCacheSize(I)V

    .line 242
    :cond_11
    if-lt v2, v7, :cond_12

    .line 243
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/ResourceCache;->setMaxCachedFileSize(I)V

    .line 244
    :cond_12
    if-lt v3, v7, :cond_13

    .line 245
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/ResourceCache;->setMaxCachedFiles(I)V

    .line 246
    :cond_13
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;

    invoke-virtual {v0}, Lorg/mortbay/jetty/ResourceCache;->start()V

    .line 249
    :cond_14
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_nioCache:Lorg/mortbay/jetty/servlet/DefaultServlet$NIOResourceCache;

    if-nez v0, :cond_15

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_bioCache:Lorg/mortbay/jetty/ResourceCache;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    :cond_15
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;

    if-nez v0, :cond_16

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHandler;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 259
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v2

    .line 260
    array-length v0, v2

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_17

    .line 261
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletInstance()Ljavax/servlet/Servlet;

    move-result-object v0

    if-ne v0, p0, :cond_19

    .line 262
    aget-object v0, v2, v1

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/mortbay/jetty/servlet/ServletHolder;

    move v0, v1

    goto :goto_1

    .line 200
    :catch_1
    move-exception v0

    .line 202
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :catch_2
    move-exception v0

    .line 254
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_16
    sget-object v0, Lorg/mortbay/jetty/servlet/DefaultServlet;->class$org$mortbay$jetty$servlet$ServletHandler:Ljava/lang/Class;

    goto :goto_0

    .line 264
    :cond_17
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "resource base = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/mortbay/resource/Resource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 265
    :cond_18
    return-void

    :cond_19
    move v0, v1

    goto :goto_1
.end method

.method protected passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v0, 0x0

    .line 593
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 595
    const-string/jumbo v1, "If-Modified-Since"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    if-eqz v1, :cond_2

    .line 598
    if-eqz p4, :cond_0

    .line 600
    invoke-interface {p4}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 601
    if-eqz v2, :cond_0

    .line 603
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 606
    const/16 v1, 0x130

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 607
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 646
    :goto_0
    return v0

    .line 613
    :cond_0
    const-string/jumbo v1, "If-Modified-Since"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v2

    .line 614
    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    .line 616
    invoke-virtual {p3}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-gtz v1, :cond_2

    .line 618
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 619
    const/16 v1, 0x130

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 620
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 642
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 643
    const/16 v1, 0x190

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 644
    :cond_1
    throw v0

    .line 627
    :cond_2
    :try_start_1
    const-string/jumbo v1, "If-Unmodified-Since"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v2

    .line 629
    cmp-long v1, v2, v8

    if-eqz v1, :cond_3

    .line 631
    invoke-virtual {p3}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    .line 633
    const/16 v1, 0x19c

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 646
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/mortbay/resource/Resource;Lorg/mortbay/jetty/HttpContent;Ljava/util/Enumeration;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    if-nez p5, :cond_1

    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->length()J

    move-result-wide v8

    .line 692
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 695
    :goto_1
    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-gez v4, :cond_6

    .line 698
    :cond_0
    if-eqz p3, :cond_2

    .line 700
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    .line 836
    :goto_2
    return-void

    .line 688
    :cond_1
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getContentLength()J

    move-result-wide v8

    goto :goto_0

    .line 693
    :catch_0
    move-exception v4

    new-instance v5, Lorg/mortbay/io/WriterOutputStream;

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/mortbay/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    goto :goto_1

    .line 705
    :cond_2
    instance-of v4, v5, Lorg/mortbay/jetty/HttpConnection$Output;

    if-eqz v4, :cond_5

    .line 707
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/mortbay/jetty/Response;

    if-eqz v4, :cond_3

    .line 709
    check-cast p2, Lorg/mortbay/jetty/Response;

    invoke-virtual/range {p2 .. p2}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V

    .line 710
    check-cast v5, Lorg/mortbay/jetty/HttpConnection$Output;

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 712
    :cond_3
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 715
    check-cast v5, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/mortbay/jetty/HttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 719
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 720
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_2

    .line 726
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 727
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_2

    .line 734
    :cond_6
    move-object/from16 v0, p6

    invoke-static {v0, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;

    move-result-object v17

    .line 737
    if-eqz v17, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_8

    .line 739
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 740
    const/16 v4, 0x1a0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 741
    const-string/jumbo v4, "Content-Range"

    invoke-static {v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->to416HeaderRangeString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 749
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 751
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/jetty/InclusiveByteRange;

    .line 753
    invoke-virtual {v4, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getSize(J)J

    move-result-wide v10

    .line 754
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v10, v11}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 755
    const/16 v6, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 756
    const-string/jumbo v6, "Content-Range"

    invoke-virtual {v4, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {v4, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v6

    move-object/from16 v4, p4

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 767
    :cond_9
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V

    .line 768
    invoke-interface/range {p5 .. p5}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 769
    new-instance v11, Lorg/mortbay/util/MultiPartOutputStream;

    invoke-direct {v11, v5}, Lorg/mortbay/util/MultiPartOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 770
    const/16 v4, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 776
    const-string/jumbo v4, "Request-Range"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 777
    const-string/jumbo v4, "multipart/x-byteranges; boundary="

    .line 780
    :goto_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v11}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 783
    const-wide/16 v12, 0x0

    .line 786
    const/4 v5, 0x0

    .line 787
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 788
    const/4 v4, 0x0

    move v6, v5

    move v5, v4

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_c

    .line 790
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/jetty/InclusiveByteRange;

    .line 791
    invoke-virtual {v4, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v19, v5

    .line 792
    int-to-long v14, v6

    if-lez v5, :cond_b

    const/4 v6, 0x2

    :goto_5
    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v11}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x2

    const-string/jumbo v10, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x2

    const-string/jumbo v10, "Content-Range"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x2

    aget-object v10, v19, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x2

    int-to-long v0, v6

    move-wide/from16 v20, v0

    invoke-virtual {v4, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getLast(J)J

    move-result-wide v22

    invoke-virtual {v4, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v24

    sub-long v22, v22, v24

    add-long v20, v20, v22

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    add-long v14, v14, v20

    long-to-int v6, v14

    .line 788
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 779
    :cond_a
    const-string/jumbo v4, "multipart/byteranges; boundary="

    goto/16 :goto_3

    .line 792
    :cond_b
    const/4 v6, 0x0

    goto :goto_5

    .line 800
    :cond_c
    invoke-virtual {v11}, Lorg/mortbay/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v6

    .line 801
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 803
    const/4 v4, 0x0

    move v5, v4

    move-object/from16 v16, v7

    move-wide v6, v12

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_e

    .line 805
    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/jetty/InclusiveByteRange;

    .line 806
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "Content-Range: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    aget-object v14, v19, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v10}, Lorg/mortbay/util/MultiPartOutputStream;->startPart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 808
    invoke-virtual {v4, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getFirst(J)J

    move-result-wide v12

    .line 809
    invoke-virtual {v4, v8, v9}, Lorg/mortbay/jetty/InclusiveByteRange;->getSize(J)J

    move-result-wide v14

    .line 810
    if-eqz v16, :cond_d

    .line 813
    cmp-long v4, v12, v6

    if-gez v4, :cond_11

    .line 815
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 816
    invoke-virtual/range {p4 .. p4}, Lorg/mortbay/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 817
    const-wide/16 v6, 0x0

    .line 819
    :goto_7
    cmp-long v4, v6, v12

    if-gez v4, :cond_10

    .line 821
    sub-long v6, v12, v6

    invoke-virtual {v10, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 824
    :goto_8
    invoke-static {v10, v11, v14, v15}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 825
    add-long v6, v12, v14

    .line 803
    :goto_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object/from16 v16, v10

    goto :goto_6

    :cond_d
    move-object/from16 v10, p4

    .line 829
    invoke-virtual/range {v10 .. v15}, Lorg/mortbay/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    move-object/from16 v10, v16

    goto :goto_9

    .line 832
    :cond_e
    if-eqz v16, :cond_f

    .line 833
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 834
    :cond_f
    invoke-virtual {v11}, Lorg/mortbay/util/MultiPartOutputStream;->close()V

    goto/16 :goto_2

    :cond_10
    move-wide v12, v6

    goto :goto_8

    :cond_11
    move-object/from16 v10, v16

    goto :goto_7
.end method

.method protected sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/resource/Resource;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x193

    .line 657
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    if-nez v0, :cond_0

    .line 659
    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 677
    :goto_0
    return-void

    .line 664
    :cond_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-static {v0, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p3, v0, p4}, Lorg/mortbay/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 666
    if-nez v0, :cond_1

    .line 668
    const-string/jumbo v0, "No directory"

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 673
    :cond_1
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 674
    const-string/jumbo v1, "text/html; charset=UTF-8"

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 675
    array-length v1, v0

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 676
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/servlet/ServletOutputStream;->write([B)V

    goto :goto_0
.end method

.method protected writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/mortbay/jetty/HttpContent;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 843
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 844
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getContentType()Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 846
    :cond_0
    instance-of v0, p1, Lorg/mortbay/jetty/Response;

    if-eqz v0, :cond_4

    .line 848
    check-cast p1, Lorg/mortbay/jetty/Response;

    .line 849
    invoke-virtual {p1}, Lorg/mortbay/jetty/Response;->getHttpFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    .line 851
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 852
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getLastModified()Lorg/mortbay/io/Buffer;

    move-result-object v2

    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 860
    :cond_1
    :goto_0
    cmp-long v1, p3, v6

    if-eqz v1, :cond_2

    .line 861
    invoke-virtual {p1, p3, p4}, Lorg/mortbay/jetty/Response;->setLongContentLength(J)V

    .line 863
    :cond_2
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V

    .line 881
    :goto_1
    return-void

    .line 853
    :cond_3
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 855
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v2

    .line 856
    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 857
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Lorg/mortbay/io/Buffer;J)V

    goto :goto_0

    .line 867
    :cond_4
    invoke-interface {p2}, Lorg/mortbay/jetty/HttpContent;->getResource()Lorg/mortbay/resource/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->lastModified()J

    move-result-wide v0

    .line 868
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 869
    const-string/jumbo v2, "Last-Modified"

    invoke-interface {p1, v2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 871
    :cond_5
    cmp-long v0, p3, v6

    if-eqz v0, :cond_6

    .line 873
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gez v0, :cond_7

    .line 874
    long-to-int v0, p3

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 879
    :cond_6
    :goto_2
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/DefaultServlet;->writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_1

    .line 876
    :cond_7
    const-string/jumbo v0, "Content-Length"

    invoke-static {p3, p4}, Lorg/mortbay/util/TypeUtil;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 897
    const-string/jumbo v0, "Accept-Ranges"

    const-string/jumbo v1, "bytes"

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 900
    const-string/jumbo v0, "Cache-Control"

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/mortbay/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    :cond_1
    return-void
.end method

.method protected writeOptionHeaders(Lorg/mortbay/jetty/HttpFields;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 887
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->ACCEPT_RANGES_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->BYTES_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 890
    sget-object v0, Lorg/mortbay/jetty/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/mortbay/io/ByteArrayBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 891
    :cond_1
    return-void
.end method

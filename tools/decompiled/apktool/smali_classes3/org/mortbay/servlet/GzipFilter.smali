.class public Lorg/mortbay/servlet/GzipFilter;
.super Lorg/mortbay/servlet/UserAgentFilter;
.source "GzipFilter.java"


# instance fields
.field protected _bufferSize:I

.field protected _excluded:Ljava/util/Set;

.field protected _mimeTypes:Ljava/util/Set;

.field protected _minGzipSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/mortbay/servlet/UserAgentFilter;-><init>()V

    .line 66
    const/16 v0, 0x2000

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    .line 396
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 108
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .line 109
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .line 111
    const-string/jumbo v0, "accept-encoding"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string/jumbo v0, "GzipFilter"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 113
    if-eqz v1, :cond_3

    const-string/jumbo v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string/jumbo v1, "Content-Encoding"

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string/jumbo v0, "HEAD"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0, p1}, Lorg/mortbay/servlet/GzipFilter;->getUserAgent(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-super {p0, p1, p2, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    .line 156
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter;->newGZIPResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;

    move-result-object v1

    .line 131
    :try_start_0
    invoke-super {p0, p1, v1, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v1}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->finish()V

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    :try_start_1
    const-string/jumbo v2, "GzipFilter"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v2, v3}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->reset()V

    .line 139
    :cond_2
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 145
    invoke-virtual {v1}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->resetBuffer()V

    .line 146
    invoke-virtual {v1}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->noGzip()V

    .line 143
    :goto_1
    throw v0

    .line 154
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/mortbay/servlet/UserAgentFilter;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {v1}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;->finish()V

    goto :goto_1
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1}, Lorg/mortbay/servlet/UserAgentFilter;->init(Ljavax/servlet/FilterConfig;)V

    .line 74
    const-string/jumbo v0, "bufferSize"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_bufferSize:I

    .line 78
    :cond_0
    const-string/jumbo v0, "minGzipSize"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/servlet/GzipFilter;->_minGzipSize:I

    .line 82
    :cond_1
    const-string/jumbo v0, "mimeTypes"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    .line 86
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ","

    invoke-direct {v1, v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter;->_mimeTypes:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_2
    const-string/jumbo v0, "excludedAgents"

    invoke-interface {p1, v0}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    .line 95
    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ","

    invoke-direct {v1, v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lorg/mortbay/servlet/GzipFilter;->_excluded:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_3
    return-void
.end method

.method protected newGZIPResponseWrapper(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/mortbay/servlet/GzipFilter$GZIPResponseWrapper;-><init>(Lorg/mortbay/servlet/GzipFilter;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    return-object v0
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 168
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

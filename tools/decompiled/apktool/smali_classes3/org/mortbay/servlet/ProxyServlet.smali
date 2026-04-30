.class public Lorg/mortbay/servlet/ProxyServlet;
.super Ljava/lang/Object;
.source "ProxyServlet.java"

# interfaces
.implements Ljavax/servlet/Servlet;


# instance fields
.field protected _DontProxyHeaders:Ljava/util/HashSet;

.field protected _config:Ljavax/servlet/ServletConfig;

.field protected _context:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    .line 56
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "proxy-connection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "connection"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "keep-alive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "transfer-encoding"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "te"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "trailer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "proxy-authorization"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "proxy-authenticate"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    const-string/jumbo v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 333
    return-void
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_config:Ljavax/servlet/ServletConfig;

    return-object v0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    const-string/jumbo v0, "Proxy Servlet"

    return-object v0
.end method

.method public handleConnect(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    .line 277
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    .line 279
    const-string/jumbo v1, ""

    .line 280
    const-string/jumbo v0, ""

    .line 282
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 283
    if-ltz v3, :cond_0

    .line 285
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 288
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 302
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    .line 303
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    .line 305
    new-instance v3, Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-direct {v3, v4, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 307
    const/16 v2, 0xc8

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 308
    const-string/jumbo v2, "Connection"

    const-string/jumbo v4, "close"

    invoke-interface {p2, v2, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 311
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/mortbay/util/IO;->copyThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 312
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 314
    return-void
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lorg/mortbay/servlet/ProxyServlet;->_config:Ljavax/servlet/ServletConfig;

    .line 76
    invoke-interface {p1}, Ljavax/servlet/ServletConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    .line 77
    return-void
.end method

.method protected proxyHttpURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 93
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .line 94
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .line 95
    const-string/jumbo v0, "CONNECT"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/servlet/ProxyServlet;->handleConnect(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 103
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServerPort()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/mortbay/servlet/ProxyServlet;->proxyHttpURL(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 116
    instance-of v0, v1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_15

    move-object v0, v1

    .line 118
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 119
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move-object v3, v0

    .line 124
    :goto_1
    const-string/jumbo v0, "Connection"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_14

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string/jumbo v2, "keep-alive"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_3
    move-object v5, v4

    .line 136
    :goto_2
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v10

    move v2, v6

    move v8, v6

    .line 137
    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 140
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 143
    iget-object v11, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 145
    if-eqz v5, :cond_5

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_4

    .line 148
    :cond_5
    const-string/jumbo v11, "content-type"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    move v7, v9

    .line 151
    :goto_4
    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v11

    .line 152
    :cond_6
    :goto_5
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 154
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    if-eqz v2, :cond_6

    .line 157
    invoke-virtual {v1, v0, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v2, "X-Forwarded-For"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v8, v2

    goto :goto_5

    :cond_7
    move v2, v7

    .line 161
    goto :goto_3

    .line 164
    :cond_8
    const-string/jumbo v0, "Via"

    const-string/jumbo v5, "1.1 (jetty)"

    invoke-virtual {v1, v0, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-nez v8, :cond_9

    .line 167
    const-string/jumbo v0, "X-Forwarded-For"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "X-Forwarded-Proto"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v0, "X-Forwarded-Host"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "X-Forwarded-Server"

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_9
    const-string/jumbo v0, "Cache-Control"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_b

    const-string/jumbo v5, "no-cache"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_a

    const-string/jumbo v5, "no-store"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    .line 182
    :cond_a
    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 188
    :cond_b
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 191
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    .line 192
    if-eqz v2, :cond_c

    .line 194
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 195
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 199
    :cond_c
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_6
    if-eqz v3, :cond_12

    .line 212
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 214
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 215
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljavax/servlet/http/HttpServletResponse;->setStatus(ILjava/lang/String;)V

    .line 218
    :goto_7
    if-nez v0, :cond_d

    .line 220
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 229
    :cond_d
    :goto_8
    const-string/jumbo v2, "Date"

    invoke-interface {p2, v2, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v2, "Server"

    invoke-interface {p2, v2, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 235
    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v3, v2

    .line 236
    :goto_9
    if-nez v5, :cond_e

    if-eqz v3, :cond_11

    .line 238
    :cond_e
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 239
    :goto_a
    if-eqz v5, :cond_f

    if-eqz v3, :cond_f

    iget-object v7, p0, Lorg/mortbay/servlet/ProxyServlet;->_DontProxyHeaders:Ljava/util/HashSet;

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 240
    invoke-interface {p2, v5, v3}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 243
    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v1, v6}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v3, v2

    .line 245
    goto :goto_9

    .line 201
    :catch_0
    move-exception v0

    .line 203
    iget-object v2, p0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    const-string/jumbo v5, "proxy"

    invoke-interface {v2, v5, v0}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 221
    :catch_1
    move-exception v0

    .line 223
    iget-object v2, p0, Lorg/mortbay/servlet/ProxyServlet;->_context:Ljavax/servlet/ServletContext;

    const-string/jumbo v5, "stream"

    invoke-interface {v2, v5, v0}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_8

    :cond_10
    move-object v2, v4

    .line 238
    goto :goto_a

    .line 246
    :cond_11
    const-string/jumbo v1, "Via"

    const-string/jumbo v2, "1.1 (jetty)"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mortbay/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :cond_12
    move-object v0, v4

    goto :goto_7

    :cond_13
    move v7, v2

    goto/16 :goto_4

    :cond_14
    move-object v5, v0

    goto/16 :goto_2

    :cond_15
    move-object v3, v4

    goto/16 :goto_1
.end method

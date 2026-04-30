.class public Lorg/mortbay/jetty/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletRequest;


# static fields
.field private static final _STREAM:I = 0x1

.field private static final __NONE:I = 0x0

.field private static final __READER:I = 0x2

.field private static final __defaultLocale:Ljava/util/Collection;


# instance fields
.field private _attributes:Lorg/mortbay/util/Attributes;

.field private _authType:Ljava/lang/String;

.field private _baseParameters:Lorg/mortbay/util/MultiMap;

.field private _characterEncoding:Ljava/lang/String;

.field private _connection:Lorg/mortbay/jetty/HttpConnection;

.field private _context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

.field private _contextPath:Ljava/lang/String;

.field private _continuation:Lorg/mortbay/util/ajax/Continuation;

.field private _cookies:[Ljavax/servlet/http/Cookie;

.field private _cookiesExtracted:Z

.field private _dns:Z

.field private _endp:Lorg/mortbay/io/EndPoint;

.field private _handled:Z

.field private _inputState:I

.field private _method:Ljava/lang/String;

.field private _parameters:Lorg/mortbay/util/MultiMap;

.field private _paramsExtracted:Z

.field private _pathInfo:Ljava/lang/String;

.field private _port:I

.field private _protocol:Ljava/lang/String;

.field private _queryEncoding:Ljava/lang/String;

.field private _queryString:Ljava/lang/String;

.field private _reader:Ljava/io/BufferedReader;

.field private _readerEncoding:Ljava/lang/String;

.field private _remoteAddr:Ljava/lang/String;

.field private _remoteHost:Ljava/lang/String;

.field private _requestAttributeListeners:Ljava/lang/Object;

.field private _requestListeners:Ljava/lang/Object;

.field private _requestURI:Ljava/lang/String;

.field private _requestedSessionId:Ljava/lang/String;

.field private _requestedSessionIdFromCookie:Z

.field private _roleMap:Ljava/util/Map;

.field private _savedNewSessions:Ljava/util/Map;

.field private _scheme:Ljava/lang/String;

.field private _serverName:Ljava/lang/String;

.field private _servletName:Ljava/lang/String;

.field private _servletPath:Ljava/lang/String;

.field private _session:Ljavax/servlet/http/HttpSession;

.field private _sessionManager:Lorg/mortbay/jetty/SessionManager;

.field private _timeStamp:J

.field private _timeStampBuffer:Lorg/mortbay/io/Buffer;

.field private _unparsedCookies:[Ljava/lang/String;

.field private _uri:Lorg/mortbay/jetty/HttpURI;

.field private _userPrincipal:Ljava/security/Principal;

.field private _userRealm:Lorg/mortbay/jetty/security/UserRealm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/Request;->__defaultLocale:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    .line 124
    const-string/jumbo v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    .line 129
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    .line 138
    iput v1, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 141
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    .line 145
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    .line 124
    const-string/jumbo v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    .line 129
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    .line 138
    iput v1, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 141
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    .line 145
    iput-boolean v1, p0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 170
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 171
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getEndPoint()Lorg/mortbay/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    .line 172
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResolveNames()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    .line 173
    return-void
.end method

.method private extractParameters()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1498
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    if-nez v0, :cond_0

    .line 1499
    new-instance v0, Lorg/mortbay/util/MultiMap;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Lorg/mortbay/util/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    .line 1501
    :cond_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-eqz v0, :cond_2

    .line 1503
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    if-nez v0, :cond_1

    .line 1504
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    .line 1594
    :cond_1
    :goto_0
    return-void

    .line 1508
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    .line 1511
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1513
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 1514
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/HttpURI;->decodeQueryTo(Lorg/mortbay/util/MultiMap;)V

    .line 1534
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    .line 1535
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 1536
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 1538
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 1540
    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-nez v0, :cond_5

    const-string/jumbo v0, "POST"

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "PUT"

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1543
    :cond_4
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContentLength()I

    move-result v3

    .line 1544
    if-eqz v3, :cond_5

    .line 1550
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-eqz v0, :cond_8

    .line 1551
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getMaxFormContentSize()I

    move-result v0

    .line 1559
    :goto_2
    if-le v3, v0, :cond_9

    if-lez v0, :cond_9

    .line 1561
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Form too large"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    :catch_0
    move-exception v0

    .line 1570
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1571
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 1579
    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    if-nez v0, :cond_c

    .line 1580
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    goto/16 :goto_0

    .line 1519
    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    iget-object v3, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/jetty/HttpURI;->decodeQueryTo(Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1522
    :catch_1
    move-exception v0

    .line 1524
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1525
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1527
    :cond_7
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1554
    :cond_8
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v0

    const-string/jumbo v4, "org.mortbay.jetty.Request.maxFormContentSize"

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Server;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1555
    if-eqz v0, :cond_e

    .line 1556
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 1563
    :cond_9
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v4

    .line 1566
    iget-object v5, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    if-gez v3, :cond_a

    :goto_4
    invoke-static {v4, v5, v2, v0}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/io/InputStream;Lorg/mortbay/util/MultiMap;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_a
    move v0, v1

    goto :goto_4

    .line 1573
    :cond_b
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto :goto_3

    .line 1581
    :cond_c
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    if-eq v0, v1, :cond_1

    .line 1584
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1585
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 1590
    const/4 v0, 0x0

    :goto_5
    invoke-static {v3}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    if-ge v0, v4, :cond_d

    .line 1591
    iget-object v4, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    invoke-static {v3, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1590
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    move v0, v1

    goto/16 :goto_2
.end method

.method public static getRequest(Ljavax/servlet/http/HttpServletRequest;)Lorg/mortbay/jetty/Request;
    .locals 2

    .prologue
    .line 1940
    instance-of v0, p0, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_2

    .line 1941
    check-cast p0, Lorg/mortbay/jetty/Request;

    .line 1949
    :goto_0
    return-object p0

    .line 1943
    :goto_1
    instance-of v1, v0, Ljavax/servlet/ServletRequestWrapper;

    if-eqz v1, :cond_0

    .line 1944
    check-cast v0, Ljavax/servlet/ServletRequestWrapper;

    invoke-virtual {v0}, Ljavax/servlet/ServletRequestWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    goto :goto_1

    .line 1946
    :cond_0
    instance-of v1, v0, Lorg/mortbay/jetty/Request;

    if-eqz v1, :cond_1

    .line 1947
    check-cast v0, Lorg/mortbay/jetty/Request;

    move-object p0, v0

    goto :goto_0

    .line 1949
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object v0, p0

    goto :goto_1
.end method


# virtual methods
.method public addEventListener(Ljava/util/EventListener;)V
    .locals 1

    .prologue
    .line 1955
    instance-of v0, p1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 1957
    :cond_0
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    const-string/jumbo v0, "org.mortbay.jetty.ajax.Continuation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Request;->getContinuation(Z)Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_1

    .line 294
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-static {v0}, Lorg/mortbay/util/AttributesMap;->getAttributeNamesCopy(Lorg/mortbay/util/Attributes;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributes()Lorg/mortbay/util/Attributes;
    .locals 1

    .prologue
    .line 1877
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_0

    .line 1878
    new-instance v0, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v0}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    .line 1879
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_authType:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Lorg/mortbay/jetty/HttpConnection;
    .locals 1

    .prologue
    .line 1656
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    return-object v0
.end method

.method public getContentLength()I
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->getLongField(Lorg/mortbay/io/Buffer;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getParser()Lorg/mortbay/jetty/Parser;

    move-result-object v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    const-wide/16 v0, -0x1

    .line 332
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getParser()Lorg/mortbay/jetty/Parser;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/HttpParser;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpParser;->getContentRead()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_contextPath:Ljava/lang/String;

    return-object v0
.end method

.method public getContinuation()Lorg/mortbay/util/ajax/Continuation;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    return-object v0
.end method

.method public getContinuation(Z)Lorg/mortbay/util/ajax/Continuation;
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1900
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Connector;->newContinuation()Lorg/mortbay/util/ajax/Continuation;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    .line 1901
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    return-object v0
.end method

.method public getCookies()[Ljavax/servlet/http/Cookie;
    .locals 20

    .prologue
    .line 378
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    if-eqz v1, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 669
    :goto_0
    return-object v1

    .line 382
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/HttpFields;->containsKey(Lorg/mortbay/io/Buffer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 385
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 386
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    .line 387
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    goto :goto_0

    .line 391
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 393
    const/4 v1, 0x0

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v2

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/HttpFields;->getValues(Lorg/mortbay/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v3

    move v2, v1

    .line 395
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 400
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    .line 405
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v2, :cond_5

    .line 407
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 408
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    goto :goto_0

    .line 403
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 404
    goto :goto_1

    .line 413
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 414
    const/4 v5, 0x0

    .line 415
    const/4 v1, 0x0

    .line 417
    const/4 v4, 0x0

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v2}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v2

    sget-object v3, Lorg/mortbay/jetty/HttpHeaders;->COOKIE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/HttpFields;->getValues(Lorg/mortbay/io/Buffer;)Ljava/util/Enumeration;

    move-result-object v15

    move-object v2, v1

    .line 421
    :goto_2
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 426
    :try_start_0
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 427
    invoke-static {v2, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v14

    .line 430
    const/4 v13, 0x0

    .line 431
    const/4 v12, 0x0

    .line 433
    const/4 v2, 0x0

    .line 435
    const/4 v11, 0x0

    .line 436
    const/4 v10, 0x0

    .line 437
    const/4 v9, 0x0

    .line 438
    const/4 v7, -0x1

    .line 439
    const/4 v3, -0x1

    .line 440
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v17, v16, -0x1

    :goto_3
    move/from16 v0, v16

    if-ge v6, v0, :cond_11

    .line 442
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 445
    if-eqz v10, :cond_8

    .line 447
    if-eqz v9, :cond_6

    .line 449
    const/4 v8, 0x0

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    move/from16 v18, v11

    move v11, v4

    move v4, v8

    move-object v8, v2

    move v2, v3

    move v3, v7

    move/from16 v7, v18

    .line 440
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object v13, v10

    move v10, v5

    move-object v5, v12

    move-object v12, v9

    move v9, v4

    move v4, v11

    move v11, v7

    move v7, v3

    move v3, v2

    move-object v2, v8

    goto :goto_3

    .line 453
    :cond_6
    sparse-switch v8, :sswitch_data_0

    move-object v8, v2

    move v2, v3

    move v3, v7

    move v7, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    .line 476
    goto :goto_4

    .line 457
    :sswitch_0
    const/4 v10, 0x0

    .line 460
    move/from16 v0, v17

    if-ne v6, v0, :cond_23

    .line 462
    if-eqz v11, :cond_7

    .line 463
    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move v8, v7

    move-object v3, v12

    move v7, v6

    move-object v12, v13

    .line 584
    :goto_5
    if-eqz v3, :cond_1b

    if-eqz v12, :cond_1b

    .line 587
    invoke-static {v12}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 588
    invoke-static {v3}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 592
    :try_start_2
    const-string/jumbo v3, "$"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 594
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 595
    const-string/jumbo v12, "$path"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 597
    if-eqz v2, :cond_1a

    .line 598
    invoke-virtual {v2, v13}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v4

    :goto_6
    move-object v4, v5

    .line 629
    :goto_7
    const/4 v12, 0x0

    .line 630
    const/4 v5, 0x0

    move/from16 v18, v7

    move v7, v11

    move v11, v3

    move v3, v8

    move-object v8, v2

    move/from16 v2, v18

    move/from16 v19, v10

    move-object v10, v12

    move-object v12, v4

    move v4, v9

    move-object v9, v5

    move/from16 v5, v19

    goto :goto_4

    .line 466
    :cond_7
    add-int/lit8 v3, v6, 0x1

    :try_start_3
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 467
    const-string/jumbo v12, ""

    move v8, v7

    move-object v3, v12

    move v7, v6

    move-object v12, v13

    goto :goto_5

    .line 473
    :sswitch_1
    const/4 v8, 0x1

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    move/from16 v18, v11

    move v11, v4

    move v4, v8

    move-object v8, v2

    move v2, v3

    move v3, v7

    move/from16 v7, v18

    .line 474
    goto/16 :goto_4

    .line 482
    :cond_8
    if-eqz v11, :cond_a

    .line 485
    sparse-switch v8, :sswitch_data_1

    .line 516
    if-gez v7, :cond_21

    move v3, v6

    .line 519
    :goto_8
    move/from16 v0, v17

    if-ne v6, v0, :cond_1c

    .line 521
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move v7, v6

    move v8, v3

    move-object v3, v12

    move-object v12, v13

    .line 522
    goto :goto_5

    :sswitch_2
    move-object v8, v2

    move v2, v3

    move v3, v7

    move v7, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    .line 489
    goto/16 :goto_4

    .line 492
    :sswitch_3
    if-gez v7, :cond_22

    .line 494
    const/4 v7, 0x1

    move v3, v6

    .line 498
    :goto_9
    move/from16 v0, v17

    if-ne v6, v0, :cond_1f

    .line 500
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    move v8, v3

    move v10, v7

    move v7, v6

    move-object v3, v12

    move-object v12, v13

    .line 501
    goto/16 :goto_5

    .line 507
    :sswitch_4
    if-ltz v7, :cond_9

    .line 508
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 511
    :goto_a
    const/4 v8, -0x1

    .line 512
    const/4 v11, 0x0

    move-object v12, v13

    move-object/from16 v18, v7

    move v7, v3

    move-object/from16 v3, v18

    .line 513
    goto/16 :goto_5

    .line 510
    :cond_9
    const-string/jumbo v7, ""

    goto :goto_a

    .line 530
    :cond_a
    sparse-switch v8, :sswitch_data_2

    .line 569
    if-gez v7, :cond_1d

    move v3, v6

    .line 572
    :goto_b
    move/from16 v0, v17

    if-ne v6, v0, :cond_1c

    .line 574
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 575
    const-string/jumbo v12, ""

    move v7, v6

    move v8, v3

    move-object v3, v12

    move-object v12, v13

    goto/16 :goto_5

    :sswitch_5
    move-object v8, v2

    move v2, v3

    move v3, v7

    move v7, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    .line 534
    goto/16 :goto_4

    .line 537
    :sswitch_6
    if-gez v7, :cond_20

    .line 539
    const/4 v7, 0x1

    move v3, v6

    .line 543
    :goto_c
    move/from16 v0, v17

    if-ne v6, v0, :cond_1f

    .line 545
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 546
    const-string/jumbo v12, ""

    move v8, v3

    move v10, v7

    move v7, v6

    move-object v3, v12

    move-object v12, v13

    .line 547
    goto/16 :goto_5

    .line 553
    :sswitch_7
    if-ltz v7, :cond_b

    .line 555
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 556
    const-string/jumbo v12, ""

    .line 558
    :cond_b
    const/4 v7, -0x1

    move v8, v7

    move v7, v3

    move-object v3, v12

    move-object v12, v13

    .line 559
    goto/16 :goto_5

    .line 562
    :sswitch_8
    if-ltz v7, :cond_1e

    .line 563
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v11

    .line 564
    :goto_d
    const/4 v7, -0x1

    .line 565
    const/4 v8, 0x1

    move/from16 v18, v3

    move v3, v7

    move v7, v8

    move-object v8, v2

    move/from16 v2, v18

    move/from16 v19, v10

    move-object v10, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move/from16 v5, v19

    .line 566
    goto/16 :goto_4

    .line 600
    :cond_c
    :try_start_4
    const-string/jumbo v12, "$domain"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 602
    if-eqz v2, :cond_1a

    .line 603
    invoke-virtual {v2, v13}, Ljavax/servlet/http/Cookie;->setDomain(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_6

    .line 605
    :cond_d
    const-string/jumbo v12, "$port"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 607
    if-eqz v2, :cond_1a

    .line 608
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v12, "port="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/servlet/http/Cookie;->setComment(Ljava/lang/String;)V

    move v3, v4

    goto/16 :goto_6

    .line 610
    :cond_e
    const-string/jumbo v12, "$version"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 612
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto/16 :goto_6

    .line 617
    :cond_f
    new-instance v3, Ljavax/servlet/http/Cookie;

    invoke-direct {v3, v12, v13}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 618
    if-lez v4, :cond_10

    .line 619
    :try_start_5
    invoke-virtual {v3, v4}, Ljavax/servlet/http/Cookie;->setVersion(I)V

    .line 620
    :cond_10
    invoke-static {v5, v3}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    move-object/from16 v18, v3

    move v3, v4

    move-object v4, v2

    move-object/from16 v2, v18

    goto/16 :goto_7

    .line 623
    :catch_0
    move-exception v3

    .line 625
    :goto_e
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 626
    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v3, v4

    move-object v4, v5

    goto/16 :goto_7

    :cond_11
    move-object v2, v14

    .line 638
    goto/16 :goto_2

    .line 635
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v14

    .line 637
    :goto_f
    invoke-static {v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 638
    goto/16 :goto_2

    .line 642
    :cond_12
    invoke-static {v5}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    .line 643
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 644
    if-lez v4, :cond_16

    .line 647
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    array-length v1, v1

    if-eq v1, v4, :cond_14

    .line 648
    :cond_13
    new-array v1, v4, [Ljavax/servlet/http/Cookie;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 651
    :cond_14
    const/4 v1, 0x0

    move v3, v1

    :goto_10
    if-ge v3, v4, :cond_15

    .line 652
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    invoke-static {v5, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/http/Cookie;

    aput-object v1, v6, v3

    .line 651
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_10

    .line 655
    :cond_15
    invoke-static {v2}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v4

    .line 656
    new-array v1, v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    .line 657
    const/4 v1, 0x0

    move v3, v1

    :goto_11
    if-ge v3, v4, :cond_17

    .line 658
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v5, v3

    .line 657
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_11

    .line 662
    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 663
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/mortbay/jetty/Request;->_unparsedCookies:[Ljava/lang/String;

    .line 667
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    array-length v1, v1

    if-nez v1, :cond_19

    .line 668
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 669
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    goto/16 :goto_0

    .line 635
    :catch_2
    move-exception v1

    move-object/from16 v18, v1

    move-object v1, v2

    move-object/from16 v2, v18

    goto :goto_f

    .line 623
    :catch_3
    move-exception v2

    move-object/from16 v18, v2

    move-object v2, v3

    move-object/from16 v3, v18

    goto/16 :goto_e

    :cond_1a
    move v3, v4

    goto/16 :goto_6

    :cond_1b
    move/from16 v18, v7

    move v7, v11

    move v11, v4

    move v4, v9

    move-object v9, v3

    move v3, v8

    move-object v8, v2

    move/from16 v2, v18

    move-object/from16 v19, v12

    move-object v12, v5

    move v5, v10

    move-object/from16 v10, v19

    goto/16 :goto_4

    :cond_1c
    move v7, v11

    move-object v8, v2

    move v2, v6

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v10

    move-object v10, v13

    goto/16 :goto_4

    :cond_1d
    move v3, v7

    goto/16 :goto_b

    :cond_1e
    move-object v11, v13

    goto/16 :goto_d

    :cond_1f
    move-object v8, v2

    move-object v10, v13

    move v2, v6

    move/from16 v18, v11

    move v11, v4

    move v4, v9

    move-object v9, v12

    move-object v12, v5

    move v5, v7

    move/from16 v7, v18

    goto/16 :goto_4

    :cond_20
    move v3, v7

    move v7, v10

    goto/16 :goto_c

    :cond_21
    move v3, v7

    goto/16 :goto_8

    :cond_22
    move v3, v7

    move v7, v10

    goto/16 :goto_9

    :cond_23
    move v8, v7

    move-object v3, v12

    move v7, v6

    move-object v12, v13

    goto/16 :goto_5

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch

    .line 485
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0x20 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
    .end sparse-switch

    .line 530
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_6
        0x2c -> :sswitch_7
        0x3b -> :sswitch_7
        0x3d -> :sswitch_8
    .end sparse-switch
.end method

.method public getDateHeader(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getDateField(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 706
    if-nez v0, :cond_0

    .line 707
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 708
    :cond_0
    return-object v0
.end method

.method public getInputState()I
    .locals 1

    .prologue
    .line 1665
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    return v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 717
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eq v0, v1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "READER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 719
    :cond_0
    iput v1, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 720
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 729
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getLongField(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 829
    iget-boolean v1, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    if-eqz v1, :cond_2

    .line 830
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v1, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-object v0

    .line 830
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 831
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 747
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    const-string/jumbo v1, "Accept-Language"

    const-string/jumbo v2, ", \t"

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 750
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 775
    :goto_0
    return-object v0

    .line 754
    :cond_1
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 755
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 756
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 758
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 761
    if-ge v4, v1, :cond_4

    .line 763
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 764
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 765
    const-string/jumbo v0, ""

    .line 766
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 767
    const/4 v3, -0x1

    if-le v2, v3, :cond_3

    .line 769
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 770
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 772
    :cond_3
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    .line 775
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocales()Ljava/util/Enumeration;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 785
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    const-string/jumbo v1, "Accept-Language"

    const-string/jumbo v2, ", \t"

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 788
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 789
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 820
    :goto_0
    return-object v0

    .line 792
    :cond_1
    invoke-static {v0}, Lorg/mortbay/jetty/HttpFields;->qualityList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v6

    .line 794
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 795
    sget-object v0, Lorg/mortbay/jetty/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 799
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    move-object v4, v5

    .line 802
    :goto_1
    if-ge v2, v7, :cond_4

    .line 804
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 805
    invoke-static {v0, v5}, Lorg/mortbay/jetty/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 806
    const-string/jumbo v0, ""

    .line 807
    const/16 v8, 0x2d

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 808
    const/4 v9, -0x1

    if-le v8, v9, :cond_3

    .line 810
    add-int/lit8 v0, v8, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 813
    :cond_3
    invoke-static {v4, v7}, Lorg/mortbay/util/LazyList;->ensureSize(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 814
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 802
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v4, v1

    goto :goto_1

    .line 817
    :cond_4
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_5

    .line 818
    sget-object v0, Lorg/mortbay/jetty/Request;->__defaultLocale:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 820
    :cond_5
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 858
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 859
    invoke-direct {p0}, Lorg/mortbay/jetty/Request;->extractParameters()V

    .line 860
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/mortbay/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 870
    invoke-direct {p0}, Lorg/mortbay/jetty/Request;->extractParameters()V

    .line 872
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->toStringArrayMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 882
    invoke-direct {p0}, Lorg/mortbay/jetty/Request;->extractParameters()V

    .line 883
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getParameterValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 892
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-nez v0, :cond_0

    .line 893
    invoke-direct {p0}, Lorg/mortbay/jetty/Request;->extractParameters()V

    .line 894
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0, p1}, Lorg/mortbay/util/MultiMap;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 895
    if-nez v0, :cond_1

    .line 896
    const/4 v0, 0x0

    .line 897
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getParameters()Lorg/mortbay/util/MultiMap;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    return-object v0
.end method

.method public getPathInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPathTranslated()Ljava/lang/String;
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v0, :cond_1

    .line 916
    :cond_0
    const/4 v0, 0x0

    .line 917
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1294
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    .line 1298
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    return-object v0

    .line 1296
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpURI;->getQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 935
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eq v0, v4, :cond_0

    .line 936
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "STREAMED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-ne v0, v4, :cond_1

    .line 939
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    .line 958
    :goto_0
    return-object v0

    .line 941
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    .line 942
    if-nez v0, :cond_2

    .line 943
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    .line 945
    :cond_2
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_readerEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 947
    :cond_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v1

    .line 948
    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_readerEncoding:Ljava/lang/String;

    .line 949
    new-instance v2, Lorg/mortbay/jetty/Request$1;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3, v1}, Lorg/mortbay/jetty/Request$1;-><init>(Lorg/mortbay/jetty/Request;Ljava/io/Reader;Ljavax/servlet/ServletInputStream;)V

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    .line 957
    :cond_4
    iput v4, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 958
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public getRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v0, :cond_0

    .line 968
    const/4 v0, 0x0

    .line 969
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_remoteAddr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_remoteAddr:Ljava/lang/String;

    .line 980
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    if-eqz v0, :cond_2

    .line 991
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_remoteHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_remoteHost:Ljava/lang/String;

    .line 997
    :goto_0
    return-object v0

    .line 995
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getRemoteHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 997
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getRemotePort()I

    move-result v0

    goto :goto_0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 1016
    if-nez v0, :cond_0

    .line 1017
    const/4 v0, 0x0

    .line 1018
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 3

    .prologue
    .line 1027
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v0, :cond_1

    .line 1028
    :cond_0
    const/4 v0, 0x0

    .line 1042
    :goto_0
    return-object v0

    .line 1031
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1033
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 1035
    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 1036
    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_1
    invoke-static {v0, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1042
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v0

    goto :goto_0

    .line 1038
    :cond_3
    const-string/jumbo v0, "/"

    goto :goto_1
.end method

.method public getRequestURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getPathAndParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    .line 1062
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 1071
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1072
    monitor-enter v1

    .line 1074
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1075
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v2

    .line 1077
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    const-string/jumbo v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1079
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1080
    iget v3, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-lez v3, :cond_2

    const-string/jumbo v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1bb

    if-eq v2, v0, :cond_2

    .line 1084
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1085
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1088
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1089
    monitor-exit v1

    return-object v1

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRequestedSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_roleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 1853
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x30

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1854
    monitor-enter v1

    .line 1856
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 1857
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerPort()I

    move-result v2

    .line 1859
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1860
    const-string/jumbo v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1861
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1863
    if-lez v2, :cond_2

    const-string/jumbo v3, "http"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x50

    if-ne v2, v3, :cond_1

    :cond_0
    const-string/jumbo v3, "https"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1bb

    if-eq v2, v0, :cond_2

    .line 1865
    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1866
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1868
    :cond_2
    monitor-exit v1

    return-object v1

    .line 1869
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1109
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1158
    :goto_0
    return-object v0

    .line 1113
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1114
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1115
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1119
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->HOST_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->get(Lorg/mortbay/io/Buffer;)Lorg/mortbay/io/Buffer;

    move-result-object v2

    .line 1120
    if-eqz v2, :cond_5

    .line 1122
    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 1124
    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    add-int/2addr v0, v1

    invoke-interface {v2, v0}, Lorg/mortbay/io/Buffer;->peek(I)B

    move-result v0

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_7

    .line 1126
    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    invoke-interface {v2, v0, v1}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1127
    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->getIndex()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2}, Lorg/mortbay/io/Buffer;->length()I

    move-result v3

    sub-int v1, v3, v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v0, v1}, Lorg/mortbay/io/Buffer;->peek(II)Lorg/mortbay/io/Buffer;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/io/BufferUtil;->toInt(Lorg/mortbay/io/Buffer;)I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1128
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-gez v0, :cond_4

    .line 1133
    :cond_3
    invoke-static {v2}, Lorg/mortbay/io/BufferUtil;->to8859_1_String(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1134
    const/4 v0, 0x0

    iput v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1137
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto :goto_0

    .line 1141
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_6

    .line 1143
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getLocalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1144
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getLocalPort()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1145
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "0.0.0.0"

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1146
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1152
    :cond_6
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :goto_2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1156
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public getServerPort()I
    .locals 2

    .prologue
    .line 1167
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1169
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1170
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServerName()Ljava/lang/String;

    .line 1172
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-gtz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    if-eqz v0, :cond_2

    .line 1175
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1181
    :cond_1
    :goto_0
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    if-gtz v0, :cond_5

    .line 1183
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1184
    const/16 v0, 0x1bb

    .line 1187
    :goto_1
    return v0

    .line 1177
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    invoke-interface {v0}, Lorg/mortbay/io/EndPoint;->getLocalPort()I

    move-result v0

    goto :goto_2

    .line 1185
    :cond_4
    const/16 v0, 0x50

    goto :goto_1

    .line 1187
    :cond_5
    iget v0, p0, Lorg/mortbay/jetty/Request;->_port:I

    goto :goto_1
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 2055
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_servletName:Ljava/lang/String;

    return-object v0
.end method

.method public getServletPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1197
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    .line 1198
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    return-object v0
.end method

.method public getServletResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession(Z)Ljavax/servlet/http/HttpSession;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1224
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1225
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No SessionHandler or SessionManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_0
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    invoke-interface {v1, v2}, Lorg/mortbay/jetty/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1228
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1249
    :cond_1
    :goto_0
    return-object v0

    .line 1230
    :cond_2
    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1232
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_3

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v2, :cond_3

    .line 1236
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v2, v1}, Lorg/mortbay/jetty/SessionManager;->getHttpSession(Ljava/lang/String;)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1237
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    if-nez v1, :cond_3

    if-eqz p1, :cond_1

    .line 1241
    :cond_3
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1243
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0, p0}, Lorg/mortbay/jetty/SessionManager;->newHttpSession(Ljavax/servlet/http/HttpServletRequest;)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1244
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->isSecure()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/mortbay/jetty/SessionManager;->getSessionCookie(Ljavax/servlet/http/HttpSession;Ljava/lang/String;Z)Ljavax/servlet/http/Cookie;

    move-result-object v0

    .line 1245
    if-eqz v0, :cond_4

    .line 1246
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/Response;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 1249
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    goto :goto_0
.end method

.method public getSessionManager()Lorg/mortbay/jetty/SessionManager;
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    return-wide v0
.end method

.method public getTimeStampBuffer()Lorg/mortbay/io/Buffer;
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_timeStampBuffer:Lorg/mortbay/io/Buffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 250
    sget-object v0, Lorg/mortbay/jetty/HttpFields;->__dateCache:Lorg/mortbay/io/BufferDateCache;

    iget-wide v2, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/io/BufferDateCache;->formatBuffer(J)Lorg/mortbay/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_timeStampBuffer:Lorg/mortbay/io/Buffer;

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_timeStampBuffer:Lorg/mortbay/io/Buffer;

    return-object v0
.end method

.method public getUri()Lorg/mortbay/jetty/HttpURI;
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1258
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    instance-of v0, v0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    check-cast v0, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;

    .line 1261
    sget-object v2, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    .line 1263
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/security/SecurityHandler;->getAuthenticator()Lorg/mortbay/jetty/security/Authenticator;

    move-result-object v2

    .line 1264
    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler$NotChecked;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v3

    .line 1265
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v0

    .line 1267
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 1271
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v3, v0, p0, v4}, Lorg/mortbay/jetty/security/Authenticator;->authenticate(Lorg/mortbay/jetty/security/UserRealm;Ljava/lang/String;Lorg/mortbay/jetty/Request;Lorg/mortbay/jetty/Response;)Ljava/security/Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    sget-object v2, Lorg/mortbay/jetty/security/SecurityHandler;->__NO_USER:Ljava/security/Principal;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    .line 1282
    :goto_2
    return-object v0

    .line 1265
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    .line 1275
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1282
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    goto :goto_2
.end method

.method public getUserRealm()Lorg/mortbay/jetty/security/UserRealm;
    .locals 1

    .prologue
    .line 2006
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    return-object v0
.end method

.method public isHandled()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    return v0
.end method

.method public isRequestedSessionIdFromCookie()Z
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromURL()Z
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdFromUrl()Z
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequestedSessionIdValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1334
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return v0

    .line 1337
    :cond_1
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v1

    .line 1338
    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v0}, Lorg/mortbay/jetty/SessionManager;->getIdManager()Lorg/mortbay/jetty/SessionIdManager;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/mortbay/jetty/SessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    invoke-interface {v2, v1}, Lorg/mortbay/jetty/SessionManager;->getClusterId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0, p0}, Lorg/mortbay/jetty/HttpConnection;->isConfidential(Lorg/mortbay/jetty/Request;)Z

    move-result v0

    return v0
.end method

.method public isUserInRole(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_roleMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1359
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 1363
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 1365
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1366
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    invoke-interface {v1, v0, p1}, Lorg/mortbay/jetty/security/UserRealm;->isUserInRole(Ljava/security/Principal;Ljava/lang/String;)Z

    move-result v0

    .line 1368
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recoverNewSession(Ljava/lang/Object;)Ljavax/servlet/http/HttpSession;
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1996
    const/4 v0, 0x0

    .line 1997
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpSession;

    goto :goto_0
.end method

.method protected recycle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 186
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .line 191
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 197
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_reader:Ljava/io/BufferedReader;

    .line 201
    :cond_0
    iput-boolean v3, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    .line 202
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Request in context!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v0}, Lorg/mortbay/util/Attributes;->clearAttributes()V

    .line 206
    :cond_2
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_authType:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_characterEncoding:Ljava/lang/String;

    .line 208
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 210
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_method:Ljava/lang/String;

    .line 212
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    .line 213
    iput v3, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 214
    const-string/jumbo v0, "HTTP/1.1"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    .line 215
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    .line 216
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    .line 217
    iput-boolean v3, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    .line 218
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 219
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    .line 220
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    .line 221
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    .line 222
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    .line 224
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_timeStampBuffer:Lorg/mortbay/io/Buffer;

    .line 225
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    .line 226
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    .line 227
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    invoke-virtual {v0}, Lorg/mortbay/util/MultiMap;->clear()V

    .line 229
    :cond_3
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    .line 230
    iput-boolean v3, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    .line 231
    iput v3, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    .line 233
    iput-boolean v3, p0, Lorg/mortbay/jetty/Request;->_cookiesExtracted:Z

    .line 234
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 236
    :cond_4
    iput-object v2, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    .line 237
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    invoke-interface {v0}, Lorg/mortbay/util/ajax/Continuation;->reset()V

    .line 239
    :cond_5
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1377
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1379
    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-eqz v1, :cond_0

    .line 1380
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v1, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    .line 1382
    :cond_0
    if-eqz v0, :cond_3

    .line 1384
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 1386
    new-instance v2, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-direct {v2, v1, p0, p1, v0}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1388
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v3

    .line 1389
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 1391
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1392
    instance-of v4, v0, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v4, :cond_1

    .line 1394
    check-cast v0, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1395
    invoke-interface {v0, v2}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    .line 1389
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1377
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1400
    :cond_3
    return-void
.end method

.method public removeEventListener(Ljava/util/EventListener;)V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    .line 1963
    return-void
.end method

.method public saveNewSession(Ljava/lang/Object;Ljavax/servlet/http/HttpSession;)V
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1989
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    .line 1990
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_savedNewSessions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1415
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v2, :cond_3

    move-object v3, v1

    .line 1417
    :goto_0
    const-string/jumbo v2, "org.mortbay.jetty.Request.queryEncoding"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1418
    if-nez p2, :cond_4

    :goto_1
    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/Request;->setQueryEncoding(Ljava/lang/String;)V

    .line 1439
    :cond_0
    :goto_2
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    if-nez v1, :cond_1

    .line 1440
    new-instance v1, Lorg/mortbay/util/AttributesMap;

    invoke-direct {v1}, Lorg/mortbay/util/AttributesMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    .line 1441
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v1, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1443
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 1445
    new-instance v4, Ljavax/servlet/ServletRequestAttributeEvent;

    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    if-nez v3, :cond_7

    move-object v1, p2

    :goto_3
    invoke-direct {v4, v2, p0, p1, v1}, Ljavax/servlet/ServletRequestAttributeEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1447
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v1}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v5

    .line 1448
    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v5, :cond_a

    .line 1450
    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_requestAttributeListeners:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1451
    instance-of v6, v1, Ljavax/servlet/ServletRequestAttributeListener;

    if-eqz v6, :cond_2

    .line 1453
    check-cast v1, Ljavax/servlet/ServletRequestAttributeListener;

    .line 1455
    if-nez v3, :cond_8

    .line 1456
    invoke-interface {v1, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeAdded(Ljavax/servlet/ServletRequestAttributeEvent;)V

    .line 1448
    :cond_2
    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_4

    .line 1415
    :cond_3
    iget-object v2, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    invoke-interface {v2, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 1418
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1419
    :cond_5
    const-string/jumbo v1, "org.mortbay.jetty.ResponseBuffer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1423
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object v1, v0

    .line 1424
    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/mortbay/io/nio/DirectNIOBuffer;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Lorg/mortbay/io/nio/DirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    move-object v4, v2

    .line 1429
    :goto_6
    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getServletResponse()Ljavax/servlet/ServletResponse;

    move-result-object v2

    invoke-interface {v2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/HttpConnection$Output;

    invoke-virtual {v2, v4}, Lorg/mortbay/jetty/HttpConnection$Output;->sendResponse(Lorg/mortbay/io/Buffer;)V

    .line 1430
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1432
    :catch_0
    move-exception v1

    .line 1434
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1426
    :cond_6
    :try_start_3
    new-instance v2, Lorg/mortbay/io/nio/IndirectNIOBuffer;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Lorg/mortbay/io/nio/IndirectNIOBuffer;-><init>(Ljava/nio/ByteBuffer;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v2

    goto :goto_6

    :cond_7
    move-object v1, v3

    .line 1445
    goto :goto_3

    .line 1457
    :cond_8
    if-nez p2, :cond_9

    .line 1458
    invoke-interface {v1, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeRemoved(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto :goto_5

    .line 1460
    :cond_9
    invoke-interface {v1, v4}, Ljavax/servlet/ServletRequestAttributeListener;->attributeReplaced(Ljavax/servlet/ServletRequestAttributeEvent;)V

    goto :goto_5

    .line 1464
    :cond_a
    return-void
.end method

.method public setAttributes(Lorg/mortbay/util/Attributes;)V
    .locals 0

    .prologue
    .line 1887
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_attributes:Lorg/mortbay/util/Attributes;

    .line 1888
    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1674
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_authType:Ljava/lang/String;

    .line 1675
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1472
    iget v0, p0, Lorg/mortbay/jetty/Request;->_inputState:I

    if-eqz v0, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_characterEncoding:Ljava/lang/String;

    .line 1478
    invoke-static {p1}, Lorg/mortbay/util/StringUtil;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    goto :goto_0
.end method

.method public setCharacterEncodingUnchecked(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1488
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_characterEncoding:Ljava/lang/String;

    .line 1489
    return-void
.end method

.method protected setConnection(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 179
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getEndPoint()Lorg/mortbay/io/EndPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_endp:Lorg/mortbay/io/EndPoint;

    .line 180
    invoke-virtual {p1}, Lorg/mortbay/jetty/HttpConnection;->getResolveNames()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/jetty/Request;->_dns:Z

    .line 181
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, p1}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setContext(Lorg/mortbay/jetty/handler/ContextHandler$SContext;)V
    .locals 0

    .prologue
    .line 1826
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_context:Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    .line 1827
    return-void
.end method

.method public setContextPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1790
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_contextPath:Ljava/lang/String;

    .line 1791
    return-void
.end method

.method setContinuation(Lorg/mortbay/util/ajax/Continuation;)V
    .locals 0

    .prologue
    .line 1907
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_continuation:Lorg/mortbay/util/ajax/Continuation;

    .line 1908
    return-void
.end method

.method public setCookies([Ljavax/servlet/http/Cookie;)V
    .locals 0

    .prologue
    .line 1683
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_cookies:[Ljavax/servlet/http/Cookie;

    .line 1684
    return-void
.end method

.method public setHandled(Z)V
    .locals 0

    .prologue
    .line 280
    iput-boolean p1, p0, Lorg/mortbay/jetty/Request;->_handled:Z

    .line 281
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1692
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_method:Ljava/lang/String;

    .line 1693
    return-void
.end method

.method public setParameters(Lorg/mortbay/util/MultiMap;)V
    .locals 1

    .prologue
    .line 1925
    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mortbay/jetty/Request;->_baseParameters:Lorg/mortbay/util/MultiMap;

    :cond_0
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    .line 1926
    iget-boolean v0, p0, Lorg/mortbay/jetty/Request;->_paramsExtracted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_parameters:Lorg/mortbay/util/MultiMap;

    if-nez v0, :cond_1

    .line 1927
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1928
    :cond_1
    return-void
.end method

.method public setPathInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_pathInfo:Ljava/lang/String;

    .line 1702
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1710
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_protocol:Ljava/lang/String;

    .line 1711
    return-void
.end method

.method public setQueryEncoding(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2036
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_queryEncoding:Ljava/lang/String;

    .line 2037
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    .line 2038
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1773
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_queryString:Ljava/lang/String;

    .line 1774
    return-void
.end method

.method public setRemoteAddr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1620
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_remoteAddr:Ljava/lang/String;

    .line 1621
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1629
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_remoteHost:Ljava/lang/String;

    .line 1630
    return-void
.end method

.method public setRequestListeners(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1971
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_requestListeners:Ljava/lang/Object;

    .line 1972
    return-void
.end method

.method public setRequestURI(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1781
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_requestURI:Ljava/lang/String;

    .line 1782
    return-void
.end method

.method public setRequestedSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1719
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionId:Ljava/lang/String;

    .line 1720
    return-void
.end method

.method public setRequestedSessionIdFromCookie(Z)V
    .locals 0

    .prologue
    .line 1746
    iput-boolean p1, p0, Lorg/mortbay/jetty/Request;->_requestedSessionIdFromCookie:Z

    .line 1747
    return-void
.end method

.method public setRoleMap(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 2043
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_roleMap:Ljava/util/Map;

    .line 2044
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1764
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_scheme:Ljava/lang/String;

    .line 1765
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1602
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_serverName:Ljava/lang/String;

    .line 1603
    return-void
.end method

.method public setServerPort(I)V
    .locals 0

    .prologue
    .line 1611
    iput p1, p0, Lorg/mortbay/jetty/Request;->_port:I

    .line 1612
    return-void
.end method

.method public setServletName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1808
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_servletName:Ljava/lang/String;

    .line 1809
    return-void
.end method

.method public setServletPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1799
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_servletPath:Ljava/lang/String;

    .line 1800
    return-void
.end method

.method public setSession(Ljavax/servlet/http/HttpSession;)V
    .locals 0

    .prologue
    .line 1755
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_session:Ljavax/servlet/http/HttpSession;

    .line 1756
    return-void
.end method

.method public setSessionManager(Lorg/mortbay/jetty/SessionManager;)V
    .locals 0

    .prologue
    .line 1737
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_sessionManager:Lorg/mortbay/jetty/SessionManager;

    .line 1738
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1

    .prologue
    .line 268
    iput-wide p1, p0, Lorg/mortbay/jetty/Request;->_timeStamp:J

    .line 269
    return-void
.end method

.method public setUri(Lorg/mortbay/jetty/HttpURI;)V
    .locals 0

    .prologue
    .line 1647
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    .line 1648
    return-void
.end method

.method public setUserPrincipal(Ljava/security/Principal;)V
    .locals 0

    .prologue
    .line 1817
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_userPrincipal:Ljava/security/Principal;

    .line 1818
    return-void
.end method

.method public setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V
    .locals 0

    .prologue
    .line 2015
    iput-object p1, p0, Lorg/mortbay/jetty/Request;->_userRealm:Lorg/mortbay/jetty/security/UserRealm;

    .line 2016
    return-void
.end method

.method public takeRequestListeners()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1980
    iget-object v0, p0, Lorg/mortbay/jetty/Request;->_requestListeners:Ljava/lang/Object;

    .line 1981
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mortbay/jetty/Request;->_requestListeners:Ljava/lang/Object;

    .line 1982
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1933
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_uri:Lorg/mortbay/jetty/HttpURI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Request;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Request;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

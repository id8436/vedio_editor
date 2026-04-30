.class public Lorg/mortbay/jetty/servlet/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Ljavax/servlet/RequestDispatcher;


# static fields
.field public static final __FORWARD_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.forward.context_path"

.field public static final __FORWARD_JETTY:Ljava/lang/String; = "org.mortbay.jetty.forwarded"

.field public static final __FORWARD_PATH_INFO:Ljava/lang/String; = "javax.servlet.forward.path_info"

.field public static final __FORWARD_PREFIX:Ljava/lang/String; = "javax.servlet.forward."

.field public static final __FORWARD_QUERY_STRING:Ljava/lang/String; = "javax.servlet.forward.query_string"

.field public static final __FORWARD_REQUEST_URI:Ljava/lang/String; = "javax.servlet.forward.request_uri"

.field public static final __FORWARD_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.forward.servlet_path"

.field public static final __INCLUDE_CONTEXT_PATH:Ljava/lang/String; = "javax.servlet.include.context_path"

.field public static final __INCLUDE_JETTY:Ljava/lang/String; = "org.mortbay.jetty.included"

.field public static final __INCLUDE_PATH_INFO:Ljava/lang/String; = "javax.servlet.include.path_info"

.field public static final __INCLUDE_PREFIX:Ljava/lang/String; = "javax.servlet.include."

.field public static final __INCLUDE_QUERY_STRING:Ljava/lang/String; = "javax.servlet.include.query_string"

.field public static final __INCLUDE_REQUEST_URI:Ljava/lang/String; = "javax.servlet.include.request_uri"

.field public static final __INCLUDE_SERVLET_PATH:Ljava/lang/String; = "javax.servlet.include.servlet_path"

.field public static final __JSP_FILE:Ljava/lang/String; = "org.apache.catalina.jsp_file"


# instance fields
.field private _contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

.field private _dQuery:Ljava/lang/String;

.field private _named:Ljava/lang/String;

.field private _path:Ljava/lang/String;

.field private _uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 117
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 102
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_uri:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_path:Ljava/lang/String;

    .line 104
    iput-object p4, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static access$000(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    return-object v0
.end method

.method public static type(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 75
    :cond_0
    const-string/jumbo v0, "forward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    goto :goto_0

    .line 77
    :cond_1
    const-string/jumbo v0, "include"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x4

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const/16 v0, 0x8

    goto :goto_0

    .line 81
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V

    .line 136
    return-void
.end method

.method public forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V

    .line 127
    return-void
.end method

.method protected forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/mortbay/jetty/Request;

    if-eqz v3, :cond_0

    move-object/from16 v3, p1

    check-cast v3, Lorg/mortbay/jetty/Request;

    move-object v5, v3

    .line 211
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    .line 212
    const-string/jumbo v3, "org.apache.catalina.jsp_file"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v9

    .line 215
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getContextPath()Ljava/lang/String;

    move-result-object v10

    .line 216
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getServletPath()Ljava/lang/String;

    move-result-object v11

    .line 217
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v12

    .line 218
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getQueryString()Ljava/lang/String;

    move-result-object v13

    .line 219
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getAttributes()Lorg/mortbay/util/Attributes;

    move-result-object v14

    .line 220
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;

    move-result-object v3

    .line 223
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v6, v0, v1, v2}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    :goto_1
    invoke-virtual {v5, v9}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v5, v10}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v5, v11}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v5, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v5, v14}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 348
    invoke-virtual {v5, v3}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 349
    invoke-virtual {v5, v13}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    .line 351
    return-void

    .line 210
    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v3

    move-object v5, v3

    goto :goto_0

    .line 227
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 229
    if-eqz v7, :cond_d

    .line 231
    new-instance v15, Lorg/mortbay/util/MultiMap;

    invoke-direct {v15}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 232
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v15, v4}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 234
    const/4 v4, 0x0

    .line 236
    if-nez v3, :cond_c

    .line 238
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getParameterNames()Ljava/util/Enumeration;

    .line 239
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 242
    :goto_2
    if-eqz v6, :cond_b

    :try_start_2
    invoke-virtual {v6}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 245
    invoke-virtual {v6}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v8, v4

    .line 246
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 251
    invoke-virtual {v15, v4}, Lorg/mortbay/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 252
    const/4 v8, 0x1

    .line 253
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 254
    const/4 v3, 0x0

    :goto_3
    invoke-static/range {v17 .. v17}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    if-ge v3, v0, :cond_2

    .line 255
    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v4, v0}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v8

    .line 259
    :goto_4
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 261
    if-eqz v3, :cond_7

    .line 263
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    new-instance v3, Lorg/mortbay/util/MultiMap;

    invoke-direct {v3}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 265
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v3, v4}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 267
    new-instance v16, Lorg/mortbay/util/MultiMap;

    invoke-direct/range {v16 .. v16}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 268
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v7, v0, v4}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v3}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 271
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 273
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 275
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/mortbay/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 277
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    .line 278
    const/4 v3, 0x0

    :goto_5
    invoke-static/range {v18 .. v18}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v19

    move/from16 v0, v19

    if-ge v3, v0, :cond_5

    .line 280
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string/jumbo v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 285
    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 293
    :goto_6
    invoke-virtual {v5, v15}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 294
    invoke-virtual {v5, v3}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v6

    move-object v6, v3

    .line 297
    :goto_7
    :try_start_3
    new-instance v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;-><init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V

    .line 303
    const-string/jumbo v3, "javax.servlet.forward.request_uri"

    invoke-interface {v14, v3}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 305
    const-string/jumbo v3, "javax.servlet.forward.path_info"

    invoke-interface {v14, v3}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 306
    const-string/jumbo v3, "javax.servlet.forward.query_string"

    invoke-interface {v14, v3}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 307
    const-string/jumbo v3, "javax.servlet.forward.request_uri"

    invoke-interface {v14, v3}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 308
    const-string/jumbo v3, "javax.servlet.forward.context_path"

    invoke-interface {v14, v3}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 309
    const-string/jumbo v3, "javax.servlet.forward.servlet_path"

    invoke-interface {v14, v3}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;

    .line 322
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_uri:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v3}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v5, v7}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 325
    invoke-virtual {v5, v6}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/mortbay/jetty/servlet/Dispatcher;->_path:Ljava/lang/String;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    move-object/from16 v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    move-object v3, v0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v6, v7, v0, v3, v1}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 329
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getResponse()Lorg/mortbay/jetty/Response;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/Response;->isWriting()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_9

    .line 331
    :try_start_4
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v4

    .line 332
    goto/16 :goto_1

    .line 289
    :cond_7
    :try_start_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    move-object v3, v7

    goto/16 :goto_6

    .line 313
    :cond_8
    :try_start_6
    iput-object v12, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_pathInfo:Ljava/lang/String;

    .line 314
    iput-object v13, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_query:Ljava/lang/String;

    .line 315
    iput-object v9, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_requestURI:Ljava/lang/String;

    .line 316
    iput-object v10, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_contextPath:Ljava/lang/String;

    .line 317
    iput-object v11, v7, Lorg/mortbay/jetty/servlet/Dispatcher$ForwardAttributes;->_servletPath:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 343
    :catchall_0
    move-exception v3

    :goto_9
    invoke-virtual {v5, v9}, Lorg/mortbay/jetty/Request;->setRequestURI(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v5, v10}, Lorg/mortbay/jetty/Request;->setContextPath(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v5, v11}, Lorg/mortbay/jetty/Request;->setServletPath(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v5, v12}, Lorg/mortbay/jetty/Request;->setPathInfo(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v5, v14}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 348
    invoke-virtual {v5, v4}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 349
    invoke-virtual {v5, v13}, Lorg/mortbay/jetty/Request;->setQueryString(Ljava/lang/String;)V

    throw v3

    .line 332
    :catch_0
    move-exception v3

    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v4

    goto/16 :goto_1

    .line 336
    :cond_9
    :try_start_8
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v3, v4

    .line 337
    goto/16 :goto_1

    :catch_1
    move-exception v3

    :try_start_9
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v3, v4

    goto/16 :goto_1

    .line 343
    :catchall_1
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    goto :goto_9

    :catchall_2
    move-exception v3

    move-object v4, v6

    goto :goto_9

    :cond_a
    move-object v3, v7

    goto/16 :goto_6

    :cond_b
    move v3, v4

    goto/16 :goto_4

    :cond_c
    move-object v6, v3

    goto/16 :goto_2

    :cond_d
    move-object v6, v7

    move-object v4, v3

    goto/16 :goto_7
.end method

.method public include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    instance-of v0, p1, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mortbay/jetty/Request;

    move-object v2, v0

    .line 145
    :goto_0
    const-string/jumbo v0, "org.apache.catalina.jsp_file"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->removeAttribute(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getAttributes()Lorg/mortbay/util/Attributes;

    move-result-object v3

    .line 150
    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getParameters()Lorg/mortbay/util/MultiMap;

    move-result-object v4

    .line 153
    :try_start_0
    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->include()V

    .line 154
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    const/4 v5, 0x4

    invoke-virtual {v0, v1, p1, p2, v5}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_1
    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 198
    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->included()V

    .line 199
    invoke-virtual {v2, v4}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 201
    return-void

    .line 144
    :cond_0
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 158
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_dQuery:Ljava/lang/String;

    .line 160
    if-eqz v5, :cond_4

    .line 162
    new-instance v6, Lorg/mortbay/util/MultiMap;

    invoke-direct {v6}, Lorg/mortbay/util/MultiMap;-><init>()V

    .line 163
    invoke-interface {p1}, Ljavax/servlet/ServletRequest;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lorg/mortbay/util/UrlEncoded;->decodeTo(Ljava/lang/String;Lorg/mortbay/util/MultiMap;Ljava/lang/String;)V

    .line 165
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/mortbay/util/MultiMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 168
    invoke-virtual {v4}, Lorg/mortbay/util/MultiMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 169
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 174
    const/4 v0, 0x0

    :goto_2
    invoke-static {v8}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    if-ge v0, v9, :cond_2

    .line 175
    invoke-static {v8, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Lorg/mortbay/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 179
    :cond_3
    invoke-virtual {v2, v6}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    .line 182
    :cond_4
    new-instance v0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;

    invoke-direct {v0, p0, v3}, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;-><init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V

    .line 184
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_uri:Ljava/lang/String;

    iput-object v1, v0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    .line 186
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_path:Ljava/lang/String;

    iput-object v1, v0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 188
    iput-object v5, v0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    .line 190
    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 192
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_path:Ljava/lang/String;

    :goto_3
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    const/4 v5, 0x4

    invoke-virtual {v1, v0, p1, p2, v5}, Lorg/mortbay/jetty/handler/ContextHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 197
    :catchall_0
    move-exception v0

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/Request;->setAttributes(Lorg/mortbay/util/Attributes;)V

    .line 198
    invoke-virtual {v2}, Lorg/mortbay/jetty/Request;->getConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->included()V

    .line 199
    invoke-virtual {v2, v4}, Lorg/mortbay/jetty/Request;->setParameters(Lorg/mortbay/util/MultiMap;)V

    throw v0

    .line 192
    :cond_5
    :try_start_2
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher;->_named:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

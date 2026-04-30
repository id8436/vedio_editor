.class public Lorg/mortbay/jetty/servlet/Invoker;
.super Ljavax/servlet/http/HttpServlet;
.source "Invoker.java"


# static fields
.field static class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;


# instance fields
.field private _contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

.field private _invokerEntry:Ljava/util/Map$Entry;

.field private _nonContextServlets:Z

.field private _parameters:Ljava/util/Map;

.field private _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field private _verbose:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 230
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 144
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

.method private getHolder([Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 286
    if-nez p1, :cond_1

    .line 297
    :cond_0
    return-object v0

    .line 290
    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 292
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    aget-object v0, p1, v1

    .line 290
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Invoker;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    .line 75
    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    .line 77
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 78
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mortbay/jetty/servlet/ServletHandler;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/mortbay/jetty/handler/HandlerWrapper;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Lorg/mortbay/jetty/handler/HandlerWrapper;

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->getHandler()Lorg/mortbay/jetty/Handler;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHandler;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 81
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Invoker;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 82
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 84
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/Invoker;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 87
    const-string/jumbo v1, "nonContextServlets"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string/jumbo v1, "t"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lorg/mortbay/jetty/servlet/Invoker;->_nonContextServlets:Z

    .line 91
    :cond_1
    const-string/jumbo v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string/jumbo v0, "t"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_verbose:Z

    goto :goto_1

    :cond_2
    move v1, v3

    .line 89
    goto :goto_2

    :cond_3
    move v0, v3

    .line 93
    goto :goto_3

    .line 97
    :cond_4
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    .line 99
    :cond_5
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 102
    :cond_6
    return-void
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2f

    const/16 v10, 0x194

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    .line 110
    const-string/jumbo v0, "javax.servlet.include.servlet_path"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    if-nez v0, :cond_1

    .line 112
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v5

    move v3, v1

    .line 115
    :goto_0
    const-string/jumbo v0, "javax.servlet.include.path_info"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    if-nez v0, :cond_f

    .line 117
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v6

    .line 121
    :goto_1
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 123
    :cond_0
    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 227
    :goto_2
    return-void

    :cond_1
    move-object v5, v0

    move v3, v2

    .line 114
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v4, :cond_3

    .line 129
    :goto_3
    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 130
    if-gez v0, :cond_4

    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 133
    :goto_4
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0, v2}, Lorg/mortbay/jetty/servlet/Invoker;->getHolder([Lorg/mortbay/jetty/servlet/ServletHolder;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v4

    .line 136
    if-eqz v4, :cond_6

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Adding servlet mapping for named servlet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v5, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 141
    new-instance v1, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v1}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 142
    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v5, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v7, "/*"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 144
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v8

    sget-object v0, Lorg/mortbay/jetty/servlet/Invoker;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v0, :cond_5

    const-string/jumbo v0, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Invoker;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/Invoker;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :goto_5
    invoke-static {v8, v1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    check-cast v0, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {v7, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    move-object v7, v4

    move-object v4, v2

    .line 217
    :goto_6
    if-eqz v7, :cond_d

    .line 218
    new-instance v0, Lorg/mortbay/jetty/servlet/Invoker$Request;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/mortbay/jetty/servlet/Invoker$Request;-><init>(Lorg/mortbay/jetty/servlet/Invoker;Ljavax/servlet/http/HttpServletRequest;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0, p2}, Lorg/mortbay/jetty/servlet/ServletHolder;->handle(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto/16 :goto_2

    :cond_3
    move v2, v1

    .line 128
    goto/16 :goto_3

    .line 130
    :cond_4
    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_4

    .line 144
    :cond_5
    sget-object v0, Lorg/mortbay/jetty/servlet/Invoker;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    goto :goto_5

    .line 149
    :cond_6
    const-string/jumbo v0, ".class"

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 151
    :goto_7
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 153
    :cond_7
    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_2

    .line 157
    :cond_8
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    .line 163
    invoke-static {v5, v4}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_a

    iget-object v7, p0, Lorg/mortbay/jetty/servlet/Invoker;->_invokerEntry:Ljava/util/Map$Entry;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 214
    :cond_9
    :goto_8
    monitor-exit v1

    move-object v7, v0

    goto :goto_6

    .line 174
    :cond_a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Making new servlet="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v7, " with path="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v7, "/*"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Invoker;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "/*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 177
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    if-eqz v7, :cond_b

    .line 178
    iget-object v7, p0, Lorg/mortbay/jetty/servlet/Invoker;->_parameters:Ljava/util/Map;

    invoke-virtual {v0, v7}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitParameters(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_b
    :try_start_1
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :try_start_2
    iget-boolean v7, p0, Lorg/mortbay/jetty/servlet/Invoker;->_nonContextServlets:Z

    if-nez v7, :cond_c

    .line 190
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v7

    .line 192
    iget-object v8, p0, Lorg/mortbay/jetty/servlet/Invoker;->_contextHandler:Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-virtual {v8}, Lorg/mortbay/jetty/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    if-eq v8, v9, :cond_c

    .line 197
    :try_start_3
    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->stop()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 204
    :goto_9
    :try_start_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Dynamic servlet "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, " not loaded from context "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getContextPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljavax/servlet/UnavailableException;

    const-string/jumbo v2, "Not in context"

    invoke-direct {v0, v2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    :try_start_5
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 184
    new-instance v2, Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :catch_1
    move-exception v0

    .line 201
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 211
    :cond_c
    iget-boolean v7, p0, Lorg/mortbay/jetty/servlet/Invoker;->_verbose:Z

    if-eqz v7, :cond_9

    .line 212
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v8, "Dynamic load \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\' at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_8

    .line 222
    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Can\'t find holder for servlet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;)V

    .line 223
    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto/16 :goto_2

    :cond_e
    move-object v4, v2

    goto/16 :goto_7

    :cond_f
    move-object v6, v0

    goto/16 :goto_1
.end method

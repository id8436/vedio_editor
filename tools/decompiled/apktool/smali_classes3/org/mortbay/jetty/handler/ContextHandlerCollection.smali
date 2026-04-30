.class public Lorg/mortbay/jetty/handler/ContextHandlerCollection;
.super Lorg/mortbay/jetty/handler/HandlerCollection;
.source "ContextHandlerCollection.java"


# static fields
.field static class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;


# instance fields
.field private _contextClass:Ljava/lang/Class;

.field private _contextMap:Lorg/mortbay/jetty/servlet/PathMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;-><init>()V

    .line 48
    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-void

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 48
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

.method private normalizeHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    if-nez p1, :cond_1

    .line 301
    const/4 p1, 0x0

    .line 306
    :cond_0
    :goto_0
    return-object p1

    .line 303
    :cond_1
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/handler/ContextHandler;
    .locals 2

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 262
    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p2}, Lorg/mortbay/jetty/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-object v0

    .line 267
    :catch_0
    move-exception v0

    .line 269
    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 270
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->mapContexts()V

    .line 156
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->doStart()V

    .line 157
    return-void
.end method

.method public getContextClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v5

    .line 177
    iget-object v1, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 178
    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 181
    invoke-virtual {v1, p1}, Lorg/mortbay/jetty/servlet/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move v2, v3

    .line 183
    :goto_1
    invoke-static {v6}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 186
    invoke-static {v6, v2}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 189
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 191
    check-cast v0, Ljava/util/Map;

    .line 192
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->normalizeHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move v4, v3

    .line 196
    :goto_2
    invoke-static {v8}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 198
    invoke-static {v8, v4}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/Handler;

    .line 199
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 200
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 205
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "*."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v4, "."

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move v4, v3

    .line 206
    :goto_3
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v4, v1, :cond_3

    .line 208
    invoke-static {v7, v4}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/Handler;

    .line 209
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 210
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 216
    :cond_3
    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move v1, v3

    .line 217
    :goto_4
    invoke-static {v4}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 219
    invoke-static {v4, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/Handler;

    .line 220
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 221
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    move v4, v3

    .line 227
    :goto_5
    invoke-static {v0}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 229
    invoke-static {v0, v4}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/Handler;

    .line 230
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 231
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 183
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 240
    :cond_6
    add-int/lit8 v3, v3, 0x1

    :cond_7
    array-length v1, v0

    if-ge v3, v1, :cond_0

    .line 242
    aget-object v1, v0, v3

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 243
    invoke-virtual {v5}, Lorg/mortbay/jetty/Request;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0
.end method

.method public mapContexts()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 56
    new-instance v7, Lorg/mortbay/jetty/servlet/PathMap;

    invoke-direct {v7}, Lorg/mortbay/jetty/servlet/PathMap;-><init>()V

    .line 57
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v8

    move v6, v4

    .line 60
    :goto_0
    if-eqz v8, :cond_b

    array-length v0, v8

    if-ge v6, v0, :cond_b

    .line 64
    aget-object v0, v8, v6

    instance-of v0, v0, Lorg/mortbay/jetty/handler/ContextHandler;

    if-eqz v0, :cond_1

    .line 66
    new-array v0, v12, [Lorg/mortbay/jetty/Handler;

    aget-object v1, v8, v6

    aput-object v1, v0, v4

    move-object v2, v0

    :goto_1
    move v3, v4

    .line 75
    :goto_2
    array-length v0, v2

    if-ge v3, v0, :cond_a

    .line 77
    aget-object v0, v2, v3

    check-cast v0, Lorg/mortbay/jetty/handler/ContextHandler;

    .line 79
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getContextPath()Ljava/lang/String;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    const-string/jumbo v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Illegal context spec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    aget-object v0, v8, v6

    instance-of v0, v0, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v0, :cond_a

    .line 70
    aget-object v0, v8, v6

    check-cast v0, Lorg/mortbay/jetty/HandlerContainer;

    sget-object v1, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string/jumbo v1, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v1}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_3
    invoke-interface {v0, v1}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_3

    .line 84
    :cond_3
    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 85
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v9, 0x2f

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v12, :cond_c

    .line 89
    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 90
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 95
    :goto_4
    invoke-virtual {v7, v5}, Lorg/mortbay/jetty/servlet/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler;->getVirtualHosts()[Ljava/lang/String;

    move-result-object v9

    .line 99
    if-eqz v9, :cond_7

    array-length v0, v9

    if-lez v0, :cond_7

    .line 103
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 104
    check-cast v0, Ljava/util/Map;

    :goto_5
    move v1, v4

    .line 112
    :goto_6
    array-length v5, v9

    if-ge v1, v5, :cond_8

    .line 114
    aget-object v5, v9, v1

    .line 115
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 116
    aget-object v11, v8, v6

    invoke-static {v10, v11}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 117
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 91
    :cond_5
    const-string/jumbo v5, "/*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 92
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v5, "/*"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_4

    .line 107
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    const-string/jumbo v10, "*"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v7, v5, v0}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 120
    :cond_7
    instance-of v0, v1, Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 122
    check-cast v1, Ljava/util/Map;

    .line 123
    const-string/jumbo v0, "*"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    aget-object v5, v8, v6

    invoke-static {v0, v5}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    const-string/jumbo v5, "*"

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_8
    :goto_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 129
    :cond_9
    aget-object v0, v8, v6

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    invoke-virtual {v7, v5, v0}, Lorg/mortbay/jetty/servlet/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 60
    :cond_a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    .line 134
    :cond_b
    iput-object v7, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 136
    return-void

    :cond_c
    move-object v5, v1

    goto/16 :goto_4
.end method

.method public setContextClass(Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 292
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.mortbay.jetty.handler.ContextHandler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 292
    :cond_1
    sget-object v0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->class$org$mortbay$jetty$handler$ContextHandler:Ljava/lang/Class;

    goto :goto_0

    .line 294
    :cond_2
    iput-object p1, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextClass:Ljava/lang/Class;

    .line 295
    return-void
.end method

.method public setHandlers([Lorg/mortbay/jetty/Handler;)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->_contextMap:Lorg/mortbay/jetty/servlet/PathMap;

    .line 147
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    .line 148
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->mapContexts()V

    .line 150
    :cond_0
    return-void
.end method

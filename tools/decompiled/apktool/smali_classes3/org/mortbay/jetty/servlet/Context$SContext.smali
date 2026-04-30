.class public Lorg/mortbay/jetty/servlet/Context$SContext;
.super Lorg/mortbay/jetty/handler/ContextHandler$SContext;
.source "Context.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/servlet/Context;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/Context;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    invoke-direct {p0, p1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;)V

    return-void
.end method


# virtual methods
.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 2

    .prologue
    .line 307
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    .line 308
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    iget-object v0, v0, Lorg/mortbay/jetty/servlet/Context;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-direct {v0, v1, p1}, Lorg/mortbay/jetty/servlet/Dispatcher;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 319
    if-nez p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 322
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    const/16 v1, 0x3f

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3

    .line 331
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move-object v2, v1

    move-object v1, p1

    .line 334
    :goto_1
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    .line 335
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 337
    :cond_2
    invoke-static {v1}, Lorg/mortbay/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/Context$SContext;->getContextPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    iget-object v5, p0, Lorg/mortbay/jetty/servlet/Context$SContext;->this$0:Lorg/mortbay/jetty/servlet/Context;

    .line 340
    new-instance v1, Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-direct {v1, v5, v4, v3, v2}, Lorg/mortbay/jetty/servlet/Dispatcher;-><init>(Lorg/mortbay/jetty/handler/ContextHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    .line 344
    invoke-static {v1}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    move-object v1, p1

    goto :goto_1
.end method

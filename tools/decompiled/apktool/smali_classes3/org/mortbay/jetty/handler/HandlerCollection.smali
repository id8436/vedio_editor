.class public Lorg/mortbay/jetty/handler/HandlerCollection;
.super Lorg/mortbay/jetty/handler/AbstractHandlerContainer;
.source "HandlerCollection.java"


# static fields
.field static class$org$mortbay$jetty$Handler:Ljava/lang/Class;


# instance fields
.field private _handlers:[Lorg/mortbay/jetty/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;-><init>()V

    .line 46
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 197
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


# virtual methods
.method public addHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    sget-object v0, Lorg/mortbay/jetty/handler/HandlerCollection;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.Handler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/HandlerCollection;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, p1, v0}, Lorg/mortbay/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    .line 198
    return-void

    .line 197
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/handler/HandlerCollection;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    goto :goto_0
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v2, Lorg/mortbay/util/MultiException;

    invoke-direct {v2}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 149
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/mortbay/jetty/Handler;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 154
    :cond_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->doStart()V

    .line 155
    invoke-virtual {v2}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    .line 156
    return-void
.end method

.method protected doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v2, Lorg/mortbay/util/MultiException;

    invoke-direct {v2}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 165
    :try_start_0
    invoke-super {p0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->doStop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    array-length v0, v0

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 169
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/mortbay/jetty/Handler;->stop()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    invoke-virtual {v2, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {v2}, Lorg/mortbay/util/MultiException;->ifExceptionThrow()V

    .line 172
    return-void
.end method

.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    .line 213
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 214
    aget-object v2, v1, v0

    invoke-virtual {p0, v2, p1, p2}, Lorg/mortbay/jetty/handler/HandlerCollection;->expandHandler(Lorg/mortbay/jetty/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    return-object p1
.end method

.method public getHandlers()[Lorg/mortbay/jetty/Handler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x0

    move v1, v2

    .line 110
    :goto_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 114
    :try_start_0
    iget-object v3, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    aget-object v3, v3, v1

    invoke-interface {v3, p1, p2, p3, p4}, Lorg/mortbay/jetty/Handler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    throw v0

    .line 120
    :catch_1
    move-exception v0

    .line 122
    throw v0

    .line 124
    :catch_2
    move-exception v3

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/mortbay/util/MultiException;

    invoke-direct {v0}, Lorg/mortbay/util/MultiException;-><init>()V

    .line 128
    :cond_0
    invoke-virtual {v0, v3}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    :cond_1
    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {v0}, Lorg/mortbay/util/MultiException;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 134
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-virtual {v0, v2}, Lorg/mortbay/util/MultiException;->getThrowable(I)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 136
    :cond_2
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 140
    :cond_3
    return-void
.end method

.method public removeHandler(Lorg/mortbay/jetty/Handler;)V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 206
    invoke-static {v0, p1}, Lorg/mortbay/util/LazyList;->removeFromArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/handler/HandlerCollection;->setHandlers([Lorg/mortbay/jetty/Handler;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setHandlers([Lorg/mortbay/jetty/Handler;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 66
    :goto_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v2

    const-string/jumbo v3, "handler"

    invoke-virtual {v2, p0, v0, p1, v3}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v3

    .line 70
    new-instance v4, Lorg/mortbay/util/MultiException;

    invoke-direct {v4}, Lorg/mortbay/util/MultiException;-><init>()V

    move v2, v1

    .line 71
    :goto_1
    if-eqz p1, :cond_3

    array-length v5, p1

    if-ge v2, v5, :cond_3

    .line 73
    aget-object v5, p1, v2

    invoke-interface {v5}, Lorg/mortbay/jetty/Handler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v5

    if-eq v5, v3, :cond_1

    .line 74
    aget-object v5, p1, v2

    invoke-interface {v5, v3}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 71
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    goto :goto_0

    .line 78
    :cond_3
    iput-object p1, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    move v2, v1

    .line 80
    :goto_2
    if-eqz v0, :cond_5

    array-length v1, v0

    if-ge v2, v1, :cond_5

    .line 82
    aget-object v1, v0, v2

    if-eqz v1, :cond_4

    .line 86
    :try_start_0
    aget-object v1, v0, v2

    invoke-interface {v1}, Lorg/mortbay/jetty/Handler;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    aget-object v1, v0, v2

    invoke-interface {v1}, Lorg/mortbay/jetty/Handler;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_4
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 89
    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v4, v1}, Lorg/mortbay/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 96
    :cond_5
    invoke-virtual {v4}, Lorg/mortbay/util/MultiException;->ifExceptionThrowRuntime()V

    .line 97
    return-void
.end method

.method public setServer(Lorg/mortbay/jetty/Server;)V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    .line 179
    invoke-super {p0, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 181
    invoke-virtual {p0}, Lorg/mortbay/jetty/handler/HandlerCollection;->getHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v2

    .line 182
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 183
    aget-object v3, v2, v0

    invoke-interface {v3, p1}, Lorg/mortbay/jetty/Handler;->setServer(Lorg/mortbay/jetty/Server;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    .line 186
    invoke-virtual {p1}, Lorg/mortbay/jetty/Server;->getContainer()Lorg/mortbay/component/Container;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/mortbay/jetty/handler/HandlerCollection;->_handlers:[Lorg/mortbay/jetty/Handler;

    const-string/jumbo v3, "handler"

    invoke-virtual {v0, p0, v1, v2, v3}, Lorg/mortbay/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    :cond_1
    return-void
.end method

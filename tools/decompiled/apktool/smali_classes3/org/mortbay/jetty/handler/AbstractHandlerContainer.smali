.class public abstract Lorg/mortbay/jetty/handler/AbstractHandlerContainer;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "AbstractHandlerContainer.java"

# interfaces
.implements Lorg/mortbay/jetty/HandlerContainer;


# static fields
.field static class$org$mortbay$jetty$Handler:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 39
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 45
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
.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 68
    return-object p1
.end method

.method protected expandHandler(Lorg/mortbay/jetty/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object p2

    .line 77
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    :cond_2
    invoke-static {p2, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 80
    :cond_3
    instance-of v0, p1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;

    if-eqz v0, :cond_4

    .line 81
    check-cast p1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;

    invoke-virtual {p1, p2, p3}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 82
    :cond_4
    instance-of v0, p1, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v0, :cond_0

    .line 84
    check-cast p1, Lorg/mortbay/jetty/HandlerContainer;

    .line 85
    if-nez p3, :cond_5

    invoke-interface {p1}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    .line 86
    :goto_1
    invoke-static {p2, v0}, Lorg/mortbay/util/LazyList;->addArray(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 85
    :cond_5
    invoke-interface {p1, p3}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v0

    goto :goto_1
.end method

.method public getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/Handler;

    goto :goto_0
.end method

.method public getChildHandlers()[Lorg/mortbay/jetty/Handler;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0, v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    sget-object v0, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.Handler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    return-object v0

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    sget-object v0, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.mortbay.jetty.Handler"

    invoke-static {v0}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, v0}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    check-cast v0, [Lorg/mortbay/jetty/Handler;

    return-object v0

    :cond_0
    sget-object v0, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    goto :goto_0
.end method

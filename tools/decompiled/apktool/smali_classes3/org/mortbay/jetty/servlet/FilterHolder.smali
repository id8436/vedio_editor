.class public Lorg/mortbay/jetty/servlet/FilterHolder;
.super Lorg/mortbay/jetty/servlet/Holder;
.source "FilterHolder.java"


# static fields
.field static class$javax$servlet$Filter:Ljava/lang/Class;


# instance fields
.field private transient _config:Lorg/mortbay/jetty/servlet/FilterHolder$Config;

.field private transient _filter:Ljavax/servlet/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/Holder;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/Holder;-><init>(Ljava/lang/Class;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Filter;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/mortbay/jetty/servlet/Holder;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

    .line 75
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 83
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

.method public static dispatch(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "request"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    .line 41
    :cond_0
    const-string/jumbo v0, "forward"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const/4 v0, 0x2

    goto :goto_0

    .line 43
    :cond_1
    const-string/jumbo v0, "include"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const/4 v0, 0x4

    goto :goto_0

    .line 45
    :cond_2
    const-string/jumbo v0, "error"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    const/16 v0, 0x8

    goto :goto_0

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public destroyInstance(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_0
    check-cast p1, Ljavax/servlet/Filter;

    .line 127
    invoke-interface {p1}, Ljavax/servlet/Filter;->destroy()V

    .line 128
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/FilterHolder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeFilterDestroy(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;

    goto :goto_0
.end method

.method public doStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStart()V

    .line 83
    sget-object v0, Lorg/mortbay/jetty/servlet/FilterHolder;->class$javax$servlet$Filter:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "javax.servlet.Filter"

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/servlet/FilterHolder;->class$javax$servlet$Filter:Ljava/lang/Class;

    :goto_0
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " is not a javax.servlet.Filter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->stop()V

    .line 88
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    sget-object v0, Lorg/mortbay/jetty/servlet/FilterHolder;->class$javax$servlet$Filter:Ljava/lang/Class;

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    if-nez v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/FilterHolder;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Filter;

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    .line 94
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/FilterHolder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeFilter(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    .line 96
    new-instance v0, Lorg/mortbay/jetty/servlet/FilterHolder$Config;

    invoke-direct {v0, p0}, Lorg/mortbay/jetty/servlet/FilterHolder$Config;-><init>(Lorg/mortbay/jetty/servlet/FilterHolder;)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_config:Lorg/mortbay/jetty/servlet/FilterHolder$Config;

    .line 97
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_config:Lorg/mortbay/jetty/servlet/FilterHolder$Config;

    invoke-interface {v0, v1}, Ljavax/servlet/Filter;->init(Ljavax/servlet/FilterConfig;)V

    .line 98
    return-void
.end method

.method public doStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    if-eqz v0, :cond_0

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_extInstance:Z

    if-nez v0, :cond_1

    .line 115
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    .line 117
    :cond_1
    iput-object v1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_config:Lorg/mortbay/jetty/servlet/FilterHolder$Config;

    .line 118
    invoke-super {p0}, Lorg/mortbay/jetty/servlet/Holder;->doStop()V

    .line 119
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFilter()Ljavax/servlet/Filter;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    return-object v0
.end method

.method public declared-synchronized setFilter(Ljavax/servlet/Filter;)V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/servlet/FilterHolder;->_extInstance:Z

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 137
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

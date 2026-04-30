.class public Lorg/mortbay/jetty/nio/InheritedChannelConnector;
.super Lorg/mortbay/jetty/nio/SelectChannelConnector;
.source "InheritedChannelConnector.java"


# static fields
.field static class$java$lang$System:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 35
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
.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    monitor-enter p0

    .line 35
    :try_start_0
    sget-object v0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->class$java$lang$System:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "java.lang.System"

    invoke-static {v0}, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->class$java$lang$System:Ljava/lang/Class;

    :goto_0
    const-string/jumbo v1, "inheritedChannel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/Channel;

    .line 39
    instance-of v1, v0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Ljava/nio/channels/ServerSocketChannel;

    iput-object v0, p0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->_acceptChannel:Ljava/nio/channels/ServerSocketChannel;

    if-nez v0, :cond_3

    .line 52
    invoke-super {p0}, Lorg/mortbay/jetty/nio/SelectChannelConnector;->open()V

    .line 55
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    return-void

    .line 35
    :cond_2
    :try_start_2
    sget-object v0, Lorg/mortbay/jetty/nio/InheritedChannelConnector;->class$java$lang$System:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    :try_start_3
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 54
    :cond_3
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "No System.inheritedChannel()"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

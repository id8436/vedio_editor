.class public Lorg/mortbay/jetty/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 35
    array-length v0, p0

    if-lt v0, v6, :cond_0

    array-length v0, p0

    if-le v0, v7, :cond_1

    .line 37
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java org.mortbay.jetty.Main [<addr>:]<port>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> docroot"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> -webapp myapp.war"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java org.mortbay.jetty.Main [<addr>:]<port> -webapps webapps"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> docroot"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> -webapp myapp.war"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v1, "Usage - java -jar jetty-x.x.x-standalone.jar [<addr>:]<port> -webapps webapps"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 51
    :cond_1
    :try_start_0
    new-instance v1, Lorg/mortbay/jetty/Server;

    invoke-direct {v1}, Lorg/mortbay/jetty/Server;-><init>()V

    .line 52
    new-instance v2, Lorg/mortbay/jetty/handler/ContextHandlerCollection;

    invoke-direct {v2}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;-><init>()V

    .line 53
    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Server;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 55
    new-instance v0, Lorg/mortbay/jetty/bio/SocketConnector;

    invoke-direct {v0}, Lorg/mortbay/jetty/bio/SocketConnector;-><init>()V

    .line 56
    const/4 v3, 0x0

    aget-object v3, p0, v3

    .line 57
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 58
    if-gez v4, :cond_3

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/bio/SocketConnector;->setPort(I)V

    .line 65
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/mortbay/jetty/Connector;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/Server;->setConnectors([Lorg/mortbay/jetty/Connector;)V

    .line 67
    array-length v0, p0

    if-ge v0, v7, :cond_5

    .line 69
    new-instance v3, Lorg/mortbay/jetty/handler/ContextHandler;

    invoke-direct {v3}, Lorg/mortbay/jetty/handler/ContextHandler;-><init>()V

    .line 70
    const-string/jumbo v0, "/"

    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setContextPath(Ljava/lang/String;)V

    .line 71
    array-length v0, p0

    if-ne v0, v6, :cond_4

    const-string/jumbo v0, "."

    :goto_1
    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setResourceBase(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-direct {v0}, Lorg/mortbay/jetty/servlet/ServletHandler;-><init>()V

    .line 73
    const-string/jumbo v4, "org.mortbay.jetty.servlet.DefaultServlet"

    const-string/jumbo v5, "/"

    invoke-virtual {v0, v4, v5}, Lorg/mortbay/jetty/servlet/ServletHandler;->addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 74
    invoke-virtual {v3, v0}, Lorg/mortbay/jetty/handler/ContextHandler;->setHandler(Lorg/mortbay/jetty/Handler;)V

    .line 75
    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V

    .line 89
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->start()V

    .line 96
    :goto_3
    return-void

    .line 62
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/bio/SocketConnector;->setHost(Ljava/lang/String;)V

    .line 63
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/bio/SocketConnector;->setPort(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 71
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, p0, v0

    goto :goto_1

    .line 77
    :cond_5
    const-string/jumbo v0, "-webapps"

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    const/4 v0, 0x2

    aget-object v0, p0, v0

    const-string/jumbo v2, "org/mortbay/jetty/webapp/webdefault.xml"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->addWebApplications(Lorg/mortbay/jetty/Server;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 81
    :cond_6
    const-string/jumbo v0, "-webapp"

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v0, Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-direct {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;-><init>()V

    .line 84
    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWar(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->setContextPath(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2, v0}, Lorg/mortbay/jetty/handler/ContextHandlerCollection;->addHandler(Lorg/mortbay/jetty/Handler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.class public Lorg/mortbay/jetty/handler/DebugHandler;
.super Lorg/mortbay/jetty/handler/HandlerWrapper;
.source "DebugHandler.java"


# instance fields
.field private _date:Lorg/mortbay/util/DateCache;

.field private _out:Ljava/io/OutputStream;

.field private _print:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;-><init>()V

    .line 42
    new-instance v0, Lorg/mortbay/util/DateCache;

    const-string/jumbo v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/mortbay/util/DateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lorg/mortbay/util/RolloverFileOutputStream;

    const-string/jumbo v1, "./logs/yyyy_mm_dd.debug.log"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/mortbay/util/RolloverFileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    .line 126
    :cond_0
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    .line 127
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStart()V

    .line 128
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    invoke-super {p0}, Lorg/mortbay/jetty/handler/HandlerWrapper;->doStop()V

    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 137
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    move-object v1, p3

    .line 54
    check-cast v1, Lorg/mortbay/jetty/Response;

    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v3, 0x0

    .line 60
    const-string/jumbo v2, "org.mortbay.jetty.thread.name"

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    if-nez v2, :cond_0

    .line 62
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, "Host"

    invoke-virtual {v0, v4}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getUri()Lorg/mortbay/jetty/HttpURI;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    :goto_0
    const/4 v4, 0x0

    .line 69
    :try_start_0
    iget-object v8, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    invoke-virtual {v8}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v8

    .line 70
    iget-object v9, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    invoke-virtual {v9}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v9

    .line 72
    if-eqz v3, :cond_3

    .line 73
    iget-object v3, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v0, 0x63

    if-le v9, v0, :cond_1

    const-string/jumbo v0, "."

    :goto_1
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v8, " RETRY"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 77
    invoke-super/range {p0 .. p4}, Lorg/mortbay/jetty/handler/HandlerWrapper;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    :try_end_0
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    invoke-virtual {v0}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v3, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    invoke-virtual {v3}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v3

    .line 113
    iget-object v5, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/16 v0, 0x63

    if-le v3, v0, :cond_c

    const-string/jumbo v0, "."

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    if-nez v4, :cond_e

    const-string/jumbo v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    return-void

    .line 64
    :cond_0
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x9

    if-le v9, v0, :cond_2

    :try_start_1
    const-string/jumbo v0, ".0"

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v0, ".00"

    goto/16 :goto_1

    .line 75
    :cond_3
    iget-object v10, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v3, 0x63

    if-le v9, v3, :cond_4

    const-string/jumbo v3, "."

    :goto_5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getRemoteAddr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v8, "Cookie"

    invoke-virtual {v0, v8}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v8, "; "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v8, "User-Agent"

    invoke-virtual {v0, v8}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 81
    const/4 v3, 0x1

    .line 82
    :try_start_2
    const-string/jumbo v5, "org.mortbay.jetty.thread.name"

    invoke-interface {p2, v5, v2}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    move-object v11, v4

    move v4, v3

    move-object v3, v11

    :goto_6
    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    invoke-virtual {v5}, Lorg/mortbay/util/DateCache;->now()Ljava/lang/String;

    move-result-object v5

    .line 109
    iget-object v6, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_date:Lorg/mortbay/util/DateCache;

    invoke-virtual {v6}, Lorg/mortbay/util/DateCache;->lastMs()I

    move-result v6

    .line 110
    if-eqz v4, :cond_6

    .line 111
    iget-object v3, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v1, 0x63

    if-le v6, v1, :cond_7

    const-string/jumbo v1, "."

    :goto_7
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " SUSPEND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :goto_8
    throw v0

    .line 75
    :cond_4
    const/16 v3, 0x9

    if-le v9, v3, :cond_5

    :try_start_3
    const-string/jumbo v3, ".0"

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v3, ".00"
    :try_end_3
    .catch Lorg/mortbay/jetty/RetryRequest; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/servlet/ServletException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_5

    .line 85
    :catch_1
    move-exception v0

    .line 87
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v3

    .line 88
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 107
    :catchall_1
    move-exception v0

    move v4, v5

    goto :goto_6

    .line 90
    :catch_2
    move-exception v0

    .line 92
    :try_start_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljavax/servlet/ServletException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v3

    .line 93
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 95
    :catch_3
    move-exception v0

    .line 97
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v3

    .line 98
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 100
    :catch_4
    move-exception v0

    .line 102
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v3

    .line 103
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 113
    :cond_6
    iget-object v7, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_print:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v4, 0x63

    if-le v6, v4, :cond_9

    const-string/jumbo v4, "."

    :goto_9
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    if-nez v3, :cond_b

    const-string/jumbo v1, ""

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 111
    :cond_7
    const/16 v1, 0x9

    if-le v6, v1, :cond_8

    const-string/jumbo v1, ".0"

    goto/16 :goto_7

    :cond_8
    const-string/jumbo v1, ".00"

    goto/16 :goto_7

    .line 113
    :cond_9
    const/16 v4, 0x9

    if-le v6, v4, :cond_a

    const-string/jumbo v4, ".0"

    goto :goto_9

    :cond_a
    const-string/jumbo v4, ".00"

    goto :goto_9

    :cond_b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_c
    const/16 v0, 0x9

    if-le v3, v0, :cond_d

    const-string/jumbo v0, ".0"

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v0, ".00"

    goto/16 :goto_3

    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 107
    :catchall_2
    move-exception v0

    move-object v3, v4

    move v4, v5

    goto/16 :goto_6
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lorg/mortbay/jetty/handler/DebugHandler;->_out:Ljava/io/OutputStream;

    .line 153
    return-void
.end method

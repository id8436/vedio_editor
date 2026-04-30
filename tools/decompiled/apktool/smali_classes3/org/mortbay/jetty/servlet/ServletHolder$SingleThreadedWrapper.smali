.class Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;
.super Ljava/lang/Object;
.source "ServletHolder.java"

# interfaces
.implements Ljavax/servlet/Servlet;


# instance fields
.field _stack:Ljava/util/Stack;

.field private final this$0:Lorg/mortbay/jetty/servlet/ServletHolder;


# direct methods
.method private constructor <init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V
    .locals 1

    .prologue
    .line 568
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/servlet/ServletHolder;Lorg/mortbay/jetty/servlet/ServletHolder$1;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;-><init>(Lorg/mortbay/jetty/servlet/ServletHolder;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 574
    monitor-enter p0

    .line 576
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 577
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    invoke-interface {v0}, Ljavax/servlet/Servlet;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    return-void
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->access$100(Lorg/mortbay/jetty/servlet/ServletHolder;)Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    move-result-object v0

    return-object v0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 593
    monitor-enter p0

    .line 595
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 599
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    .line 600
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object v0

    .line 601
    invoke-interface {v0, p1}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V

    .line 602
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 614
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 606
    throw v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 608
    :catch_1
    move-exception v0

    .line 610
    :try_start_3
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    monitor-enter p0

    .line 621
    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 622
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    .line 644
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :try_start_1
    invoke-interface {v0, p1, p2}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 652
    monitor-enter p0

    .line 654
    :try_start_2
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 657
    return-void

    .line 627
    :cond_0
    :try_start_3
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/Servlet;

    .line 628
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/ServletHandler;->customizeServlet(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->this$0:Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->access$100(Lorg/mortbay/jetty/servlet/ServletHolder;)Lorg/mortbay/jetty/servlet/ServletHolder$Config;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_3
    .catch Ljavax/servlet/ServletException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 633
    :try_start_4
    throw v0

    .line 644
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 635
    :catch_1
    move-exception v0

    .line 637
    :try_start_5
    throw v0

    .line 639
    :catch_2
    move-exception v0

    .line 641
    new-instance v1, Ljavax/servlet/ServletException;

    invoke-direct {v1, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 655
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 652
    :catchall_2
    move-exception v1

    monitor-enter p0

    .line 654
    :try_start_7
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ServletHolder$SingleThreadedWrapper;->_stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

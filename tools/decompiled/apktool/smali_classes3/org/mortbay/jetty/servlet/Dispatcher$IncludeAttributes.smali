.class Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lorg/mortbay/util/Attributes;


# instance fields
.field _attr:Lorg/mortbay/util/Attributes;

.field _contextPath:Ljava/lang/String;

.field _pathInfo:Ljava/lang/String;

.field _query:Ljava/lang/String;

.field _requestURI:Ljava/lang/String;

.field _servletPath:Ljava/lang/String;

.field private final this$0:Lorg/mortbay/jetty/servlet/Dispatcher;


# direct methods
.method constructor <init>(Lorg/mortbay/jetty/servlet/Dispatcher;Lorg/mortbay/util/Attributes;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->this$0:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_attr:Lorg/mortbay/util/Attributes;

    .line 479
    return-void
.end method


# virtual methods
.method public clearAttributes()V
    .locals 1

    .prologue
    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->this$0:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->access$000(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 488
    const-string/jumbo v0, "javax.servlet.include.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 500
    :goto_0
    return-object v0

    .line 489
    :cond_0
    const-string/jumbo v0, "javax.servlet.include.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    goto :goto_0

    .line 490
    :cond_1
    const-string/jumbo v0, "javax.servlet.include.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    goto :goto_0

    .line 491
    :cond_2
    const-string/jumbo v0, "javax.servlet.include.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    goto :goto_0

    .line 492
    :cond_3
    const-string/jumbo v0, "javax.servlet.include.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    goto :goto_0

    .line 494
    :cond_4
    const-string/jumbo v0, "javax.servlet.include."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 495
    const/4 v0, 0x0

    goto :goto_0

    .line 497
    :cond_5
    const-string/jumbo v0, "org.mortbay.jetty.included"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 498
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 500
    :cond_6
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttributeNames()Ljava/util/Enumeration;
    .locals 4

    .prologue
    .line 506
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 507
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0}, Lorg/mortbay/util/Attributes;->getAttributeNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 508
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    const-string/jumbo v3, "javax.servlet.include."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 512
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->this$0:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->access$000(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 517
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 518
    const-string/jumbo v0, "javax.servlet.include.path_info"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    :goto_1
    const-string/jumbo v0, "javax.servlet.include.request_uri"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 522
    const-string/jumbo v0, "javax.servlet.include.servlet_path"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    const-string/jumbo v0, "javax.servlet.include.context_path"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 525
    const-string/jumbo v0, "javax.servlet.include.query_string"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_2
    :goto_2
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    .line 520
    :cond_3
    const-string/jumbo v0, "javax.servlet.include.path_info"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    :cond_4
    const-string/jumbo v0, "javax.servlet.include.query_string"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->this$0:Lorg/mortbay/jetty/servlet/Dispatcher;

    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->access$000(Lorg/mortbay/jetty/servlet/Dispatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "javax.servlet."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 538
    const-string/jumbo v0, "javax.servlet.include.path_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_pathInfo:Ljava/lang/String;

    .line 552
    :goto_0
    return-void

    .line 539
    :cond_0
    const-string/jumbo v0, "javax.servlet.include.request_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_requestURI:Ljava/lang/String;

    goto :goto_0

    .line 540
    :cond_1
    const-string/jumbo v0, "javax.servlet.include.servlet_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_servletPath:Ljava/lang/String;

    goto :goto_0

    .line 541
    :cond_2
    const-string/jumbo v0, "javax.servlet.include.context_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_contextPath:Ljava/lang/String;

    goto :goto_0

    .line 542
    :cond_3
    const-string/jumbo v0, "javax.servlet.include.query_string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_query:Ljava/lang/String;

    goto :goto_0

    .line 543
    :cond_4
    if-nez p2, :cond_5

    .line 544
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 548
    :cond_6
    if-nez p2, :cond_7

    .line 549
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1}, Lorg/mortbay/util/Attributes;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_7
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/util/Attributes;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "INCLUDE+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Dispatcher$IncludeAttributes;->_attr:Lorg/mortbay/util/Attributes;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

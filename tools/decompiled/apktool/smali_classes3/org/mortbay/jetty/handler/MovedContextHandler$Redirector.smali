.class Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "MovedContextHandler.java"


# instance fields
.field private final this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;


# direct methods
.method private constructor <init>(Lorg/mortbay/jetty/handler/MovedContextHandler;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/jetty/handler/MovedContextHandler;Lorg/mortbay/jetty/handler/MovedContextHandler$1;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;-><init>(Lorg/mortbay/jetty/handler/MovedContextHandler;)V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-object v0, v0, Lorg/mortbay/jetty/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    instance-of v0, p2, Lorg/mortbay/jetty/Request;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lorg/mortbay/jetty/Request;

    .line 105
    :goto_1
    iget-object v1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-object v1, v1, Lorg/mortbay/jetty/handler/MovedContextHandler;->_newContextURL:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-boolean v2, v2, Lorg/mortbay/jetty/handler/MovedContextHandler;->_discardPathInfo:Z

    if-nez v2, :cond_1

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_1
    iget-object v2, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-boolean v2, v2, Lorg/mortbay/jetty/handler/MovedContextHandler;->_discardQuery:Z

    if-nez v2, :cond_2

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 109
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_2
    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lorg/mortbay/jetty/handler/MovedContextHandler$Redirector;->this$0:Lorg/mortbay/jetty/handler/MovedContextHandler;

    iget-boolean v1, v1, Lorg/mortbay/jetty/handler/MovedContextHandler;->_permanent:Z

    if-eqz v1, :cond_3

    .line 113
    const/16 v1, 0x12d

    invoke-interface {p3, v1}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 115
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    goto :goto_0

    .line 103
    :cond_4
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    goto :goto_1
.end method

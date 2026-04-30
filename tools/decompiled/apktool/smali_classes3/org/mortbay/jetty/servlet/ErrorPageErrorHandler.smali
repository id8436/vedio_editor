.class public Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;
.super Lorg/mortbay/jetty/handler/ErrorHandler;
.source "ErrorPageErrorHandler.java"


# static fields
.field static class$javax$servlet$ServletException:Ljava/lang/Class;


# instance fields
.field protected _errorPageList:Ljava/util/List;

.field protected _errorPages:Ljava/util/Map;

.field protected _servletContext:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/ErrorHandler;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .prologue
    .line 73
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
.method public addErrorPage(IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    new-instance v1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;-><init>(Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public addErrorPage(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-static {p1}, Lorg/mortbay/util/TypeUtil;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public addErrorPage(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0}, Lorg/mortbay/jetty/handler/ErrorHandler;->doStart()V

    .line 216
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    .line 217
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-super {p0}, Lorg/mortbay/jetty/handler/ErrorHandler;->doStop()V

    .line 224
    return-void
.end method

.method public getErrorPages()Ljava/util/Map;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 147
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 70
    const/4 v2, 0x0

    .line 71
    const-string/jumbo v0, "javax.servlet.error.exception_type"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 73
    sget-object v1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->class$javax$servlet$ServletException:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string/jumbo v1, "javax.servlet.ServletException"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->class$javax$servlet$ServletException:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 75
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    if-nez v1, :cond_9

    .line 78
    const-string/jumbo v2, "javax.servlet.error.exception"

    invoke-interface {p2, v2}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 79
    :goto_2
    instance-of v3, v2, Ljavax/servlet/ServletException;

    if-eqz v3, :cond_2

    .line 80
    check-cast v2, Ljavax/servlet/ServletException;

    invoke-virtual {v2}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_2

    .line 73
    :cond_1
    sget-object v1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->class$javax$servlet$ServletException:Ljava/lang/Class;

    goto :goto_1

    .line 81
    :cond_2
    if-eqz v2, :cond_9

    .line 82
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 86
    :goto_3
    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    .line 88
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto :goto_3

    .line 92
    :cond_3
    if-nez v1, :cond_4

    .line 95
    const-string/jumbo v0, "javax.servlet.error.status_code"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 96
    if-eqz v0, :cond_4

    .line 98
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lorg/mortbay/util/TypeUtil;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    if-nez v1, :cond_4

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 104
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 106
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 109
    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_4
    if-eqz v1, :cond_8

    .line 119
    const-string/jumbo v0, "org.mortbay.jetty.error_page"

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 122
    :cond_5
    const-string/jumbo v0, "org.mortbay.jetty.error_page"

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/Dispatcher;

    .line 127
    if-eqz v0, :cond_7

    .line 129
    :try_start_0
    invoke-virtual {v0, p2, p3}, Lorg/mortbay/jetty/servlet/Dispatcher;->error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 139
    const-string/jumbo v1, "EXCEPTION "

    invoke-static {v1, v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 104
    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 134
    :cond_7
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "No error page "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :cond_8
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto/16 :goto_0

    :cond_9
    move-object v2, v0

    goto/16 :goto_3

    :cond_a
    move-object v1, v2

    move-object v2, v0

    goto/16 :goto_3
.end method

.method public setErrorPages(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 165
    return-void
.end method

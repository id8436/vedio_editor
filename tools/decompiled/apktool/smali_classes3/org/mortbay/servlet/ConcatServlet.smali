.class public Lorg/mortbay/servlet/ConcatServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "ConcatServlet.java"


# instance fields
.field _context:Ljavax/servlet/ServletContext;

.field _development:Z

.field _lastModified:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    return-void
.end method


# virtual methods
.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 90
    const/16 v0, 0xcc

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string/jumbo v1, "\\&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 95
    const/4 v1, 0x0

    move v2, v3

    .line 96
    :goto_1
    array-length v0, v4

    if-ge v2, v0, :cond_3

    .line 98
    iget-object v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    aget-object v5, v4, v2

    invoke-interface {v0, v5}, Ljavax/servlet/ServletContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_6

    .line 101
    if-nez v1, :cond_2

    .line 96
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 105
    const/16 v0, 0x19f

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 111
    :cond_3
    if-eqz v1, :cond_4

    .line 112
    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 114
    :cond_4
    :goto_3
    array-length v0, v4

    if-ge v3, v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    aget-object v1, v4, v3

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_5

    .line 118
    invoke-interface {v0, p1, p2}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 114
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method protected getLastModified(Ljavax/servlet/http/HttpServletRequest;)J
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_development:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_lastModified:J

    goto :goto_0
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_lastModified:J

    .line 71
    invoke-virtual {p0}, Lorg/mortbay/servlet/ConcatServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_context:Ljavax/servlet/ServletContext;

    .line 72
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "development"

    invoke-virtual {p0, v1}, Lorg/mortbay/servlet/ConcatServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mortbay/servlet/ConcatServlet;->_development:Z

    .line 73
    return-void
.end method

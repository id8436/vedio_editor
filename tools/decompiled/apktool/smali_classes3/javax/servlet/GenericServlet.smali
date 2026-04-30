.class public abstract Ljavax/servlet/GenericServlet;
.super Ljava/lang/Object;
.source "GenericServlet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljavax/servlet/Servlet;
.implements Ljavax/servlet/ServletConfig;


# static fields
.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.LocalStrings"

.field private static lStrings:Ljava/util/ResourceBundle;


# instance fields
.field private transient config:Ljavax/servlet/ServletConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string/jumbo v0, "javax.servlet.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string/jumbo v2, "err.servlet_config_not_initialized"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    invoke-interface {v0, p1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string/jumbo v2, "err.servlet_config_not_initialized"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ljavax/servlet/GenericServlet;->config:Ljavax/servlet/ServletConfig;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string/jumbo v2, "err.servlet_config_not_initialized"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    return-object v0
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 352
    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string/jumbo v2, "err.servlet_config_not_initialized"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getServletName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 240
    iput-object p1, p0, Ljavax/servlet/GenericServlet;->config:Ljavax/servlet/ServletConfig;

    .line 241
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->init()V

    .line 242
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    return-void
.end method

.method public abstract service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

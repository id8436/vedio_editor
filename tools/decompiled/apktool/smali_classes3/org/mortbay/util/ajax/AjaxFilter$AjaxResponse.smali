.class public Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;
.super Ljava/lang/Object;
.source "AjaxFilter.java"


# instance fields
.field private out:Ljava/io/PrintWriter;

.field private request:Ljavax/servlet/http/HttpServletRequest;


# direct methods
.method private constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->out:Ljava/io/PrintWriter;

    iput-object p1, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->request:Ljavax/servlet/http/HttpServletRequest;

    return-void
.end method

.method constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;Lorg/mortbay/util/ajax/AjaxFilter$1;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public elementResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 142
    if-nez p1, :cond_1

    .line 143
    iget-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->request:Ljavax/servlet/http/HttpServletRequest;

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    if-nez v0, :cond_0

    .line 145
    const-string/jumbo v0, "unknown"

    .line 146
    :cond_0
    iget-object v1, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "<response type=\"element\" id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "</response>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public objectResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 151
    if-nez p1, :cond_1

    .line 152
    iget-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->request:Ljavax/servlet/http/HttpServletRequest;

    const-string/jumbo v1, "id"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    if-nez v0, :cond_0

    .line 154
    const-string/jumbo v0, "unknown"

    .line 156
    :cond_0
    iget-object v1, p0, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "<response type=\"object\" id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "</response>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    return-void

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

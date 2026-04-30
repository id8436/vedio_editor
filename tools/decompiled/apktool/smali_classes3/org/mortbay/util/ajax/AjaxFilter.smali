.class public Lorg/mortbay/util/ajax/AjaxFilter;
.super Ljava/lang/Object;
.source "AjaxFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# instance fields
.field context:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method public static encodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    move v1, v2

    move-object v0, v3

    .line 104
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 106
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 108
    sparse-switch v5, :sswitch_data_0

    move-object v4, v3

    .line 115
    :goto_1
    if-eqz v4, :cond_2

    .line 117
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 120
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 122
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :sswitch_0
    const-string/jumbo v4, "&lt;"

    goto :goto_1

    .line 111
    :sswitch_1
    const-string/jumbo v4, "&gt;"

    goto :goto_1

    .line 112
    :sswitch_2
    const-string/jumbo v4, "&amp;"

    goto :goto_1

    .line 124
    :cond_2
    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 128
    :cond_3
    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 130
    :cond_4
    return-object p0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter;->context:Ljavax/servlet/ServletContext;

    .line 99
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 58
    const-string/jumbo v0, "ajax"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string/jumbo v0, "message"

    invoke-interface {p1, v0}, Ljavax/servlet/ServletRequest;->getParameterValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 61
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 63
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .line 64
    check-cast p2, Ljavax/servlet/http/HttpServletResponse;

    .line 66
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 67
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 69
    const-string/jumbo v0, "<ajax-response>"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    new-instance v5, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;

    const/4 v0, 0x0

    invoke-direct {v5, p1, v4, v0}, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/PrintWriter;Lorg/mortbay/util/ajax/AjaxFilter$1;)V

    .line 72
    const/4 v0, 0x0

    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 74
    aget-object v6, v1, v0

    aget-object v7, v2, v0

    invoke-virtual {p0, v6, v7, p1, v5}, Lorg/mortbay/util/ajax/AjaxFilter;->handle(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const-string/jumbo v0, "</ajax-response>"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    const-string/jumbo v1, "Pragma"

    const-string/jumbo v2, "no-cache"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "Cache-Control"

    const-string/jumbo v2, "must-revalidate,no-cache,no-store"

    invoke-interface {p2, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v1, "Expires"

    const-wide/16 v2, 0x0

    invoke-interface {p2, v1, v2, v3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 82
    const-string/jumbo v1, "text/xml; charset=UTF-8"

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 83
    array-length v1, v0

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 84
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/servlet/ServletOutputStream;->write([B)V

    .line 85
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 89
    :goto_1
    return-void

    .line 88
    :cond_1
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_1
.end method

.method public getContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter;->context:Ljavax/servlet/ServletContext;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;)V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "<span class=\"error\">No implementation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "member"

    invoke-interface {p3, v2}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "</span>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lorg/mortbay/util/ajax/AjaxFilter$AjaxResponse;->elementResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/util/ajax/AjaxFilter;->context:Ljavax/servlet/ServletContext;

    .line 44
    return-void
.end method

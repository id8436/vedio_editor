.class public Lorg/mortbay/jetty/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljavax/servlet/http/HttpServletResponse;


# static fields
.field public static final DISABLED:I = -0x1

.field public static final NONE:I = 0x0

.field public static final STREAM:I = 0x1

.field public static final WRITER:I = 0x2

.field private static __nullPrintWriter:Ljava/io/PrintWriter;

.field private static __nullServletOut:Ljavax/servlet/ServletOutputStream;


# instance fields
.field private _cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

.field private _characterEncoding:Ljava/lang/String;

.field private _connection:Lorg/mortbay/jetty/HttpConnection;

.field private _contentType:Ljava/lang/String;

.field private _explicitEncoding:Z

.field private _locale:Ljava/util/Locale;

.field private _mimeType:Ljava/lang/String;

.field private _outputState:I

.field private _reason:Ljava/lang/String;

.field private _status:I

.field private _writer:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-static {}, Lorg/mortbay/util/IO;->getNullWriter()Ljava/io/Writer;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/mortbay/jetty/Response;->__nullPrintWriter:Ljava/io/PrintWriter;

    .line 64
    new-instance v0, Lorg/mortbay/jetty/Response$NullOutput;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mortbay/jetty/Response$NullOutput;-><init>(Lorg/mortbay/jetty/Response$1;)V

    sput-object v0, Lorg/mortbay/jetty/Response;->__nullServletOut:Ljavax/servlet/ServletOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/mortbay/jetty/HttpConnection;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0xc8

    iput v0, p0, Lorg/mortbay/jetty/Response;->_status:I

    .line 90
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    .line 91
    return-void
.end method


# virtual methods
.method public addCookie(Ljavax/servlet/http/Cookie;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->addSetCookie(Ljavax/servlet/http/Cookie;)V

    .line 119
    return-void
.end method

.method public addDateHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->addDateField(Ljava/lang/String;J)V

    .line 454
    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 506
    :cond_0
    return-void
.end method

.method public addIntHeader(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 528
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->addLongField(Ljava/lang/String;J)V

    .line 531
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    int-to-long v2, p2

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 534
    :cond_0
    return-void
.end method

.method public complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->completeResponse()V

    .line 1126
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v1

    .line 138
    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object p1

    .line 140
    :cond_1
    invoke-interface {v1}, Lorg/mortbay/jetty/SessionManager;->getSessionURLPrefix()Ljava/lang/String;

    move-result-object v2

    .line 141
    if-eqz v2, :cond_0

    .line 145
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->isRequestedSessionIdFromCookie()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 147
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 148
    if-eq v1, v4, :cond_0

    .line 150
    const-string/jumbo v0, "?"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 151
    if-gez v0, :cond_3

    .line 152
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 154
    :cond_3
    if-gt v0, v1, :cond_4

    .line 155
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 162
    :cond_5
    invoke-virtual {v0, v5}, Lorg/mortbay/jetty/Request;->getSession(Z)Ljavax/servlet/http/HttpSession;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v1, v0}, Lorg/mortbay/jetty/SessionManager;->isValid(Ljavax/servlet/http/HttpSession;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-interface {v1, v0}, Lorg/mortbay/jetty/SessionManager;->getNodeId(Ljavax/servlet/http/HttpSession;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 179
    if-eq v3, v4, :cond_8

    .line 181
    const-string/jumbo v0, "?"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 182
    if-gez v0, :cond_6

    .line 183
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 185
    :cond_6
    if-gt v0, v3, :cond_7

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 187
    :cond_7
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 192
    :cond_8
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 193
    if-gez v0, :cond_9

    .line 194
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 195
    :cond_9
    if-gez v0, :cond_a

    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 197
    :cond_a
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lorg/mortbay/jetty/Response;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->flushResponse()V

    .line 959
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->getContentBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 565
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 566
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentCount()J
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1135
    :cond_0
    const-wide/16 v0, -0x1

    .line 1136
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->getContentWritten()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getStringField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 489
    if-nez v0, :cond_0

    .line 490
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 491
    :cond_0
    return-object v0
.end method

.method public getHttpFields()Lorg/mortbay/jetty/HttpFields;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 1091
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1092
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 590
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 591
    sget-object v0, Lorg/mortbay/jetty/Response;->__nullServletOut:Ljavax/servlet/ServletOutputStream;

    .line 597
    :goto_0
    return-object v0

    .line 593
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-eq v0, v2, :cond_1

    .line 594
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WRITER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_1
    iput v2, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 597
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    return-object v0
.end method

.method getSetCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lorg/mortbay/jetty/Response;->_status:I

    return v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 612
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 613
    sget-object v0, Lorg/mortbay/jetty/Response;->__nullPrintWriter:Ljava/io/PrintWriter;

    .line 640
    :goto_0
    return-object v0

    .line 615
    :cond_0
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-eq v0, v2, :cond_1

    .line 616
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "STREAM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    if-nez v0, :cond_5

    .line 622
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 624
    if-nez v0, :cond_4

    .line 627
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 628
    const/4 v0, 0x0

    .line 630
    :cond_2
    if-nez v0, :cond_3

    .line 631
    sget-object v0, Lorg/mortbay/util/StringUtil;->__ISO_8859_1:Ljava/lang/String;

    .line 633
    :cond_3
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Response;->setCharacterEncoding(Ljava/lang/String;)V

    .line 637
    :cond_4
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/HttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    .line 639
    :cond_5
    iput v2, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 640
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isResponseCommitted()Z

    move-result v0

    return v0
.end method

.method public isWriting()Z
    .locals 2

    .prologue
    .line 603
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    const/16 v0, 0xc8

    iput v0, p0, Lorg/mortbay/jetty/Response;->_status:I

    .line 101
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    .line 103
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 105
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    .line 107
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 108
    iput v2, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 109
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    .line 110
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 967
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    .line 969
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpFields;->clear()V

    .line 971
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/HttpFields;->getStringField(Lorg/mortbay/io/Buffer;)Ljava/lang/String;

    move-result-object v1

    .line 972
    if-eqz v1, :cond_1

    .line 974
    new-instance v2, Lorg/mortbay/util/QuotedStringTokenizer;

    const-string/jumbo v3, ","

    invoke-direct {v2, v1, v3}, Lorg/mortbay/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/mortbay/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 977
    sget-object v1, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-virtual {v2}, Lorg/mortbay/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v1

    .line 978
    if-eqz v1, :cond_0

    .line 980
    invoke-virtual {v1}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 983
    :sswitch_0
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    sget-object v3, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 987
    :sswitch_1
    const-string/jumbo v1, "HTTP/1.0"

    iget-object v3, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v3}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/Request;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    const-string/jumbo v3, "keep-alive"

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :sswitch_2
    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONNECTION_BUFFER:Lorg/mortbay/io/Buffer;

    const-string/jumbo v3, "TE"

    invoke-virtual {v0, v1, v3}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getConnector()Lorg/mortbay/jetty/Connector;

    move-result-object v1

    invoke-interface {v1}, Lorg/mortbay/jetty/Connector;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Server;->getSendDateHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1000
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    .line 1001
    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->DATE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getTimeStampBuffer()Lorg/mortbay/io/Buffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getTimeStamp()J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;J)V

    .line 1004
    :cond_2
    const/16 v0, 0xc8

    iput v0, p0, Lorg/mortbay/jetty/Response;->_status:I

    .line 1005
    iput-object v6, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    .line 1006
    iput-object v6, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 1007
    iput-object v6, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 1008
    iput-object v6, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 1009
    iput-object v6, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 1010
    iput-boolean v7, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    .line 1011
    iput-object v6, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    .line 1012
    iput v7, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 1013
    iput-object v6, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    .line 1014
    return-void

    .line 980
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    .line 1022
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1023
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->resetBuffer()V

    .line 1025
    return-void
.end method

.method public sendError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->sendProcessing()V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/Response;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xce

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 234
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "Committed before "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    .line 241
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 242
    const-string/jumbo v0, "Expires"

    invoke-virtual {p0, v0, v3}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string/jumbo v0, "Last-Modified"

    invoke-virtual {p0, v0, v3}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v0, "Cache-Control"

    invoke-virtual {p0, v0, v3}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p0, v0, v3}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0, v3}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iput v2, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    .line 249
    invoke-virtual {p0, p1, p2}, Lorg/mortbay/jetty/Response;->setStatus(ILjava/lang/String;)V

    .line 251
    if-nez p2, :cond_a

    .line 252
    invoke-static {p1}, Lorg/mortbay/jetty/HttpGenerator;->getReason(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_1
    const/16 v1, 0xcc

    if-eq p1, v1, :cond_8

    const/16 v1, 0x130

    if-eq p1, v1, :cond_8

    if-eq p1, v4, :cond_8

    const/16 v1, 0xc8

    if-lt p1, v1, :cond_8

    .line 260
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v4

    .line 263
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v1

    .line 264
    if-eqz v1, :cond_9

    .line 265
    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/handler/ContextHandler;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v1

    .line 266
    :goto_2
    if-eqz v1, :cond_3

    .line 269
    const-string/jumbo v2, "javax.servlet.error.status_code"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    const-string/jumbo v2, "javax.servlet.error.message"

    invoke-virtual {v4, v2, v0}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string/jumbo v0, "javax.servlet.error.request_uri"

    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string/jumbo v0, "javax.servlet.error.servlet_name"

    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/mortbay/jetty/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v0, p0, v2}, Lorg/mortbay/jetty/handler/ErrorHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    .line 330
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_0

    .line 278
    :cond_3
    const-string/jumbo v1, "Cache-Control"

    const-string/jumbo v3, "must-revalidate,no-cache,no-store"

    invoke-virtual {p0, v1, v3}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v1, "text/html; charset=iso-8859-1"

    invoke-virtual {p0, v1}, Lorg/mortbay/jetty/Response;->setContentType(Ljava/lang/String;)V

    .line 280
    new-instance v3, Lorg/mortbay/util/ByteArrayISO8859Writer;

    const/16 v1, 0x800

    invoke-direct {v3, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;-><init>(I)V

    .line 281
    if-eqz v0, :cond_4

    .line 283
    const-string/jumbo v1, "&"

    const-string/jumbo v5, "&amp;"

    invoke-static {v0, v1, v5}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string/jumbo v1, "<"

    const-string/jumbo v5, "&lt;"

    invoke-static {v0, v1, v5}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string/jumbo v1, ">"

    const-string/jumbo v5, "&gt;"

    invoke-static {v0, v1, v5}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_4
    invoke-virtual {v4}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_5

    .line 290
    const-string/jumbo v4, "&"

    const-string/jumbo v5, "&amp;"

    invoke-static {v1, v4, v5}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    const-string/jumbo v4, "<"

    const-string/jumbo v5, "&lt;"

    invoke-static {v1, v4, v5}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    const-string/jumbo v4, ">"

    const-string/jumbo v5, "&gt;"

    invoke-static {v1, v4, v5}, Lorg/mortbay/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_5
    const-string/jumbo v4, "<html>\n<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"/>\n"

    invoke-virtual {v3, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v4, "<title>Error "

    invoke-virtual {v3, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 298
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(C)V

    .line 299
    if-nez v0, :cond_6

    .line 300
    invoke-static {p1}, Lorg/mortbay/jetty/HttpGenerator;->getReason(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_6
    invoke-virtual {v3, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v4, "</title>\n</head>\n<body>\n<h2>HTTP ERROR: "

    invoke-virtual {v3, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 304
    const-string/jumbo v4, "</h2>\n<p>Problem accessing "

    invoke-virtual {v3, v4}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v3, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v1, ". Reason:\n<pre>    "

    invoke-virtual {v3, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "</pre>"

    invoke-virtual {v3, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "</p>\n<hr /><i><small>Powered by Jetty://</small></i>"

    invoke-virtual {v3, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    move v0, v2

    .line 311
    :goto_4
    const/16 v1, 0x14

    if-ge v0, v1, :cond_7

    .line 312
    const-string/jumbo v1, "\n                                                "

    invoke-virtual {v3, v1}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 313
    :cond_7
    const-string/jumbo v0, "\n</body>\n</html>\n"

    invoke-virtual {v3, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->write(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->flush()V

    .line 316
    invoke-virtual {v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Response;->setContentLength(I)V

    .line 317
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/mortbay/util/ByteArrayISO8859Writer;->writeTo(Ljava/io/OutputStream;)V

    .line 318
    invoke-virtual {v3}, Lorg/mortbay/util/ByteArrayISO8859Writer;->destroy()V

    goto/16 :goto_3

    .line 321
    :cond_8
    if-eq p1, v4, :cond_2

    .line 323
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 324
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequestFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    .line 325
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 326
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 327
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    goto/16 :goto_3

    :cond_9
    move-object v1, v3

    goto/16 :goto_2

    :cond_a
    move-object v0, p2

    goto/16 :goto_1
.end method

.method public sendProcessing()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 355
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    .line 356
    instance-of v1, v0, Lorg/mortbay/jetty/HttpGenerator;

    if-eqz v1, :cond_0

    .line 358
    check-cast v0, Lorg/mortbay/jetty/HttpGenerator;

    .line 360
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    const-string/jumbo v2, "Expect"

    invoke-virtual {v1, v2}, Lorg/mortbay/jetty/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_0

    const-string/jumbo v2, "102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpGenerator;->getVersion()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 364
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpGenerator;->isPersistent()Z

    move-result v1

    .line 365
    const/16 v2, 0x66

    invoke-virtual {v0, v2, v4}, Lorg/mortbay/jetty/HttpGenerator;->setResponse(ILjava/lang/String;)V

    .line 366
    invoke-virtual {v0, v4, v3}, Lorg/mortbay/jetty/HttpGenerator;->completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V

    .line 367
    invoke-virtual {v0, v3}, Lorg/mortbay/jetty/HttpGenerator;->setPersistent(Z)V

    .line 368
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpGenerator;->complete()V

    .line 369
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpGenerator;->flush()J

    .line 370
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/mortbay/jetty/HttpGenerator;->reset(Z)V

    .line 371
    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpGenerator;->setPersistent(Z)V

    .line 374
    :cond_0
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 385
    :cond_0
    if-nez p1, :cond_1

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 388
    :cond_1
    invoke-static {p1}, Lorg/mortbay/util/URIUtil;->hasScheme(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 390
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getRootURL()Ljava/lang/StringBuffer;

    move-result-object v1

    .line 391
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    new-instance v0, Lorg/mortbay/jetty/HttpURI;

    invoke-direct {v0, p1}, Lorg/mortbay/jetty/HttpURI;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getDecodedPath()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Lorg/mortbay/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 409
    if-nez v2, :cond_6

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 395
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    .line 396
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    :goto_2
    invoke-static {v0, p1}, Lorg/mortbay/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    if-nez v0, :cond_4

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "path cannot be above root"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_3
    invoke-static {v0}, Lorg/mortbay/util/URIUtil;->parentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 400
    :cond_4
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 401
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 402
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 411
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 413
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/Request;->getRootURL()Ljava/lang/StringBuffer;

    move-result-object v1

    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 417
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    :cond_7
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 422
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpURI;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 428
    :cond_9
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->resetBuffer()V

    .line 430
    const-string/jumbo v0, "Location"

    invoke-virtual {p0, v0, p1}, Lorg/mortbay/jetty/Response;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/Response;->setStatus(I)V

    .line 432
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->complete()V

    goto/16 :goto_0
.end method

.method public setBufferSize(I)V
    .locals 4

    .prologue
    .line 938
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getContentCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 939
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Committed or content written"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getGenerator()Lorg/mortbay/jetty/Generator;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mortbay/jetty/Generator;->increaseContentBufferSize(I)V

    .line 941
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 649
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    .line 656
    if-nez p1, :cond_3

    .line 659
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 661
    iput-object v2, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_2

    .line 663
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 665
    :cond_2
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_3
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 672
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 675
    if-gez v0, :cond_5

    .line 677
    iput-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_4

    .line 680
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_4

    .line 683
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 684
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    .line 688
    :cond_4
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v2, ";= "

    invoke-static {v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 691
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 696
    :cond_5
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    const-string/jumbo v2, "charset="

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 697
    if-gez v0, :cond_6

    .line 699
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v2, ";= "

    invoke-static {v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 710
    :goto_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    :cond_6
    add-int/lit8 v0, v0, 0x8

    .line 704
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 705
    if-gez v1, :cond_7

    .line 706
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v2, ";= "

    invoke-static {v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    goto :goto_1

    .line 708
    :cond_7
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v3, ";= "

    invoke-static {v2, v3}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    goto :goto_1
.end method

.method public setContentLength(I)V
    .locals 4

    .prologue
    .line 726
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 729
    if-ltz p1, :cond_0

    .line 731
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    const-string/jumbo v1, "Content-Length"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 732
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0}, Lorg/mortbay/jetty/Generator;->isContentWritten()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 735
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 736
    :cond_2
    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 740
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/servlet/ServletOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 744
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 772
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    if-nez p1, :cond_3

    .line 781
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    if-nez v0, :cond_2

    .line 782
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 783
    :cond_2
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 784
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 785
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/HttpFields;->remove(Lorg/mortbay/io/Buffer;)V

    goto :goto_0

    .line 791
    :cond_3
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 793
    if-lez v0, :cond_13

    .line 798
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 799
    sget-object v1, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 802
    const-string/jumbo v1, "charset="

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 803
    if-ltz v1, :cond_11

    .line 805
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    .line 806
    add-int/lit8 v2, v1, 0x8

    .line 807
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 809
    iget v4, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 812
    add-int/lit8 v2, v0, 0x1

    if-ne v1, v2, :cond_4

    if-ltz v3, :cond_5

    :cond_4
    add-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_8

    .line 814
    :cond_5
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_7

    .line 816
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_6

    .line 819
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 820
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 824
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 825
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 830
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 831
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 834
    :cond_8
    if-gez v3, :cond_9

    .line 836
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v2, ";= "

    invoke-static {v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 837
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 841
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v2, ";= "

    invoke-static {v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 842
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 845
    :cond_a
    add-int/lit8 v4, v0, 0x1

    if-ne v1, v4, :cond_b

    if-ltz v3, :cond_c

    :cond_b
    add-int/lit8 v4, v0, 0x2

    if-ne v1, v4, :cond_f

    if-gez v3, :cond_f

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_f

    .line 848
    :cond_c
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 849
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 851
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_e

    .line 853
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_d

    .line 856
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 857
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 861
    :cond_d
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 862
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    :cond_e
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 868
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 871
    :cond_f
    if-lez v3, :cond_10

    .line 873
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 874
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 875
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 879
    :cond_10
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 880
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    :cond_11
    iput-object v3, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 887
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    if-nez v0, :cond_12

    :goto_1
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 888
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 887
    :cond_12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v2, ";= "

    invoke-static {v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 893
    :cond_13
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 894
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 896
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 898
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_15

    .line 900
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 901
    if-eqz v0, :cond_14

    .line 903
    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 904
    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    sget-object v2, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {v1, v2, v0}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 908
    :cond_14
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v2, ";= "

    invoke-static {v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 914
    :cond_15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    const-string/jumbo v2, ";= "

    invoke-static {v1, v2}, Lorg/mortbay/util/QuotedStringTokenizer;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 915
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 918
    :cond_16
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_17

    .line 920
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/mortbay/io/BufferCache$CachedBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 921
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)V

    goto/16 :goto_0

    .line 925
    :cond_17
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 926
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setDateHeader(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mortbay/jetty/HttpFields;->putDateField(Ljava/lang/String;J)V

    .line 444
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mortbay/jetty/HttpFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    if-nez p2, :cond_1

    .line 468
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 514
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    .line 517
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    int-to-long v2, p2

    invoke-interface {v0, v2, v3}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 520
    :cond_0
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 5

    .prologue
    .line 1043
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iput-object p1, p0, Lorg/mortbay/jetty/Response;->_locale:Ljava/util/Locale;

    .line 1047
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_LANGUAGE_BUFFER:Lorg/mortbay/io/Buffer;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    .line 1049
    iget-boolean v0, p0, Lorg/mortbay/jetty/Response;->_explicitEncoding:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mortbay/jetty/Response;->_outputState:I

    if-nez v0, :cond_0

    .line 1052
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/Request;->getContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mortbay/jetty/handler/ContextHandler;->getLocaleEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1059
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 1062
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1063
    if-eqz v1, :cond_0

    .line 1065
    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_characterEncoding:Ljava/lang/String;

    .line 1066
    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1067
    if-gez v2, :cond_2

    .line 1069
    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 1070
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    .line 1078
    :goto_1
    sget-object v0, Lorg/mortbay/jetty/MimeTypes;->CACHE:Lorg/mortbay/io/BufferCache;

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mortbay/io/BufferCache;->get(Ljava/lang/String;)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_cachedMimeType:Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 1079
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    sget-object v1, Lorg/mortbay/jetty/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/mortbay/io/Buffer;

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/jetty/HttpFields;->put(Lorg/mortbay/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1074
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    .line 1075
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_mimeType:Ljava/lang/String;

    iput-object v0, p0, Lorg/mortbay/jetty/Response;->_contentType:Ljava/lang/String;

    goto :goto_1
.end method

.method public setLongContentLength(J)V
    .locals 3

    .prologue
    .line 760
    invoke-virtual {p0}, Lorg/mortbay/jetty/Response;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    iget-object v0, v0, Lorg/mortbay/jetty/HttpConnection;->_generator:Lorg/mortbay/jetty/Generator;

    invoke-interface {v0, p1, p2}, Lorg/mortbay/jetty/Generator;->setContentLength(J)V

    .line 763
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v0

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1, p1, p2}, Lorg/mortbay/jetty/HttpFields;->putLongField(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setStatus(I)V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mortbay/jetty/Response;->setStatus(ILjava/lang/String;)V

    .line 543
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v0}, Lorg/mortbay/jetty/HttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iput p1, p0, Lorg/mortbay/jetty/Response;->_status:I

    .line 554
    iput-object p2, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    .line 556
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/mortbay/jetty/Response;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mortbay/jetty/Response;->_connection:Lorg/mortbay/jetty/HttpConnection;

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpConnection;->getResponseFields()Lorg/mortbay/jetty/HttpFields;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mortbay/jetty/HttpFields;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/Response;->_reason:Ljava/lang/String;

    goto :goto_0
.end method

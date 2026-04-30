.class public Lorg/apache/http/impl/client/DefaultRedirectStrategy;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategy.java"

# interfaces
.implements Lorg/apache/http/client/RedirectStrategy;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/client/DefaultRedirectStrategy;

.field public static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REDIRECT_METHODS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultRedirectStrategy;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "HEAD"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->REDIRECT_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method


# virtual methods
.method protected createLocationURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Lorg/apache/http/client/utils/URIBuilder;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;-><init>(Ljava/net/URI;)V

    .line 187
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 191
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->setPath(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    .line 195
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/client/utils/URIBuilder;->build()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid redirect URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocationURI(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 124
    const-string/jumbo v0, "HTTP request"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v0, "HTTP response"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "HTTP context"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    invoke-static {p3}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v2

    .line 131
    const-string/jumbo v0, "location"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/apache/http/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received redirect response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but no location header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string/jumbo v1, "HttpClient"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const-string/jumbo v1, "HttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Redirect requested to location \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    invoke-virtual {v2}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v3

    .line 145
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->createLocationURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 150
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_5

    .line 151
    invoke-virtual {v3}, Lorg/apache/http/client/config/RequestConfig;->isRelativeRedirectsAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 152
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Relative redirect location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' not allowed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Lorg/apache/http/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 156
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 157
    const-string/jumbo v4, "Target host"

    invoke-static {v1, v4}, Lorg/apache/http/util/Asserts;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v4, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 159
    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lorg/apache/http/client/utils/URIUtilsHC4;->rewriteURI(Ljava/net/URI;Lorg/apache/http/HttpHost;Z)Ljava/net/URI;

    move-result-object v1

    .line 160
    invoke-static {v1, v0}, Lorg/apache/http/client/utils/URIUtilsHC4;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 166
    :goto_0
    const-string/jumbo v0, "http.protocol.redirect-locations"

    invoke-virtual {v2, v0}, Lorg/apache/http/client/protocol/HttpClientContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/RedirectLocationsHC4;

    .line 168
    if-nez v0, :cond_3

    .line 169
    new-instance v0, Lorg/apache/http/impl/client/RedirectLocationsHC4;

    invoke-direct {v0}, Lorg/apache/http/impl/client/RedirectLocationsHC4;-><init>()V

    .line 170
    const-string/jumbo v2, "http.protocol.redirect-locations"

    invoke-interface {p3, v2, v0}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    :cond_3
    invoke-virtual {v3}, Lorg/apache/http/client/config/RequestConfig;->isCircularRedirectsAllowed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 173
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/RedirectLocationsHC4;->contains(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    new-instance v0, Lorg/apache/http/client/CircularRedirectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Circular redirect to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_4
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/RedirectLocationsHC4;->add(Ljava/net/URI;)V

    .line 178
    return-object v1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->getLocationURI(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    .line 218
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string/jumbo v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    new-instance v0, Lorg/apache/http/client/methods/HttpHeadHC4;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHeadHC4;-><init>(Ljava/net/URI;)V

    .line 228
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const-string/jumbo v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Lorg/apache/http/client/methods/HttpGetHC4;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGetHC4;-><init>(Ljava/net/URI;)V

    goto :goto_0

    .line 224
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 225
    const/16 v2, 0x133

    if-ne v0, v2, :cond_2

    .line 226
    invoke-static {p1}, Lorg/apache/http/client/methods/RequestBuilder;->copy(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/RequestBuilder;->setUri(Ljava/net/URI;)Lorg/apache/http/client/methods/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/client/methods/RequestBuilder;->build()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_2
    new-instance v0, Lorg/apache/http/client/methods/HttpGetHC4;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGetHC4;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method protected isRedirectable(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 205
    sget-object v2, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->REDIRECT_METHODS:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 206
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    const/4 v0, 0x1

    .line 210
    :cond_0
    return v0

    .line 205
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    const-string/jumbo v2, "HTTP request"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v2, "HTTP response"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 105
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 106
    const-string/jumbo v4, "location"

    invoke-interface {p2, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 107
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 116
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 109
    :pswitch_2
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->isRedirectable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->isRedirectable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

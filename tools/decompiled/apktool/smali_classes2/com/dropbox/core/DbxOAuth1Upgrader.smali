.class public final Lcom/dropbox/core/DbxOAuth1Upgrader;
.super Ljava/lang/Object;
.source "DbxOAuth1Upgrader.java"


# static fields
.field public static final ResponseReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appInfo:Lcom/dropbox/core/DbxAppInfo;

.field private final requestConfig:Lcom/dropbox/core/DbxRequestConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/dropbox/core/DbxOAuth1Upgrader$3;

    invoke-direct {v0}, Lcom/dropbox/core/DbxOAuth1Upgrader$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxOAuth1Upgrader;->ResponseReader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/DbxRequestConfig;Lcom/dropbox/core/DbxAppInfo;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'requestConfig\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'appInfo\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    .line 38
    iput-object p2, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 39
    return-void
.end method

.method private buildOAuth1Header(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string/jumbo v1, "OAuth oauth_version=\"1.0\", oauth_signature_method=\"PLAINTEXT\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v1, ", oauth_consumer_key=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/DbxOAuth1Upgrader;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v1, ", oauth_token=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxOAuth1AccessToken;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/DbxOAuth1Upgrader;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v1, ", oauth_signature=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/DbxOAuth1Upgrader;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/DbxOAuth1AccessToken;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/DbxOAuth1Upgrader;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string/jumbo v1, "UTF-8 should always be supported"

    invoke-static {v1, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private getHeaders(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxOAuth1AccessToken;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    new-instance v1, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string/jumbo v2, "Authorization"

    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxOAuth1Upgrader;->buildOAuth1Header(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-object v0
.end method


# virtual methods
.method public createOAuth2AccessToken(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 48
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'token\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    const-string/jumbo v1, "Dropbox-Java-SDK"

    iget-object v2, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 52
    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1/oauth2/token_from_oauth1"

    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxOAuth1Upgrader;->getHeaders(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/dropbox/core/DbxOAuth1Upgrader$1;

    invoke-direct {v6, p0}, Lcom/dropbox/core/DbxOAuth1Upgrader$1;-><init>(Lcom/dropbox/core/DbxOAuth1Upgrader;)V

    .line 49
    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public disableOAuth1AccessToken(Lcom/dropbox/core/DbxOAuth1AccessToken;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 72
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'token\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->requestConfig:Lcom/dropbox/core/DbxRequestConfig;

    const-string/jumbo v1, "Dropbox-Java-SDK"

    iget-object v2, p0, Lcom/dropbox/core/DbxOAuth1Upgrader;->appInfo:Lcom/dropbox/core/DbxAppInfo;

    .line 76
    invoke-virtual {v2}, Lcom/dropbox/core/DbxAppInfo;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1/disable_access_token"

    const/4 v4, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/dropbox/core/DbxOAuth1Upgrader;->getHeaders(Lcom/dropbox/core/DbxOAuth1AccessToken;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/dropbox/core/DbxOAuth1Upgrader$2;

    invoke-direct {v6, p0}, Lcom/dropbox/core/DbxOAuth1Upgrader$2;-><init>(Lcom/dropbox/core/DbxOAuth1Upgrader;)V

    .line 73
    invoke-static/range {v0 .. v6}, Lcom/dropbox/core/DbxRequestUtil;->doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;

    .line 88
    return-void
.end method

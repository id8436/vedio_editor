.class public Lorg/apache/http/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field static final DEFAULT_USER_AGENT:Ljava/lang/String;


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private backoffManager:Lorg/apache/http/client/BackoffManager;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

.field private connectionStateDisabled:Z

.field private contentCompressionDisabled:Z

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lorg/apache/http/client/CookieStore;

.field private credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

.field private defaultConnectionConfig:Lorg/apache/http/config/ConnectionConfig;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lorg/apache/http/client/config/RequestConfig;

.field private defaultSocketConfig:Lorg/apache/http/config/SocketConfig;

.field private hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private httpprocessor:Lorg/apache/http/protocol/HttpProcessor;

.field private keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private proxy:Lorg/apache/http/HttpHost;

.field private proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

.field private requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field private schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

.field private serviceUnavailStrategy:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

.field private sslSocketFactory:Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

.field private sslcontext:Ljavax/net/ssl/SSLContext;

.field private systemProperties:Z

.field private targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 203
    const-string/jumbo v0, "org.apache.http.client"

    const-class v1, Lorg/apache/http/impl/client/HttpClientBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/VersionInfoHC4;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lorg/apache/http/util/VersionInfoHC4;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/util/VersionInfoHC4;->getRelease()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Apache-HttpClient/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (java 1.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/HttpClientBuilder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 208
    return-void

    .line 205
    :cond_0
    const-string/jumbo v0, "UNAVAILABLE"

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 197
    iput v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    .line 216
    return-void
.end method

.method public static create()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lorg/apache/http/impl/client/HttpClientBuilder;

    invoke-direct {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    invoke-static {p0}, Lorg/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 688
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addCloseable(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 675
    if-nez p1, :cond_0

    .line 682
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    .line 681
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final addInterceptorFirst(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 452
    :goto_0
    return-object p0

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 449
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    .line 451
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorFirst(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 418
    :goto_0
    return-object p0

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 415
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    .line 417
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorLast(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 469
    :goto_0
    return-object p0

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 466
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    .line 468
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final addInterceptorLast(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 435
    :goto_0
    return-object p0

    .line 431
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    .line 434
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public build()Lorg/apache/http/impl/client/CloseableHttpClient;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 693
    iget-object v1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 694
    if-nez v1, :cond_0

    .line 695
    new-instance v1, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v1}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    .line 697
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 698
    if-nez v2, :cond_6

    .line 699
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->sslSocketFactory:Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

    .line 700
    if-nez v0, :cond_1

    .line 701
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "https.protocols"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 703
    :goto_0
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "https.cipherSuites"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 705
    :goto_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 706
    if-nez v0, :cond_30

    .line 707
    sget-object v0, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-object v4, v0

    .line 709
    :goto_2
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_f

    .line 710
    new-instance v0, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    iget-object v5, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-direct {v0, v5, v2, v3, v4}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 725
    :cond_1
    :goto_3
    new-instance v2, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v3

    const-string/jumbo v4, "http"

    invoke-static {}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v3

    const-string/jumbo v4, "https"

    invoke-virtual {v3, v4, v0}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;)V

    .line 730
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultSocketConfig:Lorg/apache/http/config/SocketConfig;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultSocketConfig:Lorg/apache/http/config/SocketConfig;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V

    .line 733
    :cond_2
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lorg/apache/http/config/ConnectionConfig;

    if-eqz v0, :cond_3

    .line 734
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lorg/apache/http/config/ConnectionConfig;

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V

    .line 736
    :cond_3
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_4

    .line 737
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v3, "true"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    const-string/jumbo v0, "http.maxConnections"

    const-string/jumbo v3, "5"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 741
    invoke-virtual {v2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 742
    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 745
    :cond_4
    iget v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->maxConnTotal:I

    if-lez v0, :cond_5

    .line 746
    iget v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->maxConnTotal:I

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 748
    :cond_5
    iget v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    if-lez v0, :cond_6

    .line 749
    iget v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    invoke-virtual {v2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    .line 753
    :cond_6
    iget-object v3, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 754
    if-nez v3, :cond_7

    .line 755
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_12

    .line 756
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v3, "true"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 758
    sget-object v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;->INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;

    :goto_4
    move-object v3, v0

    .line 766
    :cond_7
    :goto_5
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 767
    if-nez v4, :cond_8

    .line 768
    sget-object v4, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;->INSTANCE:Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategyHC4;

    .line 770
    :cond_8
    iget-object v5, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 771
    if-nez v5, :cond_9

    .line 772
    sget-object v5, Lorg/apache/http/impl/client/TargetAuthenticationStrategy;->INSTANCE:Lorg/apache/http/impl/client/TargetAuthenticationStrategy;

    .line 774
    :cond_9
    iget-object v6, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 775
    if-nez v6, :cond_a

    .line 776
    sget-object v6, Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;->INSTANCE:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    .line 778
    :cond_a
    iget-object v7, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 779
    if-nez v7, :cond_b

    .line 780
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    if-nez v0, :cond_13

    .line 781
    sget-object v7, Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;->INSTANCE:Lorg/apache/http/impl/client/DefaultUserTokenHandlerHC4;

    .line 786
    :cond_b
    :goto_6
    new-instance v0, Lorg/apache/http/impl/execchain/MainClientExec;

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/impl/execchain/MainClientExec;-><init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V

    .line 795
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->decorateMainExec(Lorg/apache/http/impl/execchain/ClientExecChain;)Lorg/apache/http/impl/execchain/ClientExecChain;

    move-result-object v3

    .line 797
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->httpprocessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 798
    if-nez v0, :cond_1d

    .line 800
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    .line 801
    if-nez v0, :cond_2f

    .line 802
    iget-boolean v1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v1, :cond_c

    .line 803
    const-string/jumbo v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    :cond_c
    if-nez v0, :cond_2f

    .line 806
    sget-object v0, Lorg/apache/http/impl/client/HttpClientBuilder;->DEFAULT_USER_AGENT:Ljava/lang/String;

    move-object v1, v0

    .line 810
    :goto_7
    invoke-static {}, Lorg/apache/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/http/protocol/HttpProcessorBuilder;

    move-result-object v4

    .line 811
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-eqz v0, :cond_14

    .line 812
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequestInterceptor;

    .line 813
    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_8

    :cond_d
    move-object v2, v9

    .line 701
    goto/16 :goto_0

    :cond_e
    move-object v3, v9

    .line 703
    goto/16 :goto_1

    .line 713
    :cond_f
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_10

    .line 714
    new-instance v5, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    invoke-static {v8}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v5, v0, v2, v3, v4}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    move-object v0, v5

    goto/16 :goto_3

    .line 718
    :cond_10
    new-instance v2, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    invoke-static {v8}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v2, v0, v4}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    move-object v0, v2

    goto/16 :goto_3

    .line 760
    :cond_11
    sget-object v0, Lorg/apache/http/impl/NoConnectionReuseStrategyHC4;->INSTANCE:Lorg/apache/http/impl/NoConnectionReuseStrategyHC4;

    goto/16 :goto_4

    .line 763
    :cond_12
    sget-object v3, Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;->INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategyHC4;

    goto/16 :goto_5

    .line 783
    :cond_13
    sget-object v7, Lorg/apache/http/impl/client/NoopUserTokenHandler;->INSTANCE:Lorg/apache/http/impl/client/NoopUserTokenHandler;

    goto :goto_6

    .line 816
    :cond_14
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-eqz v0, :cond_15

    .line 817
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponseInterceptor;

    .line 818
    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_9

    .line 821
    :cond_15
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/http/HttpRequestInterceptor;

    new-instance v5, Lorg/apache/http/client/protocol/RequestDefaultHeadersHC4;

    iget-object v6, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v5, v6}, Lorg/apache/http/client/protocol/RequestDefaultHeadersHC4;-><init>(Ljava/util/Collection;)V

    aput-object v5, v0, v8

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/protocol/RequestContentHC4;

    invoke-direct {v6}, Lorg/apache/http/protocol/RequestContentHC4;-><init>()V

    aput-object v6, v0, v5

    const/4 v5, 0x2

    new-instance v6, Lorg/apache/http/protocol/RequestTargetHostHC4;

    invoke-direct {v6}, Lorg/apache/http/protocol/RequestTargetHostHC4;-><init>()V

    aput-object v6, v0, v5

    const/4 v5, 0x3

    new-instance v6, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v6}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v6, v0, v5

    const/4 v5, 0x4

    new-instance v6, Lorg/apache/http/protocol/RequestUserAgentHC4;

    invoke-direct {v6, v1}, Lorg/apache/http/protocol/RequestUserAgentHC4;-><init>(Ljava/lang/String;)V

    aput-object v6, v0, v5

    const/4 v1, 0x5

    new-instance v5, Lorg/apache/http/client/protocol/RequestExpectContinue;

    invoke-direct {v5}, Lorg/apache/http/client/protocol/RequestExpectContinue;-><init>()V

    aput-object v5, v0, v1

    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addAll([Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    .line 828
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v0, :cond_16

    .line 829
    new-instance v0, Lorg/apache/http/client/protocol/RequestAddCookiesHC4;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestAddCookiesHC4;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    .line 831
    :cond_16
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v0, :cond_17

    .line 832
    new-instance v0, Lorg/apache/http/client/protocol/RequestAcceptEncoding;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    .line 834
    :cond_17
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    if-nez v0, :cond_18

    .line 835
    new-instance v0, Lorg/apache/http/client/protocol/RequestAuthCache;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    .line 837
    :cond_18
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v0, :cond_19

    .line 838
    new-instance v0, Lorg/apache/http/client/protocol/ResponseProcessCookiesHC4;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/ResponseProcessCookiesHC4;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    .line 840
    :cond_19
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v0, :cond_1a

    .line 841
    new-instance v0, Lorg/apache/http/client/protocol/ResponseContentEncoding;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    .line 843
    :cond_1a
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-eqz v0, :cond_1b

    .line 844
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpRequestInterceptor;

    .line 845
    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_a

    .line 848
    :cond_1b
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-eqz v0, :cond_1c

    .line 849
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpResponseInterceptor;

    .line 850
    invoke-virtual {v4, v0}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_b

    .line 853
    :cond_1c
    invoke-virtual {v4}, Lorg/apache/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/http/protocol/HttpProcessor;

    move-result-object v0

    .line 855
    :cond_1d
    new-instance v1, Lorg/apache/http/impl/execchain/ProtocolExec;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/impl/execchain/ProtocolExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/protocol/HttpProcessor;)V

    .line 857
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/HttpClientBuilder;->decorateProtocolExec(Lorg/apache/http/impl/execchain/ClientExecChain;)Lorg/apache/http/impl/execchain/ClientExecChain;

    move-result-object v3

    .line 860
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    if-nez v0, :cond_2e

    .line 861
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 862
    if-nez v0, :cond_1e

    .line 863
    sget-object v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;->INSTANCE:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandlerHC4;

    .line 865
    :cond_1e
    new-instance v1, Lorg/apache/http/impl/execchain/RetryExec;

    invoke-direct {v1, v3, v0}, Lorg/apache/http/impl/execchain/RetryExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/HttpRequestRetryHandler;)V

    move-object v0, v1

    .line 868
    :goto_c
    iget-object v3, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 869
    if-nez v3, :cond_20

    .line 870
    iget-object v1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    .line 871
    if-nez v1, :cond_1f

    .line 872
    sget-object v1, Lorg/apache/http/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/http/impl/conn/DefaultSchemePortResolver;

    .line 874
    :cond_1f
    iget-object v3, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->proxy:Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_29

    .line 875
    new-instance v3, Lorg/apache/http/impl/conn/DefaultProxyRoutePlanner;

    iget-object v4, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->proxy:Lorg/apache/http/HttpHost;

    invoke-direct {v3, v4, v1}, Lorg/apache/http/impl/conn/DefaultProxyRoutePlanner;-><init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/SchemePortResolver;)V

    .line 884
    :cond_20
    :goto_d
    iget-boolean v1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    if-nez v1, :cond_22

    .line 885
    iget-object v1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    .line 886
    if-nez v1, :cond_21

    .line 887
    sget-object v1, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultRedirectStrategy;

    .line 889
    :cond_21
    new-instance v4, Lorg/apache/http/impl/execchain/RedirectExec;

    invoke-direct {v4, v0, v3, v1}, Lorg/apache/http/impl/execchain/RedirectExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/client/RedirectStrategy;)V

    move-object v0, v4

    .line 893
    :cond_22
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

    .line 894
    if-eqz v4, :cond_23

    .line 895
    new-instance v1, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;

    invoke-direct {v1, v0, v4}, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/ServiceUnavailableRetryStrategy;)V

    move-object v0, v1

    .line 898
    :cond_23
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->backoffManager:Lorg/apache/http/client/BackoffManager;

    .line 899
    iget-object v5, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

    .line 900
    if-eqz v4, :cond_2d

    if-eqz v5, :cond_2d

    .line 901
    new-instance v1, Lorg/apache/http/impl/execchain/BackoffStrategyExec;

    invoke-direct {v1, v0, v5, v4}, Lorg/apache/http/impl/execchain/BackoffStrategyExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/ConnectionBackoffStrategy;Lorg/apache/http/client/BackoffManager;)V

    .line 904
    :goto_e
    iget-object v5, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->authSchemeRegistry:Lorg/apache/http/config/Lookup;

    .line 905
    if-nez v5, :cond_24

    .line 906
    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "Basic"

    new-instance v5, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;

    invoke-direct {v5}, Lorg/apache/http/impl/auth/BasicSchemeFactoryHC4;-><init>()V

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "Digest"

    new-instance v5, Lorg/apache/http/impl/auth/DigestSchemeFactoryHC4;

    invoke-direct {v5}, Lorg/apache/http/impl/auth/DigestSchemeFactoryHC4;-><init>()V

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "NTLM"

    new-instance v5, Lorg/apache/http/impl/auth/NTLMSchemeFactory;

    invoke-direct {v5}, Lorg/apache/http/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v5

    .line 912
    :cond_24
    iget-object v4, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lorg/apache/http/config/Lookup;

    .line 913
    if-nez v4, :cond_25

    .line 914
    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "best-match"

    new-instance v6, Lorg/apache/http/impl/cookie/BestMatchSpecFactoryHC4;

    invoke-direct {v6}, Lorg/apache/http/impl/cookie/BestMatchSpecFactoryHC4;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "standard"

    new-instance v6, Lorg/apache/http/impl/cookie/RFC2965SpecFactoryHC4;

    invoke-direct {v6}, Lorg/apache/http/impl/cookie/RFC2965SpecFactoryHC4;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "compatibility"

    new-instance v6, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;

    invoke-direct {v6}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "netscape"

    new-instance v6, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;

    invoke-direct {v6}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecFactoryHC4;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "ignoreCookies"

    new-instance v6, Lorg/apache/http/impl/cookie/IgnoreSpecFactory;

    invoke-direct {v6}, Lorg/apache/http/impl/cookie/IgnoreSpecFactory;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "rfc2109"

    new-instance v6, Lorg/apache/http/impl/cookie/RFC2109SpecFactoryHC4;

    invoke-direct {v6}, Lorg/apache/http/impl/cookie/RFC2109SpecFactoryHC4;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string/jumbo v4, "rfc2965"

    new-instance v6, Lorg/apache/http/impl/cookie/RFC2965SpecFactoryHC4;

    invoke-direct {v6}, Lorg/apache/http/impl/cookie/RFC2965SpecFactoryHC4;-><init>()V

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v4

    .line 925
    :cond_25
    iget-object v6, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 926
    if-nez v6, :cond_26

    .line 927
    new-instance v6, Lorg/apache/http/impl/client/BasicCookieStoreHC4;

    invoke-direct {v6}, Lorg/apache/http/impl/client/BasicCookieStoreHC4;-><init>()V

    .line 930
    :cond_26
    iget-object v7, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 931
    if-nez v7, :cond_27

    .line 932
    iget-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_2b

    .line 933
    new-instance v7, Lorg/apache/http/impl/client/SystemDefaultCredentialsProvider;

    invoke-direct {v7}, Lorg/apache/http/impl/client/SystemDefaultCredentialsProvider;-><init>()V

    .line 939
    :cond_27
    :goto_f
    new-instance v0, Lorg/apache/http/impl/client/InternalHttpClient;

    iget-object v8, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultRequestConfig:Lorg/apache/http/client/config/RequestConfig;

    if-eqz v8, :cond_2c

    iget-object v8, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultRequestConfig:Lorg/apache/http/client/config/RequestConfig;

    :goto_10
    iget-object v10, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-eqz v10, :cond_28

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_28
    invoke-direct/range {v0 .. v9}, Lorg/apache/http/impl/client/InternalHttpClient;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/config/Lookup;Lorg/apache/http/config/Lookup;Lorg/apache/http/client/CookieStore;Lorg/apache/http/client/CredentialsProvider;Lorg/apache/http/client/config/RequestConfig;Ljava/util/List;)V

    return-object v0

    .line 876
    :cond_29
    iget-boolean v3, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v3, :cond_2a

    .line 877
    new-instance v3, Lorg/apache/http/impl/conn/SystemDefaultRoutePlanner;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/apache/http/impl/conn/SystemDefaultRoutePlanner;-><init>(Lorg/apache/http/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    goto/16 :goto_d

    .line 880
    :cond_2a
    new-instance v3, Lorg/apache/http/impl/conn/DefaultRoutePlanner;

    invoke-direct {v3, v1}, Lorg/apache/http/impl/conn/DefaultRoutePlanner;-><init>(Lorg/apache/http/conn/SchemePortResolver;)V

    goto/16 :goto_d

    .line 935
    :cond_2b
    new-instance v7, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicCredentialsProviderHC4;-><init>()V

    goto :goto_f

    .line 939
    :cond_2c
    sget-object v8, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    goto :goto_10

    :cond_2d
    move-object v1, v0

    goto/16 :goto_e

    :cond_2e
    move-object v0, v3

    goto/16 :goto_c

    :cond_2f
    move-object v1, v0

    goto/16 :goto_7

    :cond_30
    move-object v4, v0

    goto/16 :goto_2
.end method

.method protected decorateMainExec(Lorg/apache/http/impl/execchain/ClientExecChain;)Lorg/apache/http/impl/execchain/ClientExecChain;
    .locals 0

    .prologue
    .line 661
    return-object p1
.end method

.method protected decorateProtocolExec(Lorg/apache/http/impl/execchain/ClientExecChain;)Lorg/apache/http/impl/execchain/ClientExecChain;
    .locals 0

    .prologue
    .line 668
    return-object p1
.end method

.method public final disableAuthCaching()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    .line 502
    return-object p0
.end method

.method public final disableAutomaticRetries()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    .line 529
    return-object p0
.end method

.method public final disableConnectionState()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    .line 370
    return-object p0
.end method

.method public final disableContentCompression()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    .line 491
    return-object p0
.end method

.method public final disableCookieManagement()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    .line 480
    return-object p0
.end method

.method public final disableRedirectHandling()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    .line 567
    return-object p0
.end method

.method public final setBackoffManager(Lorg/apache/http/client/BackoffManager;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->backoffManager:Lorg/apache/http/client/BackoffManager;

    .line 584
    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lorg/apache/http/client/ConnectionBackoffStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lorg/apache/http/client/ConnectionBackoffStrategy;

    .line 576
    return-object p0
.end method

.method public final setConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 313
    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 322
    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lorg/apache/http/config/Lookup;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;)",
            "Lorg/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .prologue
    .line 623
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->authSchemeRegistry:Lorg/apache/http/config/Lookup;

    .line 624
    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lorg/apache/http/config/ConnectionConfig;

    .line 304
    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lorg/apache/http/config/Lookup;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;)",
            "Lorg/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .prologue
    .line 634
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lorg/apache/http/config/Lookup;

    .line 635
    return-object p0
.end method

.method public final setDefaultCookieStore(Lorg/apache/http/client/CookieStore;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->cookieStore:Lorg/apache/http/client/CookieStore;

    .line 602
    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->credentialsProvider:Lorg/apache/http/client/CredentialsProvider;

    .line 613
    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .prologue
    .line 400
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    .line 401
    return-object p0
.end method

.method public final setDefaultRequestConfig(Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultRequestConfig:Lorg/apache/http/client/config/RequestConfig;

    .line 645
    return-object p0
.end method

.method public final setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->defaultSocketConfig:Lorg/apache/http/config/SocketConfig;

    .line 293
    return-object p0
.end method

.method public final setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 235
    return-object p0
.end method

.method public final setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->httpprocessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 510
    return-object p0
.end method

.method public final setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 331
    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 281
    iput p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    .line 282
    return-object p0
.end method

.method public final setMaxConnTotal(I)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 270
    iput p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 271
    return-object p0
.end method

.method public final setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->proxy:Lorg/apache/http/HttpHost;

    .line 540
    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lorg/apache/http/client/AuthenticationStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 351
    return-object p0
.end method

.method public final setRedirectStrategy(Lorg/apache/http/client/RedirectStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    .line 559
    return-object p0
.end method

.method public final setRequestExecutor(Lorg/apache/http/protocol/HttpRequestExecutor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->requestExec:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 223
    return-object p0
.end method

.method public final setRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    .line 521
    return-object p0
.end method

.method public final setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 548
    return-object p0
.end method

.method public final setSSLSocketFactory(Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->sslSocketFactory:Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

    .line 260
    return-object p0
.end method

.method public final setSchemePortResolver(Lorg/apache/http/conn/SchemePortResolver;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->schemePortResolver:Lorg/apache/http/conn/SchemePortResolver;

    .line 379
    return-object p0
.end method

.method public final setServiceUnavailableRetryStrategy(Lorg/apache/http/client/ServiceUnavailableRetryStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

    .line 593
    return-object p0
.end method

.method public final setSslcontext(Ljavax/net/ssl/SSLContext;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 248
    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lorg/apache/http/client/AuthenticationStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 341
    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    .line 390
    return-object p0
.end method

.method public final setUserTokenHandler(Lorg/apache/http/client/UserTokenHandler;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 362
    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    .line 654
    return-object p0
.end method

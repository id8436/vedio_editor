.class public Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;
.super Ljava/lang/Object;
.source "AdobeNetworkHttpService.java"


# static fields
.field public static final AdobeNetworkHTTPProgressCompletionFudge:J = 0xaL

.field private static AdobeNetworkHTTPServiceMaxAuthTokenHistory:I = 0x0

.field private static AdobeNetworkHTTPServiceMaxConcurrentRequests:I = 0x0

.field static final NETTAG:Ljava/lang/String; = "NetworkService"

.field private static _authTokenHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private static _recentAuthTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static _recentAuthTokensMutex:Ljava/lang/Object;

.field private static _recentErrorThresholdToDisconnect:I


# instance fields
.field private _accessToken:Ljava/lang/String;

.field private _additionalHTTPHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _applicationName:Ljava/lang/String;

.field private _baseURL:Ljava/net/URL;

.field private _numConcurrentRequests:I

.field private _recentErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

.field private _serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 86
    const/4 v0, 0x5

    sput v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->AdobeNetworkHTTPServiceMaxConcurrentRequests:I

    .line 87
    sput v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->AdobeNetworkHTTPServiceMaxAuthTokenHistory:I

    .line 101
    sput v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorThresholdToDisconnect:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentAuthTokens:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentAuthTokensMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_baseURL:Ljava/net/URL;

    .line 95
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_applicationName:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_additionalHTTPHeaders:Ljava/util/Map;

    .line 97
    iput v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    .line 98
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_accessToken:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;

    .line 100
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 102
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_baseURL:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_applicationName:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_additionalHTTPHeaders:Ljava/util/Map;

    .line 132
    iput v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    .line 134
    sput v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorThresholdToDisconnect:I

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 139
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 142
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Malformed url"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private ConvertHeaderKeyToLowerCase(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 4

    .prologue
    .line 628
    if-nez p1, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 633
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 635
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 639
    if-eqz v1, :cond_2

    .line 640
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 643
    :cond_3
    invoke-virtual {p1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->setHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private _addAdditionalHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V
    .locals 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_additionalHTTPHeaders:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 840
    :cond_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_additionalHTTPHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 837
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private _analyseResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/Runnable;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V
    .locals 6

    .prologue
    const/16 v5, 0x191

    const/4 v1, 0x0

    .line 654
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->ConvertHeaderKeyToLowerCase(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 656
    if-eqz p1, :cond_6

    .line 658
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 660
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentAuthTokensMutex:Ljava/lang/Object;

    monitor-enter v3

    .line 671
    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 672
    if-nez v0, :cond_8

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no-token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeNetworkUtils;->generateUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 677
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentAuthTokens:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 678
    if-eqz v4, :cond_2

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentAuthTokens:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 680
    :goto_1
    if-eqz v0, :cond_3

    .line 682
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 683
    const/4 v0, 0x1

    .line 704
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    :goto_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    if-ne v1, v5, :cond_0

    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_hasUserCancelled(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 710
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;

    invoke-interface {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;->HTTPServiceDidDisconnect(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V

    .line 715
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x190

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->hasFileError()Z

    move-result v1

    if-nez v1, :cond_1

    .line 717
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;

    invoke-interface {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;->HTTPServiceIsActive(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V

    .line 722
    :cond_1
    if-eqz v0, :cond_5

    .line 723
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 793
    :goto_4
    return-void

    :cond_2
    move v0, v1

    .line 678
    goto :goto_1

    .line 685
    :cond_3
    if-eqz v4, :cond_4

    move v0, v1

    .line 687
    goto :goto_2

    .line 691
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;

    if-eqz v0, :cond_7

    .line 693
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->pause()V

    .line 694
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;

    .line 695
    invoke-interface {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;->HTTPServiceAuthenticationDidFail(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Z

    move-result v0

    .line 702
    :goto_5
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentAuthTokens:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 725
    :cond_5
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$11;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$11;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 775
    invoke-direct {p0, v0, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_sendResponse(Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_4

    .line 780
    :cond_6
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$12;

    invoke-direct {v0, p0, p4, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$12;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 791
    invoke-direct {p0, v0, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_sendResponse(Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move-object v2, v0

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_3
.end method

.method private _hasUserCancelled(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Z
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled()Z

    move-result v0

    return v0
.end method

.method private _sendDisconnectError(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 806
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$13;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$13;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;)V

    .line 817
    if-eqz p2, :cond_0

    .line 818
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 823
    :goto_0
    return-void

    .line 820
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private _sendResponse(Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 796
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 797
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    :goto_0
    return-void

    .line 799
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/Runnable;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_analyseResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/Runnable;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_sendDisconnectError(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    return-void
.end method

.method private areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 872
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 874
    const/4 v0, 0x1

    .line 880
    :cond_0
    :goto_0
    return v0

    .line 876
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 878
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private areURLsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 2

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 886
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 888
    const/4 v0, 0x1

    .line 895
    :cond_0
    :goto_0
    return v0

    .line 890
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 892
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public baseURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_baseURL:Ljava/net/URL;

    return-object v0
.end method

.method public clearQueuedRequests()V
    .locals 8

    .prologue
    .line 240
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->shutdownNow()Ljava/util/List;

    .line 241
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 244
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 851
    const/4 v0, 0x0

    .line 854
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    if-eqz v1, :cond_0

    .line 856
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 857
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_baseURL:Ljava/net/URL;

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_baseURL:Ljava/net/URL;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->areURLsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    .line 860
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_applicationName:Ljava/lang/String;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_applicationName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 861
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_accessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_accessToken:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 864
    :cond_0
    return v0
.end method

.method public declared-synchronized getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_accessToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBaseURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_baseURL:Ljava/net/URL;

    return-object v0
.end method

.method public getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_addAdditionalHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V

    .line 387
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;-><init>()V

    .line 389
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;-><init>()V

    .line 391
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpDataDownloadTask;->init(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V

    .line 395
    :try_start_0
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 396
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->setFuture(Ljava/util/concurrent/Future;)V

    .line 397
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->setAccessTokenForRequest(Ljava/lang/String;)V

    .line 398
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-object v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "NetworkService"

    const-string/jumbo v4, "Network Disconnected!"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 7

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_addAdditionalHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V

    .line 329
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;-><init>()V

    .line 331
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$1;

    invoke-direct {v3, p0, v4, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 338
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$2;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 361
    iput-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;->_requestRunner:Ljava/lang/Runnable;

    .line 363
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$RunnableInternal;->runInternal()V

    .line 364
    return-object v4
.end method

.method public getResponseForDownloadRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 8

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_addAdditionalHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V

    .line 431
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;-><init>()V

    .line 432
    invoke-virtual {v5, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->setNotifyHandler(Landroid/os/Handler;)V

    .line 433
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$3;

    invoke-direct {v4, p0, v5, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 440
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 463
    iput-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;->_requestRunner:Ljava/lang/Runnable;

    .line 465
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$RunnableInternal;->runInternal()V

    .line 466
    return-object v5
.end method

.method public getResponseForMultiPartDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeMultiPartData;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_addAdditionalHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V

    .line 588
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-direct {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;-><init>()V

    .line 589
    invoke-virtual {v4, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->setNotifyHandler(Landroid/os/Handler;)V

    .line 590
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$9;

    invoke-direct {v3, p0, v4, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$9;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 597
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$10;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$10;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Ljava/lang/String;Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 620
    iput-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;->_requestRunner:Ljava/lang/Runnable;

    .line 622
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$RunnableInternal;->runInternal()V

    .line 623
    return-object v4
.end method

.method public getResponseForUploadRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 8

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_addAdditionalHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V

    .line 494
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;-><init>()V

    .line 495
    invoke-virtual {v5, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->setNotifyHandler(Landroid/os/Handler;)V

    .line 496
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$5;

    invoke-direct {v4, p0, v5, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 503
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 526
    iput-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;->_requestRunner:Ljava/lang/Runnable;

    .line 528
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$RunnableInternal;->runInternal()V

    .line 529
    return-object v5
.end method

.method public getResponseForUploadRequestFromStream(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/io/InputStream;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 8

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_addAdditionalHttpHeaders(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;)V

    .line 540
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-direct {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;-><init>()V

    .line 541
    invoke-virtual {v5, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->setNotifyHandler(Landroid/os/Handler;)V

    .line 542
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$7;

    invoke-direct {v4, p0, v5, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 549
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/io/InputStream;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 572
    iput-object v0, v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponseHandler;->_requestRunner:Ljava/lang/Runnable;

    .line 574
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService$RunnableInternal;->runInternal()V

    .line 575
    return-object v5
.end method

.method public declared-synchronized hasEncounteredTooManyAuthFailures()Z
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 260
    monitor-enter p0

    .line 262
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->AdobeNetworkHTTPServiceMaxAuthTokenHistory:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 281
    :goto_0
    monitor-exit p0

    return v0

    .line 266
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 267
    const-wide/32 v4, 0x493e0

    .line 269
    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v2, v1

    .line 271
    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 272
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 273
    cmp-long v0, v8, v4

    if-lez v0, :cond_1

    .line 274
    const/4 v0, 0x1

    .line 278
    :goto_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 260
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 845
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 2

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sget v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorThresholdToDisconnect:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->isPaused()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized reconnect()V
    .locals 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 289
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    monitor-enter v1

    .line 291
    :try_start_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_accessToken:Ljava/lang/String;

    .line 293
    if-eqz p1, :cond_1

    .line 294
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->AdobeNetworkHTTPServiceMaxAuthTokenHistory:I

    if-lt v0, v2, :cond_0

    .line 295
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 298
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :goto_0
    monitor-exit v1

    .line 303
    return-void

    .line 300
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_authTokenHistory:Ljava/util/List;

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBaseURL(Ljava/net/URL;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_baseURL:Ljava/net/URL;

    .line 161
    return-void
.end method

.method public setConcurrentRequestCount(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 174
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    .line 175
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    if-ge v0, v1, :cond_0

    .line 176
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    .line 178
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    sget v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->AdobeNetworkHTTPServiceMaxConcurrentRequests:I

    if-le v0, v1, :cond_1

    .line 179
    sget v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->AdobeNetworkHTTPServiceMaxConcurrentRequests:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_numConcurrentRequests:I

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->setCorePoolSize(I)V

    .line 182
    return-void
.end method

.method public setHttpServiceDelegate(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_serviceDelegate:Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;

    .line 148
    return-void
.end method

.method public declared-synchronized setRecentErrorThresholdToDisconnect(I)V
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    sput p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_recentErrorThresholdToDisconnect:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSuspended(Z)V
    .locals 1

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->pause()V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->_requestExecutor:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->resume()V

    goto :goto_0
.end method

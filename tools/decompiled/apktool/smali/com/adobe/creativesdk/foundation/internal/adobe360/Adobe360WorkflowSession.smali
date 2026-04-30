.class public Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;
.super Ljava/lang/Object;
.source "Adobe360WorkflowSession.java"


# static fields
.field private static final Adobe360WorkflowSessionCacheID:Ljava/lang/String; = "com.adobe.cc.360workflow"

.field private static final AdobeActionRegistryCacheGUIDKey:Ljava/lang/String; = "action-registry"

.field private static final AdobeActionRegistryCacheKey:Ljava/lang/String; = "actions-list"

.field private static final AdobeActionRegistryEtagCacheKey:Ljava/lang/String; = "etag"

.field private static final AdobeIfNoneMatchKey:Ljava/lang/String; = "if-none-match"

.field private static _sharedSession:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;


# instance fields
.field private _service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->_sharedSession:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->_service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 71
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->configureCache()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->handleActionRegistryResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->responseFromURLPath(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->actionRegistryFromResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    return-void
.end method

.method private actionRegistryFromResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 258
    .line 259
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 261
    :cond_0
    if-eqz p2, :cond_1

    .line 263
    invoke-interface {p2, v7}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 275
    :goto_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "action-registry"

    const-string/jumbo v3, "actions-list"

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 278
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-string/jumbo v5, "com.adobe.cc.360workflow"

    .line 275
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Adobe360WorkflowSession"

    const-string/jumbo v2, "Failed to add app library list in cache:"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_5

    const-string/jumbo v1, "etag"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "etag"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 287
    :goto_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    const-string/jumbo v2, "action-registry"

    const-string/jumbo v3, "etag"

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 289
    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    const-string/jumbo v5, "com.adobe.cc.360workflow"

    .line 287
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 292
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "Adobe360WorkflowSession"

    const-string/jumbo v2, "Failed to add etag info in cache:"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_4
    if-eqz p2, :cond_1

    .line 297
    invoke-interface {p2, v6}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Adobe360WorkflowSession"

    invoke-static {v1, v2, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v7

    goto :goto_1

    :cond_5
    move-object v1, v7

    .line 285
    goto :goto_2
.end method

.method private configureCache()V
    .locals 7

    .prologue
    .line 76
    const-string/jumbo v0, "com.adobe.cc.360workflow"

    .line 78
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->doesCacheExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheAllowOfflineUse:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 83
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v1

    const-string/jumbo v2, "com.adobe.cc.360workflow"

    const/16 v3, 0x64

    const-wide/high16 v4, 0x41a0000000000000L    # 1.34217728E8

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->configureCache(Ljava/lang/String;IDLjava/util/EnumSet;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "Adobe360WorkflowSession"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSharedSession()Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 94
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->_sharedSession:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    if-nez v2, :cond_1

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    invoke-direct {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->_sharedSession:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    .line 106
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->_sharedSession:Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleActionRegistryResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    .line 221
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    const-string/jumbo v1, "action-registry"

    const-string/jumbo v2, "actions-list"

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 223
    invoke-static {v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    const-string/jumbo v4, "com.adobe.cc.360workflow"

    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$3;

    invoke-direct {v5, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    move-object v6, p3

    .line 221
    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    const-string/jumbo v1, "action-registry"

    const-string/jumbo v2, "actions-list"

    const-string/jumbo v3, "com.adobe.cc.360workflow"

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeItemWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    const-string/jumbo v1, "action-registry"

    const-string/jumbo v2, "etag"

    const-string/jumbo v3, "com.adobe.cc.360workflow"

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeItemWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->actionRegistryFromResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    goto :goto_0
.end method

.method private responseFromURLPath(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 306
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 310
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 318
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    if-eqz p2, :cond_0

    .line 324
    const-string/jumbo v0, "if-none-match"

    invoke-virtual {v2, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->_service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v0, v2, v1, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 346
    :cond_1
    :goto_1
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 314
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v4, "Adobe360WorkflowSession"

    invoke-static {v3, v4, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 330
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorOffline:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    .line 331
    if-eqz p4, :cond_3

    .line 332
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$4;

    invoke-direct {v1, p0, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 342
    :cond_3
    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_1
.end method


# virtual methods
.method public actionRegistryArrayFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v6

    const-string/jumbo v7, "action-registry"

    const-string/jumbo v8, "etag"

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    .line 156
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v9

    const-string/jumbo v10, "com.adobe.cc.360workflow"

    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v0

    move-object v7, p4

    .line 154
    invoke-virtual/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    .line 211
    return-void
.end method

.method public downloadAppIconFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<[B>;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360WorkflowSession;->responseFromURLPath(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)V

    .line 135
    return-void
.end method

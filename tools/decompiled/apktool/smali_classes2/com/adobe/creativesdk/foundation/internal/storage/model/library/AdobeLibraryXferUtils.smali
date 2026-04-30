.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;
.super Ljava/lang/Object;
.source "AdobeLibraryXferUtils.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;


# static fields
.field private static _services:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;",
            ">;"
        }
    .end annotation
.end field

.field private static _sharedInstance:Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_sharedInstance:Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    .line 30
    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_services:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static declared-synchronized getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_sharedInstance:Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_sharedInstance:Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;

    .line 44
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_sharedInstance:Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isUnrecoverableError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Z
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 185
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getNetworkException()Ljava/lang/Exception;

    .line 187
    if-lez v0, :cond_0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_0

    const/16 v1, 0x197

    if-eq v0, v1, :cond_0

    const/16 v1, 0x198

    if-eq v0, v1, :cond_0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static validateURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public HTTPServiceAuthenticationDidFail(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setSuspended(Z)V

    .line 207
    const/4 v0, 0x1

    .line 211
    :cond_0
    return v0
.end method

.method public HTTPServiceDidDisconnect(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public HTTPServiceIsActive(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public downloadExternalFile(Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 111
    .line 113
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-object v5

    .line 117
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 120
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 121
    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 122
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 124
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils$1;

    invoke-direct {v4, p0, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    .line 141
    if-eqz p2, :cond_1

    .line 142
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDownloadRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    :goto_1
    move-object v5, v0

    .line 148
    goto :goto_0

    .line 144
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_1
.end method

.method public getTempServiceForURL(Ljava/net/URL;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 49
    monitor-enter p0

    .line 51
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_services:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_services:Ljava/util/Map;

    .line 53
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 63
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_services:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 64
    if-eqz v0, :cond_1

    .line 104
    :goto_1
    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move v0, v2

    .line 70
    :goto_2
    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeConstantsInternal;->AdobeLibraryWhitelistedDomains:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 72
    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeConstantsInternal;->AdobeLibraryWhitelistedDomains:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    const/4 v2, 0x1

    .line 79
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    if-eqz v2, :cond_7

    .line 84
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 88
    const-string/jumbo v6, "x-api-key"

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_3
    :goto_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 94
    if-eqz v4, :cond_4

    .line 95
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 96
    :cond_4
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-direct {v4, v1, v3, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    if-eqz v2, :cond_5

    .line 99
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4, p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setHttpServiceDelegate(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;)V

    .line 103
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->_services:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    .line 104
    goto :goto_1

    .line 70
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move-object v1, v0

    goto :goto_0
.end method

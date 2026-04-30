.class public Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;
.super Ljava/lang/Object;
.source "AdobeANSSession.java"


# static fields
.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final X_ADOBE_APP_ID:Ljava/lang/String; = "x-adobe-app-id"

.field public static final X_ADOBE_DEVICE_ID:Ljava/lang/String; = "x-adobe-device-id"

.field public static final X_USER_TOKEN:Ljava/lang/String; = "x-user-token"

.field private static _userToken:Ljava/lang/String;

.field private static sharedService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

.field private static sharedSession:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getErrorFromResponse()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    return-object v0
.end method

.method private static dataUsingEncoding(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 455
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    .line 457
    :catch_0
    move-exception v0

    .line 460
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 462
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getErrorFromResponse()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
    .locals 2

    .prologue
    .line 448
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorBadRequest:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    return-object v0
.end method

.method private getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 5

    .prologue
    .line 393
    invoke-virtual {p1, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 394
    if-eqz p3, :cond_0

    .line 395
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p1, v0, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v0, "Content-length"

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {p3}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->dataUsingEncoding(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setBody([B)V

    .line 399
    :cond_0
    const-string/jumbo v0, "Accept"

    const-string/jumbo v1, "application/json"

    invoke-virtual {p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;

    invoke-direct {v1, p0, p5, p2}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 441
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 442
    return-object p1

    .line 403
    :catch_0
    move-exception v0

    .line 405
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 322
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static initWithHTTPService(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;
    .locals 2

    .prologue
    .line 89
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 95
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static resetSharedSession()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    .line 85
    return-void
.end method

.method public static declared-synchronized sharedSession()Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 52
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    if-nez v2, :cond_2

    .line 54
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 57
    :cond_1
    :try_start_1
    const-string/jumbo v3, "Bearer %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->_userToken:Ljava/lang/String;

    .line 59
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$8;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 74
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "ANS Session"

    const-string/jumbo v4, "An undefined authentication endpoint has been specified for the ANS session"

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 78
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->initWithHTTPService(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    .line 80
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    goto :goto_0

    .line 65
    :pswitch_0
    const-string/jumbo v0, "https://stg-ans.oobesaas.adobe.com"

    goto :goto_1

    .line 69
    :pswitch_1
    const-string/jumbo v0, "https://ans.oobesaas.adobe.com"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public queryNotifications(Ljava/lang/String;Ljava/lang/String;JJILcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 191
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "queryNotifications"

    const-string/jumbo v2, "device ID cannot be nil"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-interface {p8}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;->onError()V

    .line 222
    :goto_0
    return-object v3

    .line 196
    :cond_1
    if-lt p7, v5, :cond_2

    const/16 v0, 0xa

    if-le p7, v0, :cond_3

    .line 198
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "queryNotifications"

    const-string/jumbo v2, "page size must be between 1 and 10"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-interface {p8}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;->onError()V

    goto :goto_0

    .line 203
    :cond_3
    const-string/jumbo v0, "/ans/v1/notifications?from=%s&to=%s&page_size=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 206
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 207
    const-string/jumbo v0, "x-user-token"

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->_userToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v0, "x-adobe-app-id"

    invoke-virtual {v1, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v0, "x-adobe-device-id"

    invoke-virtual {v1, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$3;

    invoke-direct {v5, p0, p8}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;)V

    .line 222
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v3

    goto :goto_0
.end method

.method public queryUnreadNotificationCount(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 228
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 230
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "queryUnreadNotificationCount"

    const-string/jumbo v2, "userID ID cannot be nil"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {p3}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;->onError()V

    .line 254
    :goto_0
    return-object v3

    .line 234
    :cond_1
    const-string/jumbo v0, "/ans/v2/notifications/count"

    .line 235
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 237
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 238
    const-string/jumbo v0, "x-user-token"

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->_userToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v0, "x-adobe-app-id"

    invoke-virtual {v1, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v0, "x-adobe-device-id"

    invoke-virtual {v1, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$4;

    invoke-direct {v5, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;)V

    .line 254
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v3

    goto :goto_0
.end method

.method public registerDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "registerDevice"

    const-string/jumbo v3, "device token cannot be null."

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-interface {p6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;->onError()V

    .line 154
    :goto_0
    return-object v1

    .line 108
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 110
    :try_start_0
    const-string/jumbo v0, "device-type"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v0, "device-platform"

    const-string/jumbo v3, "Android"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string/jumbo v0, "device-os-name"

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string/jumbo v0, "device-os-version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v0, "android-registration-id"

    invoke-virtual {v2, v0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string/jumbo v0, "android-package-name"

    invoke-virtual {v2, v0, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string/jumbo v0, "android-id"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string/jumbo v0, "locale"

    const-string/jumbo v3, "en_US"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string/jumbo v2, "/ans/v1/device"

    .line 130
    :try_start_1
    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedService:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 136
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 137
    const-string/jumbo v0, "x-user-token"

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->_userToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, "x-adobe-app-id"

    invoke-virtual {v1, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$1;

    invoke-direct {v5, p0, p6}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;)V

    .line 153
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v1

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 131
    :catch_1
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2
.end method

.method public unregisterDevice(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 160
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "unregisterDevice"

    const-string/jumbo v2, "device ID cannot be nil."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface {p3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;->onError()V

    .line 185
    :goto_0
    return-object v3

    .line 165
    :cond_1
    const-string/jumbo v0, "/ans/v1/device"

    .line 166
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 168
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 169
    const-string/jumbo v0, "x-user-token"

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->_userToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "x-adobe-app-id"

    invoke-virtual {v1, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v0, "x-adobe-device-id"

    invoke-virtual {v1, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$2;

    invoke-direct {v5, p0, p3}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;)V

    .line 185
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodDELETE:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v3

    goto :goto_0
.end method

.method public updateNotifications(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 334
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "updateNotifications"

    const-string/jumbo v2, "notificationIDs can not be nil or empty"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-interface {p6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;->onError()V

    move-object v0, v6

    .line 387
    :goto_0
    return-object v0

    .line 341
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 342
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 344
    :try_start_0
    const-string/jumbo v2, "notification-id"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string/jumbo v2, "timestamp"

    const-wide/16 v4, 0x1

    add-long/2addr v4, p3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 347
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 355
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 357
    const-string/jumbo v2, "notifications"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    const-string/jumbo v0, "/ans/v1/notifications"

    .line 361
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 362
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 363
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 364
    const-string/jumbo v0, "x-user-token"

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->_userToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v0, "x-adobe-app-id"

    invoke-virtual {v1, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$6;

    invoke-direct {v5, p0, p6}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;)V

    .line 379
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 382
    :catch_1
    move-exception v0

    .line 385
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v6

    .line 387
    goto :goto_0
.end method

.method public updateNotifications(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;"
        }
    .end annotation

    .prologue
    .line 260
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "updateNotifications"

    const-string/jumbo v2, "notificationIDs can not be nil or empty"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-interface {p4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;->onError()V

    .line 263
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    .line 267
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 268
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    .line 269
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 271
    :try_start_0
    const-string/jumbo v4, "notification-id"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getTimestamp()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 274
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 282
    :cond_2
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 283
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    const-string/jumbo v2, "notifications"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    const-string/jumbo v0, "/ans/v1/notifications"

    .line 289
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 291
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 292
    const-string/jumbo v0, "x-user-token"

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->_userToken:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v0, "x-adobe-app-id"

    invoke-virtual {v1, v0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$5;

    invoke-direct {v5, p0, p4}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;)V

    .line 307
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPUT:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :catch_1
    move-exception v0

    .line 313
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 315
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

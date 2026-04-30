.class public Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;
.super Ljava/lang/Object;
.source "AdobeCommentsSession.java"


# static fields
.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final INVITES:Ljava/lang/String; = "invites"

.field public static final RESOURCE_TYPE:Ljava/lang/String; = "resourceType"

.field private static final T:Ljava/lang/String;

.field private static imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

.field private static observer:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;

.field private static requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;",
            ">;"
        }
    .end annotation
.end field

.field private static sharedSession:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;


# instance fields
.field private service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->T:Ljava/lang/String;

    .line 50
    sput-object v1, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    .line 53
    sput-object v1, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->observer:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->observer:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->observer:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;

    .line 63
    :cond_0
    monitor-exit v1

    .line 64
    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->requestMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getCommentURL(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCommentURL(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    const-string/jumbo v1, ""

    .line 331
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method private getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    .line 196
    :try_start_0
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;

    invoke-direct {v4, p0, p1, p4}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)V

    .line 216
    if-nez p2, :cond_1

    .line 218
    if-eqz p3, :cond_0

    .line 219
    sget-object v0, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setBody([B)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 234
    :goto_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-object p1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const/4 v5, 0x0

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne v0, v1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDownloadRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->getRequestMethod()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodHEAD:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    if-ne v0, v1, :cond_3

    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v0, p1, v1, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_1

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForUploadRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    goto :goto_1
.end method

.method private getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 150
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 154
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :cond_1
    invoke-direct {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p4}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    :cond_2
    :try_start_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 169
    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->baseURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 172
    invoke-virtual {v1, p2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 173
    if-eqz p3, :cond_3

    .line 174
    const-string/jumbo v2, "Accept"

    invoke-virtual {v1, v2, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2, p4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_3
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    :goto_1
    invoke-direct {p0, v1, v2, p3, p5}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object p3, v0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v1

    .line 181
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 184
    :catch_1
    move-exception v1

    .line 186
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSharedSession()Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;
    .locals 8

    .prologue
    .line 71
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    .line 78
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    .line 82
    const/4 v0, 0x0

    .line 83
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 85
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$5;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->imsEnvironment:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 104
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v6, "Collaboration Session"

    const-string/jumbo v7, "An undefined authentication endpoint has been specified for the collaboration session"

    invoke-static {v5, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->requestMap:Ljava/util/Map;

    .line 110
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v0, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    invoke-virtual {v5, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->initWithHTTPService(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    .line 114
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->getSharedModel()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setHttpServiceDelegate(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpServiceDelegate;)V

    .line 115
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->observer:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 116
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->observer:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 117
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->observer:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 120
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    monitor-exit v1

    return-object v0

    .line 87
    :pswitch_0
    const-string/jumbo v0, "https://cc-collab-dev.adobe.io"

    goto :goto_0

    .line 91
    :pswitch_1
    const-string/jumbo v0, "https://cc-collab-stage.adobe.io"

    .line 92
    const-string/jumbo v5, "x-api-key"

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :pswitch_2
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->T:Ljava/lang/String;

    const-string/jumbo v5, "first Endpoint"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string/jumbo v0, "https://comments.adobe.io"

    .line 99
    const-string/jumbo v5, "x-api-key"

    const-string/jumbo v6, "redhawkclient2"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 378
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createComment(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 276
    if-nez p1, :cond_0

    .line 277
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "createComment"

    const-string/jumbo v2, "resource cannot be null."

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-interface {p5}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;->onError()V

    move-object v0, v6

    .line 324
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const-string/jumbo v1, "comments"

    .line 287
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 290
    const-string/jumbo v2, "resourceType"

    const-string/jumbo v3, "application/vnd.adobe.asset"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string/jumbo v2, "resource"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getHref()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string/jumbo v2, "email"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string/jumbo v2, "content"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 299
    const-string/jumbo v3, "attributes"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$3;

    invoke-direct {v5, p0, p5}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;)V

    .line 318
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodPOST:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "application/json"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    invoke-interface {p5}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeAddCommentCallback;->onError()V

    move-object v0, v6

    .line 324
    goto :goto_0
.end method

.method public deleteComment(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 342
    if-nez p1, :cond_0

    .line 343
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "deleteComment"

    const-string/jumbo v3, "url cannot be null"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;->onError()V

    .line 371
    :goto_0
    return-object v0

    .line 348
    :cond_0
    const-string/jumbo v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 349
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$4;

    invoke-direct {v2, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeDeleteCommentCallback;)V

    .line 362
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 363
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 364
    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 365
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodDELETE:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 366
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getResponseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 371
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodDELETE:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public getComments(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;
    .locals 4

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "GetComments"

    const-string/jumbo v2, "Resource Cannot be Null"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;->onError()V

    .line 244
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%2F"

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "comments%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/comments/IAdobeGetCommentsCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)V

    .line 268
    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->getResponseForString(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$IAdobeCollaborationResponseCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public initWithHTTPService(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;)Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 137
    return-object p0
.end method

.method public service()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    return-object v0
.end method

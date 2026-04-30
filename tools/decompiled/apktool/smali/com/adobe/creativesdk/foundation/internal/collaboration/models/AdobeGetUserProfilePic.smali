.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;
.super Ljava/lang/Object;
.source "AdobeGetUserProfilePic.java"


# static fields
.field private static API_KEY:Ljava/lang/String;

.field private static CLIENT_ID:Ljava/lang/String;

.field private static MAX_ITEMS:I

.field private static mURLCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static pictureCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static pictureRequestQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "spFzOBHcTLsIoXWyKjayKRW5gBZ55wWh"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->API_KEY:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "TU7NfEJ94OGF29SkePTunHHM8QOImepU"

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->CLIENT_ID:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 42
    const/16 v0, 0xa

    sput v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->MAX_ITEMS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->mURLCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getRendition(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V

    return-void
.end method

.method static synthetic access$300()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->handleOtherPictureRequests(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static getAvatarFromURL(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V
    .locals 3

    .prologue
    .line 175
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;

    monitor-enter v1

    .line 176
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    .line 178
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 179
    :cond_1
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    .line 180
    monitor-exit v1

    .line 225
    :goto_0
    return-void

    .line 182
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureCache:Landroid/util/LruCache;

    if-nez v0, :cond_4

    .line 183
    new-instance v0, Landroid/util/LruCache;

    sget v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->MAX_ITEMS:I

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureCache:Landroid/util/LruCache;

    .line 191
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 193
    const/4 v0, 0x0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V

    invoke-static {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getResponse(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;)V

    goto :goto_0

    .line 185
    :cond_4
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 186
    if-eqz v0, :cond_3

    .line 187
    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 188
    monitor-exit v1

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 224
    :cond_5
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getAvatarFromUserID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V
    .locals 3

    .prologue
    .line 116
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    .line 119
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 120
    :cond_1
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    .line 121
    monitor-exit v1

    .line 171
    :goto_0
    return-void

    .line 123
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureCache:Landroid/util/LruCache;

    if-nez v0, :cond_5

    .line 124
    new-instance v0, Landroid/util/LruCache;

    sget v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->MAX_ITEMS:I

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureCache:Landroid/util/LruCache;

    .line 133
    :cond_3
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->mURLCache:Landroid/util/LruCache;

    if-nez v0, :cond_4

    .line 134
    new-instance v0, Landroid/util/LruCache;

    sget v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->MAX_ITEMS:I

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->mURLCache:Landroid/util/LruCache;

    .line 136
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://www.behance.net/v2/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v1, v2, :cond_8

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://net.s2stagehance.com/v2/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 144
    :goto_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->mURLCache:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    if-eqz v0, :cond_6

    .line 146
    invoke-static {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getRenditionFromImageUrl(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_5
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 127
    if-eqz v0, :cond_3

    .line 128
    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 129
    monitor-exit v1

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 149
    :cond_6
    const/4 v0, 0x1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;

    invoke-direct {v2, v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getResponse(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;)V

    goto/16 :goto_0

    .line 170
    :cond_7
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    goto :goto_1
.end method

.method private static getRendition(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V
    .locals 2

    .prologue
    .line 230
    :try_start_0
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 231
    const-string/jumbo v1, "images"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 233
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 235
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->mURLCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {p2, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getRenditionFromImageUrl(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getRenditionFromImageUrl(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V

    invoke-static {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getResponse(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;)V

    .line 271
    return-void
.end method

.method private static getResponse(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 293
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 294
    const-class v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;

    monitor-enter v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :try_start_1
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    if-nez v3, :cond_0

    .line 296
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-object v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 297
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :try_start_2
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;Ljava/util/Map;)V

    .line 299
    if-eqz p1, :cond_1

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v3

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v3, v4, :cond_2

    .line 302
    const-string/jumbo v3, "client_id"

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->CLIENT_ID:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :goto_0
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setQueryParams(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 309
    :cond_1
    :try_start_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 314
    :goto_1
    :try_start_4
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$5;

    invoke-direct {v3, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;)V

    .line 325
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v4, v2, v5, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 334
    :goto_2
    return-void

    .line 297
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0

    .line 329
    :catch_0
    move-exception v0

    .line 331
    invoke-interface {p2, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_2

    .line 304
    :cond_2
    :try_start_7
    const-string/jumbo v3, "api_key"

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->API_KEY:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 310
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 311
    goto :goto_1
.end method

.method private static getString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    const/16 v3, 0x32

    .line 96
    const-string/jumbo v1, ""

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 99
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 102
    if-lt v2, v3, :cond_1

    .line 103
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v2

    :goto_1
    move v3, v1

    move-object v1, v0

    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v0, "50"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 110
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    move v1, v3

    goto :goto_1
.end method

.method public static getUrlFromUserID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;)V
    .locals 3

    .prologue
    .line 47
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->mURLCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/util/LruCache;

    sget v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->MAX_ITEMS:I

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->mURLCache:Landroid/util/LruCache;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://www.behance.net/v2/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v1

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->AdobeAuthIMSEnvironmentStageUS:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    if-ne v1, v2, :cond_2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://net.s2stagehance.com/v2/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 59
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->mURLCache:Landroid/util/LruCache;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    if-eqz v0, :cond_1

    .line 61
    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;->onComplete(Ljava/lang/String;)V

    .line 92
    :goto_1
    return-void

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 65
    :cond_1
    const/4 v0, 0x1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;

    invoke-direct {v2, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->getResponse(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static handleOtherPictureRequests(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    if-eqz p2, :cond_1

    .line 277
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    .line 278
    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 285
    :goto_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    return-void

    .line 282
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->pictureRequestQueue:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    .line 283
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    goto :goto_0
.end method

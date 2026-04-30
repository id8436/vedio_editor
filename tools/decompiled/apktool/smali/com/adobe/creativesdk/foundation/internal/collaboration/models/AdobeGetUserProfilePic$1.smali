.class final Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;
.super Ljava/lang/Object;
.source "AdobeGetUserProfilePic.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;


# instance fields
.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;

.field final synthetic val$webUrlCopy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;->val$webUrlCopy:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "images"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 77
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$000(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;->onComplete(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$100()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;->val$webUrlCopy:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$1;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeGetBitmapUrlCallback;->onError()V

    .line 90
    return-void
.end method

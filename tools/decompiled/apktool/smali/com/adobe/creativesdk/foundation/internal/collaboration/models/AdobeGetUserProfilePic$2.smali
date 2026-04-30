.class final Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;
.super Ljava/lang/Object;
.source "AdobeGetUserProfilePic.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;


# instance fields
.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$webUrlCopy:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;->val$webUrlCopy:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 4

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;->val$webUrlCopy:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-static {v1, v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$200(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 157
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$2;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    .line 165
    return-void
.end method

.class final Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;
.super Ljava/lang/Object;
.source "AdobeGetUserProfilePic.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;


# instance fields
.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

.field final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$userID:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$userID:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$300()Landroid/util/LruCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$300()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$userID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 255
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$userID:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$400(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    .line 260
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$userID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$400(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    .line 268
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$4;->val$userID:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$400(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 269
    return-void
.end method

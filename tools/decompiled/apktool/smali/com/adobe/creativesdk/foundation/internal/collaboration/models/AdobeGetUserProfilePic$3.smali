.class final Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;
.super Ljava/lang/Object;
.source "AdobeGetUserProfilePic.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$IAdobeUserProfilePictureResponse;


# instance fields
.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

.field final synthetic val$imageURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$imageURL:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$300()Landroid/util/LruCache;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$300()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$imageURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onComplete(Landroid/graphics/Bitmap;)V

    .line 205
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$imageURL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$400(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    .line 208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$imageURL:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$400(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    .line 212
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$imageURL:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$400(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/IAdobeProfilePicCallback;->onError()V

    .line 220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic$3;->val$imageURL:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeGetUserProfilePic;->access$400(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 221
    return-void
.end method

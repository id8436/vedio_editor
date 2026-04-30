.class public Lcom/adobe/creativesdk/foundation/internal/util/AdobePhotoErrUtils;
.super Ljava/lang/Object;
.source "AdobePhotoErrUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createErrorWithCode(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/util/HashMap;)Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    check-cast p0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 58
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;->ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;

    invoke-direct {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createPhotoError(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;
    .locals 3

    .prologue
    .line 38
    if-eqz p1, :cond_0

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 40
    const-string/jumbo v0, "ADOBE_ASSET_DETAILS_STRING_KEY"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;)V

    goto :goto_0
.end method

.method public static createPhotoError(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;
    .locals 3

    .prologue
    .line 18
    if-nez p2, :cond_0

    .line 19
    const-string/jumbo p2, "[no data]"

    .line 21
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    if-eqz p1, :cond_1

    .line 25
    const-string/jumbo v1, "AdobeAssetRequestURLString"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1
    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string/jumbo v1, "AdobeAssetResponseData"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    if-eqz p4, :cond_2

    .line 30
    const-string/jumbo v1, "AdobeAssetResponseHeaders"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 34
    return-object v1
.end method

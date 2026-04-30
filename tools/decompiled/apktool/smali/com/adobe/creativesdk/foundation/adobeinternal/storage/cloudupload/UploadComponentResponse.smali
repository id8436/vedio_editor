.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;
.super Ljava/lang/Object;
.source "UploadComponentResponse.java"


# instance fields
.field public component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

.field public error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;->component:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    .line 26
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;->error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 27
    return-void
.end method

.method public static updateComponentWithUploadResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;JLorg/json/JSONObject;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 32
    const-string/jumbo v2, "content-md5"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "content-md5"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    :goto_0
    const-string/jumbo v2, "etag"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    const-string/jumbo v3, "version"

    invoke-virtual {p4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    if-nez v2, :cond_1

    .line 45
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v2, "missing property \'etag\'"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    move-object v2, v0

    .line 63
    :goto_1
    if-eqz v2, :cond_5

    if-nez p5, :cond_5

    .line 64
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 67
    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    .line 32
    goto :goto_0

    .line 46
    :cond_1
    if-nez v3, :cond_2

    .line 47
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v2, "missing property \'version\'"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 48
    :cond_2
    cmp-long v4, p2, v6

    if-gez v4, :cond_3

    .line 49
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v2, "could not read file length"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setVersion(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v4, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setEtag(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setMd5(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->getLength()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-gez v0, :cond_4

    .line 56
    invoke-virtual {v4, p2, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setLength(J)V

    .line 59
    :cond_4
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;

    invoke-direct {v0, v4, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_2

    .line 67
    :cond_5
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/cloudupload/UploadComponentResponse;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_2
.end method

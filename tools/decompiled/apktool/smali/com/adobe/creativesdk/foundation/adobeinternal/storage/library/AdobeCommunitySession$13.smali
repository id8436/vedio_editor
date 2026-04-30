.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;
.super Ljava/lang/Object;
.source "AdobeCommunitySession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 975
    .line 978
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 980
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getNetworkException()Ljava/lang/Exception;

    move-result-object v2

    if-nez v2, :cond_7

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_7

    .line 983
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 985
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getNetworkException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 992
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v2, "Invalid or missing JSON in response body"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 1026
    :goto_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$handler:Landroid/os/Handler;

    if-nez v2, :cond_a

    :goto_2
    invoke-static {v3, v4, v5, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1028
    return-void

    .line 986
    :catch_0
    move-exception v0

    .line 987
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 994
    :cond_3
    const-string/jumbo v2, "etag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 995
    const-string/jumbo v3, "x-latest-version"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 997
    if-nez v2, :cond_4

    .line 998
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v2, "Missing response property \'etag\'"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    .line 999
    :cond_4
    if-nez v3, :cond_5

    .line 1000
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const-string/jumbo v2, "Missing response property \'x-latest-version\'"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    .line 1005
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1010
    :goto_3
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setEtag(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setVersion(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getCompositeHref()Ljava/net/URI;

    move-result-object v2

    if-nez v2, :cond_6

    .line 1014
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getHref()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setCompositeHref(Ljava/net/URI;)V

    :cond_6
    move-object v2, v1

    goto :goto_1

    .line 1006
    :catch_1
    move-exception v0

    .line 1007
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    .line 1018
    :cond_7
    const/16 v2, 0x199

    if-ne v0, v2, :cond_8

    .line 1019
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorCompositeAlreadyExists:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v2

    move-object v0, v1

    goto :goto_1

    .line 1020
    :cond_8
    const/16 v2, 0x194

    if-ne v0, v2, :cond_9

    .line 1021
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorUnknownComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v2

    move-object v0, v1

    goto :goto_1

    .line 1023
    :cond_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->getAssetErrorFromResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v2

    move-object v0, v1

    goto :goto_1

    :cond_a
    move-object v0, v1

    .line 1026
    goto :goto_2
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1032
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1034
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "Response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 1035
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 1043
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession$13;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;->access$300(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeCommunitySession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_0
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

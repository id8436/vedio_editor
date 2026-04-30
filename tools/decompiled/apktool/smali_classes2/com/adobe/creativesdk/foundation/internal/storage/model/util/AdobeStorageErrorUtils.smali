.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;
.super Ljava/lang/Object;
.source "AdobeStorageErrorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string/jumbo v1, "AdobeErrorPathKey"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-object v1
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

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    check-cast p0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 85
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    check-cast p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;Ljava/lang/Exception;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    check-cast p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    move-result-object v1

    invoke-direct {v0, v1, v2, p1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    goto :goto_0

    .line 83
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorUnexpectedResponse:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;
    .locals 3

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 66
    const-string/jumbo v0, "ADOBE_ASSET_DETAILS_STRING_KEY"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    goto :goto_0
.end method

.method public static createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;
    .locals 3

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 45
    const-string/jumbo p2, "[no data]"

    .line 47
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    if-eqz p1, :cond_1

    .line 51
    const-string/jumbo v1, "AdobeAssetRequestURLString"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "AdobeAssetResponseData"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    if-eqz p4, :cond_2

    .line 56
    const-string/jumbo v1, "AdobeAssetResponseHeaders"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 60
    return-object v1
.end method

.method public static createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;-><init>(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;-><init>(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static isErrorDueToOffline(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->isOnline()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v3

    const/16 v4, 0x194

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getNetworkException()Ljava/lang/Exception;

    move-result-object v3

    instance-of v3, v3, Ljava/net/SocketException;

    if-eqz v3, :cond_3

    move v3, v1

    .line 131
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 129
    goto :goto_0

    :cond_3
    move v3, v2

    .line 130
    goto :goto_1
.end method

.method public static verifyArgument(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    return-void
.end method

.method public static verifyState(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    return-void
.end method

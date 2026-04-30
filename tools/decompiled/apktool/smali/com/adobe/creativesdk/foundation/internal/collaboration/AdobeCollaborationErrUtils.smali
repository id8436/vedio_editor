.class public Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrUtils;
.super Ljava/lang/Object;
.source "AdobeCollaborationErrUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    const-string/jumbo v0, "ADOBE_ASSET_DETAILS_STRING_KEY"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 23
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    invoke-direct {v0, p0, v2, p2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createCollaborationError(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;)Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;
    .locals 3

    .prologue
    .line 28
    .line 29
    if-nez p2, :cond_0

    .line 30
    const-string/jumbo p2, "[no data]"

    .line 32
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    if-eqz p1, :cond_1

    .line 36
    const-string/jumbo v1, "AdobeAssetRequestURLString"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1
    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v1, "AdobeAssetResponseData"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    if-eqz p4, :cond_2

    .line 41
    const-string/jumbo v1, "AdobeAssetResponseHeaders"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationException;-><init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationErrorCode;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 45
    return-object v1
.end method

.class public Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementErrorUtils;
.super Ljava/lang/Object;
.source "AdobeEntitlementErrorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
    .locals 7

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v2

    .line 76
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    .line 75
    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementErrorUtils;->errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    move-result-object v0

    return-object v0
.end method

.method public static errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
    .locals 7

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataBytes()[B

    move-result-object v2

    .line 68
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v3

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, p2

    .line 67
    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementErrorUtils;->errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    move-result-object v0

    return-object v0
.end method

.method public static errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    if-eqz p2, :cond_0

    .line 57
    const-string/jumbo v1, "AdobeErrorPathKey"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    invoke-direct {v1, p0, p3, v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/net/URL;Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Exception;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
    .locals 3

    .prologue
    .line 92
    .line 93
    if-nez p2, :cond_0

    .line 94
    const-string/jumbo p2, "[no data]"

    .line 96
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    if-eqz p1, :cond_1

    .line 100
    const-string/jumbo v1, "AdobeNetworkRequestURLStringKey"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    if-eqz p2, :cond_2

    .line 107
    const-string/jumbo v1, "AdobeNetworkResponseData"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_2
    if-eqz p4, :cond_3

    .line 112
    const-string/jumbo v1, "AdobeNetworkResponseHeaders"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_3
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    invoke-direct {v1, p0, p6, v0, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static errorWithCode(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/util/HashMap;)Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    return-object v0
.end method

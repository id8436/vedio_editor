.class public Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;
.super Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
.source "AdobeEntitlementException.java"


# static fields
.field public static final AdobeNetworkHTTPStatusKey:Ljava/lang/String; = "AdobeNetworkHTTPStatus"

.field public static final AdobeNetworkRequestURLStringKey:Ljava/lang/String; = "AdobeNetworkRequestURLStringKey"

.field public static final AdobeNetworkResponseDataKey:Ljava/lang/String; = "AdobeNetworkResponseData"

.field public static final AdobeNetworkResponseHeadersKey:Ljava/lang/String; = "AdobeNetworkResponseHeaders"


# instance fields
.field private final _description:Ljava/lang/String;

.field private final _errorCode:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;-><init>(Ljava/util/HashMap;Ljava/lang/Exception;)V

    .line 44
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;->_errorCode:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;

    .line 45
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;->_description:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException;->_errorCode:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementErrorCode;

    return-object v0
.end method

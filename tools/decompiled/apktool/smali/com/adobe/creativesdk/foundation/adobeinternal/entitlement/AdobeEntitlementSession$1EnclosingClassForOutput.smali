.class Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;
.super Ljava/lang/Object;
.source "AdobeEntitlementSession.java"


# instance fields
.field public done:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

.field public userProfileError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field public userProfileJSON:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 590
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;->done:Z

    .line 592
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;->userProfileJSON:Lorg/json/JSONObject;

    .line 593
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;->userProfileError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    return-void
.end method

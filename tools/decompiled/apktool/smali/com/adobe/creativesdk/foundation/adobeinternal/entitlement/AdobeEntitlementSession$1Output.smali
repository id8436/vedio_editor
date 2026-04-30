.class Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1Output;
.super Ljava/lang/Object;
.source "AdobeEntitlementSession.java"


# instance fields
.field isDone:Z

.field result:Lorg/json/JSONObject;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1Output;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1Output;->isDone:Z

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1Output;->result:Lorg/json/JSONObject;

    return-void
.end method

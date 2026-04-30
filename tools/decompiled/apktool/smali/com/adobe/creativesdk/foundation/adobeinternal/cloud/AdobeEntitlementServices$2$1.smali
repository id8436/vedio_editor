.class Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2$1;
.super Ljava/lang/Object;
.source "AdobeEntitlementServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2$1;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2$1;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2;->val$errorBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$2$1;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 395
    return-void
.end method

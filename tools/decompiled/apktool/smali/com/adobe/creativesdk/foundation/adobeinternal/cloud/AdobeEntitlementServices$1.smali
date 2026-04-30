.class Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;
.super Ljava/lang/Object;
.source "AdobeEntitlementServices.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

.field final synthetic val$errorBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

.field final synthetic val$successBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->val$errorBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->val$successBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 350
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->onCompletion(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 355
    .line 356
    :try_start_0
    const-string/jumbo v1, "public_cloud"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 358
    const-string/jumbo v1, "public_cloud"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 360
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPublicStorageServices(Z)V

    .line 363
    const-string/jumbo v1, "private_cloud"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 365
    const-string/jumbo v0, "private_cloud"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->setAccessToPrivateStorageServices(Z)V

    .line 370
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;->getServicesForUserProfile(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->getServices()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/entitlement/AdobeEntitlementUtils;->areValuesEqual(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v1

    .line 372
    if-nez v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->updateServices(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->val$successBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->val$successBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 385
    :cond_2
    :goto_1
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 377
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->val$errorBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v1, :cond_1

    .line 378
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices$1;->val$errorBlock:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    .line 379
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeEntitlementServices;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

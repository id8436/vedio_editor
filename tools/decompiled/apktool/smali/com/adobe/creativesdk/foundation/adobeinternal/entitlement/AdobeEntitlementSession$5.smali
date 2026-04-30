.class Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;
.super Ljava/lang/Object;
.source "AdobeEntitlementSession.java"

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
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

.field final synthetic val$condition:Ljava/util/concurrent/locks/Condition;

.field final synthetic val$lock:Ljava/util/concurrent/locks/Lock;

.field final synthetic val$outPut:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;Ljava/util/concurrent/locks/Lock;Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->val$lock:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->val$outPut:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 599
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->onCompletion(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 603
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->val$outPut:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;

    iput-object p1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;->userProfileJSON:Lorg/json/JSONObject;

    .line 604
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->val$outPut:Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$1EnclosingClassForOutput;->done:Z

    .line 605
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->val$condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 606
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/entitlement/AdobeEntitlementSession$5;->val$lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 607
    return-void
.end method

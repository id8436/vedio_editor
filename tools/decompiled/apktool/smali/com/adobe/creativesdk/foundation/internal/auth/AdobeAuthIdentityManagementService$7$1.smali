.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;
.super Ljava/lang/Object;
.source "AdobeAuthIdentityManagementService.java"

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
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$adobeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;->val$adobeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1040
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;->onCompletion(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->parseFromProfile(Lorg/json/JSONObject;)V

    .line 1044
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7;->val$client:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;->val$adobeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService$7$1;->val$accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthIMSSignInClient;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    return-void
.end method

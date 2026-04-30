.class Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$1;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectHeadlessFragment.java"

# interfaces
.implements Lcom/facebook/aj;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/as;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->setGetFacebookUserIdInProgress(Z)V

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->access$000(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->access$000(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;->onGetFacebookUserIdComplete(Ljava/lang/String;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$1;->this$0:Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;

    invoke-static {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;->access$000(Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment;)Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKPublishProjectHeadlessFragment$Callbacks;->onGetFacebookUserIdComplete(Ljava/lang/String;)V

    goto :goto_0
.end method

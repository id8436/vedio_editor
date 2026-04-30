.class Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$1;
.super Ljava/lang/Object;
.source "BehanceSDKPublishProjectDetailsFragment.java"

# interfaces
.implements Lcom/facebook/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/o",
        "<",
        "Lcom/facebook/login/x;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    invoke-static {v0, v1, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;Lcom/facebook/login/x;Lcom/facebook/q;)V

    .line 166
    return-void
.end method

.method public onError(Lcom/facebook/q;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;Lcom/facebook/login/x;Lcom/facebook/q;)V

    .line 171
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/x;)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$1;->this$0:Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;->access$000(Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment;Lcom/facebook/login/x;Lcom/facebook/q;)V

    .line 161
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Lcom/facebook/login/x;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/ui/fragments/BehanceSDKPublishProjectDetailsFragment$1;->onSuccess(Lcom/facebook/login/x;)V

    return-void
.end method

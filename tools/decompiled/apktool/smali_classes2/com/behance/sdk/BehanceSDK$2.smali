.class Lcom/behance/sdk/BehanceSDK$2;
.super Ljava/lang/Object;
.source "BehanceSDK.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/BehanceSDK;

.field final synthetic val$finalListener:Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;


# direct methods
.method constructor <init>(Lcom/behance/sdk/BehanceSDK;Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDK$2;->this$0:Lcom/behance/sdk/BehanceSDK;

    iput-object p2, p0, Lcom/behance/sdk/BehanceSDK$2;->val$finalListener:Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditProfileTaskFailure(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK$2;->val$finalListener:Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK$2;->val$finalListener:Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->getExceptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;->onProfileUpdateFailure(Ljava/util/List;)V

    .line 569
    :cond_0
    return-void
.end method

.method public onEditProfileTaskSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK$2;->val$finalListener:Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK$2;->val$finalListener:Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;

    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKUpdateProfileListener;->onProfileUpdateSuccess()V

    .line 563
    :cond_0
    return-void
.end method

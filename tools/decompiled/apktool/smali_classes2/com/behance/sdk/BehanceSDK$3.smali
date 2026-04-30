.class Lcom/behance/sdk/BehanceSDK$3;
.super Ljava/lang/Object;
.source "BehanceSDK.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/BehanceSDK;

.field final synthetic val$listener:Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;


# direct methods
.method constructor <init>(Lcom/behance/sdk/BehanceSDK;Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/behance/sdk/BehanceSDK$3;->this$0:Lcom/behance/sdk/BehanceSDK;

    iput-object p2, p0, Lcom/behance/sdk/BehanceSDK$3;->val$listener:Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUserProfileFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/behance/sdk/BehanceSDK$3;->val$listener:Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;->onEditProfileFailure(Ljava/lang/Exception;)V

    .line 631
    return-void
.end method

.method public onGetUserProfileSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)V
    .locals 3

    .prologue
    .line 617
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->getBehanceUserProfile()Lcom/behance/sdk/BehanceSDKUserProfile;

    move-result-object v0

    .line 618
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_3

    .line 620
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    :cond_0
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/BehanceSDKUserProfile;->setFirstName(Ljava/lang/String;)V

    .line 622
    :cond_1
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 623
    :cond_2
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/BehanceSDKUserProfile;->setLastName(Ljava/lang/String;)V

    .line 625
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/BehanceSDK$3;->val$listener:Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;

    invoke-interface {v1, v0}, Lcom/behance/sdk/IBehanceSDKGetUserProfileListener;->onGetUserProfileSuccess(Lcom/behance/sdk/BehanceSDKUserProfile;)V

    .line 626
    return-void
.end method

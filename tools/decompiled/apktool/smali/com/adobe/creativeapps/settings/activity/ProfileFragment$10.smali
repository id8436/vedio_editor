.class Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/adobe/creativeapps/settings/utils/UserProfileHandler$IAdobeGetUserProfileListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetUserProfileSuccess()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1400(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativeapps/settings/utils/UserProfileHandler;->getUserProfile()Lcom/behance/sdk/BehanceSDKUserProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1302(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;Lcom/behance/sdk/BehanceSDKUserProfile;)Lcom/behance/sdk/BehanceSDKUserProfile;

    .line 419
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1300(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/behance/sdk/BehanceSDKUserProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDKUserProfile;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1500(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    iget-object v1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$10;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-static {v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1300(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)Lcom/behance/sdk/BehanceSDKUserProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativeapps/settings/activity/ProfileFragment;->access$1600(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;Lcom/behance/sdk/BehanceSDKUserProfile;)V

    .line 421
    return-void
.end method

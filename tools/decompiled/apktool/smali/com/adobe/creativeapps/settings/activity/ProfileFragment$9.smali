.class Lcom/adobe/creativeapps/settings/activity/ProfileFragment$9;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/behance/sdk/IBehanceSDKEditProfileListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/activity/ProfileFragment;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/activity/ProfileFragment$9;->this$0:Lcom/adobe/creativeapps/settings/activity/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditProfileFailure()V
    .locals 2

    .prologue
    .line 398
    const-string/jumbo v0, "ProfileActivity"

    const-string/jumbo v1, "Error in Edit Profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method public onEditProfileSuccess()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method

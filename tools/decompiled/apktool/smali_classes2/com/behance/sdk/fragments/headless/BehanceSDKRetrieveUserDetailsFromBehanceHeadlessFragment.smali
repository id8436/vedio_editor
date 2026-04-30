.class public Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;


# instance fields
.field private callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;

.field private retrieveBehanceUserDetailTaskInProgress:Z

.field private retrieveUserDetailsUsingAdobeIDTask:Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->setRetainInstance(Z)V

    .line 18
    return-void
.end method


# virtual methods
.method public isRetrieveUserDetailTaskInProgress()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveBehanceUserDetailTaskInProgress:Z

    return v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 67
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveUserDetailsUsingAdobeIDTask:Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveUserDetailsUsingAdobeIDTask:Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->cancel(Z)Z

    .line 70
    :cond_0
    return-void
.end method

.method public onRetrieveBehanceUserDetailsFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;->onRetrieveBehanceUserDetailsFailure(Ljava/lang/Exception;)V

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveUserDetailsUsingAdobeIDTask:Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->setRetrieveUserDetailTaskInProgress(Z)V

    .line 62
    return-void
.end method

.method public onRetrieveBehanceUserDetailsSuccess(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;->onRetrieveBehanceUserDetailsSuccess(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveUserDetailsUsingAdobeIDTask:Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->setRetrieveUserDetailTaskInProgress(Z)V

    .line 53
    return-void
.end method

.method public retrieveBehanceUserDetailsUsingAdobeID(Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->isRetrieveUserDetailTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveUserDetailsUsingAdobeIDTask:Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->setRetrieveUserDetailTaskInProgress(Z)V

    .line 41
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskHandler;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveUserDetailsUsingAdobeIDTask:Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    .line 42
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveUserDetailsUsingAdobeIDTask:Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;

    new-array v1, v1, [Lcom/behance/sdk/asynctask/params/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTaskParams;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKRetrieveBehanceUserDetailsUsingAdobeIDTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 44
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment$Callbacks;

    .line 28
    return-void
.end method

.method public setRetrieveUserDetailTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKRetrieveUserDetailsFromBehanceHeadlessFragment;->retrieveBehanceUserDetailTaskInProgress:Z

    .line 36
    return-void
.end method

.class public Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKGetProjectsHeadlessFragment.java"

# interfaces
.implements Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;


# instance fields
.field private callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

.field protected curateGalleryParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

.field protected latestParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

.field private projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 58
    invoke-static {}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getInstance()Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->setRetainInstance(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->addProjectManagerListener()V

    .line 61
    return-void
.end method


# virtual methods
.method protected addProjectManagerListener()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->addGetProjectsListener(Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;)V

    .line 65
    return-void
.end method

.method protected clearProjectsDataManagerCache()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    invoke-virtual {v0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->clearProjectsDataManagerCache()V

    .line 143
    :cond_0
    return-void
.end method

.method public isGetProjectsAsyncTaskInProgress()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    invoke-virtual {v0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->isGetProjectsAsyncTaskInProgress()Z

    move-result v0

    return v0
.end method

.method public loadGalleryProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->curateGalleryParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    .line 84
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->loadGalleryProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    .line 85
    return-void
.end method

.method public loadProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->latestParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->loadProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 135
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->removeProjectManagerListener()V

    .line 136
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->clearProjectsDataManagerCache()V

    .line 137
    return-void
.end method

.method public onProjectsDataManagerGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;->onGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onProjectsDataManagerGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 126
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->latestParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    invoke-virtual {p2, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->compareSearchFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;->onGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onProjectsDataManagerGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 98
    if-eqz p2, :cond_0

    .line 99
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;->onGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onProjectsDataManagerGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 117
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->latestParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    invoke-virtual {p2, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->compareSearchFilters(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;->onGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    .line 121
    :cond_0
    return-void
.end method

.method protected removeProjectManagerListener()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->projectsDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->removeGetProjectsListener(Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectsHeadlessFragment$Callbacks;

    .line 93
    return-void
.end method

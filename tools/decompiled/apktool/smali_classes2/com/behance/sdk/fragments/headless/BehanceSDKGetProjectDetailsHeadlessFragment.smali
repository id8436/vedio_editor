.class public Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKGetProjectDetailsHeadlessFragment.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDeleteProjectCommentAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectCommentsAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;


# static fields
.field private static final MATURE_CONTENT_ACCESS_ALLOWED:Ljava/lang/String; = "allowed"


# instance fields
.field private activeProjectCommentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;"
        }
    .end annotation
.end field

.field private appreciateProjectTask:Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;

.field private appreciateProjectTaskInProgress:Z

.field private callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

.field private deleteCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;

.field private deleteCommentTaskInProgress:Z

.field private followUnFollowTaskInProgress:Z

.field private followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

.field private getProjectCommentsAsyncTaskInProgress:Z

.field private getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

.field private getProjectDetailsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

.field private getProjectsDetailsAsyncTaskInProgress:Z

.field private getUserProjectListAsyncTaskInProgress:Z

.field private getUserProjectListTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProjectsListAsyncTask;

.field private imageURLs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastLoadedProjectCommentsPageNumber:I

.field private mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

.field private mUserProjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation
.end field

.field private moreCommentsAvailable:Z

.field private postProjectCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;

.field private postProjectCommentTaskInProgress:Z

.field private postSettingTaskInProgress:Z

.field private postSettingsTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 62
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectsDetailsAsyncTaskInProgress:Z

    .line 63
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsAsyncTaskInProgress:Z

    .line 64
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getUserProjectListAsyncTaskInProgress:Z

    .line 65
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postProjectCommentTaskInProgress:Z

    .line 66
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowTaskInProgress:Z

    .line 67
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postSettingTaskInProgress:Z

    .line 68
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProjectTaskInProgress:Z

    .line 69
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteCommentTaskInProgress:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->activeProjectCommentsList:Ljava/util/List;

    .line 86
    iput-boolean v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->moreCommentsAvailable:Z

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setRetainInstance(Z)V

    .line 145
    return-void
.end method

.method private setActiveProjectCommentsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->activeProjectCommentsList:Ljava/util/List;

    .line 231
    return-void
.end method

.method private setDeleteCommentTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 474
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteCommentTaskInProgress:Z

    .line 475
    return-void
.end method

.method private setFollowUnFollowTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowTaskInProgress:Z

    .line 202
    return-void
.end method

.method private setGetProjectCommentsAsyncTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsAsyncTaskInProgress:Z

    .line 178
    return-void
.end method

.method private setGetProjectDetailsAsyncTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectsDetailsAsyncTaskInProgress:Z

    .line 170
    return-void
.end method

.method private setGetUserProjectListAsyncTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getUserProjectListAsyncTaskInProgress:Z

    .line 186
    return-void
.end method

.method private setMoreCommentsAvailable(Z)V
    .locals 0

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->moreCommentsAvailable:Z

    .line 501
    return-void
.end method

.method private setPostProjectCommentTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postProjectCommentTaskInProgress:Z

    .line 194
    return-void
.end method

.method private setUserProjectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mUserProjectList:Ljava/util/List;

    .line 218
    return-void
.end method


# virtual methods
.method public appreciateProject(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 308
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isAppreciateProjectTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProjectTask:Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setAppreciateProjectTaskInProgress(Z)V

    .line 310
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKAppreciateProjectAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProjectTask:Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;

    .line 311
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;-><init>()V

    .line 312
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;->setProjectId(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProjectTask:Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 315
    :cond_0
    return-void
.end method

.method public deleteComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 318
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isDeleteCommentTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setDeleteCommentTaskInProgress(Z)V

    .line 320
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;-><init>()V

    .line 321
    invoke-virtual {v0, p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;->setCommentId(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;->setProjectId(Ljava/lang/String;)V

    .line 323
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;

    invoke-direct {v1, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKDeleteProjectCommentAsyncTaskListener;)V

    iput-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;

    .line 324
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :cond_0
    return-void
.end method

.method public followUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    .line 281
    invoke-direct {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setFollowUnFollowTaskInProgress(Z)V

    .line 282
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    .line 283
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;-><init>()V

    .line 284
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->setUserDTO(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 285
    invoke-virtual {v0, v3}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->setFollowUser(Z)V

    .line 286
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 287
    return-void
.end method

.method public getActiveProject()Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    return-object v0
.end method

.method public getActiveProjectCommentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->activeProjectCommentsList:Ljava/util/List;

    return-object v0
.end method

.method public getImageURLs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->imageURLs:Ljava/util/List;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->imageURLs:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKAbstractProjectModuleDTO;

    .line 103
    instance-of v2, v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->imageURLs:Ljava/util/List;

    check-cast v0, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectModuleImageDTO;->getHDSrcUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->imageURLs:Ljava/util/List;

    return-object v0
.end method

.method public getImageURLsArray()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getImageURLs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->imageURLs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 92
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 95
    :cond_0
    return-object v2
.end method

.method public getUserProjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mUserProjectList:Ljava/util/List;

    return-object v0
.end method

.method public isAppreciateProjectTaskInProgress()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProjectTaskInProgress:Z

    return v0
.end method

.method public isDeleteCommentTaskInProgress()Z
    .locals 1

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteCommentTaskInProgress:Z

    return v0
.end method

.method public isFollowUnFollowTaskInProgress()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowTaskInProgress:Z

    return v0
.end method

.method public isGetProjectCommentsAsyncTaskInProgress()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsAsyncTaskInProgress:Z

    return v0
.end method

.method public isGetProjectDetailsAsyncTaskInProgress()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectsDetailsAsyncTaskInProgress:Z

    return v0
.end method

.method public isGetUserProjectListAsyncTaskInProgress()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getUserProjectListAsyncTaskInProgress:Z

    return v0
.end method

.method public isMoreCommentsAvailable()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->moreCommentsAvailable:Z

    return v0
.end method

.method public isPostProjectCommentTaskInProgress()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postProjectCommentTaskInProgress:Z

    return v0
.end method

.method public isPostSettingTaskInProgress()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postSettingTaskInProgress:Z

    return v0
.end method

.method public loadProjectCommentsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isGetProjectCommentsAsyncTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    if-nez v0, :cond_0

    .line 245
    invoke-direct {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setMoreCommentsAvailable(Z)V

    .line 246
    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setGetProjectCommentsAsyncTaskInProgress(Z)V

    .line 247
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectCommentsAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    .line 248
    iput v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->lastLoadedProjectCommentsPageNumber:I

    .line 249
    iget v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->lastLoadedProjectCommentsPageNumber:I

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->setPageNumber(I)V

    .line 250
    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->setPageSize(I)V

    .line 251
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    new-array v1, v1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    :cond_0
    return-void
.end method

.method public loadProjectCommentsNextPageFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isGetProjectCommentsAsyncTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isMoreCommentsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setMoreCommentsAvailable(Z)V

    .line 258
    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setGetProjectCommentsAsyncTaskInProgress(Z)V

    .line 259
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectCommentsAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    .line 260
    iget v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->lastLoadedProjectCommentsPageNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->lastLoadedProjectCommentsPageNumber:I

    .line 261
    iget v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->lastLoadedProjectCommentsPageNumber:I

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->setPageNumber(I)V

    .line 262
    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->setPageSize(I)V

    .line 263
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    new-array v1, v1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 265
    :cond_0
    return-void
.end method

.method public loadProjectDetailsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 234
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isGetProjectDetailsAsyncTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectDetailsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectDetailsAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectDetailsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    .line 237
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectDetailsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    new-array v1, v3, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectDetailsAsyncTaskParams;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    invoke-direct {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setGetProjectDetailsAsyncTaskInProgress(Z)V

    .line 241
    :cond_0
    return-void
.end method

.method public onAppreciateProjectAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setAppreciateProjectTaskInProgress(Z)V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProjectTask:Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;

    .line 465
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onAppreciateProjectAsyncTaskFailure(Ljava/lang/Exception;)V

    .line 467
    :cond_0
    return-void
.end method

.method public onAppreciateProjectAsyncTaskSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKAppreciateProjectAsyncTaskParams;)V
    .locals 2

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setAppreciateProjectTaskInProgress(Z)V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProjectTask:Lcom/behance/sdk/asynctasks/BehanceSDKAppreciateProjectAsyncTask;

    .line 453
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onAppreciateProjectAsyncTaskSuccess(Z)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setAppreciatedByUser(Z)V

    .line 457
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->getStats()Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->getAppreciationsCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectStatsDTO;->setAppreciationsCount(I)V

    .line 459
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onDeleteProjectCommentAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setDeleteCommentTaskInProgress(Z)V

    .line 489
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;

    .line 490
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onDeleteCommentFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;)V

    .line 493
    :cond_0
    return-void
.end method

.method public onDeleteProjectCommentAsyncTaskSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setDeleteCommentTaskInProgress(Z)V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->deleteCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKDeleteProjectCommentAsyncTask;

    .line 481
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onDeleteCommentSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKDeleteProjectCommentAsyncTaskParams;)V

    .line 484
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 437
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 439
    return-void
.end method

.method public onFollowUserAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onFollowUnFollowUserFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V

    .line 412
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setFollowUnFollowTaskInProgress(Z)V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    .line 414
    return-void
.end method

.method public onFollowUserAsyncTaskSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onFollowUnFollowUserSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;)V

    .line 403
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setFollowUnFollowTaskInProgress(Z)V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    .line 405
    return-void
.end method

.method public onGetProjectCommentsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    .line 370
    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setMoreCommentsAvailable(Z)V

    .line 371
    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setGetProjectCommentsAsyncTaskInProgress(Z)V

    .line 372
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onGetProjectCommentsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V

    .line 375
    :cond_0
    return-void
.end method

.method public onGetProjectCommentsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 349
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;->getPageNumber()I

    move-result v0

    if-le v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectCommentsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectCommentsAsyncTask;

    .line 355
    invoke-direct {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setGetProjectCommentsAsyncTaskInProgress(Z)V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_2

    .line 358
    invoke-direct {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setMoreCommentsAvailable(Z)V

    .line 362
    :goto_1
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isMoreCommentsAvailable()Z

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onGetProjectCommentsSuccess(Ljava/util/List;ZLcom/behance/sdk/asynctask/params/BehanceSDKGetProjectCommentsAsyncTaskParams;)V

    .line 365
    :cond_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setActiveProjectComments(Ljava/util/List;)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-direct {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setMoreCommentsAvailable(Z)V

    goto :goto_1
.end method

.method public onGetProjectDetailsAsyncTaskFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectDetailsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setGetProjectDetailsAsyncTaskInProgress(Z)V

    .line 342
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onGetProjectDetailsFailure(Ljava/lang/Exception;)V

    .line 345
    :cond_0
    return-void
.end method

.method public onGetProjectDetailsAsyncTaskSuccess(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setGetProjectDetailsAsyncTaskInProgress(Z)V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getProjectDetailsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectDetailsAsyncTask;

    .line 333
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onGetProjectDetailsSuccess(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onPostProjectCommentAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onPostCommentFailure(Ljava/lang/Exception;)V

    .line 393
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setPostProjectCommentTaskInProgress(Z)V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postProjectCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;

    .line 396
    return-void
.end method

.method public onPostProjectCommentAsyncTaskSuccess(ILcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onPostCommentSuccess(ILcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;)V

    .line 383
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setPostProjectCommentTaskInProgress(Z)V

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postProjectCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;

    .line 386
    return-void
.end method

.method public onPostUserSettingsOnServerAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setPostProjectCommentTaskInProgress(Z)V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postSettingsTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;

    .line 430
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onPostSettingsTaskFailure(Ljava/lang/Exception;)V

    .line 433
    :cond_0
    return-void
.end method

.method public onPostUserSettingsOnServerAsyncTaskSuccess(Ljava/lang/Boolean;Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V
    .locals 2

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setPostProjectCommentTaskInProgress(Z)V

    .line 419
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    const-string/jumbo v1, "allowed"

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;->setMatureAccess(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postSettingsTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;

    .line 421
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;->onPostSettingsTaskSuccess(ZLcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V

    .line 424
    :cond_0
    return-void
.end method

.method public postComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 269
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isPostProjectCommentTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postProjectCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;

    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setPostProjectCommentTaskInProgress(Z)V

    .line 271
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostProjectCommentAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postProjectCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;

    .line 272
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;-><init>()V

    .line 273
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->setCommentContent(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;->setProjectId(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postProjectCommentTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKPostProjectCommentAsyncTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKPostProjectCommentAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    :cond_0
    return-void
.end method

.method public setActiveProject(Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->mActiveProject:Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;

    .line 162
    return-void
.end method

.method public setActiveProjectComments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectCommentDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setActiveProjectCommentsList(Ljava/util/List;)V

    .line 222
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->getActiveProjectCommentsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    return-void
.end method

.method public setAppreciateProjectTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->appreciateProjectTaskInProgress:Z

    .line 447
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment$Callbacks;

    .line 154
    return-void
.end method

.method public setMatureContentAccessForUser(Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 300
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->isPostProjectCommentTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postSettingsTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setPostProjectCommentTaskInProgress(Z)V

    .line 302
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKPostUserSettingsOnServerAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postSettingsTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;

    .line 303
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postSettingsTask:Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;

    new-array v1, v1, [Lcom/behance/sdk/asynctask/params/BehanceSDKPostUserSettingsOnServerAsyncTaskParams;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKPostUserSettingsOnServerAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 305
    :cond_0
    return-void
.end method

.method public setPostSettingTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->postSettingTaskInProgress:Z

    .line 210
    return-void
.end method

.method public unFollowUser(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    .line 291
    invoke-direct {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->setFollowUnFollowTaskInProgress(Z)V

    .line 292
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKFollowUserAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    .line 293
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;-><init>()V

    .line 294
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->setUserDTO(Lcom/behance/sdk/dto/search/BehanceSDKUserDTO;)V

    .line 295
    invoke-virtual {v0, v4}, Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;->setFollowUser(Z)V

    .line 296
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKGetProjectDetailsHeadlessFragment;->followUnFollowUserAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Lcom/behance/sdk/asynctask/params/BehanceSDKFollowUnFollowUserAsyncTaskParams;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/asynctasks/BehanceSDKFollowUnFollowUserAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 297
    return-void
.end method

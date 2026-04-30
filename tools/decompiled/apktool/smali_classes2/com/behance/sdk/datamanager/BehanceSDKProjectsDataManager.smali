.class public Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;
.super Ljava/lang/Object;
.source "BehanceSDKProjectsDataManager.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;


# static fields
.field private static instance:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;


# instance fields
.field private getCuratedGalleryProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

.field private getProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

.field private getProjectsAsyncTaskInProgress:Z

.field private getProjectsExecutor:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

.field private getProjectsListenersSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final getProjectsSyncLockObject:Ljava/lang/Object;

.field private projectsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/project/BehanceSDKProjectDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTaskInProgress:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsSyncLockObject:Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

    const-class v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsExecutor:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->instance:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    invoke-direct {v0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;-><init>()V

    sput-object v0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->instance:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->instance:Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;

    return-object v0
.end method

.method private setProjects(Ljava/util/List;)V
    .locals 1
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
    .line 74
    invoke-virtual {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->projectsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    return-void
.end method


# virtual methods
.method public addGetProjectsListener(Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;)V
    .locals 2

    .prologue
    .line 174
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsSyncLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearProjectsDataManagerCache()V
    .locals 2

    .prologue
    .line 201
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsSyncLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->projectsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->projectsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->projectsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    :cond_0
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProjects()Ljava/util/List;
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
    .line 67
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->projectsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->projectsList:Ljava/util/List;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->projectsList:Ljava/util/List;

    return-object v0
.end method

.method public isGetProjectsAsyncTaskInProgress()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTaskInProgress:Z

    return v0
.end method

.method public loadGalleryProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 89
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getCuratedGalleryProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getCuratedGalleryProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->cancel(Z)Z

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getCuratedGalleryProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    .line 93
    :cond_0
    invoke-virtual {p0, v2}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->setGetProjectsAsyncTaskInProgress(Z)V

    .line 94
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCuratedGalleryProjectsAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getCuratedGalleryProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    .line 95
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getCuratedGalleryProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsExecutor:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method

.method public loadProjectsFromServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 79
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->cancel(Z)Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    .line 83
    :cond_0
    invoke-virtual {p0, v2}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->setGetProjectsAsyncTaskInProgress(Z)V

    .line 84
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetProjectsAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    .line 85
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsExecutor:Lcom/behance/sdk/executors/BehanceSDKSerialExecutor;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    return-void
.end method

.method public onGetCuratedGalleryProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsSyncLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;->onProjectsDataManagerGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->setGetProjectsAsyncTaskInProgress(Z)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getCuratedGalleryProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    .line 132
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    return-void
.end method

.method public onGetCuratedGalleryProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V
    .locals 3
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
    .line 100
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsSyncLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;->getPageNumber()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;->onProjectsDataManagerGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetCuratedGalleryProjectsAsyncTaskParams;)V

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 104
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->setProjects(Ljava/util/List;)V

    goto :goto_0

    .line 113
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->setGetProjectsAsyncTaskInProgress(Z)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getCuratedGalleryProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCuratedGalleryProjectsAsyncTask;

    .line 115
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    return-void
.end method

.method public onGetProjectsAsyncTaskFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsSyncLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;->onProjectsDataManagerGetProjectsFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 168
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->setGetProjectsAsyncTaskInProgress(Z)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    .line 170
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    return-void
.end method

.method public onGetProjectsAsyncTaskSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V
    .locals 3
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
    .line 138
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsSyncLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    invoke-virtual {p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;->getPageNumber()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;

    .line 146
    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;->onProjectsDataManagerGetProjectsSuccess(Ljava/util/List;Lcom/behance/sdk/asynctask/params/BehanceSDKGetProjectsAsyncTaskParams;)V

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 142
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->setProjects(Ljava/util/List;)V

    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->setGetProjectsAsyncTaskInProgress(Z)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetProjectsAsyncTask;

    .line 153
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-void
.end method

.method public removeGetProjectsListener(Lcom/behance/sdk/listeners/IBehanceSDKProjectsDataManagerGetProjectsListener;)V
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsSyncLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsListenersSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    monitor-exit v1

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setGetProjectsAsyncTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProjectsDataManager;->getProjectsAsyncTaskInProgress:Z

    .line 198
    return-void
.end method

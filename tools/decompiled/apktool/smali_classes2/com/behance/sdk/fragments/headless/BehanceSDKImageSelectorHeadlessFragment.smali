.class public Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKImageSelectorHeadlessFragment.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;


# instance fields
.field private albumsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;",
            ">;"
        }
    .end annotation
.end field

.field private albumsLoadingInProgress:Z

.field private callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;

.field private getAlbumsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsLoadingInProgress:Z

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->setRetainInstance(Z)V

    .line 49
    return-void
.end method

.method private setAlbumsLoadingInProgress(Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsLoadingInProgress:Z

    .line 72
    return-void
.end method


# virtual methods
.method public clearAlbumsCache()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsList:Ljava/util/List;

    .line 64
    :cond_0
    return-void
.end method

.method public getAlbumsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsList:Ljava/util/List;

    return-object v0
.end method

.method public isAlbumsLoadingInProgress()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsLoadingInProgress:Z

    return v0
.end method

.method public loadAlbums(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->isAlbumsLoadingInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->setAlbumsLoadingInProgress(Z)V

    .line 77
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;-><init>()V

    .line 78
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;->setContextWeakReference(Ljava/lang/ref/WeakReference;)V

    .line 80
    invoke-virtual {v0, p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;->setShowImageSelectionSources(Z)V

    .line 81
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;

    invoke-direct {v1, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetAlbumsTaskListener;)V

    iput-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->getAlbumsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;

    .line 82
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->getAlbumsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetAlbumsTaskParams;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    :cond_0
    return-void
.end method

.method public onGetAlbumsTaskFailure(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->setAlbumsLoadingInProgress(Z)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->getAlbumsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;

    .line 106
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;->onGetAlbumsFailure(Ljava/lang/Exception;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onGetAlbumsTaskSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKAlbumDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsList:Ljava/util/List;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->albumsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->setAlbumsLoadingInProgress(Z)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->getAlbumsTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetAlbumsAsyncTask;

    .line 97
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;

    invoke-interface {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;->onGetAlbumsSuccess()V

    .line 100
    :cond_2
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKImageSelectorHeadlessFragment$Callbacks;

    .line 53
    return-void
.end method

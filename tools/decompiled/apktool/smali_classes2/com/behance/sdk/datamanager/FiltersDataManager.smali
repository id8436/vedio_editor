.class public Lcom/behance/sdk/datamanager/FiltersDataManager;
.super Ljava/lang/Object;
.source "FiltersDataManager.java"

# interfaces
.implements Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;


# static fields
.field private static final FILTERS_DATA_MANAGER:Lcom/behance/sdk/datamanager/FiltersDataManager;


# instance fields
.field private creativeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;"
        }
    .end annotation
.end field

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private loadCreativeFieldsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

.field private loadCreativeFieldsTaskInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/behance/sdk/datamanager/FiltersDataManager;

    invoke-direct {v0}, Lcom/behance/sdk/datamanager/FiltersDataManager;-><init>()V

    sput-object v0, Lcom/behance/sdk/datamanager/FiltersDataManager;->FILTERS_DATA_MANAGER:Lcom/behance/sdk/datamanager/FiltersDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->listeners:Ljava/util/List;

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/behance/sdk/datamanager/FiltersDataManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/behance/sdk/datamanager/FiltersDataManager;->FILTERS_DATA_MANAGER:Lcom/behance/sdk/datamanager/FiltersDataManager;

    return-object v0
.end method

.method private loadCreativeFieldsFromServer(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/FiltersDataManager;->setLoadCreativeFieldsTaskInProgress(Z)V

    .line 80
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;-><init>(Lcom/behance/sdk/datamanager/listeners/interfaces/IGetCreativeFieldsAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    .line 81
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->setUserCredentials(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V

    .line 82
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    :cond_0
    return-void
.end method

.method private notifyListenersOnLoadCreativeFieldSuccess()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;

    .line 72
    iget-object v2, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->creativeFields:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;->onCreativeFieldsLoadingSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private setLoadCreativeFieldsTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsTaskInProgress:Z

    .line 88
    return-void
.end method


# virtual methods
.method public addListener(Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;)V
    .locals 1

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public isLoadCreativeFieldsTaskInProgress()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsTaskInProgress:Z

    return v0
.end method

.method public loadCreativeFields(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->creativeFields:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->creativeFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsFromServer(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/FiltersDataManager;->notifyListenersOnLoadCreativeFieldSuccess()V

    goto :goto_0
.end method

.method public onLoadCreativeFieldsFailure(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;

    .line 117
    invoke-interface {v0, p1}, Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;->onCreativeFieldsLoadingFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/FiltersDataManager;->setLoadCreativeFieldsTaskInProgress(Z)V

    .line 122
    return-void
.end method

.method public onLoadCreativeFieldsSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->creativeFields:Ljava/util/List;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->creativeFields:Ljava/util/List;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->creativeFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->creativeFields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/FiltersDataManager;->notifyListenersOnLoadCreativeFieldSuccess()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->loadCreativeFieldsAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKLoadCreativeFieldsAsyncTask;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/FiltersDataManager;->setLoadCreativeFieldsTaskInProgress(Z)V

    .line 108
    return-void
.end method

.method public removeListener(Lcom/behance/sdk/datamanager/listeners/interfaces/IFiltersDataManagerListener;)V
    .locals 1

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/behance/sdk/datamanager/FiltersDataManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method

.class public Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;
.super Ljava/lang/Object;
.source "BehanceSDKProfileLocationsDataManager.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCountriesAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;


# static fields
.field private static instance:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;


# instance fields
.field private activeCountryId:Ljava/lang/String;

.field private activeGetCitiesParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

.field private citiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
            ">;"
        }
    .end annotation
.end field

.field private clientId:Ljava/lang/String;

.field private countriesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;",
            ">;"
        }
    .end annotation
.end field

.field private getCitiesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

.field private getCitiesAsyncTaskInProgress:Z

.field private getCountriesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;

.field private getCountriesTaskInProgress:Z

.field private getStatesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;

.field private getStatesAsyncTaskInProgress:Z

.field private listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private statesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->countriesList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->statesList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 49
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setCredentials()V

    .line 50
    return-void
.end method

.method public static getInstance()Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->instance:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    invoke-direct {v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;-><init>()V

    sput-object v0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->instance:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    .line 62
    :cond_0
    sget-object v0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->instance:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    return-object v0
.end method

.method private loadCountriesFromServer()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCountriesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;

    if-nez v0, :cond_1

    .line 75
    invoke-direct {p0, v2}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetCountriesTaskInProgress(Z)V

    .line 76
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCountriesAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCountriesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;

    .line 77
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->clientId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setCredentials()V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;->setClientId(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCountriesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKAbstractTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    :cond_1
    return-void
.end method

.method private loadStatesFromServer(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->isGetStatesAsyncTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getStatesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;

    if-nez v0, :cond_1

    .line 154
    invoke-direct {p0, v2}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetStatesAsyncTaskInProgress(Z)V

    .line 155
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetStatesOfCountryAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getStatesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;

    .line 156
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;-><init>()V

    .line 157
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;->setCountryId(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->clientId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setCredentials()V

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;->setClientId(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getStatesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetStatesOfCountryAsyncTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    :cond_1
    return-void
.end method

.method private notifyListenersOnGetCountriesSuccess()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;

    .line 90
    iget-object v2, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->countriesList:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;->onCountriesLoadingSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private notifyListenersOnGetStatesSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;

    .line 170
    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;->onStatesLoadingSuccess(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method private notifyOnGetCitiesSuccessListeners(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;

    .line 243
    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;->onCitiesLoadingSuccess(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/util/List;)V

    goto :goto_0

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetCitiesAsyncTaskInProgress(Z)V

    .line 248
    return-void
.end method

.method private searchCitiesOnServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 217
    iput-object p1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeGetCitiesParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    .line 218
    invoke-direct {p0, v1}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetCitiesAsyncTaskInProgress(Z)V

    .line 220
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->cancel(Z)Z

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->clientId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setCredentials()V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->setClientId(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetCitiesAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    .line 230
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    new-array v1, v1, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 231
    return-void
.end method

.method private setCredentials()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->clientId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private setGetCitiesAsyncTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTaskInProgress:Z

    .line 201
    return-void
.end method

.method private setGetCountriesTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCountriesTaskInProgress:Z

    .line 133
    return-void
.end method

.method private setGetStatesAsyncTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getStatesAsyncTaskInProgress:Z

    .line 141
    return-void
.end method


# virtual methods
.method public addListener(Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;)V
    .locals 1

    .prologue
    .line 116
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    return-void
.end method

.method public isGetCitiesAsyncTaskInProgress()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTaskInProgress:Z

    return v0
.end method

.method public isGetCountriesTaskInProgress()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCountriesTaskInProgress:Z

    return v0
.end method

.method public isGetStatesAsyncTaskInProgress()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getStatesAsyncTaskInProgress:Z

    return v0
.end method

.method public loadCountries()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->countriesList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->countriesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->loadCountriesFromServer()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->notifyListenersOnGetCountriesSuccess()V

    goto :goto_0
.end method

.method public loadStates(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeCountryId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeCountryId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->statesList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeCountryId:Ljava/lang/String;

    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->statesList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->notifyListenersOnGetStatesSuccess(Ljava/lang/String;Ljava/util/List;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeCountryId:Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->loadStatesFromServer(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetCitiesFailure(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;

    .line 254
    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;->onCitiesLoadingFailure(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/lang/Exception;)V

    goto :goto_0

    .line 257
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCitiesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCitiesAsyncTask;

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetCitiesAsyncTaskInProgress(Z)V

    .line 259
    return-void
.end method

.method public onGetCitiesSuccess(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeGetCitiesParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {p1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->notifyOnGetCitiesSuccessListeners(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/util/List;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onGetCountriesFailure(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;

    .line 108
    invoke-interface {v0, p1}, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;->onCountriesLoadingFailure(Ljava/lang/Exception;)V

    goto :goto_0

    .line 111
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCountriesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;

    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetCountriesTaskInProgress(Z)V

    .line 113
    return-void
.end method

.method public onGetCountriesSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->countriesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->countriesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    invoke-direct {p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->notifyListenersOnGetCountriesSuccess()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getCountriesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetCountriesAsyncTask;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetCountriesTaskInProgress(Z)V

    .line 102
    return-void
.end method

.method public onGetStatesFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;

    .line 188
    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;->onStatesLoadingFailure(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getStatesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetStatesAsyncTaskInProgress(Z)V

    .line 193
    return-void
.end method

.method public onGetStatesSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->statesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->statesList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->notifyListenersOnGetStatesSuccess(Ljava/lang/String;Ljava/util/List;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getStatesAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetStatesOfCountryAsyncTask;

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->setGetStatesAsyncTaskInProgress(Z)V

    .line 182
    return-void
.end method

.method public removeListener(Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;)V
    .locals 1

    .prologue
    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->listenersSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 125
    :cond_0
    return-void
.end method

.method public searchForCities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;-><init>()V

    .line 205
    invoke-virtual {v0, p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->setCountryId(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->setStateId(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p3}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->setCitySearchStr(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->citiesList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeGetCitiesParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeGetCitiesParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->activeGetCitiesParams:Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;

    iget-object v1, p0, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->citiesList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->notifyOnGetCitiesSuccessListeners(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/util/List;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-direct {p0, v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->searchCitiesOnServer(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;)V

    goto :goto_0
.end method

.class public Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;
.super Ljava/lang/Object;
.source "MobileCreationsDataSourceFactory.java"


# static fields
.field private static _instance:Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;


# instance fields
.field private _dataLoading:Z

.field private allSourcesLoaded:Z

.field private cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private dataSourcesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;",
            ">;"
        }
    .end annotation
.end field

.field private loadedSourcesTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field private numDataSourcesPending:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->allSourcesLoaded:Z

    .line 56
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->_dataLoading:Z

    .line 54
    return-void
.end method

.method public static getDataSourceTypes()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSFix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->_instance:Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->_instance:Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    .line 65
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->_instance:Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    return-object v0
.end method

.method private initializeDataSources()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->allSourcesLoaded:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->loadedSourcesTypes:Ljava/util/List;

    .line 91
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getDataSourceTypes()Ljava/util/Set;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 95
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->shouldShowComponent(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 97
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/DataSourceDelegate;

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/DataSourceDelegate;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V

    .line 98
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->setDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;)V

    .line 100
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->numDataSourcesPending:I

    .line 105
    return-void
.end method

.method private loadDataSources()V
    .locals 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->allSourcesLoaded:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    return-object v0
.end method

.method public getDataSourceByType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataSources()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLoadedDataSourcesTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->loadedSourcesTypes:Ljava/util/List;

    return-object v0
.end method

.method public isAllDataSourceLoaded(I)Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getDataSourceTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileCreation(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getDataSourceTypes()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadDataSources(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->dataSourcesMap:Ljava/util/Map;

    .line 122
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->loadedSourcesTypes:Ljava/util/List;

    .line 123
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->initializeDataSources()V

    .line 124
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->loadDataSources()V

    goto :goto_0
.end method

.method public notifyDataSourceIsReady(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)V
    .locals 3

    .prologue
    .line 148
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->numDataSourcesPending:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->numDataSourcesPending:I

    .line 149
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getDataSourceByType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetDataSource;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    const-string/jumbo v1, "DataSourceReady"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeDataSourceReady:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 154
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->loadedSourcesTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->numDataSourcesPending:I

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->allSourcesLoaded:Z

    .line 160
    :cond_1
    return-void
.end method

.method public setCloud(Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 168
    return-void
.end method

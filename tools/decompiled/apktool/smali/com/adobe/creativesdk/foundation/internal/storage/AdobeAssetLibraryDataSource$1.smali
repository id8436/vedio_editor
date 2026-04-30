.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;
.super Ljava/lang/Object;
.source "AdobeAssetLibraryDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/IACLibraryManagerAppBridgeDelegate;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleFirstSyncWithServerInitiated()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->willLoadDataFromScratch()V

    goto :goto_0
.end method

.method public handleLibraryEvent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$2;->$SwitchMap$com$adobe$creativesdk$foundation$adobeinternal$storage$aclibmanager$events$ACLibraryManagerLibOpEvent$Type:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent;->getEventType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getLibraryManager()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didLoadMoreDataWithCount(I)V

    goto :goto_0

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    invoke-direct {v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleResumeAppWorkflow()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetLibraryDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSourceDelegate;->didFinishLoading()V

    goto :goto_0
.end method

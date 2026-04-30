.class Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;
.super Ljava/lang/Object;
.source "AdobeStorageDataSource.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeAssetFolderNextPageCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 800
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePagesWhileFiltering:Z

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_0

    .line 804
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didStopLoadingMorePagesToFilter()V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iput-boolean v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->abortLoadingMorePagesWhileFiltering:Z

    .line 807
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iput-boolean v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItemsWhileFiltering:Z

    .line 823
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 814
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->items:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->displayAssets:Ljava/util/ArrayList;

    .line 816
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageDataSourceDidLoadNewPageNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 817
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 819
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iput-boolean v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItemsWhileFiltering:Z

    .line 822
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->filterWithSearchString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->loadingItemsWhileFiltering:Z

    .line 830
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->access$500(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;)Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;

    move-result-object v0

    .line 831
    if-eqz v0, :cond_0

    .line 832
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeStorageDataSourceDelegate;->didStopLoadingMorePagesToFilter()V

    .line 834
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 796
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

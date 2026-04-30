.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$4;
.super Ljava/lang/Object;
.source "AssetsAbsListView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 340
    :cond_0
    if-eqz v0, :cond_1

    .line 342
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->startRefreshAnimation()V

    .line 345
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->stopRefreshAnimation()V

    goto :goto_0
.end method

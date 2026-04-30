.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$2;
.super Ljava/lang/Object;
.source "AssetsRecyclerListView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 180
    :cond_0
    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->startRefreshAnimation()V

    .line 183
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerListView;->stopRefreshAnimation()V

    goto :goto_0
.end method

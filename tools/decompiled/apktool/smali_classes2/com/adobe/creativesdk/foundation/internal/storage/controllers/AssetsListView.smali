.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;
.super Ljava/lang/Object;
.source "AssetsListView.java"


# static fields
.field static final kAdobeStorageInfiniteScrollPercentThreshold:D = 0.8


# instance fields
.field protected _parentContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->context:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public checkToSetEmptySearchView(Z)V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->getMainView()Landroid/view/View;

    move-result-object v0

    .line 62
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_search_empty_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 63
    if-eqz v0, :cond_0

    .line 64
    if-eqz p1, :cond_1

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected getHostActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 29
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 31
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 33
    goto :goto_0
.end method

.method public abstract getInstanceState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;
.end method

.method public abstract getMainView()Landroid/view/View;
.end method

.method public abstract performInitialization(Landroid/content/Context;)V
.end method

.method public abstract refreshDueToDataChange()V
.end method

.method public abstract refreshDueToNewItemsInsertion()V
.end method

.method public abstract restoreFromState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;)V
.end method

.method public setContainerController(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->_parentContainer:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method

.method public abstract showLoadingFooter()V
.end method

.method public abstract startRefreshAnimation()V
.end method

.method public abstract stopRefreshAnimation()V
.end method

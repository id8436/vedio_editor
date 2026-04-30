.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;
.source "AssetViewFragment.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;


# static fields
.field private static final T:Ljava/lang/String;


# instance fields
.field private final ORIENTATION_KEY:Ljava/lang/String;

.field protected _actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

.field private _app_orientation_changed_observer:Ljava/util/Observer;

.field protected _assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

.field private _assetsMainRootFrame:Landroid/widget/FrameLayout;

.field private _cancelSelectionBtn:Landroid/widget/LinearLayout;

.field private _cloud_not_reachable_view:Landroid/view/View;

.field private _containerIsVisibleRunning:Z

.field protected _currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

.field private _dataLoaded:Z

.field private _emptyFolderView:Landroid/view/View;

.field private _fabNotAdded:Z

.field private _fragmentStateWhenStopped:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;

.field protected _internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

.field private _isFragmentStopped:Z

.field private _isNetworkOnline:Z

.field protected _isRestoredFragment:Z

.field _listControllerSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;

.field private _mainContentView:Landroid/widget/RelativeLayout;

.field private _mainRootView:Landroid/widget/RelativeLayout;

.field private _menuStates:[Z

.field private _network_reachability_observer:Ljava/util/Observer;

.field private _no_network_full_view:Landroid/view/View;

.field private _no_network_notification_bar:Landroid/view/View;

.field private _notificationCountTextView:Landroid/widget/TextView;

.field private _notificationIcon:Landroid/widget/ImageView;

.field private _notificationMenuItem:Landroid/view/MenuItem;

.field private _notificationView:Landroid/view/View;

.field private _openFileBtn:Landroid/widget/LinearLayout;

.field private _openFileBtnTextView:Landroid/widget/TextView;

.field private _orientationOnPause:I

.field private _progressSpinner:Landroid/view/View;

.field private _restricted_region_error_layout:Landroid/view/View;

.field private _searchBarOpened:Z

.field private _selectionBottomBarView:Landroid/view/View;

.field private _suppressFooterSpinner:Z

.field private _supressProgress:Z

.field private _uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

.field private _uploadTasksMenuItem:Landroid/view/MenuItem;

.field private _upload_sessions_observer:Ljava/util/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;-><init>()V

    .line 90
    const-string/jumbo v0, "orientation"

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->ORIENTATION_KEY:Ljava/lang/String;

    .line 94
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isRestoredFragment:Z

    .line 97
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isFragmentStopped:Z

    .line 99
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    .line 101
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_suppressFooterSpinner:Z

    .line 102
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isNetworkOnline:Z

    .line 104
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_fabNotAdded:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_progressSpinner:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setNotificationCount(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadTasksMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$202(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadTasksMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_searchBarOpened:Z

    return v0
.end method

.method static synthetic access$302(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Z)Z
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_searchBarOpened:Z

    return p1
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainContentView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationCountTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationIcon:Landroid/widget/ImageView;

    return-object p1
.end method

.method private checkForAnyOrientationChange(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 371
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_fragmentStateWhenStopped:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    if-eqz p1, :cond_2

    const-string/jumbo v0, "orientation"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 373
    :goto_0
    if-eq v0, v1, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAppCurrentOrientation()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 375
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleAppOrientationChange()V

    .line 379
    :cond_1
    return-void

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_fragmentStateWhenStopped:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;->orientation:I

    goto :goto_0
.end method

.method private checkMultiSelectionState()V
    .locals 2

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAssetSelectionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1287
    :cond_0
    return-void
.end method

.method private clearAllAccessoryViews()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 959
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    .line 960
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    .line 961
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    .line 962
    return-void
.end method

.method private createUploadSummaryBannerView()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 988
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    if-eqz v0, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 991
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 992
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 993
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_theme_actionbar_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 995
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 996
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 998
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;-><init>(Landroid/content/Context;)V

    .line 999
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1000
    if-nez v0, :cond_1

    .line 1001
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1008
    :goto_1
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1009
    invoke-virtual {v2, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setTextColor(I)V

    .line 1010
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$dimen;->adobe_csdk_assetbrowser_grid_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setTextSize(IF)V

    .line 1012
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1014
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    .line 1015
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iput-object v2, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerTitle:Landroid/widget/TextView;

    .line 1016
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerView:Landroid/view/View;

    .line 1017
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1004
    :cond_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1005
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1
.end method

.method private getAppCurrentOrientation()I
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getNavBarHeightInternal(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 341
    const/4 v1, 0x0

    .line 342
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 343
    const/4 v2, 0x4

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    .line 345
    if-eqz v0, :cond_0

    if-nez v2, :cond_4

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 349
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 351
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    if-ne v0, v4, :cond_1

    const-string/jumbo v0, "navigation_bar_height"

    :goto_0
    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 357
    :goto_1
    if-lez v0, :cond_4

    .line 358
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 361
    :goto_2
    return v0

    .line 352
    :cond_1
    const-string/jumbo v0, "navigation_bar_height_landscape"

    goto :goto_0

    .line 354
    :cond_2
    if-ne v0, v4, :cond_3

    const-string/jumbo v0, "navigation_bar_height"

    :goto_3
    const-string/jumbo v3, "dimen"

    const-string/jumbo v4, "android"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "navigation_bar_width"

    goto :goto_3

    :cond_4
    move v0, v1

    .line 361
    goto :goto_2
.end method

.method private handleFolderDataCommon(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1131
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isRestrictedRegionErrorVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1132
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1133
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getEmptyStateViewId()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    .line 1135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->configureEmptyStateView(Landroid/view/View;)V

    .line 1136
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1138
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_fabNotAdded:Z

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->addFabToRootView()V

    .line 1140
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_fabNotAdded:Z

    .line 1144
    :cond_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 1146
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshOptionItems()V

    .line 1149
    :cond_2
    return-void

    .line 1144
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private hideCloudNotReachable()V
    .locals 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cloud_not_reachable_view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 629
    return-void
.end method

.method private initializeOtherAccessoryViews()V
    .locals 1

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->handleOnStart()V

    .line 795
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->prepareActionBarForCurrentCollection()V

    .line 796
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->configureMultiSelectViews()V

    .line 797
    return-void
.end method

.method private isCloudError()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cloud_not_reachable_view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cloud_not_reachable_view:Landroid/view/View;

    .line 619
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 618
    :goto_0
    return v0

    .line 619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInProgress()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_progressSpinner:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_progressSpinner:Landroid/view/View;

    .line 624
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 623
    :goto_0
    return v0

    .line 624
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkViewSetuped()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRestrictedRegionErrorVisible()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_restricted_region_error_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_restricted_region_error_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserFromRestrictedRegion()Z
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->sharedAuthManager()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_0
    if-eqz v0, :cond_1

    .line 392
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 394
    :goto_1
    return v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 394
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private prepareActionBarForCurrentCollection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x15

    .line 762
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/base/AdobeCSDKBaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 763
    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isContainerShowingRootCollection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getContainerNameForRoot()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setActionBarDropDownDetails(Ljava/lang/String;)V

    goto :goto_0

    .line 771
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 772
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 774
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    .line 775
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_arrow_back_white_24dp:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 786
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 787
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getCurrentTargetCollectionName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setActionBarDropDownDetails(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_arrow_back_white_24dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 780
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    .line 781
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_arrow_back_black_24dp:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 783
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$drawable;->ic_arrow_back_black_24dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private refreshAssetsListViewVisualLayout()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->resetAssetsListViewVisualLayout()V

    .line 178
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->restoreCurrentAssetsListControllerState()V

    .line 179
    return-void
.end method

.method private saveContainerState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;)V
    .locals 1

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->getCount()I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;->_dataSourceCount:I

    .line 919
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAppCurrentOrientation()I

    move-result v0

    iput v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;->orientation:I

    .line 920
    return-void

    .line 918
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setActionBarDropDownDetails(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKActionBarController;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method private setContainerLoadingAssetsFromScratch()V
    .locals 1

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showProgressView()V

    .line 1184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 1185
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshOptionItems()V

    .line 1186
    return-void
.end method

.method private setMultiSelectContainerVisibility(Z)V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    :cond_0
    return-void

    .line 1190
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private setNotificationCount(I)V
    .locals 2

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_notificationCountTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1731
    :cond_0
    :goto_0
    return-void

    .line 1715
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1720
    :cond_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$10;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setUpSelectionBottomBar()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 240
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_container_selection_bottom_bar:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainRootView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_selection_open_file_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_openFileBtn:Landroid/widget/LinearLayout;

    .line 242
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_selection_cancel_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cancelSelectionBtn:Landroid/widget/LinearLayout;

    .line 243
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_storage_selection_open_file_btn_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_openFileBtnTextView:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_openFileBtn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cancelSelectionBtn:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainContentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setupNetworkRelatedViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 532
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_csdk_common_errorview:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    .line 536
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_csdk_common_popup_bannerview:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    .line 537
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_cloud_not_reachable:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cloud_not_reachable_view:Landroid/view/View;

    .line 539
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cloud_not_reachable_view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 542
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 544
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cloud_not_reachable_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 548
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_cloud_not_reachable_retry_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 549
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$3;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private showCloudNotReachable()V
    .locals 2

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setupNetworkRelatedViews()V

    .line 610
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_cloud_not_reachable_error_message:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;

    .line 611
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;->getCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;->isPrivateCloud()Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_cloud_not_reachable_public_cloud:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/CreativeSDKTextView;->setText(I)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cloud_not_reachable_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    return-void
.end method

.method private showErrorMessageForRestrictedRegion()V
    .locals 4

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isUserFromRestrictedRegion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_csdk_restricted_region_error:I

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_restricted_region_error_layout:Landroid/view/View;

    .line 384
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getMainRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_restricted_region_error_layout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 386
    :cond_0
    return-void
.end method

.method private showLoadingFooter()V
    .locals 1

    .prologue
    .line 1215
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_suppressFooterSpinner:Z

    if-nez v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->showLoadingFooter()V

    .line 1219
    :cond_0
    return-void
.end method


# virtual methods
.method protected addFabToRootView()V
    .locals 0

    .prologue
    .line 1164
    return-void
.end method

.method protected closeSearchBarIfOpen()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->closeSearchViewIfOpen()V

    .line 1080
    :cond_0
    return-void
.end method

.method protected collapseFloatingActionMenu()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method protected configureEmptyStateView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1152
    return-void
.end method

.method protected configureMultiSelectViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 734
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setUpSelectionBottomBar()V

    .line 735
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAssetSelectionCount()I

    move-result v2

    .line 736
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    if-lez v2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 739
    if-gt v2, v4, :cond_1

    .line 740
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_open_files:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    .line 748
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_openFileBtnTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    return-void

    .line 736
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 741
    :cond_1
    const/16 v0, 0x63

    if-le v2, v0, :cond_2

    .line 742
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_open_multiple_files_99:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 745
    :cond_2
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_storage_open_multiple_files:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeLocalizedMgr;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    .line 746
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected createActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AdobeCCActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    .line 519
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    goto :goto_0
.end method

.method protected ds_didClearFilterString()V
    .locals 0

    .prologue
    .line 1319
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showEmptySearchView()V

    .line 1320
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->refreshCurrentListViewController()V

    .line 1321
    return-void
.end method

.method protected ds_didFailToLoadMoreDataWithError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 2

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->ds_handleLoadDataErrorCommon()V

    .line 1307
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorOffline:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1308
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->wentOffline(Z)V

    .line 1312
    :cond_1
    :goto_0
    return-void

    .line 1309
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getErrorCode()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorTimeout:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    if-ne v0, v1, :cond_1

    .line 1310
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showCloudNotReachable()V

    goto :goto_0
.end method

.method protected ds_didFilterResults()V
    .locals 0

    .prologue
    .line 1315
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->refreshCurrentListViewController()V

    .line 1316
    return-void
.end method

.method protected ds_didFinishLoading(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1242
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    .line 1243
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideProgressView()V

    .line 1244
    if-lez p1, :cond_0

    .line 1245
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideEmptyStateView()V

    .line 1251
    :goto_0
    return-void

    .line 1247
    :cond_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    .line 1248
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showEmptyAssetsStateView()V

    goto :goto_0
.end method

.method protected ds_didLoadMoreDataWithCount(ILcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListSectionsIndexSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeListIndexPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1255
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->stopRefreshAnimationOnCurrentListController()V

    .line 1257
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    .line 1258
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideProgressView()V

    .line 1259
    if-lez p1, :cond_3

    .line 1260
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideEmptyStateView()V

    .line 1261
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->refreshAssetsListViewVisualLayout()V

    .line 1262
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_containerIsVisibleRunning:Z

    if-eqz v0, :cond_2

    .line 1263
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->refreshDueToNewItemsInsertion()V

    .line 1270
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    .line 1277
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->checkMultiSelectionState()V

    .line 1278
    return-void

    .line 1266
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->refreshCurrentListViewController()V

    goto :goto_0

    .line 1268
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->refreshCurrentListViewController()V

    goto :goto_0

    .line 1272
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    .line 1274
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showEmptyAssetsStateView()V

    goto :goto_1
.end method

.method protected ds_handleLoadDataErrorCommon()V
    .locals 1

    .prologue
    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    .line 1301
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideProgressView()V

    .line 1302
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->stopRefreshAnimationOnCurrentListController()V

    .line 1303
    return-void
.end method

.method protected ds_handleLoadDataErrorShowEmptyAssetsView()V
    .locals 1

    .prologue
    .line 1290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    .line 1291
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showEmptyAssetsStateView()V

    .line 1292
    return-void
.end method

.method protected ds_willLoadDataFromScratch()V
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    .line 1204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_suppressFooterSpinner:Z

    .line 1208
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    if-nez v0, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->refreshCurrentListViewController()V

    .line 1211
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setContainerLoadingAssetsFromScratch()V

    .line 1212
    return-void
.end method

.method protected ds_willLoadNextPageForExistingCollection()V
    .locals 1

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1224
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    if-nez v0, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showProgressView()V

    .line 1226
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 1229
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showLoadingFooter()V

    .line 1230
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->refreshAssetsListViewVisualLayout()V

    .line 1231
    return-void
.end method

.method protected ds_willLoadNextPageForNonExistingCollection()V
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    if-nez v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showProgressView()V

    .line 1236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 1238
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showLoadingFooter()V

    .line 1239
    return-void
.end method

.method protected getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    if-nez v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->createActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    return-object v0
.end method

.method protected getAdobeFormattedString(I)Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getLocalizedStringUtil(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAdobeFormattedString(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method protected getAdobeFormattedString(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getAdobeFontFormattedString(Ljava/lang/String;Landroid/app/Activity;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAssetSelectionCount()I
.end method

.method protected abstract getAssetViewConfiguration(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;
.end method

.method protected getAssetsMainRootFrame()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected abstract getContainerNameForRoot()Ljava/lang/String;
.end method

.method protected abstract getCurrentTargetCollectionName()Ljava/lang/String;
.end method

.method protected abstract getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;
.end method

.method protected getEmptyStateViewId()I
    .locals 1

    .prologue
    .line 1114
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_storage_assetbrowser_empty_state_view:I

    return v0
.end method

.method protected getFabPaddingWidth()I
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 331
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 333
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 337
    :goto_0
    return v0

    .line 336
    :cond_0
    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getHostActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method protected getLocalizedStringUtil(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMainRootView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected getNavBarHeight(Landroid/app/Activity;)I
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 305
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 306
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getHostActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/NavBarUtil;->getHasTranslucentNav(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 307
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 309
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getNavBarHeightInternal(Landroid/content/Context;)I

    move-result v0

    .line 310
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    .line 313
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 316
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v0, v4

    add-float/2addr v0, v7

    float-to-int v1, v0

    .line 325
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    .line 305
    goto :goto_0

    .line 320
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v4

    add-float/2addr v0, v7

    float-to-int v1, v0

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method protected handleAnyListCellViewsRefresh()V
    .locals 0

    .prologue
    .line 884
    return-void
.end method

.method protected handleAnyListConfigChange()Z
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x0

    return v0
.end method

.method protected handleAppOrientationChange()V
    .locals 0

    .prologue
    .line 722
    return-void
.end method

.method protected abstract handleCancelSelectionUserAction()V
.end method

.method protected handleNetworkStatusChange(Z)V
    .locals 0

    .prologue
    .line 591
    return-void
.end method

.method protected handleNotificationQueue()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->clearQueue(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 877
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->clearQueue(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 880
    :cond_0
    return-void
.end method

.method protected handleOnStop()V
    .locals 1

    .prologue
    .line 939
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_fragmentStateWhenStopped:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;

    .line 940
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_fragmentStateWhenStopped:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->saveContainerState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewContainerInstanceState;)V

    .line 941
    return-void
.end method

.method protected abstract handleOpenCurrentSelectedFilesUserAction()V
.end method

.method protected handlePostOffline()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method protected handlePostOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method protected handlePostOnCreateView(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 292
    const-string/jumbo v1, "isCollectionRoot"

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isContainerShowingRootCollection()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAssetViewNavigateToCollectionNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 298
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 300
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->checkForAnyOrientationChange(Landroid/os/Bundle;)V

    .line 301
    return-void
.end method

.method protected handlePreOnStart()V
    .locals 0

    .prologue
    .line 888
    return-void
.end method

.method protected abstract handleSearchFunctionality(Ljava/lang/String;)Z
.end method

.method protected abstract hasActionBarOptions()Z
.end method

.method protected hideCollaborationAndNotificationIcon()V
    .locals 0

    .prologue
    .line 1345
    return-void
.end method

.method protected hideEmptyStateView()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 1175
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshOptionItems()V

    .line 1180
    :goto_0
    return-void

    .line 1179
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleFolderDataCommon(Z)V

    goto :goto_0
.end method

.method protected hideFab()V
    .locals 0

    .prologue
    .line 1354
    return-void
.end method

.method protected hideMenuItemsUtil(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 467
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    .line 468
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_menuStates:[Z

    move v0, v1

    .line 470
    :goto_0
    if-ge v0, v2, :cond_0

    .line 472
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 473
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_menuStates:[Z

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    aput-boolean v5, v4, v0

    .line 474
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    return-void
.end method

.method protected hideProgressView()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_progressSpinner:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 448
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hasActionBarOptions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setHasOptionsMenu(Z)V

    .line 449
    return-void
.end method

.method protected abstract hookUpDataSourceDelegate(Z)V
.end method

.method protected abstract initializeFromViewConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V
.end method

.method protected isAssetsMainFrameVisible()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isContainerShowingRootCollection()Z
    .locals 1

    .prologue
    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method protected isContainerVisibleRunning()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_containerIsVisibleRunning:Z

    return v0
.end method

.method public isEmptyFolderViewVisible()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_emptyFolderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFloatingMenuExpanded()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected isNetworkOnline()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isNetworkOnline:Z

    return v0
.end method

.method protected isRestoredDataSourceChanged()Z
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method protected isSearchBarOpened()Z
    .locals 1

    .prologue
    .line 1341
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_searchBarOpened:Z

    return v0
.end method

.method protected isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMoreItemsFromDataSource()V
    .locals 1

    .prologue
    .line 1110
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->loadNextPageOfData()V

    .line 1111
    return-void
.end method

.method protected markAsWentOffline()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->wentOffline(Z)V

    .line 606
    return-void
.end method

.method public abstract navigateToCollection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewNavigateCommands$NavBaseCommandData;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hasActionBarOptions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setHasOptionsMenu(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAssetViewConfiguration(Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->restoreContainerFromSavedInstance(Landroid/os/Bundle;)V

    .line 196
    :goto_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handlePostOnCreate(Landroid/os/Bundle;)V

    .line 197
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    .line 198
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->initializeFromViewConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 402
    invoke-super {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 403
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hasActionBarOptions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setHasOptionsMenu(Z)V

    .line 272
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetview_main_container:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainRootView:Landroid/widget/RelativeLayout;

    .line 273
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainRootView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_container_progressBar:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_progressSpinner:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainRootView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_container_content_assetsview:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    .line 275
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainRootView:Landroid/widget/RelativeLayout;

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_assetview_container_content_rootview:I

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainContentView:Landroid/widget/RelativeLayout;

    .line 277
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isRestoredFragment:Z

    .line 280
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setupAssetsDataSourceAndListViewControllers()V

    .line 282
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAppCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_orientationOnPause:I

    .line 284
    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handlePostOnCreateView(Landroid/os/Bundle;)V

    .line 286
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_mainRootView:Landroid/widget/RelativeLayout;

    return-object v0

    :cond_0
    move v0, v1

    .line 277
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 946
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onDestroyView()V

    .line 947
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->saveCurrentAssetsListControllerState()V

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_selectionBottomBarView:Landroid/view/View;

    .line 952
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->resetDelegate()V

    .line 953
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->closeSearchBarIfOpen()V

    .line 954
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->clearAllAccessoryViews()V

    .line 955
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 956
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 422
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 423
    if-eqz v1, :cond_0

    .line 432
    :goto_0
    return v0

    .line 426
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isContainerShowingRootCollection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->NAVIGATE_BACK:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    goto :goto_0

    .line 432
    :cond_1
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_containerIsVisibleRunning:Z

    .line 913
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAppCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_orientationOnPause:I

    .line 914
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onPause()V

    .line 915
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 407
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 408
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 411
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isCloudError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 412
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 413
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 414
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 903
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_orientationOnPause:I

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAppCurrentOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleAppOrientationChange()V

    .line 906
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_containerIsVisibleRunning:Z

    .line 907
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onResume()V

    .line 908
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->storeInstanceState(Landroid/os/Bundle;)V

    .line 228
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 806
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onStart()V

    .line 807
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handlePreOnStart()V

    .line 808
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isFragmentStopped:Z

    .line 809
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hookUpDataSourceDelegate(Z)V

    .line 810
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_actionBarController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->showOrHideUploadMenuItem()V

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleNotificationQueue()V

    .line 819
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->registerLocalNofications()V

    .line 822
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->initializeOtherAccessoryViews()V

    .line 824
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showErrorMessageForRestrictedRegion()V

    .line 826
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->getSharedInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z

    move-result v2

    .line 828
    if-eqz v2, :cond_3

    .line 830
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->wentOnline(Z)V

    .line 831
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->refreshAssetsListViewVisualLayout()V

    .line 832
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleAnyListCellViewsRefresh()V

    .line 846
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleAnyListConfigChange()Z

    move-result v0

    .line 852
    :goto_0
    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isRestoredFragment:Z

    if-eqz v3, :cond_4

    if-nez v0, :cond_4

    .line 853
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideProgressView()V

    .line 856
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isRestoredDataSourceChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    .line 857
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    .line 858
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->reloadDataFromDataSource()V

    .line 871
    :cond_2
    :goto_1
    return-void

    .line 848
    :cond_3
    invoke-virtual {p0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->wentOffline(Z)V

    move v0, v1

    goto :goto_0

    .line 867
    :cond_4
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    if-nez v0, :cond_2

    .line 868
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_dataLoaded:Z

    .line 869
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->reloadDataFromDataSource()V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->resetDelegate()V

    .line 929
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->saveActionBarInstanceState()V

    .line 930
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachabilityUtil;->destorySharedInstance()V

    .line 931
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->unRegisterLocalNotifications()V

    .line 932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isFragmentStopped:Z

    .line 933
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleOnStop()V

    .line 935
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onStop()V

    .line 936
    return-void
.end method

.method protected postActionCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 984
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 985
    return-void
.end method

.method protected refreshCurrentListViewController()V
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->refreshDueToDataChange()V

    .line 1200
    return-void
.end method

.method protected refreshEditMenuItems()V
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->refreshEditMenuItems()V

    .line 437
    return-void
.end method

.method protected registerLocalNofications()V
    .locals 3

    .prologue
    .line 657
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_network_reachability_observer:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$4;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_network_reachability_observer:Ljava/util/Observer;

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_app_orientation_changed_observer:Ljava/util/Observer;

    if-nez v0, :cond_1

    .line 680
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$5;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_app_orientation_changed_observer:Ljava/util/Observer;

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    if-nez v0, :cond_2

    .line 693
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    .line 695
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_upload_sessions_observer:Ljava/util/Observer;

    if-nez v0, :cond_3

    .line 696
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$6;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_upload_sessions_observer:Ljava/util/Observer;

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_network_reachability_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 705
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_app_orientation_changed_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 706
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNoUploadSessions:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_upload_sessions_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 707
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeUploadSessionsActive:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_upload_sessions_observer:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V

    .line 710
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesRefreshNotificationCount:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$7;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 716
    return-void
.end method

.method public reloadAssetItemsFromDataSourceDueToSwipeRefresh()V
    .locals 2

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->closeSearchBarIfOpen()V

    .line 1087
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    .line 1089
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    .line 1090
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v1

    invoke-interface {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->loadItemsFromScratch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1091
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_supressProgress:Z

    .line 1097
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->stopRefreshAnimationOnCurrentListController()V

    .line 1098
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getNotificationManager()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_0

    .line 1100
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getUnreadCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setNotificationCount(I)V

    .line 1101
    :cond_0
    return-void

    .line 1094
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setMultiSelectContainerVisibility(Z)V

    goto :goto_0
.end method

.method protected reloadDataFromDataSource()V
    .locals 1

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getDataSource()Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/IAdobeAssetDataSource;->loadItemsFromScratch()Z

    .line 892
    return-void
.end method

.method protected abstract resetAssetsListViewVisualLayout()V
.end method

.method protected restoreContainerFromSavedInstance(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetViewConfiguration:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->initializeFromViewConfiguration(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetsViewContainerConfiguration;)V

    .line 174
    return-void
.end method

.method protected restoreCurrentAssetsListControllerState()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_listControllerSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_listControllerSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->restoreFromState(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;)V

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_listControllerSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;

    .line 980
    :cond_0
    return-void
.end method

.method public retryClickHandler(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideCloudNotReachable()V

    .line 561
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 562
    return-void
.end method

.method protected saveCurrentAssetsListControllerState()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->getInstanceState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_listControllerSavedInstanceState:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView$InstanceState;

    .line 967
    return-void

    .line 965
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setAssetMainRootFrameVisibility(Z)V
    .locals 2

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_assetsMainRootFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1119
    return-void

    .line 1118
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected setContainerFragmentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setActionBarDropDownDetails(Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public setFabNotAdded(Z)V
    .locals 0

    .prologue
    .line 1159
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_fabNotAdded:Z

    .line 1160
    return-void
.end method

.method protected setNoNetworkViews(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1123
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1124
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1127
    goto :goto_1
.end method

.method protected abstract setupAssetsDataSourceAndListViewControllers()V
.end method

.method protected showCollaborationAndNotificationIcon()V
    .locals 0

    .prologue
    .line 1349
    return-void
.end method

.method protected showEmptyAssetsStateView()V
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleFolderDataCommon(Z)V

    .line 1156
    return-void
.end method

.method protected showEmptySearchView()V
    .locals 0

    .prologue
    .line 1325
    return-void
.end method

.method protected showFab()V
    .locals 0

    .prologue
    .line 1359
    return-void
.end method

.method protected showMenuItemsUtil(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_menuStates:[Z

    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    .line 488
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_menuStates:[Z

    array-length v0, v0

    if-eq v0, v3, :cond_1

    .line 489
    iput-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_menuStates:[Z

    :cond_1
    move v2, v1

    .line 492
    :goto_1
    if-ge v2, v3, :cond_3

    .line 494
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 495
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_menuStates:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isNetworkOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 492
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 495
    goto :goto_2

    .line 497
    :cond_3
    iput-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_menuStates:[Z

    goto :goto_0
.end method

.method protected showProgressView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_progressSpinner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setHasOptionsMenu(Z)V

    .line 455
    return-void
.end method

.method protected showUploadSummaryBar(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1024
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->createUploadSummaryBannerView()V

    .line 1025
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getUploadSummary()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;

    move-result-object v3

    .line 1028
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;->getErrorCount()I

    move-result v4

    .line 1029
    if-lez v4, :cond_2

    move v0, v1

    .line 1030
    :goto_0
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;->isStorageFull()Z

    move-result v5

    .line 1031
    const-string/jumbo v6, ""

    .line 1032
    if-eqz v0, :cond_4

    .line 1033
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerView:Landroid/view/View;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_assetview_common_error_banner_background:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1034
    if-ne v4, v1, :cond_3

    .line 1035
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_UPLOAD_SINGLE_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerView:Landroid/view/View;

    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$8;

    invoke-direct {v4, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1064
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$9;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$9;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;)V

    const-wide/16 v2, 0x1b58

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1074
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1029
    goto :goto_0

    .line 1037
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_UPLOAD_ERROR_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1047
    :cond_4
    if-eqz v5, :cond_5

    .line 1049
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerView:Landroid/view/View;

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_assetview_common_error_banner_background:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1050
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_UPLOAD_STORAGE_FULL_MSG:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1053
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_uploadSummaryBanner:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$UploadSummaryBanner;->bannerView:Landroid/view/View;

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_assetview_common_success_banner_background:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1054
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;->getSuccessCount()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 1055
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_UPLOAD_SINGLE_SUCCESS_MSG:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1058
    :goto_3
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;->getSuccessCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;->getSuccessCount()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1060
    goto :goto_2

    .line 1057
    :cond_6
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_IDS_UPLOAD_SUCCESS_MSG:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method protected stopRefreshAnimationOnCurrentListController()V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_currentAssetsViewController:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsListView;->stopRefreshAnimation()V

    .line 1297
    :cond_0
    return-void
.end method

.method protected storeInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v0, "orientation"

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getAppCurrentOrientation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    return-void
.end method

.method protected unRegisterLocalNotifications()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->unregisterForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 728
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_internalNotificationListener:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->unregisterForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V

    .line 730
    :cond_0
    return-void
.end method

.method protected wentOffline(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 633
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isNetworkOnline:Z

    .line 634
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setupNetworkRelatedViews()V

    .line 636
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideFab()V

    .line 638
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isAssetsMainFrameVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isEmptyFolderViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 649
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->stopRefreshAnimationOnCurrentListController()V

    .line 651
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handlePostOffline()V

    .line 652
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleNetworkStatusChange(Z)V

    .line 653
    return-void

    .line 641
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->hideProgressView()V

    .line 642
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 643
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_cloud_not_reachable_view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->handleCurrentNetworkStatus(Z)V

    goto :goto_0
.end method

.method protected wentOnline(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 566
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_isNetworkOnline:Z

    .line 568
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showFab()V

    .line 570
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isAssetsMainFrameVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isNetworkViewSetuped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    .line 571
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->setAssetMainRootFrameVisibility(Z)V

    .line 574
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_full_view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 575
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->getActionBarController()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment$AssetsViewBaseActionBarController;->handleCurrentNetworkStatus(Z)V

    .line 577
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->showProgressView()V

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->isNetworkViewSetuped()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->_no_network_notification_bar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :cond_1
    if-eqz p1, :cond_2

    .line 584
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->reloadAssetItemsFromDataSourceDueToSwipeRefresh()V

    .line 585
    :cond_2
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewFragment;->handleNetworkStatusChange(Z)V

    .line 586
    return-void
.end method

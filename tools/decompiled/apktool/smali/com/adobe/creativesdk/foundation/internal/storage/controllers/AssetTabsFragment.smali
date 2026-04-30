.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;
.source "AssetTabsFragment.java"


# static fields
.field private static currentTab:I


# instance fields
.field private _allAssetTabsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;",
            ">;"
        }
    .end annotation
.end field

.field private _cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field private _dataSourcesList:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field private _observer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;

.field private mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$102(I)I
    .locals 0

    .prologue
    .line 54
    sput p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    return p0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->addAnalyticsInfoForBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_allAssetTabsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getDisplayNameOfDataSource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getHostDetailsFromDataSource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPagerAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->refreshTabLayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    return-object v0
.end method

.method private addAnalyticsInfoForBrowser(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 235
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$2;

    invoke-direct {v3, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)V

    .line 243
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_files:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    const-string/jumbo v2, "files"

    .line 245
    const-string/jumbo v0, "mobile.ccmobile.viewFiles"

    .line 266
    :goto_0
    const-string/jumbo v4, "type"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {v0, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackAction(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 269
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_photos:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string/jumbo v2, "photos"

    .line 248
    const-string/jumbo v0, "mobile.ccmobile.viewPhotos"

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_psmix:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    const-string/jumbo v2, "mix"

    .line 251
    const-string/jumbo v0, "mobile.ccmobile.viewMix"

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_sketches:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    const-string/jumbo v2, "sketch"

    .line 254
    const-string/jumbo v0, "mobile.ccmobile.viewSketch"

    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_lines:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    const-string/jumbo v2, "line"

    .line 257
    const-string/jumbo v0, "mobile.ccmobile.viewLine"

    goto :goto_0

    .line 258
    :cond_4
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_drawings:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    const-string/jumbo v2, "draw"

    .line 260
    const-string/jumbo v0, "mobile.ccmobile.viewDraw"

    goto :goto_0

    .line 261
    :cond_5
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_comps:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    const-string/jumbo v2, "comp"

    .line 263
    const-string/jumbo v0, "mobile.ccmobile.viewComp"

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public static getCurrentTab()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    return v0
.end method

.method private getDataSourcesList()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getDataSourcesListToDisplayFromBundle(Landroid/os/Bundle;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayNameOfDataSource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, ""

    .line 102
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceFiles:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v1, :cond_1

    .line 103
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_files:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePhotos:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v1, :cond_2

    .line 105
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_photos:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourcePSMix:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v1, :cond_3

    .line 107
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_psmix:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_3
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v1, :cond_4

    .line 109
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_designlibrary:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceSketches:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v1, :cond_5

    .line 111
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_sketches:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_5
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceDraw:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v1, :cond_6

    .line 113
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_drawings:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_6
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceCompositions:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v1, :cond_7

    .line 115
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_comps:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_7
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;->AdobeAssetDataSourceMobileCreations:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    if-ne p1, v1, :cond_0

    .line 117
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_uxassetbrowser_all_mobilecreations:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getHostDetailsFromDataSource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->getAssetViewFragmentDetails(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    move-result-object v0

    return-object v0
.end method

.method private getLocalizedString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refreshTabLayout()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setTabMode(I)V

    .line 412
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setTabGravity(I)V

    .line 414
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->getSelectedTabPosition()I

    move-result v0

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    .line 415
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    sget v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 421
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper;->setupTabLayout(Landroid/support/design/widget/TabLayout;)V

    .line 422
    return-void
.end method

.method public static resetTabState()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    .line 168
    return-void
.end method

.method private setupTabsBasedOnGivenDataSources()V
    .locals 5

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getDataSourcesList()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_dataSourcesList:Ljava/util/EnumSet;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_allAssetTabsList:Ljava/util/ArrayList;

    .line 135
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 139
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/MobileCreationsDataSourceFactory;->getLoadedDataSourcesTypes()Ljava/util/List;

    move-result-object v0

    .line 140
    if-nez v0, :cond_3

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_dataSourcesList:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;

    .line 145
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory;->shouldShowComponent(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$1;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getDisplayNameOfDataSource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;->assetsTabName:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getHostDetailsFromDataSource(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceType;Landroid/os/Bundle;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    move-result-object v0

    iput-object v0, v3, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$AssetTabDetails;->fragmentDetails:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserControllerFactory$AdobeAssetViewFragmentDetails;

    .line 150
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_allAssetTabsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPagerAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getCurrentTab()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public hideTab()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setVisibility(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPagerAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;

    .line 78
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ADOBE_CLOUD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    .line 80
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 173
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$layout;->adobe_assetsview_datasource_tabs:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 175
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_tab_layout_loki:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->tabLayoutLoki:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    .line 176
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_tab_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    .line 177
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->tabLayoutLoki:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    iput-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    .line 179
    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setVisibility(I)V

    .line 180
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->tabLayoutLoki:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setVisibility(I)V

    .line 188
    :goto_0
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$id;->adobe_csdk_view_pager:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 192
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->setupTabsBasedOnGivenDataSources()V

    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPagerAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$OurViewPagerAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/TabLayoutHelper;->setupTabLayout(Landroid/support/design/widget/TabLayout;)V

    .line 201
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 220
    if-eqz p3, :cond_0

    .line 221
    const-string/jumbo v0, "currentTab"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    sget v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 227
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_observer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;

    .line 228
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeDataSourceReady:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_observer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 229
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_observer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 231
    return-object v1

    .line 183
    :cond_1
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    .line 184
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setVisibility(I)V

    .line 185
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->tabLayoutLoki:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 427
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onDestroyView()V

    .line 428
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeDataSourceReady:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_observer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 429
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAppOrientationConfigurationChanged:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_observer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->_observer:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment$DatSourceObserver;

    .line 431
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 438
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 439
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_1

    .line 441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 442
    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 447
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetViewBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    const-string/jumbo v0, "CurrentTab"

    sget v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->currentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public showTab()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetTabsFragment;->mTabLayout:Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/customviews/CustomFontTabLayout;->setVisibility(I)V

    .line 279
    :cond_0
    return-void
.end method

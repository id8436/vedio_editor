.class public Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;
.super Ljava/lang/Object;
.source "AdobeUXAssetBrowser.java"


# static fields
.field protected static adobeUXAssetBrowserFilterWithAdobeContent:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation
.end field

.field protected static adobeUXAssetBrowserFilterWithBasicImages:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sharedBrowser:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 63
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_TIFF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 64
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->adobeUXAssetBrowserFilterWithBasicImages:Ljava/util/EnumSet;

    .line 67
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_ILLUSTRATOR:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    .line 68
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->adobeUXAssetBrowserFilterWithAdobeContent:Ljava/util/EnumSet;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->sharedBrowser:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->setBrowserConfigurationDetails(Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V

    return-void
.end method

.method public static getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->sharedBrowser:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->sharedBrowser:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->sharedBrowser:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    .line 88
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->sharedBrowser:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;

    return-object v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setBrowserConfiguration(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 116
    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->options:Ljava/util/EnumSet;

    .line 117
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortTypeSetByUser()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_TIME:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    .line 123
    if-eqz v0, :cond_0

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->SORT_ALPHABETICALLY_ON_POPUP:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    .line 127
    :cond_0
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->setLastSortType(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;)V

    .line 130
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastVisualSetByUser()Z

    move-result v1

    if-nez v1, :cond_3

    .line 132
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_WATERFALL:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    .line 134
    if-eqz v0, :cond_2

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->SHOW_LIST_VIEW_ON_POPUP:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 136
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;->ADOBE_STORAGE_VISUAL_LAYOUT_LISTVIEW:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;

    .line 138
    :cond_2
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->setLastVisualLayout(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserVisualLayout;)V

    .line 141
    :cond_3
    if-eqz v0, :cond_5

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->ENABLE_MYACCOUNT_OPTION:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 142
    :goto_1
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AdobeCSDKInternalClientsPreferences;->setClientPreferenceEnableMyAccount(Z)V

    .line 144
    if-eqz v0, :cond_6

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->ENABLE_MULTI_SELECT:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v4, v2

    .line 145
    :goto_2
    if-eqz v0, :cond_7

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->SHOW_MULTI_SELECT_ON_POPUP:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    .line 147
    :goto_3
    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->setIsMultiSelectModeSupported(Z)V

    .line 148
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 149
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->setIsMultiSelectModeActive(Z)V

    .line 155
    :goto_4
    if-eqz v0, :cond_9

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;->ENABLE_MULTI_SELECT:Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 157
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->setIsMultiSelectModeActive(Z)V

    .line 164
    :goto_5
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->resetSelection()V

    .line 165
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->setSelectModeActive(Z)V

    .line 168
    return-void

    .line 116
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v1, v3

    .line 141
    goto :goto_1

    :cond_6
    move v4, v3

    .line 144
    goto :goto_2

    :cond_7
    move v1, v3

    .line 145
    goto :goto_3

    .line 152
    :cond_8
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->setIsMultiSelectModeActive(Z)V

    goto :goto_4

    .line 159
    :cond_9
    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->setIsMultiSelectModeActive(Z)V

    goto :goto_5
.end method

.method private setBrowserConfigurationDetails(Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;
        }
    .end annotation

    .prologue
    .line 292
    if-nez p2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->mimeTypeFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    if-eqz v0, :cond_1

    .line 296
    const-string/jumbo v0, "MIME_TYPES_FILTER_ARRAY"

    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->mimeTypeFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->getMimeTypes()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 297
    const-string/jumbo v0, "MIME_TYPES_FILTER_TYPE"

    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->mimeTypeFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilter;->getFilterType()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMIMETypeFilterType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 300
    :cond_1
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->dataSourceFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    if-eqz v0, :cond_3

    .line 302
    const-string/jumbo v0, "DATA_SOURCE_FILTER_ARRAY"

    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->dataSourceFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->getInclusiveDataSources()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 303
    const-string/jumbo v0, "DATA_SOURCE_FILTER_TYPE"

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 311
    :goto_1
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->designLibraryItemFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    if-eqz v0, :cond_2

    .line 312
    const-string/jumbo v0, "DESIGNLIBRARYITEMS_FILTER_ARRAY"

    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->designLibraryItemFilter:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilter;->getInclusiveDesignLibraryItems()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 313
    const-string/jumbo v0, "DESIGNLIBRARYITEMS_FILTER_TYPE"

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;->ADOBE_ASSET_DESIGNLIBRARYITEM_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDesignLibraryItemFilterType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 315
    :cond_2
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-nez v0, :cond_5

    .line 316
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getDefaultCloud()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_4

    .line 318
    const-string/jumbo v1, "ADOBE_CLOUD"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 306
    :cond_3
    const-string/jumbo v0, "DATA_SOURCE_FILTER_ARRAY"

    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilter;->allSupportedDataSources()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v0, "DATA_SOURCE_FILTER_TYPE"

    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;->ADOBE_ASSET_DATASOURCE_FILTER_INCLUSION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetDataSourceFilterType;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 320
    :cond_4
    new-instance v0, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorNoCloudSpecified:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;-><init>(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;)V

    .line 321
    throw v0

    .line 324
    :cond_5
    const-string/jumbo v0, "ADOBE_CLOUD"

    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method


# virtual methods
.method public popupFileBrowser(Landroid/app/Activity;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->popupFileBrowser(Landroid/app/Activity;ILcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V

    .line 111
    return-void
.end method

.method public popupFileBrowser(Landroid/app/Activity;ILcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->setBrowserConfiguration(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V

    .line 183
    const/4 v1, 0x0

    .line 186
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 192
    :goto_0
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->hasPrivateCloudScope()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;

    invoke-direct {v4, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;)V

    .line 197
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v7

    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;Landroid/app/Activity;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;I)V

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2;

    invoke-direct {v1, p0, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;)V

    invoke-virtual {v7, v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->refreshClouds(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 218
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;->_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$1Output;->_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    throw v0

    .line 187
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v6, v1

    goto :goto_0

    .line 222
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    invoke-direct {p0, v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->setBrowserConfigurationDetails(Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V

    .line 226
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    :cond_2
    return-void
.end method

.method public popupFileBrowser(Landroid/support/v4/app/Fragment;ILcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->setBrowserConfiguration(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V

    .line 243
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->setApplicationContext(Landroid/content/Context;)V

    .line 245
    const/4 v1, 0x0

    .line 248
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 254
    :goto_0
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;->cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->hasPrivateCloudScope()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    new-instance v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;

    invoke-direct {v4, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;)V

    .line 259
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->getSharedCloudManager()Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;

    move-result-object v7

    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;Landroid/support/v4/app/Fragment;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;I)V

    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$4;

    invoke-direct {v1, p0, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$4;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;)V

    invoke-virtual {v7, v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloudManager;->refreshClouds(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V

    .line 278
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;->_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, v4, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$2Output;->_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    throw v0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move-object v6, v1

    goto :goto_0

    .line 282
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUxAssetBrowserV2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    invoke-direct {p0, v0, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser;->setBrowserConfigurationDetails(Landroid/content/Intent;Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowserConfiguration;)V

    .line 287
    invoke-virtual {p1, v0, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 289
    :cond_2
    return-void
.end method

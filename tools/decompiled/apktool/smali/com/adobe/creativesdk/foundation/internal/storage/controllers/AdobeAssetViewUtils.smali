.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;
.super Ljava/lang/Object;
.source "AdobeAssetViewUtils.java"


# static fields
.field public static final ASSETVIEW_NAVIGATE_ISROOT_KEY:Ljava/lang/String; = "isCollectionRoot"

.field public static final ASSETVIEW_NAVIGATE_TARGETCOLLECTION_NAME:Ljava/lang/String; = "targetCollectionName"

.field public static final ASSET_ONE_UP_ACTIVITY_REQUEST:I = 0x856

.field public static final LIBRARY_ITEMS_ONE_UP_ACTIVITY_REQUEST:I = 0x858

.field public static final MOBILE_PACKAGE_ITEMS_ONE_UP_ACTIVITY_REQUEST:I = 0x859

.field public static final OFFLINE_ITEMS_ONE_UP_ACTIVITY_REQUEST:I = 0x85a

.field public static final PHOTO_ONE_UP_ACTIVITY_REQUEST:I = 0x857

.field private static final SCROLL_DIRECTION_CHANGE_DPs_DELTA:I = 0x5

.field public static final TARGET_COLLECTION_KEY:Ljava/lang/String; = "TARGET_COLLECTION"

.field private static _appIdFromPreference:Ljava/lang/String;

.field private static _cameraCheckedResult:I

.field private static _guidToLibraryNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isFirstAsset:Z

.field private static k_ONE_DP_TO_PIXELS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->k_ONE_DP_TO_PIXELS:I

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_appIdFromPreference:Ljava/lang/String;

    .line 65
    const/4 v0, -0x1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_cameraCheckedResult:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_guidToLibraryNameMap:Ljava/util/Map;

    .line 67
    sput-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->isFirstAsset:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPx(I)I
    .locals 2

    .prologue
    .line 116
    int-to-float v0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static deviceHasCameraFeature(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 89
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_cameraCheckedResult:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 94
    const-string/jumbo v2, "android.hardware.camera.any"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_cameraCheckedResult:I

    .line 101
    :cond_0
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_cameraCheckedResult:I

    if-ne v0, v1, :cond_2

    :goto_2
    return v1

    .line 96
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 101
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static getAdobeFontFormattedString(Ljava/lang/String;Landroid/app/Activity;)Landroid/text/SpannableString;
    .locals 6

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x0

    .line 221
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 222
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypeFace;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 223
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKTypefaceSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 224
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 226
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/adobe/creativesdk/foundation/assetux/R$color;->adobe_csdk_asset_browser_dark_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 228
    return-object v0
.end method

.method public static getAssetFolderFromCollection(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 5

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->href:Ljava/net/URI;

    .line 258
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->stringByDeletingLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 260
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;->ADOBE_STORAGE_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;->ADOBE_STORAGE_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFolderInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderByProperty;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageOrderRelation;Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getAssetFolderFromHref(Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    .locals 4

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 274
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getLastOrderField()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    move-result-object v2

    .line 275
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->getLastOrderDirection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    move-result-object v3

    .line 277
    if-eqz p0, :cond_1

    .line 281
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getFolderFromDirectHref(Ljava/net/URI;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    :goto_0
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 291
    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getRootOrderedByField(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    move-result-object v0

    .line 294
    :cond_0
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getAssetRenditionUtil(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ADOBE_ASSET_FILE_RENDITION_TYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;

    .line 327
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->adjustRenditionSizeBasedOnDeviceScale(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$1;

    invoke-direct {v2, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$1;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 326
    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getRenditionWithType(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 343
    return-void
.end method

.method public static getBitmapFromData([BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$1DecodeImageInBackgroundTask;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$1DecodeImageInBackgroundTask;-><init>(Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 317
    const/4 v1, 0x1

    new-array v1, v1, [[B

    .line 318
    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 319
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$1DecodeImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    return-void
.end method

.method public static getLastOrderDirection()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;
    .locals 2

    .prologue
    .line 244
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortState()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;->SORT_STATE_ASCENDING:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortState;

    if-ne v0, v1, :cond_0

    .line 245
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_ASCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    .line 248
    :goto_0
    return-object v0

    .line 247
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;->ADOBE_ASSET_FOLDER_ORDER_DESCENDING:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderDirection;

    goto :goto_0
.end method

.method public static getLastOrderField()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonLearnedSettings;->lastSortType()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;->SORT_TYPE_ALPHA:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeUXAssetBrowserCommonTypes$AdobeUXAssetBrowserSortType;

    if-ne v0, v1, :cond_0

    .line 235
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_NAME:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    .line 238
    :goto_0
    return-object v0

    .line 237
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;->ADOBE_ASSET_FOLDER_ORDER_BY_MODIFIED:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolderOrderBy;

    goto :goto_0
.end method

.method public static getLibraryNameForGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_guidToLibraryNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static hasLibraryGuidAlreadyRegistered(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_guidToLibraryNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static populateGuidToLibraryNameMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_guidToLibraryNameMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void
.end method

.method public static publishAnyListViewScrollDirectionChange(Landroid/widget/AbsListView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object p1

    .line 124
    :cond_1
    if-nez p1, :cond_2

    .line 125
    new-instance p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;

    invoke-direct {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;-><init>()V

    .line 153
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    .line 154
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstVisibleItem:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    .line 158
    sget v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->k_ONE_DP_TO_PIXELS:I

    if-nez v0, :cond_3

    .line 162
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->convertDpToPx(I)I

    move-result v0

    sput v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->k_ONE_DP_TO_PIXELS:I

    .line 167
    :cond_3
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstVisibleItem:I

    if-ne v0, v3, :cond_7

    .line 168
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 174
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstItemTop:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v5, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->k_ONE_DP_TO_PIXELS:I

    mul-int/lit8 v5, v5, 0x5

    if-lt v0, v5, :cond_0

    .line 178
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstItemTop:I

    if-ge v4, v0, :cond_6

    move v0, v1

    .line 179
    :goto_1
    iput v4, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstItemTop:I

    .line 194
    :goto_2
    iget-object v4, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->scrollDirection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    .line 196
    if-eqz v0, :cond_a

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_DOWN:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    .line 200
    :goto_3
    if-eq v4, v0, :cond_b

    .line 202
    :goto_4
    if-eqz v1, :cond_4

    .line 205
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;-><init>()V

    .line 206
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;->setNewScrollDirection(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;)V

    .line 207
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange;->setOffsetChange(I)V

    .line 208
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->getInstance()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;

    move-result-object v2

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;->ASSETVIEW_LISTVIEW_SCROLL_DIRECTION_CHANGE:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;

    invoke-virtual {v2, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetBrowserCommandMgr;->postCommand(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewBrowserCommandName;Ljava/lang/Object;)V

    .line 212
    :cond_4
    iput-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->scrollDirection:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    .line 215
    :cond_5
    iput v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstVisibleItem:I

    goto :goto_0

    :cond_6
    move v0, v2

    .line 178
    goto :goto_1

    .line 184
    :cond_7
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstVisibleItem:I

    if-ge v0, v3, :cond_8

    move v0, v1

    .line 185
    :goto_5
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 186
    if-eqz v4, :cond_9

    .line 187
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstItemTop:I

    goto :goto_2

    :cond_8
    move v0, v2

    .line 184
    goto :goto_5

    .line 189
    :cond_9
    iput v2, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils$ListViewScrollChangeData;->lastFirstItemTop:I

    goto :goto_2

    .line 196
    :cond_a
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;->SCROLL_UP:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/commands/AdobeAssetViewListViewScrollDirectionChange$Direction;

    goto :goto_3

    :cond_b
    move v1, v2

    .line 200
    goto :goto_4
.end method

.method public static shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_appIdFromPreference:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 76
    :try_start_0
    const-string/jumbo v1, "com.adobe.ccsdk.ccAssetsContainer_private_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    const-string/jumbo v2, "ccfilescontainer_private_appId"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_appIdFromPreference:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_2
    :goto_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_appIdFromPreference:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->_appIdFromPreference:Ljava/lang/String;

    const-string/jumbo v2, "com.adobe.cc.android.loki"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    goto :goto_1
.end method

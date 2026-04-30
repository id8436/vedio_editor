.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewBrowserSelectFilesHelper;
.super Ljava/lang/Object;
.source "AdobeAssetViewBrowserSelectFilesHelper.java"


# static fields
.field public static final ASSETBROWSER_ASSETS_SELECTION_LIST:Ljava/lang/String; = "ADOBE_ASSETBROWSER_ASSETFILE_SELECTION_LIST"

.field public static final ASSETBROWSER_LIBRARY_SELECTION_LIST:Ljava/lang/String; = "ADOBE_ASSETBROWSER_LIBRARY_SELECTION_LIST"

.field public static final ASSETBROWSER_MOBILE_PACKAGE_SELECTION_ITEM:Ljava/lang/String; = "ASSETBROWSER_MOBILE_PACKAGE_SELECTION_ITEM"

.field public static final ASSETBROWSER_PHOTOS_SELECTION_LIST:Ljava/lang/String; = "ADOBE_ASSETBROWSER_PHOTOASSET_SELECTION_LIST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentSelectedFilesAsIntentResultData()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->selectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 55
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 56
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;

    invoke-direct {v3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->resetSelectedAssets()V

    .line 60
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->resetSelectedAssets()V

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    const-string/jumbo v2, "ADOBE_ASSETBROWSER_ASSETFILE_SELECTION_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 65
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->getSelectedLibraryElement()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    move-result-object v1

    .line 68
    const-string/jumbo v2, "ADOBE_ASSETBROWSER_LIBRARY_SELECTION_LIST"

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->getSelectedPackageItem()Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v1

    .line 73
    const-string/jumbo v2, "ASSETBROWSER_MOBILE_PACKAGE_SELECTION_ITEM"

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getGUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    :cond_2
    return-object v0
.end method

.method public static getCurrentSelectedPhotosAsIntentResultData()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 83
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->resetSelectedAssets()V

    .line 85
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 88
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->selectedAssets()Ljava/util/ArrayList;

    move-result-object v0

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    .line 94
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;

    invoke-direct {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStoragePhotoAssetSelectionState;->resetSelectedAssets()V

    .line 99
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->resetSelectedAssets()V

    .line 101
    const-string/jumbo v0, "ADOBE_ASSETBROWSER_PHOTOASSET_SELECTION_LIST"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    return-object v1
.end method

.class public Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;
.super Ljava/lang/Object;
.source "AdobeUXAssetBrowser.java"


# instance fields
.field private final _intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;->_intent:Landroid/content/Intent;

    .line 354
    return-void
.end method


# virtual methods
.method public getSelectionAssetArray()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 361
    .line 362
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;->_intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeUXAssetBrowser$ResultProvider;->_intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object v3, v0

    .line 363
    :goto_0
    if-eqz v3, :cond_9

    .line 367
    :try_start_0
    const-string/jumbo v0, "ADOBE_ASSETBROWSER_ASSETFILE_SELECTION_LIST"

    .line 368
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 369
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    .line 372
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;

    .line 374
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->AdobeAssetFileFromInfo(Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    move-result-object v0

    .line 375
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeSelectionAssetFileInternal;

    invoke-direct {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeSelectionAssetFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)V

    .line 376
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 425
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 427
    :goto_2
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 431
    :cond_0
    :goto_3
    return-object v0

    :cond_1
    move-object v3, v1

    .line 362
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 381
    :cond_3
    :try_start_2
    const-string/jumbo v0, "ADOBE_ASSETBROWSER_PHOTOASSET_SELECTION_LIST"

    .line 382
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 383
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 385
    if-nez v1, :cond_4

    .line 386
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v2

    .line 388
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;

    .line 390
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobePhotoAssetInternal;->AdobeAssePhotoFromInfo(Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileInfo;)Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    move-result-object v0

    .line 391
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobeSelectionPhotoAssetInternal;

    invoke-direct {v4, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/photo/AdobeSelectionPhotoAssetInternal;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)V

    .line 392
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 425
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 397
    :cond_5
    const-string/jumbo v0, "ADOBE_ASSETBROWSER_LIBRARY_SELECTION_LIST"

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_8

    .line 399
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->isLibraryItemSame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 400
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->creationSelectionLibraryFromCurrentSelection()Lcom/adobe/creativesdk/foundation/storage/AdobeSelectionLibraryAsset;

    move-result-object v2

    .line 402
    if-nez v1, :cond_6

    .line 403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 405
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 406
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageLibrarySelectionState;->resetSelection()V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    .line 411
    :goto_5
    :try_start_4
    const-string/jumbo v1, "ASSETBROWSER_MOBILE_PACKAGE_SELECTION_ITEM"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    if-eqz v1, :cond_0

    .line 413
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->isPackageItemSame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->creationSelectionPackageFromCurrentSelection()Lcom/adobe/creativesdk/foundation/storage/AdobeSelection;

    move-result-object v2

    .line 416
    if-nez v0, :cond_7

    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 419
    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetMobileCreationSelectionState;->resetSelection()V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 425
    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_5

    :cond_9
    move-object v0, v1

    goto/16 :goto_3
.end method

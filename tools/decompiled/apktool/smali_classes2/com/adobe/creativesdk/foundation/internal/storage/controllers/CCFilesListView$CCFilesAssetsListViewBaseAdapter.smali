.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;
.super Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
.source "CCFilesListView.java"


# static fields
.field private static final TYPES_COUNT:I = 0x2

.field private static final TYPE_ASSET_FILE:I = 0x0

.field private static final TYPE_ASSET_FOLDER:I = 0x1


# instance fields
.field protected _flattenedAssetsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Landroid/content/Context;)V

    .line 416
    return-void
.end method


# virtual methods
.method protected abstract createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
.end method

.method protected abstract createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
.end method

.method protected createNewAssetCellView(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
    .locals 1

    .prologue
    .line 535
    if-nez p2, :cond_0

    .line 536
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->createAssetFileCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    .line 541
    :goto_0
    return-object v0

    .line 538
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 539
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->createAssetFolderCellView(Landroid/view/ViewGroup;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAdobeAssetAtPosition(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;
    .locals 2

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v1

    .line 527
    if-eqz v1, :cond_0

    .line 528
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    .line 530
    :cond_0
    return-object v0
.end method

.method protected getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    .line 512
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAssetsCount()I
    .locals 2

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getAssetsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 470
    :cond_0
    return v0
.end method

.method protected getAssetsList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->_flattenedAssetsList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_ccfilesDataSource:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageDataSource;->getAdobeStorageSortIndexCollation()Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageSortIndexCollation;->getFlattenedAssetsItemsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 454
    if-eqz v2, :cond_1

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->_flattenedAssetsList:Ljava/util/ArrayList;

    .line 456
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 457
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->_flattenedAssetsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getCellDataFromAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->_flattenedAssetsList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getCellDataFromAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 474
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;-><init>()V

    .line 475
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 476
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    .line 477
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getModificationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->modificationDate:Ljava/util/Date;

    .line 478
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->creationDate:Ljava/util/Date;

    .line 479
    instance-of v3, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 480
    if-eqz v3, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getOptionalMetadata()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->optionalMetadata:Lorg/json/JSONObject;

    .line 481
    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->imageMD5Hash:Ljava/lang/String;

    .line 482
    iput-object p1, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_isContainerCollectionReadOnly:Z

    iput-boolean v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->isReadOnly:Z

    .line 484
    if-eqz v3, :cond_2

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getFileSize()J

    move-result-wide v0

    :goto_1
    iput-wide v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->fileSize:J

    .line 485
    return-object v2

    :cond_1
    move-object v0, v1

    .line 480
    goto :goto_0

    .line 484
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 436
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 438
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getAdobeAssetAtPosition(I)Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;

    move-result-object v0

    .line 439
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->getTypeFromAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)I

    move-result v0

    .line 441
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->IGNORE_ITEM_VIEW_TYPE:I

    goto :goto_0
.end method

.method getTypeFromAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;)I
    .locals 1

    .prologue
    .line 431
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x2

    return v0
.end method

.method protected handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 563
    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isShared()Z

    move-result v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    iget-boolean v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->_isContainerCollectionReadOnly:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->setCCFolderViewAsShared(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;ZZ)V

    .line 568
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 569
    return-void

    .line 564
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected invalidateAssetsList()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->_flattenedAssetsList:Ljava/util/ArrayList;

    .line 547
    return-void
.end method

.method protected isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    .line 580
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getGuid()Ljava/lang/String;

    move-result-object v0

    .line 581
    iget-object v3, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    .line 582
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 585
    iget-object v3, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    .line 587
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 589
    :goto_0
    if-eqz v0, :cond_4

    .line 591
    iget-object v3, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 592
    if-eqz v3, :cond_1

    .line 594
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 595
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getImageMD5()Ljava/lang/String;

    move-result-object v3

    .line 596
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->getMd5Hash()Ljava/lang/String;

    move-result-object v0

    .line 597
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 599
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeStorageAssetSelectionState;->isMultiSelectModeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->isMarkedSelected()Z

    move-result v0

    .line 602
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView$CCFilesAssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;

    invoke-virtual {v3, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v3

    .line 603
    if-eq v0, v3, :cond_0

    .line 604
    invoke-virtual {p1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    :cond_0
    move v0, v1

    .line 610
    :cond_1
    :goto_1
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v1, :cond_4

    .line 619
    :cond_2
    :goto_2
    return v2

    :cond_3
    move v0, v2

    .line 587
    goto :goto_0

    :cond_4
    move v2, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method protected isAssetHasThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 2

    .prologue
    .line 551
    const/4 v0, 0x1

    .line 552
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v1, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 555
    :cond_0
    return v0
.end method

.method protected isAssetSelectable(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
    .locals 2

    .prologue
    .line 517
    const/4 v0, 0x0

    .line 518
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 519
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    .line 521
    :cond_0
    return v0
.end method

.method protected setCCFolderViewAsShared(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;ZZ)V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

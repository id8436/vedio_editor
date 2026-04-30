.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AssetsAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    .line 398
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 399
    return-void
.end method

.method private tryAspectRatioFromAssetData(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->optionalMetadata:Lorg/json/JSONObject;

    .line 508
    if-eqz v0, :cond_0

    .line 509
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    :try_start_0
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 512
    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 513
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 514
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 515
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setAssetImageAspectRatioHint(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->prepareForReuse()V

    .line 527
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setTitle(Ljava/lang/String;)V

    .line 528
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setGuid(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setPosition(I)V

    .line 531
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setCellDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;)V

    .line 532
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->imageMD5Hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setImageMD5(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->isAssetSelectable(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    .line 537
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->tryAspectRatioFromAssetData(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    .line 539
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 540
    return-void
.end method

.method protected createDummyView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract createNewAssetCellView(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;
.end method

.method public getAllAssetsData()Ljava/util/ArrayList;
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
    .line 550
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getAssetsCount()I

    move-result v1

    .line 551
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 552
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 553
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    return-object v2
.end method

.method protected abstract getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
.end method

.method protected abstract getAssetsCount()I
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getAssetsCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 432
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getRealAdapter()Landroid/widget/BaseAdapter;
    .locals 0

    .prologue
    .line 412
    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 452
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v5

    .line 454
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 455
    :cond_0
    invoke-virtual {p0, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->createDummyView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    .line 467
    :cond_1
    if-eqz p2, :cond_7

    .line 468
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter$CellViewHolder;

    .line 469
    if-eqz v0, :cond_4

    iget v3, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter$CellViewHolder;->viewTypeId:I

    .line 470
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getItemViewType(I)I

    move-result v6

    if-ne v3, v6, :cond_4

    .line 471
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter$CellViewHolder;->mainBaseListCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    .line 478
    :goto_1
    if-nez v0, :cond_6

    .line 479
    invoke-virtual {p0, p3, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->createNewAssetCellView(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 482
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter$CellViewHolder;

    invoke-direct {v6, p0, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter$CellViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$1;)V

    .line 483
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter$CellViewHolder;->viewTypeId:I

    .line 484
    iput-object v0, v6, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter$CellViewHolder;->mainBaseListCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    .line 486
    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v0

    move v0, v2

    .line 493
    :goto_2
    if-eqz v0, :cond_2

    .line 494
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getPosition()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 495
    invoke-virtual {p0, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    move v1, v0

    .line 498
    :cond_2
    if-eqz v1, :cond_3

    .line 499
    invoke-virtual {p0, v4, v5, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    :cond_3
    move-object v0, v3

    .line 502
    goto :goto_0

    :cond_4
    move-object v0, v4

    .line 474
    goto :goto_1

    :cond_5
    move v0, v2

    .line 495
    goto :goto_3

    :cond_6
    move-object v4, v0

    move-object v3, p2

    move v0, v1

    goto :goto_2

    :cond_7
    move-object v0, v4

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method protected handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 1

    .prologue
    .line 544
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->isAssetHasThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->loadAndDisplayThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 546
    :cond_0
    return-void
.end method

.method protected abstract invalidateAssetsList()V
.end method

.method protected abstract isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
.end method

.method protected abstract isAssetHasThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
.end method

.method protected abstract isAssetSelectable(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z
.end method

.method public markDataSetChanged()V
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$AssetsListViewBaseAdapter;->getRealAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 416
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 418
    return-void
.end method

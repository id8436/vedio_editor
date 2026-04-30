.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AssetsRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected IGNORE_ITEM_VIEW_TYPE:I

.field private isLoki:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 642
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 639
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->IGNORE_ITEM_VIEW_TYPE:I

    .line 644
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->shouldEnableLokiSpecificFeatures(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->isLoki:Ljava/lang/Boolean;

    .line 646
    return-void
.end method

.method private constructCoachMark(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 875
    const/4 v1, 0x0

    .line 877
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 878
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "screenshots"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 882
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->isFirstAsset:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 883
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 884
    if-eqz v0, :cond_3

    .line 885
    if-nez v1, :cond_2

    .line 886
    sput-boolean v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AdobeAssetViewUtils;->isFirstAsset:Z

    .line 888
    :cond_2
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;

    invoke-direct {v2, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Z)V

    .line 889
    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->showCoachMarkForCellView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/utils/AssetBrowserCoachMarkData;)V

    .line 892
    :cond_3
    return-void
.end method

.method private tryAspectRatioFromAssetData(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V
    .locals 3

    .prologue
    .line 664
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->optionalMetadata:Lorg/json/JSONObject;

    .line 665
    if-eqz v0, :cond_1

    .line 666
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    :try_start_0
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 669
    const-string/jumbo v2, "width"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 670
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 671
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    .line 672
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setAssetImageAspectRatioHint(F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 680
    :cond_1
    instance-of v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    if-eqz v0, :cond_0

    .line 682
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;

    .line 683
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 686
    iget-object v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetData;->rendition:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 687
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 688
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 689
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setAssetImageAspectRatioHint(F)V

    goto :goto_0
.end method


# virtual methods
.method protected bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 698
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->prepareForReuse()V

    .line 700
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setTitle(Ljava/lang/String;)V

    .line 701
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setGuid(Ljava/lang/String;)V

    .line 703
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/GenericStaggeredCellView;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadAssetCellViews$UploadAssetListCellView;

    if-nez v0, :cond_0

    .line 705
    iget-wide v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->fileSize:J

    invoke-virtual {p1, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setSize(J)V

    .line 706
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->modificationDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setModifiedDate(Ljava/util/Date;)V

    .line 710
    :cond_0
    const/4 v0, 0x0

    .line 711
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 712
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 713
    :cond_1
    if-eqz v0, :cond_7

    .line 714
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->isContainerReadOnly()Z

    move-result v0

    move v1, v0

    .line 716
    :goto_0
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_3

    .line 718
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 719
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isShared()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setShared(Z)V

    .line 720
    iget-boolean v3, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->isReadOnly:Z

    if-nez v3, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setReadOnly(Z)V

    .line 721
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setHref(Ljava/lang/String;)V

    .line 724
    :cond_3
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    if-eqz v0, :cond_4

    .line 725
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_photoCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-static {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->access$300(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;)V

    .line 730
    :cond_4
    invoke-virtual {p1, v2, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setAssetsCount(II)V

    .line 732
    invoke-virtual {p1, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setPosition(I)V

    .line 733
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setCellDelegate(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetViewListCellDelegate;)V

    .line 734
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->imageMD5Hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setImageMD5(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->isAssetSelectable(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 737
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->isAssetSelected(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->markSelected(Z)V

    .line 739
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->tryAspectRatioFromAssetData(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    .line 741
    invoke-virtual {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 742
    return-void

    :cond_6
    move v1, v2

    .line 720
    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_0
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
    .line 896
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetsCount()I

    move-result v1

    .line 897
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 898
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 899
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    :cond_0
    return-object v2
.end method

.method protected abstract getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
.end method

.method protected abstract getAssetsCount()I
.end method

.method public getItem(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetsCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 788
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v0

    .line 795
    iget-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    if-eqz v1, :cond_0

    .line 796
    const/4 v0, 0x0

    .line 801
    :goto_0
    return v0

    .line 797
    :cond_0
    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_1

    .line 798
    const/4 v0, 0x1

    goto :goto_0

    .line 801
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->IGNORE_ITEM_VIEW_TYPE:I

    goto :goto_0
.end method

.method public getRealAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 0

    .prologue
    .line 770
    return-object p0
.end method

.method protected handlePostCellViewBinding(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    .line 748
    const/4 v0, 0x0

    .line 749
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 750
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 751
    :cond_0
    if-eqz v0, :cond_5

    .line 752
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->isContainerReadOnly()Z

    move-result v0

    move v2, v0

    .line 755
    :goto_0
    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getRootView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    sget-object v7, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;->FOLDER:Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    invoke-direct {v6, v0, v7, v1}, Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;Lcom/adobe/creativesdk/foundation/internal/DragDrop/UploadDragDropEventListener$ListenerType;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 761
    :cond_1
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->isAssetHasThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->loadAndDisplayThumbnail(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 767
    :goto_1
    return-void

    .line 764
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isShared()Z

    move-result v0

    iget-boolean v5, p2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->isReadOnly:Z

    if-nez v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    invoke-virtual {v1, p1, v4, v0, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->resetFolderView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZZ)V

    .line 765
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->loadAndDisplayLatestModifiedFileRendition(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_0
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
    .line 774
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getRealAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 775
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 637
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;I)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 819
    const/4 v0, 0x0

    .line 820
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getAssetItemData(I)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v4

    .line 825
    iget v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;->viewTypeId:I

    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->getItemViewType(I)I

    move-result v5

    if-ne v1, v5, :cond_9

    .line 826
    iget-object v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;->mainBaseListCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-object v1, v0

    .line 830
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    instance-of v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_assetsItemsAdapter:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;

    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/CCFilesSectionListView$CCFilesAssetsSectionalListItemsAdapter;->checkIfLastRowInSection(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 833
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_listDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_listDivider:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 845
    :cond_0
    :goto_1
    if-nez v1, :cond_8

    move v0, v3

    .line 847
    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getPosition()I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 848
    invoke-virtual {p0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->isAssetCellViewAlreadyRepresentAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 850
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    .line 851
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetClickListener;

    invoke-direct {v2, p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    :cond_2
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->getHostActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/IAdobeAssetViewBrowserFragmentExtraControlsHostActivity;

    if-nez v2, :cond_7

    .line 855
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->isLoki:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 857
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;

    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;->mainBaseListCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget v5, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;->viewTypeId:I

    invoke-direct {v2, p0, v3, p2, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter$AssetContextMenuClickListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;II)V

    .line 859
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setContextMenuHandler(Landroid/view/View$OnClickListener;)V

    .line 867
    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    .line 868
    invoke-virtual {p0, v1, v4, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->bindAssetCellViewToAsset(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V

    .line 871
    :cond_4
    invoke-direct {p0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->constructCoachMark(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;)V

    .line 872
    return-void

    .line 837
    :cond_5
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_listDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->_listDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v0, v3

    .line 848
    goto :goto_3

    .line 864
    :cond_7
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->hidePopUpMenu()V

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;
    .locals 3

    .prologue
    .line 806
    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$AssetsListViewBaseAdapter;->createNewAssetCellView(Landroid/view/ViewGroup;I)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    move-result-object v0

    .line 807
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 810
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;

    invoke-direct {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;-><init>(Landroid/view/View;)V

    .line 811
    iput p2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;->viewTypeId:I

    .line 812
    iput-object v0, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$CellViewHolder;->mainBaseListCellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    .line 814
    return-object v2
.end method

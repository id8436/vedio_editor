.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;
.super Ljava/lang/Object;
.source "AssetsRecyclerView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

.field final synthetic val$asset:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

.field final synthetic val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;I)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$asset:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iput p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 516
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->onCompletion(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onCompletion(Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 519
    .line 521
    :try_start_0
    const-string/jumbo v0, "num_files"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 526
    :goto_0
    :try_start_1
    const-string/jumbo v0, "num_folders"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 530
    :goto_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->setAssetsCount(II)V

    .line 532
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$asset:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->originalAsset:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    .line 539
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_a

    .line 540
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    .line 541
    :goto_2
    if-eqz v2, :cond_9

    .line 542
    invoke-interface {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->isContainerReadOnly()Z

    move-result v2

    move v8, v2

    .line 544
    :goto_3
    if-eqz v0, :cond_0

    if-nez v1, :cond_4

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isShared()Z

    move-result v3

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->_parentContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/IAdobeAssetContainerListViewDelegate;->isContainerReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    invoke-virtual {v1, v2, v7, v3, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->resetFolderView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZZ)V

    .line 574
    :cond_3
    :goto_4
    return-void

    .line 522
    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v1, v6

    goto :goto_0

    .line 527
    :catch_1
    move-exception v0

    .line 528
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v6

    goto :goto_1

    .line 547
    :cond_4
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->getHref()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%20"

    const-string/jumbo v4, " "

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->resourceFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 552
    :try_start_3
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->updateFromCollectionDictionary(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException; {:try_start_3 .. :try_end_3} :catch_5

    .line 561
    :goto_5
    :try_start_4
    const-string/jumbo v1, "UTF-8"

    invoke-static {v2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%20"

    const-string/jumbo v4, " "

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;->collectionFromHref(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 566
    :goto_6
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;

    invoke-direct {v2, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceCollection;)V

    .line 568
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$position:I

    if-ne v0, v1, :cond_3

    .line 569
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isShared()Z

    move-result v4

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v8, :cond_7

    :cond_5
    move v0, v7

    :goto_7
    invoke-virtual {v1, v3, v6, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->resetFolderView(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;ZZZ)V

    .line 570
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$cellView:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-static {v3, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;)Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    move-result-object v2

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$6;->val$position:I

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isShared()Z

    move-result v4

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v8, :cond_8

    :cond_6
    move v5, v7

    :goto_8
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->loadAndDisplayThumbnailForFolder(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetListCellView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;IZZ)V

    goto/16 :goto_4

    .line 553
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    .line 554
    :goto_9
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5

    .line 555
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    .line 556
    :goto_a
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/ParsingDataException;->printStackTrace()V

    goto :goto_5

    .line 562
    :catch_4
    move-exception v1

    .line 563
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v3

    goto :goto_6

    :cond_7
    move v0, v6

    .line 569
    goto :goto_7

    :cond_8
    move v5, v6

    .line 570
    goto :goto_8

    .line 555
    :catch_5
    move-exception v1

    goto :goto_a

    .line 553
    :catch_6
    move-exception v1

    goto :goto_9

    :cond_9
    move v8, v6

    goto/16 :goto_3

    :cond_a
    move-object v2, v3

    goto/16 :goto_2
.end method

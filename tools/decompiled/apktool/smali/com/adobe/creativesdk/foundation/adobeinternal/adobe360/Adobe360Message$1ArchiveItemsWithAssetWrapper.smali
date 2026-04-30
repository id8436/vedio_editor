.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method perform(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1509
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->val$prefix:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1511
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1514
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    .line 1515
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v1

    .line 1516
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1517
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1522
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v5, v4

    move-object v4, v3

    .line 1527
    :goto_1
    if-nez v5, :cond_0

    .line 1530
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Component for asset with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 1523
    :catch_0
    move-exception v4

    .line 1524
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v3

    .line 1525
    goto :goto_1

    .line 1535
    :cond_0
    new-instance v4, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1, v9}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 1590
    :goto_2
    return-object v0

    .line 1541
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1543
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v0, v2, :cond_4

    .line 1545
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1547
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v9}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 1549
    :cond_3
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1551
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {v2, v0, v6, v9}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>([BLjava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 1554
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v0, v2, :cond_6

    .line 1556
    :cond_5
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v6, v9}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 1558
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v0, v2, :cond_9

    .line 1562
    :cond_7
    const-string/jumbo v0, "/"

    invoke-static {v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1563
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 1564
    if-eqz v0, :cond_a

    .line 1567
    :try_start_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$1ArchiveItemsWithAssetWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1574
    :goto_3
    if-nez v0, :cond_8

    .line 1577
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Component for asset with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is missing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    .line 1568
    :catch_1
    move-exception v0

    .line 1569
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    .line 1570
    goto :goto_3

    .line 1581
    :cond_8
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    invoke-direct {v2, v0, v6, v9}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 1583
    goto/16 :goto_2

    .line 1587
    :cond_9
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorInvalidMessageData:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const-string/jumbo v1, "Unknown message format."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    throw v0

    :cond_a
    move-object v0, v3

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_2
.end method

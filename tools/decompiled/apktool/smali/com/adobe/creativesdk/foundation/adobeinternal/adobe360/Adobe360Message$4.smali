.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;
.super Ljava/lang/Object;
.source "Adobe360Message.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

.field final synthetic val$snapshotPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1650
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$snapshotPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 1653
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v1, v3, v10

    .line 1654
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1655
    const-string/jumbo v2, "manifest"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1656
    const-string/jumbo v2, "operation.json"

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1661
    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    :goto_0
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;

    invoke-direct {v6}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;-><init>()V

    .line 1667
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$400(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1668
    if-eqz v0, :cond_0

    .line 1669
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$500()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1673
    :cond_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 1675
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setOptions(Lorg/json/JSONObject;)V

    .line 1678
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 1680
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setResults(Lorg/json/JSONObject;)V

    .line 1810
    :cond_2
    new-instance v7, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;

    invoke-direct {v7, p0, v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1812
    aget-object v2, v3, v10

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 1814
    const-string/jumbo v2, "inputs"

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    .line 1815
    const-string/jumbo v8, "inputs"

    invoke-virtual {v2, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setPath(Ljava/lang/String;)V

    .line 1818
    :try_start_1
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1823
    :goto_1
    aget-object v8, v3, v10

    if-nez v8, :cond_3

    .line 1825
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1827
    iget-object v9, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v9, v9, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-virtual {v7, v9, v2, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->addAssetsToDictionaries(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1829
    invoke-virtual {v6, v8}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setInputs(Lorg/json/JSONObject;)V

    .line 1834
    :cond_3
    aget-object v2, v3, v10

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 1836
    const-string/jumbo v2, "outputs"

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    .line 1837
    const-string/jumbo v8, "outputs"

    invoke-virtual {v2, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setPath(Ljava/lang/String;)V

    .line 1840
    :try_start_2
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 1845
    :goto_2
    aget-object v8, v3, v10

    if-nez v8, :cond_4

    .line 1847
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1849
    iget-object v9, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v9, v9, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-virtual {v7, v9, v2, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->addAssetsToDictionaries(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1851
    invoke-virtual {v6, v8}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setOutputs(Lorg/json/JSONObject;)V

    .line 1856
    :cond_4
    aget-object v2, v3, v10

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    if-eqz v2, :cond_5

    .line 1858
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$600(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setOutputDispositions(Ljava/util/HashMap;)V

    .line 1861
    :cond_5
    aget-object v2, v3, v10

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1863
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v2

    aput-object v2, v3, v10

    .line 1866
    :cond_6
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v2, v12, v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 1868
    aget-object v2, v3, v10

    if-nez v2, :cond_7

    .line 1871
    invoke-virtual {v6, v5}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->writeToFileAtPath(Ljava/lang/String;)Z

    .line 1872
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v2, v12, v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 1875
    :cond_7
    aget-object v2, v3, v10

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1877
    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v2, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v2

    aput-object v2, v3, v10

    .line 1880
    :cond_8
    aget-object v2, v3, v10

    if-nez v2, :cond_a

    .line 1883
    const-string/jumbo v2, "operation.json"

    const-string/jumbo v6, "Operation Document"

    const-string/jumbo v7, "application/vnd.adobe.image-operation+json"

    const-string/jumbo v8, "primary"

    invoke-static {v1, v2, v6, v7, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->createComponentWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v2

    .line 1889
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v0, v2, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1894
    :goto_3
    aget-object v2, v3, v10

    if-nez v2, :cond_9

    .line 1897
    :try_start_4
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getSnapshotData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fWrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1904
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0, v12, v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 1907
    :cond_a
    aget-object v0, v3, v10

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1909
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    aput-object v0, v3, v10

    .line 1912
    :cond_b
    aget-object v0, v3, v10

    if-nez v0, :cond_e

    .line 1914
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    const-string/jumbo v1, "manifest"

    invoke-direct {v0, v4, v1, v10}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1915
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    const-string/jumbo v2, "operation.json"

    invoke-direct {v1, v5, v2, v10}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1916
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1917
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1920
    :try_start_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 1922
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    const-string/jumbo v6, "inputs"

    invoke-static {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1924
    :cond_c
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 1926
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    const-string/jumbo v6, "outputs"

    invoke-static {v0, v1, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$700(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/util/Map;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1928
    :cond_d
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$snapshotPath:Ljava/lang/String;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$100()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-static {v2, v0, v1, v6}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->createArchiveFileWithItems(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)Z
    :try_end_5
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1932
    :goto_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0, v12, v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 1936
    :cond_e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 1937
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 1940
    aget-object v0, v3, v10

    .line 1941
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1;

    invoke-direct {v1, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1953
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;->val$handler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$200(Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 1955
    return-void

    .line 1662
    :catch_0
    move-exception v0

    .line 1663
    aput-object v0, v3, v10

    move-object v0, v1

    goto/16 :goto_0

    .line 1819
    :catch_1
    move-exception v2

    .line 1820
    aput-object v2, v3, v10

    move-object v2, v1

    goto/16 :goto_1

    .line 1841
    :catch_2
    move-exception v2

    .line 1842
    aput-object v2, v3, v10

    move-object v2, v1

    goto/16 :goto_2

    .line 1890
    :catch_3
    move-exception v2

    .line 1891
    aput-object v2, v3, v10

    goto/16 :goto_3

    .line 1898
    :catch_4
    move-exception v0

    .line 1899
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v2, v6, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1900
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v0

    aput-object v0, v3, v10

    goto/16 :goto_4

    .line 1929
    :catch_5
    move-exception v0

    .line 1930
    aput-object v0, v3, v10

    goto :goto_5
.end method

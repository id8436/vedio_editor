.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;
.super Ljava/lang/Object;
.source "Adobe360Message.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$compositePath:Ljava/lang/String;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$compositePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 1987
    const/4 v0, 0x1

    new-array v8, v0, [Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v7, v8, v11

    .line 1990
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$compositePath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->createCompositeFromPath(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    .line 1994
    :goto_0
    new-instance v9, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;

    invoke-direct {v9}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;-><init>()V

    .line 1996
    aget-object v0, v8, v11

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1998
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    aput-object v0, v8, v11

    .line 2001
    :cond_0
    aget-object v0, v8, v11

    if-nez v0, :cond_2

    .line 2004
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setName(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setType(Ljava/lang/String;)V

    .line 2007
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$400(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2008
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2011
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 2013
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mRequestOptions:Lorg/json/JSONObject;

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setOptions(Lorg/json/JSONObject;)V

    .line 2016
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 2018
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mResponseResults:Lorg/json/JSONObject;

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setResults(Lorg/json/JSONObject;)V

    .line 2194
    :cond_2
    new-instance v10, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;

    invoke-direct {v10, p0, v6, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 2196
    aget-object v0, v8, v11

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2200
    :try_start_1
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "inputs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "inputs"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->appendNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2204
    :goto_1
    aget-object v1, v8, v11

    if-nez v1, :cond_3

    .line 2206
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2208
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mInputAssets:Ljava/util/Map;

    invoke-virtual {v10, v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->addAssetsToComposite(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2210
    invoke-virtual {v9, v1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setInputs(Lorg/json/JSONObject;)V

    .line 2215
    :cond_3
    aget-object v0, v8, v11

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 2219
    :try_start_2
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "outputs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo v4, "outputs"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->appendNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 2224
    :goto_2
    aget-object v1, v8, v11

    if-nez v1, :cond_4

    .line 2226
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2228
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mOutputAssets:Ljava/util/Map;

    invoke-virtual {v10, v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->addAssetsToComposite(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2230
    invoke-virtual {v9, v1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setOutputs(Lorg/json/JSONObject;)V

    .line 2235
    :cond_4
    aget-object v0, v8, v11

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mAcceptedMediaTypes:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    .line 2237
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$600(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->setOutputDispositions(Ljava/util/HashMap;)V

    .line 2240
    :cond_5
    aget-object v0, v8, v11

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2242
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    aput-object v0, v8, v11

    .line 2245
    :cond_6
    aget-object v0, v8, v11

    if-nez v0, :cond_7

    .line 2248
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 2249
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2250
    invoke-virtual {v9, v3}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360OperationDocument;->writeToFileAtPath(Ljava/lang/String;)Z

    .line 2253
    const-string/jumbo v0, "operation.json"

    const-string/jumbo v1, "Operation Document"

    const-string/jumbo v2, "application/vnd.adobe.image-operation+json"

    const-string/jumbo v4, "primary"

    invoke-static {v7, v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->createComponentWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v1

    .line 2259
    :try_start_3
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getRoot()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2264
    :goto_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0, v12, v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 2267
    :cond_7
    aget-object v0, v8, v11

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2269
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    invoke-static {v0, v7}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v0

    aput-object v0, v8, v11

    .line 2272
    :cond_8
    aget-object v0, v8, v11

    if-nez v0, :cond_9

    .line 2276
    :try_start_4
    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2280
    :goto_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0, v12, v13}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 2284
    :cond_9
    aget-object v0, v8, v11

    .line 2285
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1;

    invoke-direct {v1, p0, v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V

    .line 2297
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$handler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$200(Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 2299
    return-void

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    aput-object v0, v8, v11

    move-object v6, v7

    goto/16 :goto_0

    .line 2201
    :catch_1
    move-exception v0

    .line 2202
    aput-object v0, v8, v11

    move-object v0, v7

    goto/16 :goto_1

    .line 2220
    :catch_2
    move-exception v0

    .line 2221
    aput-object v0, v8, v11

    move-object v0, v7

    goto/16 :goto_2

    .line 2260
    :catch_3
    move-exception v0

    .line 2261
    aput-object v0, v8, v11

    goto :goto_3

    .line 2277
    :catch_4
    move-exception v0

    .line 2278
    aput-object v0, v8, v11

    goto :goto_4
.end method

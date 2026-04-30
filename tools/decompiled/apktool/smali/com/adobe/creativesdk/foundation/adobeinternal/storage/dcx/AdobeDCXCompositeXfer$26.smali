.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$archivePath:Ljava/lang/String;

.field final synthetic val$branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;

.field final synthetic val$components:Ljava/util/List;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mimetype:Ljava/lang/String;

.field final synthetic val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3850
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$components:Ljava/util/List;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$archivePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$mimetype:Ljava/lang/String;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXWriteSnapshotCompletionHandler;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 3854
    .line 3855
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3857
    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3858
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    .line 3861
    :goto_0
    if-nez v0, :cond_3

    .line 3863
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$archivePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageLastPathComponentUtil;->getLastPathComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 3865
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getSnapshotData()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "manifest"

    invoke-direct {v1, v4, v5, v7}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3866
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3868
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getAllComponents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 3869
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3872
    :try_start_0
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$branch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v6, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 3876
    :goto_2
    if-eqz v1, :cond_0

    .line 3877
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;

    invoke-direct {v6, v1, v5, v7}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchiveItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3878
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 3885
    goto :goto_1

    .line 3873
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 3874
    goto :goto_2

    .line 3881
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorComponentReadFailure:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    const-string/jumbo v1, "Component file is not present on the local file system."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v1

    .line 3888
    :cond_1
    :goto_3
    if-nez v1, :cond_2

    .line 3890
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$archivePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$mimetype:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-static {v3, v0, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->createArchiveFileWithItems(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)Z
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3895
    :goto_4
    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;->getErrorCode()Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    move-result-object v0

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    if-ne v0, v3, :cond_2

    .line 3897
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v1

    .line 3903
    :cond_2
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3913
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$26;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$800(Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 3914
    return-void

    .line 3891
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 3892
    goto :goto_4

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method

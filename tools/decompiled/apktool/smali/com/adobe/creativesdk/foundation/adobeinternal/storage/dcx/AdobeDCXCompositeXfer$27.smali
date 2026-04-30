.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;

.field final synthetic val$compositePath:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isDirectory:Z

.field final synthetic val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

.field final synthetic val$snapshotPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3969
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$snapshotPath:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$isDirectory:Z

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$compositePath:Ljava/lang/String;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCreateCompositeCompletionHandler;

    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const-wide/16 v10, 0x1

    const/4 v2, 0x0

    .line 3972
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$_error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    .line 3973
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$_manifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    .line 3976
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$snapshotPath:Ljava/lang/String;

    .line 3979
    if-nez v5, :cond_b

    iget-boolean v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$isDirectory:Z

    if-nez v3, :cond_b

    .line 3981
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 3982
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3983
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3987
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$snapshotPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-static {v0, v1, v3, v6}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFArchive;->extractFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v6, v0

    move-object v1, v5

    .line 3992
    :goto_0
    if-eqz v1, :cond_a

    instance-of v0, v1, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;->getErrorCode()Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    move-result-object v0

    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    if-ne v0, v5, :cond_a

    .line 3994
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v1

    move-object v5, v1

    .line 3997
    :goto_1
    if-nez v5, :cond_0

    if-eqz v6, :cond_0

    .line 3998
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setTotalUnitCount(J)V

    .line 4002
    :cond_0
    const/4 v0, 0x1

    .line 4003
    const-string/jumbo v1, "manifest"

    invoke-static {v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4005
    :try_start_1
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->createManifestWithContentsOfFile(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move v4, v0

    move-object v0, v5

    move-object v5, v3

    .line 4011
    :goto_2
    if-nez v0, :cond_9

    .line 4012
    new-instance v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$compositePath:Ljava/lang/String;

    sget-object v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    invoke-direct {v3, v1, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)V

    .line 4013
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getAllComponents()Ljava/util/List;

    move-result-object v1

    .line 4014
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 4015
    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4016
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    .line 4030
    :goto_4
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4031
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    .line 4034
    :cond_1
    if-nez v0, :cond_2

    .line 4036
    :try_start_2
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->commitChanges()Z
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_4

    .line 4040
    :goto_5
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->getCompletedUnitCount()J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-virtual {v1, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setCompletedUnitCount(J)V

    :cond_2
    move-object v1, v0

    .line 4043
    if-nez v1, :cond_7

    .line 4044
    const-string/jumbo v0, "mimetype"

    invoke-static {v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4045
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4050
    :try_start_3
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->convertToUTF8(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 4055
    :goto_6
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->getCompletedUnitCount()J

    move-result-wide v8

    add-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setCompletedUnitCount(J)V

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    .line 4059
    :goto_7
    if-eqz v4, :cond_3

    .line 4062
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4072
    :cond_3
    :goto_8
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27$1;

    invoke-direct {v2, p0, v0, v3, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;)V

    .line 4082
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$handler:Landroid/os/Handler;

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer;->access$800(Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 4083
    return-void

    .line 3988
    :catch_0
    move-exception v0

    move-object v6, v2

    move-object v1, v0

    .line 3989
    goto/16 :goto_0

    .line 4006
    :catch_1
    move-exception v1

    move-object v5, v3

    move v12, v0

    move-object v0, v1

    move-object v1, v4

    move v4, v12

    .line 4007
    goto/16 :goto_2

    .line 4019
    :cond_4
    if-nez v1, :cond_5

    .line 4020
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4022
    :try_start_5
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v7, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_5
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4026
    :goto_9
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$27;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->getCompletedUnitCount()J

    move-result-wide v8

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->setCompletedUnitCount(J)V

    :cond_5
    move-object v0, v1

    move-object v1, v0

    .line 4028
    goto/16 :goto_3

    .line 4051
    :catch_2
    move-exception v0

    .line 4052
    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v7, "MimeTypefile read failed"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v0, v2

    goto :goto_6

    .line 4063
    :catch_3
    move-exception v0

    .line 4064
    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;->AdobeDCXErrorFileIO:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;

    invoke-static {v4, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createDCXError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    move-result-object v0

    goto :goto_8

    .line 4037
    :catch_4
    move-exception v0

    goto/16 :goto_5

    .line 4023
    :catch_5
    move-exception v1

    goto :goto_9

    :cond_7
    move-object v0, v1

    move-object v1, v2

    goto :goto_7

    :cond_8
    move-object v0, v1

    goto/16 :goto_4

    :cond_9
    move-object v1, v2

    move-object v3, v2

    goto :goto_7

    :cond_a
    move-object v5, v1

    goto/16 :goto_1

    :cond_b
    move v12, v0

    move-object v0, v5

    move-object v5, v1

    move-object v1, v4

    move v4, v12

    goto/16 :goto_2
.end method

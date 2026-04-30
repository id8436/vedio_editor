.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

.field final synthetic val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$finalComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2024
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$finalComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAssetToComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2030
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2032
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    .line 2034
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$finalComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->copyElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;JLjava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2040
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aget-object v0, v0, v8

    if-eqz v0, :cond_4

    move v0, v8

    .line 2108
    :goto_1
    return v0

    .line 2036
    :catch_0
    move-exception v0

    .line 2038
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v0, v1, v8

    goto :goto_0

    .line 2048
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2050
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "primary"

    .line 2047
    invoke-static {v6, v0, p2, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->createComponentWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v1

    .line 2053
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v0, v2, :cond_5

    .line 2054
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2057
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$finalComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2062
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aget-object v0, v0, v8

    if-eqz v0, :cond_4

    move v0, v8

    .line 2063
    goto :goto_1

    .line 2058
    :catch_1
    move-exception v0

    .line 2059
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v0, v1, v8

    goto :goto_2

    .line 2065
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, [B

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2067
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 2068
    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2070
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fWrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2076
    :goto_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aget-object v0, v0, v8

    if-eqz v0, :cond_2

    move v0, v8

    .line 2077
    goto/16 :goto_1

    .line 2071
    :catch_2
    move-exception v0

    .line 2072
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-static {v2, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2073
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    invoke-static {v2, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v2

    aput-object v2, v0, v8

    goto :goto_3

    .line 2081
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$finalComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2086
    :goto_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aget-object v0, v0, v8

    if-eqz v0, :cond_4

    move v0, v8

    .line 2087
    goto/16 :goto_1

    .line 2082
    :catch_3
    move-exception v0

    .line 2083
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v0, v1, v8

    goto :goto_4

    .line 2092
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorUnsupportedAssetDataType:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Asset with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " refers to an unsupported data type."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v1

    aput-object v1, v0, v8

    :cond_4
    move v0, v9

    .line 2108
    goto/16 :goto_1

    .line 2094
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v0, v2, :cond_4

    .line 2095
    :cond_6
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->$assertionsDisabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Snapshot path is unexpectedly nil."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2097
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$finalComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_4
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2102
    :goto_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aget-object v0, v0, v8

    if-eqz v0, :cond_4

    move v0, v8

    .line 2103
    goto/16 :goto_1

    .line 2098
    :catch_4
    move-exception v0

    .line 2099
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v0, v1, v8

    goto :goto_5
.end method

.method public addAssetsToComposite(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lorg/json/JSONObject;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2115
    invoke-static/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getAllKeys(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    .line 2116
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2191
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 2123
    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_6

    .line 2126
    check-cast v2, Ljava/util/ArrayList;

    .line 2128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 2130
    const/4 v2, 0x0

    goto :goto_2

    .line 2133
    :cond_2
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 2134
    const/4 v12, 0x1

    .line 2135
    const/4 v3, 0x0

    .line 2136
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v10, v3

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 2142
    const/4 v11, 0x0

    .line 2144
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Item"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$finalComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->appendNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2150
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_4

    .line 2152
    const/4 v2, 0x0

    .line 2165
    :goto_5
    if-eqz v2, :cond_3

    .line 2168
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2189
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    goto/16 :goto_0

    .line 2146
    :catch_0
    move-exception v2

    .line 2147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object v2, v11

    goto :goto_4

    .line 2156
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->addAssetToComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2158
    const/4 v2, 0x0

    .line 2159
    goto :goto_5

    .line 2162
    :cond_5
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2163
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    .line 2164
    goto :goto_3

    .line 2169
    :catch_1
    move-exception v2

    .line 2170
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 2176
    :cond_6
    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 2179
    :try_start_2
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2183
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v8, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$5$1AddAssetsToCompositeWrapper;->addAssetToComposite(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    .line 2180
    :catch_2
    move-exception v3

    .line 2181
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 2191
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    move v2, v12

    goto :goto_5
.end method

.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

.field final synthetic val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1116
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAssetToSnapshot(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Z
    .locals 17

    .prologue
    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->val$snapshotPath:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1124
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1126
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    .line 1129
    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->getAllComponents()Ljava/util/Map;

    move-result-object v2

    .line 1130
    const/4 v5, 0x1

    .line 1131
    const/4 v3, 0x0

    .line 1132
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 1134
    const/4 v6, 0x0

    .line 1136
    :try_start_0
    invoke-virtual {v4, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1140
    :goto_1
    if-nez v6, :cond_0

    .line 1142
    const/4 v2, 0x0

    move-object/from16 v16, v3

    move v3, v2

    move-object/from16 v2, v16

    .line 1155
    :goto_2
    if-nez v3, :cond_1

    .line 1157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    sget-object v5, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorIncompleteElement:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;Ljava/lang/Exception;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v2

    aput-object v2, v3, v4

    .line 1158
    const/4 v2, 0x0

    .line 1268
    :goto_3
    return v2

    .line 1137
    :catch_0
    move-exception v9

    .line 1138
    sget-object v10, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12, v9}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1145
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1148
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v6}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1149
    :catch_1
    move-exception v2

    .line 1150
    const/4 v3, 0x0

    .line 1152
    goto :goto_2

    .line 1161
    :cond_1
    const/4 v15, 0x0

    .line 1163
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getRoot()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v3

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;->getManifest()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-result-object v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;JZLjava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1167
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 1169
    const/4 v2, 0x0

    goto :goto_3

    .line 1164
    :catch_2
    move-exception v2

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    move-object v2, v15

    goto :goto_4

    .line 1172
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 1175
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1179
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    .line 1181
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1176
    :catch_3
    move-exception v2

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto :goto_5

    .line 1186
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1188
    const/4 v2, 0x0

    .line 1189
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1191
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "primary"

    .line 1188
    move-object/from16 v0, p2

    invoke-static {v2, v3, v0, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->createComponentWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v5

    .line 1194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_FROM_BUILDER:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v2, v3, :cond_8

    .line 1195
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1198
    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1260
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_5

    .line 1262
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v2, v5, v3, v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_5
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_5 .. :try_end_5} :catch_9

    .line 1268
    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_10

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1199
    :catch_4
    move-exception v2

    .line 1200
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    invoke-static {v3, v4, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_6

    .line 1203
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, [B

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1206
    :try_start_6
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    const-string/jumbo v6, "UTF-8"

    invoke-direct {v3, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v4, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->fWrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    .line 1207
    :catch_5
    move-exception v2

    .line 1208
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    invoke-static {v3, v4, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_6

    .line 1214
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorUnsupportedAssetDataType:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Asset with path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " refers to an unsupported data type."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_6

    .line 1216
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_SNAPSHOT:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v2, v3, :cond_b

    .line 1217
    :cond_9
    sget-boolean v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->$assertionsDisabled:Z

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Snapshot path is unexpectedly nil."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1218
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mSnapshotPath:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1220
    :try_start_7
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_6

    .line 1222
    :catch_6
    move-exception v2

    .line 1223
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    invoke-static {v3, v4, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;->AdobeUCFErrorArchiveWriteFailed:Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createUCFError(Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/ucf/AdobeUCFException;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_6

    .line 1227
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mFormat:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;->ADOBE_360_MESSAGE_FORMAT_TEMP_COMPOSITE:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$Adobe360MessageFormat;

    if-ne v2, v3, :cond_4

    .line 1229
    :cond_c
    const-string/jumbo v2, "/"

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 1231
    const/4 v3, 0x0

    .line 1232
    if-eqz v5, :cond_d

    .line 1235
    :try_start_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v6, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;

    iget-object v6, v6, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->mComposite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;
    :try_end_8
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v2

    move-object v3, v2

    .line 1241
    :cond_d
    :goto_8
    if-nez v3, :cond_e

    .line 1243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorMissingAsset:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Component for asset with path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is missing."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1244
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1236
    :catch_7
    move-exception v2

    .line 1237
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    goto :goto_8

    .line 1247
    :cond_e
    const/4 v2, 0x1

    .line 1249
    :try_start_9
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v3}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1254
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-nez v3, :cond_f

    if-nez v2, :cond_4

    .line 1256
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1250
    :catch_8
    move-exception v2

    .line 1251
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, ""

    invoke-static {v3, v4, v6, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1252
    const/4 v2, 0x0

    goto :goto_9

    .line 1263
    :catch_9
    move-exception v2

    .line 1264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto/16 :goto_7

    .line 1268
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_11
    move-object v2, v3

    move v3, v5

    goto/16 :goto_2
.end method


# virtual methods
.method public addAssetsToSnapshot(Ljava/util/Map;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lorg/json/JSONObject;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1276
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->val$snapshotPath:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1277
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1278
    const/4 v7, 0x1

    .line 1279
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1281
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1283
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getAllKeys(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1284
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1286
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1287
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v4, v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1289
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;->Adobe360ErrorOperationCancelled:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->create360Error(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360ErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Exception;

    move-result-object v4

    aput-object v4, v2, v3

    move v2, v7

    .line 1368
    :goto_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 1293
    :cond_1
    instance-of v4, v3, Ljava/util/List;

    if-eqz v4, :cond_6

    .line 1296
    check-cast v3, Ljava/util/ArrayList;

    .line 1299
    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v5

    .line 1300
    const/4 v4, 0x0

    .line 1302
    :try_start_0
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    move-object/from16 v0, p3

    invoke-virtual {v6, v5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1306
    :goto_3
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-eqz v5, :cond_2

    move v2, v7

    .line 1307
    goto :goto_1

    .line 1303
    :catch_0
    move-exception v5

    .line 1304
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v8, 0x0

    aput-object v5, v6, v8

    goto :goto_3

    .line 1309
    :cond_2
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 1310
    const/4 v9, 0x1

    .line 1311
    const/4 v5, 0x0

    .line 1312
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 1318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "item"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v8

    .line 1319
    const/4 v6, 0x0

    .line 1321
    :try_start_1
    iget-object v13, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v13, v8, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1325
    :goto_5
    iget-object v8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v13, 0x0

    aget-object v8, v8, v13

    if-eqz v8, :cond_4

    .line 1327
    const/4 v3, 0x0

    .line 1340
    :goto_6
    if-eqz v3, :cond_3

    .line 1343
    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1365
    :cond_3
    :goto_7
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    goto/16 :goto_0

    .line 1322
    :catch_1
    move-exception v8

    .line 1323
    iget-object v13, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    goto :goto_5

    .line 1331
    :cond_4
    move-object/from16 v0, p2

    invoke-direct {p0, v3, v2, v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->addAssetToSnapshot(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1333
    const/4 v3, 0x0

    .line 1334
    goto :goto_6

    .line 1337
    :cond_5
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1338
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    .line 1339
    goto :goto_4

    .line 1344
    :catch_2
    move-exception v2

    .line 1345
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1352
    :cond_6
    check-cast v3, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 1354
    :try_start_3
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1358
    :goto_8
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$3$1AddAssetsToSnapshotWrapper;->addAssetToSnapshot(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1360
    const/4 v2, 0x0

    .line 1361
    goto/16 :goto_1

    .line 1355
    :catch_3
    move-exception v4

    .line 1356
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v5, v6, v8, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1368
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    move v3, v9

    goto :goto_6

    :cond_9
    move v2, v7

    goto/16 :goto_1
.end method

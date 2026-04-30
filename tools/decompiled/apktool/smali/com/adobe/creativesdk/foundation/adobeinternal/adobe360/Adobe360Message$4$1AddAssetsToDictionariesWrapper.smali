.class Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;
.super Ljava/lang/Object;
.source "Adobe360Message.java"


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;

.field final synthetic val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->this$1:Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAssetToDictionaries(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Z
    .locals 15

    .prologue
    .line 1691
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1693
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getData()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;

    .line 1697
    :try_start_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

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

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;JZLjava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    .line 1698
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setName(Ljava/lang/String;)V

    .line 1699
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 1700
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1719
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1701
    :catch_0
    move-exception v2

    .line 1702
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto :goto_0

    .line 1707
    :cond_0
    const/4 v2, 0x0

    .line 1708
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1710
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "primary"

    .line 1707
    move-object/from16 v0, p2

    invoke-static {v2, v3, v0, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->createComponentWithId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    move-result-object v2

    .line 1714
    :try_start_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v3, v2, v4, v0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1715
    :catch_1
    move-exception v2

    .line 1716
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto :goto_0

    .line 1719
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addAssetsToDictionaries(Ljava/util/Map;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lorg/json/JSONObject;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1726
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360Utils;->getAllKeys(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1727
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1729
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1731
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_4

    .line 1733
    check-cast v1, Ljava/util/ArrayList;

    .line 1736
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    .line 1740
    :try_start_0
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v4, v2, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1746
    :goto_1
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aget-object v4, v4, v5

    if-eqz v4, :cond_1

    .line 1807
    :goto_2
    return v5

    .line 1742
    :catch_0
    move-exception v2

    .line 1744
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v2, v4, v5

    move-object v2, v3

    goto :goto_1

    .line 1751
    :cond_1
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 1754
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v5

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 1760
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "item"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithName(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v6

    .line 1763
    :try_start_1
    iget-object v11, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$finalManifest:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-virtual {v11, v6, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 1767
    :goto_4
    iget-object v11, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aget-object v11, v11, v5

    if-eqz v11, :cond_2

    move v1, v5

    .line 1782
    :goto_5
    if-eqz v1, :cond_0

    .line 1785
    :try_start_2
    invoke-virtual {p3, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1786
    :catch_1
    move-exception v0

    .line 1787
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1764
    :catch_2
    move-exception v6

    .line 1765
    iget-object v11, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->val$error:[Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    aput-object v6, v11, v5

    move-object v6, v3

    goto :goto_4

    .line 1773
    :cond_2
    invoke-direct {p0, v1, v0, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->addAssetToDictionaries(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v5

    .line 1776
    goto :goto_5

    .line 1778
    :cond_3
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1779
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    .line 1780
    goto :goto_3

    .line 1793
    :cond_4
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;

    .line 1795
    :try_start_3
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;->getDescriptor()Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360AssetDescriptor;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1800
    :goto_6
    invoke-direct {p0, v1, v0, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$4$1AddAssetsToDictionariesWrapper;->addAssetToDictionaries(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Asset;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1796
    :catch_3
    move-exception v2

    .line 1797
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    move v5, v7

    .line 1807
    goto/16 :goto_2

    :cond_6
    move v1, v7

    goto :goto_5
.end method

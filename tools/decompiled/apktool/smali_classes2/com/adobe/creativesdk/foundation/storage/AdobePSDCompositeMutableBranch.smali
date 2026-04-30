.class public Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;
.super Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;
.source "AdobePSDCompositeMutableBranch.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bounds:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

.field private dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

.field private mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    .line 68
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 70
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeBranch;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    .line 57
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 58
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 59
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->bounds:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    .line 60
    return-void
.end method


# virtual methods
.method public addLayer(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 260
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeGroup:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->assignUniqueLayerIdTo(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 263
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 265
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeMutableLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    move-result-object v0

    return-object v0

    .line 263
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->getLayersRootNodeCreateIfNecessary(Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    goto :goto_0
.end method

.method addLayerComp(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addOrUpdateComponentOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    .locals 10

    .prologue
    .line 522
    if-eqz p7, :cond_1

    .line 529
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 531
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 532
    const/4 v1, 0x0

    array-length v3, v2

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 533
    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->width:F

    .line 535
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p7

    iput v1, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;->height:F

    .line 541
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {p0, v1, p3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 543
    if-eqz v1, :cond_2

    .line 544
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move/from16 v0, p6

    invoke-virtual {v2, v1, p5, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v1

    .line 560
    :goto_0
    return-object v1

    .line 538
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;->AdobeAssetErrorFileReadFailure:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->createStorageError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_3

    .line 550
    :catch_0
    move-exception v1

    .line 551
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 560
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 546
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    const-string/jumbo v4, "image/png"

    iget-object v7, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->node:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-object v2, p2

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    goto :goto_0

    .line 552
    :catch_1
    move-exception v1

    .line 553
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->printStackTrace()V

    goto :goto_1

    .line 554
    :catch_2
    move-exception v1

    .line 555
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 556
    :catch_3
    move-exception v1

    .line 557
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_1
.end method

.method assignUniqueLayerIdTo(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;
    .locals 3

    .prologue
    .line 151
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->getNextLayerId()Ljava/lang/Integer;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "psd#layerId"

    invoke-virtual {p1, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "layer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setNodeId(Ljava/lang/String;)V

    .line 165
    return-object p1

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object p1

    goto :goto_0
.end method

.method countLayersStartingAtNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 197
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->countLayersStartingAtNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    .line 200
    :cond_0
    return-object p2
.end method

.method findMaxLayerIdStartingAtNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 172
    const-string/jumbo v0, "psd#layerId"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    .line 173
    if-eqz v0, :cond_3

    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 176
    const-string/jumbo v2, "psd#type"

    invoke-virtual {p1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "layerSection"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 183
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 184
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->findMaxLayerIdStartingAtNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 186
    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 189
    :cond_2
    return-object v1

    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method getDcxBranch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    return-object v0
.end method

.method getLayerCompsRootNodeCreateIfNecessary(Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    const-string/jumbo v1, "layerComps"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 143
    const-string/jumbo v0, "layerComps"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 147
    :cond_0
    return-object v0
.end method

.method getLayersRootNodeCreateIfNecessary(Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    const-string/jumbo v1, "layers"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    const-string/jumbo v0, "layers"

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->createNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 136
    :cond_0
    return-object v0
.end method

.method getMutableDcxBranch()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    return-object v0
.end method

.method getNextLayerId()Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 209
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->getLayersRootNodeCreateIfNecessary(Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    if-eqz v1, :cond_0

    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->findMaxLayerIdStartingAtNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 224
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDCompositeMutableBranch.getNextLayerId"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public insertLayer(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Ljava/lang/Integer;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->assignUniqueLayerIdTo(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 240
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 244
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    .line 242
    invoke-virtual {v2, v1, v0, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->insertChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeMutableLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->getLayersRootNodeCreateIfNecessary(Z)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    goto :goto_0
.end method

.method insertLayerComp(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;Ljava/lang/Integer;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method makeMutableLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 2

    .prologue
    .line 565
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    .line 566
    :goto_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    invoke-direct {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    return-object v0

    .line 565
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object p1

    goto :goto_0
.end method

.method public removeLayer(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 340
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeMutableLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    move-result-object v0

    return-object v0
.end method

.method public removeLayerComp(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeLayerCompFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;

    move-result-object v0

    return-object v0
.end method

.method public removeMaskOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v1, "pixelMask"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->getComponentOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_0

    .line 507
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 510
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 511
    const-string/jumbo v1, "psd#pixelMask"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->remove(Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeMutableLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    move-result-object v0

    return-object v0
.end method

.method public setAppliedLayerComp(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->getComponentId()Ljava/lang/Integer;

    move-result-object v0

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    const-string/jumbo v1, "psd#appliedLayerCompId"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->remove(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    const-string/jumbo v2, "psd#appliedLayerCompId"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBounds(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getBoundsFromRect(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "psd#bounds"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method setDcxBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->dcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 78
    return-void
.end method

.method setMutableDcxBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 64
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setName(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method setVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    const-string/jumbo v1, "psd#version"

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public updateLayer(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    instance-of v1, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    if-eqz v1, :cond_5

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    move-object v1, v0

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->hasPixelMask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getPixelMaskBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v3

    .line 301
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v4, "psd#pixelMask"

    invoke-virtual {v0, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 302
    sget-boolean v4, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getPixelMaskBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->getOrigin()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->setOrigin(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;)V

    .line 306
    :try_start_0
    const-string/jumbo v4, "psd#bounds"

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getBoundsFromRect(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v3, "psd#pixelLayer"

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 314
    if-eqz v0, :cond_4

    .line 315
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getPixelLayerBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v2

    .line 316
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v3, "psd#pixelLayer"

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 317
    sget-boolean v3, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Failure while updating the mutablePixelMaskData"

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getPixelLayerBounds()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->getOrigin()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->setOrigin(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;)V

    .line 321
    :try_start_1
    const-string/jumbo v3, "psd#bounds"

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getBoundsFromRect(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 328
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeMutableLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    move-result-object v0

    return-object v0

    .line 322
    :catch_1
    move-exception v0

    .line 323
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Failure while updating the mutablePixelLayerData"

    invoke-static {v2, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public updateLayerComp(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 366
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeLayerCompFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerComp;

    move-result-object v0

    return-object v0
.end method

.method public updateMaskOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 454
    .line 456
    :try_start_0
    new-instance v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    invoke-direct {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;-><init>()V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-mask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pixelMask"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getLayerId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Mask.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move v6, p4

    .line 458
    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->addOrUpdateComponentOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 466
    if-nez v0, :cond_0

    move-object v0, v8

    .line 490
    :goto_0
    return-object v0

    .line 470
    :cond_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>()V

    .line 471
    iput-object p2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->origin:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;

    .line 472
    iput-object v7, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->size:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    .line 475
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v1, "psd#pixelMask"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 476
    if-nez v0, :cond_1

    .line 477
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 479
    :goto_1
    const-string/jumbo v0, "psd#bounds"

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getBoundsFromRect(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 483
    :try_start_1
    const-string/jumbo v2, "psd#pixelMask"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    :goto_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeMutableLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;

    move-result-object v0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    .line 487
    :goto_3
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v3, "AdobePSDCompositeMutableBranch.updateMaskOf"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 485
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method public updatePixelsOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;Ljava/lang/String;Z)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 396
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getType()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;->AdobePSDLayerNodeTypeRGBPixels:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDLayerNodeType;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 398
    :cond_0
    new-instance v7, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;

    invoke-direct {v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;-><init>()V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pixelLayer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 403
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getLayerId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move v6, p4

    .line 400
    invoke-virtual/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->addOrUpdateComponentOf(Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    .line 407
    if-nez v0, :cond_1

    move-object v0, v8

    .line 436
    :goto_0
    return-object v0

    .line 412
    :cond_1
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;-><init>()V

    .line 413
    invoke-virtual {v1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->setOrigin(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Point;)V

    .line 414
    invoke-virtual {v1, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;->setSize(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Size;)V

    .line 416
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v2, "psd#pixelLayer"

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 417
    if-nez v0, :cond_2

    .line 418
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 421
    :cond_2
    :try_start_0
    const-string/jumbo v2, "psd#bounds"

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/AdobePSDUtils;->getBoundsFromRect(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDLayerNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v1

    .line 428
    const-string/jumbo v2, "psd#pixelLayer"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->mutableDcxBranch:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeMutableBranch;->makeMutableLayerNodeFromManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/storage/AdobePSDMutableLayerNode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 425
    goto :goto_0

    .line 432
    :catch_1
    move-exception v0

    .line 433
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobePSDCompositeMutableBranch.updatePixelsOf"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 436
    goto :goto_0
.end method

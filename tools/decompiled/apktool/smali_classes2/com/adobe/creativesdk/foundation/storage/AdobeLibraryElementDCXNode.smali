.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;
.super Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;
.source "AdobeLibraryElementDCXNode.java"


# instance fields
.field private mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

.field private mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    .line 38
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 39
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 40
    return-void
.end method

.method private internalAddRepresentationAsNodeWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 340
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "type"

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 341
    const-string/jumbo v2, "application/vnd.adobe.library.link+dcx"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "Cannot create external link representation directly."

    invoke-static {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 344
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->validateAddRepresentation(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    const/4 v2, 0x0

    .line 424
    :goto_2
    return-object v2

    .line 340
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 341
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 348
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->getRepresentations()Ljava/util/List;

    move-result-object v12

    .line 350
    new-instance v13, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v2, "createElement"

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-object/from16 v0, p3

    invoke-direct {v13, v2, v3, p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 354
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 356
    if-eqz p2, :cond_4

    const-string/jumbo v5, "application/vnd.adobe.library.link+dcx"

    .line 357
    :goto_3
    const-string/jumbo v2, "primary"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 360
    const/4 v11, 0x0

    .line 361
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v4

    .line 362
    const/4 v10, 0x0

    .line 364
    if-eqz v14, :cond_5

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->insertNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_4
    move-object v5, v2

    move-object v2, v11

    .line 373
    :goto_5
    if-eqz v5, :cond_d

    .line 375
    const-string/jumbo v2, "library#rel"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    if-eqz v14, :cond_7

    .line 380
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "library#representationOrder"

    invoke-virtual {v5, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 382
    const/4 v4, 0x0

    .line 383
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 384
    const-string/jumbo v3, "library#representationOrder"

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 385
    if-eqz v3, :cond_e

    .line 386
    check-cast v3, Ljava/lang/Integer;

    .line 392
    :goto_7
    if-eqz v3, :cond_3

    .line 393
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setOrder(I)V

    goto :goto_6

    :cond_4
    move-object/from16 v5, p1

    .line 356
    goto :goto_3

    .line 368
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->appendNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_4

    .line 370
    :catch_0
    move-exception v2

    move-object v5, v10

    .line 371
    goto :goto_5

    .line 387
    :cond_6
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 388
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v3

    const-string/jumbo v7, "library#representationOrder"

    invoke-virtual {v3, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 389
    if-eqz v3, :cond_e

    .line 390
    check-cast v3, Ljava/lang/Integer;

    goto :goto_7

    .line 397
    :cond_7
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 398
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getOrder()I

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getOrder()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_8
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "library#representationOrder"

    invoke-virtual {v5, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    :cond_8
    if-eqz p2, :cond_9

    .line 404
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;->setType(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v2, "library#linktype"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v2, "library#linkurl"

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    if-eqz p6, :cond_9

    .line 409
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "library#isfullSize"

    invoke-virtual {v5, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    :cond_9
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->elementRepresentationsChanged()V

    .line 416
    new-instance v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v2, v5, v3, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 417
    if-eqz p4, :cond_a

    .line 418
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setWidth(I)V

    .line 419
    :cond_a
    if-eqz p5, :cond_b

    .line 420
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->setHeight(I)V

    .line 421
    :cond_b
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 422
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 423
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_2

    .line 398
    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    .line 426
    :cond_d
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 427
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 428
    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v2

    .line 429
    invoke-virtual {v13, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 430
    throw v2

    :cond_e
    move-object v3, v4

    goto/16 :goto_7
.end method

.method private sortRepresentations(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 160
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    move v2, v3

    move v4, v0

    .line 172
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 173
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 174
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 175
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getOrder()I

    move-result v5

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getOrder()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 176
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    .line 172
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_1

    .line 181
    :cond_1
    if-nez v4, :cond_0

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_2
.end method


# virtual methods
.method public addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 436
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->internalAddRepresentationAsNodeWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    return-object v0
.end method

.method public addRepresentationWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 442
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "type"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 443
    const-string/jumbo v0, "application/vnd.adobe.library.link+dcx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "Cannot create external link representation directly."

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    .line 446
    invoke-virtual {p0, p5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->validateAddRepresentation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 447
    const/4 v0, 0x0

    .line 524
    :goto_2
    return-object v0

    .line 442
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 443
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 450
    :cond_2
    if-eqz p4, :cond_4

    .line 451
    if-eqz p3, :cond_3

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "sourceHref"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageErrorUtils;->verifyArgument(ZLjava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    .line 452
    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->internalAddRepresentationAsNodeWithContentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Z)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    move-result-object v0

    goto :goto_2

    .line 451
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 455
    :cond_4
    new-instance v9, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v0, "createElement"

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v9, v0, v1, p0, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 459
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 462
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v1

    .line 465
    if-eqz p2, :cond_c

    move-object v0, p2

    :goto_4
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    if-nez v0, :cond_5

    .line 467
    const-string/jumbo v0, ""

    .line 468
    :cond_5
    const-string/jumbo v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 469
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "modified"

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 470
    if-eqz v0, :cond_f

    .line 471
    if-eqz p6, :cond_6

    .line 472
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setWidth(I)V

    .line 474
    :cond_6
    if-eqz p7, :cond_7

    .line 475
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setHeight(I)V

    .line 477
    :cond_7
    if-eqz p8, :cond_8

    .line 478
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "library#isfullSize"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    :cond_8
    invoke-virtual {v0, p5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setRelationship(Ljava/lang/String;)V

    .line 483
    const-string/jumbo v1, "rendition"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p6, :cond_b

    if-nez p7, :cond_b

    if-nez p8, :cond_b

    .line 484
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->getImageSize(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 485
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gtz v2, :cond_9

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_b

    .line 486
    :cond_9
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v2, :cond_a

    .line 487
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setWidth(I)V

    .line 489
    :cond_a
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v2, :cond_b

    .line 490
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableComponent;->setHeight(I)V

    .line 495
    :cond_b
    const/4 v8, 0x0

    .line 496
    const/4 v7, 0x0

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    const/4 v5, 0x1

    move-object v2, v0

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->addComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Ljava/lang/String;ZLjava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    move-object v0, v8

    .line 502
    :goto_5
    if-nez v1, :cond_e

    .line 503
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 504
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 505
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorLibraryFailedToAddRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    if-eqz p2, :cond_d

    :goto_6
    const/4 v2, 0x0

    invoke-static {v1, v0, p2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 507
    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 508
    throw v0

    :cond_c
    move-object v0, p3

    .line 465
    goto/16 :goto_4

    .line 499
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 500
    goto :goto_5

    :cond_d
    move-object p2, p3

    .line 505
    goto :goto_6

    .line 512
    :cond_e
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->elementRepresentationsChanged()V

    .line 514
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v0, v1, v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 515
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 516
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 517
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto/16 :goto_2

    .line 521
    :cond_f
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 522
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    .line 523
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 524
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public addTag(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 582
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v1, "updateElement"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 586
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 587
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 589
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->addTag(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addTags(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 601
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 604
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v1, "updateElement"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 608
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 609
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 611
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->addTags(Ljava/util/List;)V

    .line 613
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    .line 617
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public elementRepresentationsChanged()V
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->updateModified()V

    .line 305
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->getElementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->removeRenditionCacheForElement(Ljava/lang/String;)Z

    .line 306
    return-void
.end method

.method public getAllNodeDictKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getCustomKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDCXElement()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->getElementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getElementWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v1

    .line 654
    :goto_0
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 655
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 656
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v2, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 651
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 652
    goto :goto_0

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 660
    return-object v0
.end method

.method public getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    return-object v0
.end method

.method public getDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getElementId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRepresentationOfType(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 191
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 221
    :goto_0
    return-object v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_2

    .line 198
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 199
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 200
    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v1, v0, v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 202
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 203
    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_4

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 211
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getType()Ljava/lang/String;

    move-result-object v3

    .line 212
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 213
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v1, v0, v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 215
    goto :goto_0

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 221
    goto :goto_0
.end method

.method public getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;

    invoke-direct {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;)V

    return-object v1
.end method

.method public getMutableNode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getMutableManifestNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    return-object v0
.end method

.method public getNodeDictValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNodeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryRepresentation()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v2

    .line 263
    :goto_0
    return-object v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_2

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 236
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_1

    const-string/jumbo v4, "primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v1, v0, v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 240
    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_5

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 248
    const-string/jumbo v1, "library#rel"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    if-nez v1, :cond_4

    .line 252
    const-string/jumbo v1, "relationship"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    :cond_4
    if-eqz v1, :cond_3

    const-string/jumbo v4, "primary"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v1, v0, v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 257
    goto/16 :goto_0

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v2

    .line 263
    goto/16 :goto_0
.end method

.method public getRepresentationWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 268
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 270
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 297
    :goto_0
    return-object v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 276
    if-eqz v2, :cond_2

    .line 277
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentNodeOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v3

    .line 279
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v3, :cond_1

    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v0, v3, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    :cond_1
    invoke-direct {v1, v2, v4, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 281
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 282
    goto :goto_0

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getNodeWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    .line 286
    if-eqz v2, :cond_4

    .line 287
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;-><init>()V

    .line 288
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->findParentOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXIndexWrapper;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v3

    .line 290
    new-instance v1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v3, :cond_3

    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v0, v3, v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)V

    :cond_3
    invoke-direct {v1, v2, v4, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 292
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 293
    goto :goto_0

    .line 296
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    goto :goto_0
.end method

.method public getRepresentations()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 156
    :goto_0
    return-object v0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 124
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getElementNode(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    .line 125
    if-nez v2, :cond_2

    .line 126
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 127
    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v3

    .line 131
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Ljava/util/List;

    move-result-object v4

    .line 133
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    .line 134
    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    if-eqz v3, :cond_5

    .line 139
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    .line 140
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v3, v0, v5, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 141
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v2, v0

    .line 133
    goto :goto_1

    .line 145
    :cond_5
    if-eqz v4, :cond_6

    .line 146
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 147
    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v3, v0, v4, p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 148
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 153
    :cond_6
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->sortRepresentations(Ljava/util/ArrayList;)V

    .line 154
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    move-object v0, v1

    .line 156
    goto/16 :goto_0
.end method

.method public releaseDCXElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 665
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    :goto_0
    return v0

    .line 668
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-nez v1, :cond_1

    .line 669
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v2, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 671
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->abandonElement(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXElement;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v1, v2

    .line 681
    :goto_1
    if-nez v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 683
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 687
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public removeAllRepresentations()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    :cond_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->getRepresentations()Ljava/util/List;

    move-result-object v0

    .line 572
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 573
    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->removeRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    goto :goto_0
.end method

.method public removeRepresentation(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 529
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 563
    :goto_0
    return-object v0

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 533
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 535
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getDCXNode()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    move-result-object v2

    .line 537
    if-eqz v2, :cond_2

    .line 538
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->elementRepresentationsChanged()V

    .line 540
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-direct {v0, v2, v1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 541
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 542
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    goto :goto_0

    .line 547
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getComponent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 549
    if-eqz v2, :cond_3

    .line 550
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->elementRepresentationsChanged()V

    .line 552
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeUnusedLocalFiles()J

    .line 554
    new-instance v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;

    invoke-direct {v0, v2, v1, v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentationDCXNode;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V

    .line 555
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 556
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    goto :goto_0

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 562
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z

    move-object v0, v1

    .line 563
    goto :goto_0
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 623
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 626
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v1, "updateElement"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 630
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 631
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 633
    invoke-super {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryMutableElement;->removeTag(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 639
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;

    const-string/jumbo v1, "updateElement"

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryAnalyticsOperation;->trackAction(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 72
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->lock()V

    .line 73
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->beginChanges()V

    .line 75
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->updateModified()V

    .line 78
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->unlock()V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->endChanges()Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public validateAddRepresentation(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mDcxNode:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementDoesNotExist:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v3, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->mHostLibrary:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->addErrorIfReadOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    const/4 v0, 0x0

    .line 335
    :goto_0
    return v0

    .line 318
    :cond_2
    const-string/jumbo v0, "primary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 321
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElementDCXNode;->getRepresentations()Ljava/util/List;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    if-nez v0, :cond_4

    .line 323
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementMustHaveOnePrimaryRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v3, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 327
    :cond_4
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 328
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;

    .line 329
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryRepresentation;->getRelationship()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "primary"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorElementMustHaveOnePrimaryRepresentation:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, v3, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    throw v0

    .line 335
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

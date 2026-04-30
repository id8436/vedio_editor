.class public Lcom/adobe/premiereclip/dcx/DCXReader;
.super Ljava/lang/Object;
.source "DCXReader.java"


# static fields
.field private static final TAGAssetRef:Ljava/lang/String; = "DCXAssetRef"

.field private static final TAGClip:Ljava/lang/String; = "DCXClip"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAssetReferenceFromDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/premiereclip/project/sequence/AssetReference;
    .locals 15

    .prologue
    const/4 v9, 0x0

    .line 618
    .line 619
    if-eqz p1, :cond_7

    .line 620
    const-string/jumbo v2, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    move-object v3, v2

    .line 622
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    const-string/jumbo v2, "components"

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "components"

    .line 623
    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    check-cast v2, Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 625
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getNonExistentPath()Ljava/lang/String;

    move-result-object v5

    .line 626
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 627
    new-instance v2, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "video"

    move-object v6, v5

    invoke-direct/range {v2 .. v8}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :goto_1
    return-object v2

    .line 630
    :cond_1
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "mediaRef.video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Media Reference"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 632
    :cond_2
    :try_start_0
    const-string/jumbo v2, "components"

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 633
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 634
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v14

    .line 635
    const-string/jumbo v2, "apc#properties"

    invoke-virtual {v3, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 636
    invoke-virtual {v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-static {v14, p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;

    move-result-object v5

    .line 638
    invoke-virtual {v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "image"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v8, "image"

    .line 639
    :goto_2
    invoke-virtual {v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getWidth()I

    .line 640
    invoke-virtual {v14}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getHeight()I

    .line 641
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 642
    const-wide/32 v12, 0x249f0

    const-wide/16 v10, 0x7530

    .line 643
    const-string/jumbo v6, "duration"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 644
    if-eqz v6, :cond_3

    .line 646
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    .line 647
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    move-wide v12, v6

    .line 649
    :cond_3
    const-string/jumbo v6, "timeScale"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/json/JSONArray;

    move-object v7, v0

    .line 650
    const-string/jumbo v6, "assetURL"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 651
    if-eqz v7, :cond_4

    .line 653
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    .line 655
    :cond_4
    invoke-static {v14, p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getOriginalAssetDate(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;

    move-result-object v7

    .line 656
    new-instance v2, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    invoke-direct/range {v2 .. v8}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v2, v12, v13, v10, v11}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationAndTimescale(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 663
    :catch_0
    move-exception v2

    .line 664
    const-string/jumbo v3, "DCXAssetRef"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compositeId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->logCrashLytics(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetAssetReferenceDCX - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXReader;->logError(Ljava/lang/String;)V

    :cond_5
    move-object v2, v9

    .line 669
    goto/16 :goto_1

    .line 638
    :cond_6
    :try_start_1
    const-string/jumbo v8, "video"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_7
    move-object v3, v9

    goto/16 :goto_0
.end method

.method public static getBumperName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->fileNameOfBumperVideo(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBumperPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->filePathInComponentForBumperNodeInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClipsFromDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 5

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->removeAllClips()V

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 300
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "VideoClip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-static {p0, v0, p2, v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->getDCXClipNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/util/ArrayList;)Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;

    move-result-object v0

    .line 302
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 308
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;

    .line 309
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->getClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    goto :goto_1

    .line 311
    :cond_2
    return-void
.end method

.method private static getDCXClipNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/util/ArrayList;)Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;",
            ">;)",
            "Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;"
        }
    .end annotation

    .prologue
    .line 485
    const-string/jumbo v2, "apc#properties"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lorg/json/JSONObject;

    .line 487
    :try_start_0
    const-string/jumbo v2, "mediaRef"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 488
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->getAssetReferenceFromDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v3

    .line 489
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;

    .line 490
    iget-object v5, v2, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    iget-object v2, v2, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v3

    goto :goto_0

    .line 494
    :cond_1
    const-wide/16 v10, 0x0

    const-wide/32 v6, 0x4c4b40

    .line 495
    const-string/jumbo v4, ".A"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 497
    :try_start_1
    const-string/jumbo v2, "duration"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 498
    if-eqz v2, :cond_2

    .line 499
    new-instance v5, Ljava/lang/Long;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x7530

    div-long/2addr v12, v14

    invoke-direct {v5, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 501
    :cond_2
    const-string/jumbo v2, "contentInPoint"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 502
    if-eqz v2, :cond_3

    .line 503
    new-instance v5, Ljava/lang/Long;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x7530

    div-long/2addr v12, v14

    invoke-direct {v5, v12, v13}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 505
    :cond_3
    const-string/jumbo v2, "sortableValue"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    if-eqz v2, :cond_6

    :goto_1
    move-object v14, v2

    move-wide v4, v10

    .line 512
    :goto_2
    :try_start_2
    const-string/jumbo v2, "isTitleClip"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 513
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 514
    const-string/jumbo v8, "title"

    invoke-virtual {v3, v8}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setMediaType(Ljava/lang/String;)V

    .line 517
    :cond_4
    const-string/jumbo v8, "speed"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v15, v10

    .line 518
    const/4 v8, 0x0

    cmpl-float v8, v15, v8

    if-eqz v8, :cond_5

    .line 519
    long-to-float v4, v4

    mul-float/2addr v4, v15

    float-to-long v4, v4

    .line 520
    long-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-long v6, v6

    .line 522
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v10

    .line 523
    const-string/jumbo v4, "audioComponents"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 525
    if-eqz v4, :cond_10

    .line 526
    const/high16 v12, 0x3f800000    # 1.0f

    .line 527
    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 528
    const/4 v5, 0x0

    move v13, v5

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v13, v5, :cond_e

    .line 529
    invoke-virtual {v4, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 530
    if-nez v16, :cond_7

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v11

    move v11, v12

    .line 528
    :goto_4
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    move v12, v11

    move v11, v8

    move v8, v7

    move v7, v6

    move v6, v5

    goto :goto_3

    :cond_6
    move-object v2, v4

    .line 506
    goto :goto_1

    .line 507
    :catch_0
    move-exception v2

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ClipParamReadIssue - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/adobe/premiereclip/dcx/DCXReader;->logError(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v14, v4

    move-wide v4, v10

    goto/16 :goto_2

    .line 531
    :cond_7
    const-string/jumbo v5, "type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 532
    const/4 v5, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_8
    :goto_5
    packed-switch v5, :pswitch_data_0

    :cond_9
    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v11

    move v11, v12

    goto :goto_4

    :sswitch_0
    const-string/jumbo v18, "audio.mute"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    :sswitch_1
    const-string/jumbo v18, "audio.volume"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_2
    const-string/jumbo v18, "audio.fade"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_3
    const-string/jumbo v18, "audio.smartVolume"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v5, 0x3

    goto :goto_5

    .line 534
    :pswitch_0
    const-string/jumbo v5, "Mute"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 535
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_9

    const/4 v5, 0x1

    move v6, v7

    move v7, v8

    move v8, v11

    move v11, v12

    goto/16 :goto_4

    .line 538
    :pswitch_1
    const-string/jumbo v5, "Gain"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v5, v0

    move/from16 v19, v6

    move v6, v7

    move v7, v8

    move v8, v11

    move v11, v5

    move/from16 v5, v19

    .line 539
    goto/16 :goto_4

    .line 541
    :pswitch_2
    const-string/jumbo v5, "bypass"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 542
    const-string/jumbo v5, "Fade In"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 543
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v0, v5, :cond_a

    if-nez v17, :cond_b

    const/4 v5, 0x1

    :goto_6
    move v11, v5

    .line 544
    :cond_a
    if-nez v16, :cond_9

    if-nez v17, :cond_c

    const/4 v5, 0x1

    :goto_7
    move v8, v11

    move v11, v12

    move/from16 v19, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v19

    goto/16 :goto_4

    .line 543
    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    .line 544
    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    .line 547
    :pswitch_3
    const-string/jumbo v5, "bypass"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v5, 0x1

    :goto_8
    move v7, v8

    move v8, v11

    move v11, v12

    move/from16 v19, v5

    move v5, v6

    move/from16 v6, v19

    .line 548
    goto/16 :goto_4

    .line 547
    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    .line 553
    :cond_e
    if-eqz v6, :cond_f

    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->muteClip()V

    .line 554
    :cond_f
    invoke-virtual {v10, v11}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAudioFadeInApplied(Z)V

    .line 555
    invoke-virtual {v10, v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAudioFadeOutApplied(Z)V

    .line 556
    invoke-virtual {v10, v12}, Lcom/adobe/premiereclip/project/sequence/Clip;->setVolume(F)V

    .line 557
    invoke-virtual {v10, v7}, Lcom/adobe/premiereclip/project/sequence/Clip;->setSmartVolumeApplied(Z)V

    .line 560
    :cond_10
    const-string/jumbo v4, "videoComponents"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONArray;

    .line 562
    if-eqz v4, :cond_12

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_12

    .line 563
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 564
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 567
    const-string/jumbo v8, "type"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 568
    if-eqz v8, :cond_11

    const-string/jumbo v11, "video.exposure"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 569
    const-string/jumbo v4, "shadows"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v6, v4

    .line 570
    const-string/jumbo v4, "bypass"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 571
    const-string/jumbo v4, "gain"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 572
    const-string/jumbo v5, "endFrame"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 573
    const-string/jumbo v5, "startFrame"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 574
    const-string/jumbo v5, "highlights"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v5, v12

    .line 576
    :cond_11
    invoke-virtual {v10, v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->setDCXExposure(F)V

    .line 577
    invoke-virtual {v10, v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->setShadows(F)V

    .line 578
    invoke-virtual {v10, v5}, Lcom/adobe/premiereclip/project/sequence/Clip;->setHighlights(F)V

    .line 580
    :cond_12
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-eqz v4, :cond_13

    .line 581
    invoke-virtual {v10, v15}, Lcom/adobe/premiereclip/project/sequence/Clip;->setSpeed(F)V

    .line 584
    :cond_13
    const-string/jumbo v4, "clipGroupId"

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 585
    if-eqz v4, :cond_14

    .line 586
    invoke-virtual {v10, v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->setClipGroupId(Ljava/lang/String;)V

    .line 589
    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 590
    const-string/jumbo v2, "backgroundColor"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 591
    const-string/jumbo v2, "titleColor"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 592
    const-string/jumbo v2, "title"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 593
    move-object v0, v10

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v8, v0

    .line 594
    new-instance v2, Lcom/adobe/premiereclip/media/TitleImage;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v4

    if-nez v6, :cond_18

    const/4 v6, 0x0

    .line 595
    :goto_9
    if-nez v7, :cond_19

    const/4 v7, 0x0

    .line 596
    :goto_a
    invoke-direct/range {v2 .. v7}, Lcom/adobe/premiereclip/media/TitleImage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {v8, v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setTitleImage(Lcom/adobe/premiereclip/media/TitleImage;)V

    .line 600
    :cond_15
    const-string/jumbo v2, "isStoryCard"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 601
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 602
    move-object v0, v10

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    move-object v2, v0

    .line 603
    const-string/jumbo v3, "title"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 604
    if-nez v3, :cond_16

    const-string/jumbo v3, ""

    :cond_16
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->setStoryCard(Ljava/lang/String;)V

    .line 607
    :cond_17
    new-instance v2, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;

    invoke-direct {v2, v10, v14}, Lcom/adobe/premiereclip/dcx/DCXReader$DCXClipNode;-><init>(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)V

    .line 614
    :goto_b
    return-object v2

    .line 595
    :cond_18
    invoke-static {v6}, Lcom/adobe/premiereclip/util/Utilities;->rgbaStringToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    .line 596
    :cond_19
    invoke-static {v7}, Lcom/adobe/premiereclip/util/Utilities;->rgbaStringToHexString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto :goto_a

    .line 610
    :catch_1
    move-exception v2

    .line 611
    const-string/jumbo v3, "DCXClip"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compositeId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->logCrashLytics(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetClipDCX - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXReader;->logError(Ljava/lang/String;)V

    .line 614
    const/4 v2, 0x0

    goto :goto_b

    .line 532
    :sswitch_data_0
    .sparse-switch
        -0x70bcebce -> :sswitch_1
        0x1a08702b -> :sswitch_3
        0x59a06994 -> :sswitch_2
        0x59a3e531 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getLookFromDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/premiereclip/looks/BaseLook;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 243
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 244
    const-string/jumbo v3, "built-in"

    .line 246
    if-eqz v0, :cond_7

    .line 248
    :try_start_0
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    if-eqz v1, :cond_6

    :try_start_1
    const-string/jumbo v3, "built-in"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 250
    const-string/jumbo v3, "libraryId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    move-object v3, v0

    .line 256
    :goto_1
    if-eqz v1, :cond_0

    const-string/jumbo v0, "built-in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    invoke-static {v4}, Lcom/adobe/premiereclip/looks/LocalLooks;->getLookFromLookName(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/ClipLook;

    move-result-object v0

    .line 291
    :goto_2
    return-object v0

    .line 252
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 253
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v2

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 262
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v2

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 266
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Look Image"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 268
    :try_start_2
    invoke-static {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_5
    move-object v2, v1

    move-object v1, v0

    .line 282
    goto :goto_4

    .line 270
    :catch_1
    move-exception v0

    .line 271
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    move-object v0, v1

    move-object v1, v2

    .line 272
    goto :goto_5

    .line 274
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Look Cube File"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 276
    :try_start_3
    invoke-static {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;
    :try_end_3
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    move-object v1, v2

    .line 280
    goto :goto_5

    .line 278
    :catch_2
    move-exception v0

    .line 279
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    :cond_3
    move-object v0, v1

    move-object v1, v2

    goto :goto_5

    .line 283
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 284
    new-instance v0, Lcom/adobe/premiereclip/looks/CandyLook;

    invoke-direct {v0, v5, v4}, Lcom/adobe/premiereclip/looks/CandyLook;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/looks/CandyLook;->setLibraryId(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/looks/CandyLook;->setCubeDataUrl(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/looks/CandyLook;->setRenditionPathUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 291
    :cond_5
    const-string/jumbo v0, "Normal"

    invoke-static {v0}, Lcom/adobe/premiereclip/looks/LocalLooks;->getLookFromLookName(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/ClipLook;

    move-result-object v0

    goto :goto_2

    .line 252
    :catch_3
    move-exception v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    move-object v1, v3

    move-object v3, v2

    goto/16 :goto_1
.end method

.method public static getOverlayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->fileNameOfOverlayImage(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOverlayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v2

    invoke-virtual {v2, p0, v1, v0}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 211
    if-nez v1, :cond_0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->filePathInComponentForOverlayNodeInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPreferenceBumperName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "/branding/bumper"

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFileNameOfPreferenceSetting(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceBumperPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 156
    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v2, "preferences"

    invoke-virtual {v0, v2, v1, v1}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    move-object v0, v1

    .line 167
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->isValidBumperPresentInPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPreferenceBumperState(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "/branding/bumper"

    const-string/jumbo v2, "state"

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getPreferenceState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getPreferenceOverlayName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "/branding/overlay"

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getFileNameOfPreferenceSetting(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPreferenceOverlayPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v2, "preferences"

    invoke-virtual {v0, v2, v1, v1}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 187
    if-nez v0, :cond_0

    move-object v0, v1

    .line 195
    :goto_0
    return-object v0

    .line 191
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->isValidOverlayPresentInPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 195
    goto :goto_0
.end method

.method public static getPreferenceOverlayState(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    const-string/jumbo v1, "/branding/overlay"

    const-string/jumbo v2, "state"

    invoke-static {v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getPreferenceState(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isBumperEnabled(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {}, Lcom/adobe/sync/database/CompositeLoader;->getInstance()Lcom/adobe/sync/database/CompositeLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/adobe/sync/database/CompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    const-string/jumbo v1, "videoBumper"

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->isKeyPresentInSequenceProperties(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPreferenceBumperPremiereClip(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->setupPreferences(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->getInstance()Lcom/adobe/sync/database/PreferenceCompositeLoader;

    move-result-object v0

    const-string/jumbo v1, "preferences"

    invoke-virtual {v0, v1, v2, v2}, Lcom/adobe/sync/database/PreferenceCompositeLoader;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->isDefaultBumperInPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Z

    move-result v0

    goto :goto_0
.end method

.method private static logError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "DCXReader"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method

.method private static setAudioTrackPropertiesOfSequenceFromDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 22

    .prologue
    .line 315
    invoke-virtual/range {p0 .. p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v3

    .line 316
    const/16 v16, 0x0

    .line 317
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "AudioClip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 318
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 319
    const-string/jumbo v3, "apc#properties"

    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/json/JSONObject;

    .line 322
    const-string/jumbo v3, "title"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 323
    const-string/jumbo v3, "mediaRef"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 324
    if-eqz v3, :cond_17

    .line 325
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aget-object v3, v3, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v9

    .line 326
    invoke-virtual {v9}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "mediaRef.audio"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 328
    :try_start_0
    const-string/jumbo v3, "components"

    invoke-virtual {v9, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 329
    const/4 v12, 0x0

    .line 330
    const/4 v7, 0x0

    .line 331
    const/4 v5, 0x0

    move v8, v5

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v8, v5, :cond_1

    .line 332
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 333
    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v5

    .line 334
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "primary"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    move-object v5, v7

    .line 331
    :goto_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move-object v12, v6

    move-object v7, v5

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "sc"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    move-object v6, v12

    .line 338
    goto :goto_1

    .line 341
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;

    move-result-object v5

    .line 342
    const-string/jumbo v3, "apc#properties"

    invoke-virtual {v9, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 343
    const-wide/32 v10, 0x35d54

    const-wide/32 v8, 0xac44

    .line 344
    const-string/jumbo v6, "duration"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 345
    if-eqz v6, :cond_15

    .line 347
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    move-wide/from16 v18, v10

    .line 349
    :goto_2
    const-string/jumbo v6, "timeScale"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 350
    if-eqz v6, :cond_14

    .line 352
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v8

    move-wide v10, v8

    .line 360
    :goto_3
    const/4 v8, 0x0

    .line 361
    if-eqz v7, :cond_13

    .line 363
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getPathForComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Ljava/lang/String;

    move-result-object v6

    .line 365
    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/adobe/premiereclip/util/Utilities;->getMD5HashFromFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 366
    if-eqz v7, :cond_12

    .line 367
    invoke-static {v6}, Lcom/adobe/premiereclip/util/JsonReader;->readJsonObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 368
    const-string/jumbo v6, "fullImpact"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 370
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v13, "_impact"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 371
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 373
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    :try_start_2
    const-string/jumbo v7, "fullImpact"

    invoke-virtual {v14, v7, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 380
    :goto_4
    :try_start_3
    invoke-static {v14, v13}, Lcom/adobe/premiereclip/util/JsonWriter;->writeJsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 387
    :cond_2
    :goto_5
    if-eqz v6, :cond_11

    :try_start_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_11

    .line 388
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v8, v7, [F

    .line 390
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v7, v13, :cond_5

    .line 391
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    aput v13, v8, v7

    .line 390
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 376
    :catch_0
    move-exception v7

    .line 377
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 413
    :catch_1
    move-exception v6

    .line 414
    :goto_7
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v17, v8

    .line 417
    :goto_8
    const-string/jumbo v6, "assetURL"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 418
    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getOriginalAssetDate(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/String;

    move-result-object v14

    .line 421
    new-instance v3, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    const-wide/16 v6, 0x0

    const-wide/32 v8, 0xf4240

    mul-long v8, v8, v18

    div-long/2addr v8, v10

    .line 422
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v3 .. v14}, Lcom/adobe/premiereclip/project/sequence/AudioClip;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 424
    if-eqz v17, :cond_3

    .line 425
    :try_start_6
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->setImpactData([F)V

    .line 427
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->replaceAudioClip(Lcom/adobe/premiereclip/project/sequence/AudioClip;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 434
    :goto_9
    const-string/jumbo v2, "audioComponents"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 435
    if-eqz v2, :cond_f

    .line 436
    const/high16 v7, 0x3f800000    # 1.0f

    .line 437
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 438
    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_d

    .line 439
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 440
    if-nez v9, :cond_8

    .line 438
    :cond_4
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 381
    :catch_2
    move-exception v7

    .line 382
    :try_start_7
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 383
    :catch_3
    move-exception v7

    .line 384
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_5

    :cond_5
    move-object v7, v8

    .line 395
    :goto_c
    :try_start_8
    const-string/jumbo v6, "transitions"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 396
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 397
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 398
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 399
    const-string/jumbo v9, "time"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 400
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 401
    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_6

    .line 402
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 403
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 406
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 407
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setTransitionTimes(Ljava/util/ArrayList;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :cond_7
    move-object v6, v7

    :goto_e
    move-object/from16 v17, v6

    .line 415
    goto/16 :goto_8

    .line 429
    :catch_4
    move-exception v2

    move-object/from16 v3, v16

    .line 430
    :goto_f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 441
    :cond_8
    const-string/jumbo v8, "type"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 442
    if-eqz v10, :cond_4

    .line 443
    const/4 v8, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_9
    :goto_10
    packed-switch v8, :pswitch_data_0

    goto :goto_b

    .line 445
    :pswitch_0
    const-string/jumbo v7, "Gain"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v7, v8

    .line 446
    goto/16 :goto_b

    .line 443
    :sswitch_0
    const-string/jumbo v11, "audio.volume"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v8, 0x0

    goto :goto_10

    :sswitch_1
    const-string/jumbo v11, "audio.fade"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v8, 0x1

    goto :goto_10

    .line 448
    :pswitch_1
    const-string/jumbo v8, "bypass"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 449
    const-string/jumbo v10, "Fade In"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 450
    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 451
    :cond_a
    :goto_11
    if-nez v9, :cond_4

    if-nez v8, :cond_c

    const/4 v5, 0x1

    goto/16 :goto_b

    .line 450
    :cond_b
    const/4 v6, 0x0

    goto :goto_11

    .line 451
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_b

    .line 457
    :cond_d
    const-string/jumbo v2, "contentInPoint"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 458
    const-wide/16 v8, 0x0

    .line 459
    if-eqz v2, :cond_e

    .line 461
    :try_start_9
    new-instance v4, Ljava/lang/Long;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    mul-long/2addr v10, v12

    const-wide/32 v12, 0xac44

    div-long/2addr v10, v12

    invoke-direct {v4, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-wide v8

    .line 467
    :cond_e
    :goto_12
    if-eqz v3, :cond_f

    .line 469
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioFadeInApplied(Z)V

    .line 470
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioFadeOutApplied(Z)V

    .line 471
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setVolume(F)V

    .line 472
    invoke-virtual {v3, v8, v9}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->setStartTimeUs(J)V

    .line 480
    :cond_f
    :goto_13
    return-void

    .line 463
    :catch_5
    move-exception v2

    .line 464
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_12

    .line 475
    :cond_10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_f

    .line 476
    invoke-virtual/range {p3 .. p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->removeAllClips()V

    goto :goto_13

    .line 429
    :catch_6
    move-exception v2

    goto/16 :goto_f

    .line 413
    :catch_7
    move-exception v6

    move-object v8, v7

    goto/16 :goto_7

    :cond_11
    move-object v7, v8

    goto/16 :goto_c

    :cond_12
    move-object v6, v8

    goto/16 :goto_e

    :cond_13
    move-object/from16 v17, v8

    goto/16 :goto_8

    :cond_14
    move-wide v10, v8

    goto/16 :goto_3

    :cond_15
    move-wide/from16 v18, v10

    goto/16 :goto_2

    :cond_16
    move-object v5, v7

    move-object v6, v12

    goto/16 :goto_1

    :cond_17
    move-object/from16 v3, v16

    goto/16 :goto_9

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        -0x70bcebce -> :sswitch_0
        0x59a06994 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setSequenceFromDCX(Ljava/lang/String;Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 6

    .prologue
    .line 80
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/metrics/Metrics;->didStartProjectOpenForMyProject(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    const-string/jumbo v0, "EMPTY-PROJECT-PATH - project path empty or undefined"

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->logError(Ljava/lang/String;)V

    .line 87
    :cond_1
    const/4 v1, 0x0

    .line 89
    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    sget-object v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    invoke-direct {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;-><init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 94
    :goto_0
    if-eqz v1, :cond_7

    .line 95
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->setAutoRemoveUnusedLocalFiles(Z)V

    .line 96
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_5

    .line 98
    const-string/jumbo v0, "/sequence"

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_6

    .line 101
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 102
    invoke-static {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXReader;->setSequencePropertiesFromDCX(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 103
    invoke-virtual {v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 105
    const-string/jumbo v4, "VideoTrack"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    invoke-static {v2, v0, v1, p1}, Lcom/adobe/premiereclip/dcx/DCXReader;->getClipsFromDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 108
    :cond_3
    const-string/jumbo v4, "AudioTrack"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    invoke-static {v2, v0, v1, p1}, Lcom/adobe/premiereclip/dcx/DCXReader;->setAudioTrackPropertiesOfSequenceFromDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    .line 111
    :cond_4
    const-string/jumbo v4, "look"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    invoke-static {v2, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXReader;->getLookFromDCX(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    .line 113
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 120
    :cond_5
    const-string/jumbo v0, "NULL-BRANCH - branch not created while reading sequence"

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->logError(Ljava/lang/String;)V

    .line 129
    :cond_6
    :goto_2
    return-void

    .line 125
    :cond_7
    const-string/jumbo v0, "Null-Composite - error in creating dcx composite structure, currently inside sequence creation"

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXReader;->logError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static setSequencePropertiesFromDCX(Lorg/json/JSONObject;Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 2

    .prologue
    .line 674
    const-string/jumbo v0, "fadeIn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    const-string/jumbo v0, "fadeIn"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setFadeIn(Z)V

    .line 677
    :cond_0
    const-string/jumbo v0, "fadeOut"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 678
    const-string/jumbo v0, "fadeOut"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setFadeOut(Z)V

    .line 680
    :cond_1
    const-string/jumbo v0, "crossDissolves"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 681
    const-string/jumbo v0, "crossDissolves"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setGlobalTransition(Z)V

    .line 683
    :cond_2
    const-string/jumbo v0, "photoMotion"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 684
    const-string/jumbo v0, "photoMotion"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setPhotoMotion(Z)V

    .line 686
    :cond_3
    const-string/jumbo v0, "autoDuck"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 687
    const-string/jumbo v0, "autoDuck"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioDuckApplied(Z)V

    .line 689
    :cond_4
    const-string/jumbo v0, "snaptoBeat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 690
    const-string/jumbo v0, "snaptoBeat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setSnapToBeatApplied(Z)V

    .line 692
    :cond_5
    const-string/jumbo v0, "syncPace"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 693
    const-string/jumbo v0, "syncPace"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAudioSyncPace(F)V

    .line 695
    :cond_6
    return-void
.end method

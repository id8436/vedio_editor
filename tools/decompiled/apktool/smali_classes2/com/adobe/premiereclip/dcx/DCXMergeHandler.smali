.class public Lcom/adobe/premiereclip/dcx/DCXMergeHandler;
.super Ljava/lang/Object;
.source "DCXMergeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DCXMergeHandler"


# instance fields
.field public base:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

.field public composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field public current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

.field public merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

.field private mergeError:Ljava/lang/Error;

.field public pulled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->pulled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getBase()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->base:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 64
    return-void
.end method

.method private doSmartMerge()Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 266
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 269
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 271
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->base:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getVideoClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->pulled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getVideoClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v1

    .line 273
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getVideoClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v2

    .line 275
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->IDsOfNodes(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    .line 276
    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->IDsOfNodes(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    .line 277
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->IDsOfNodes(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    .line 279
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 284
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 287
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 289
    :cond_1
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 299
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    :cond_4
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "VideoClips in base: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "VideoClips in pulled: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "VideoClips in current: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "These video clips were deleted somewhere, so deleting them from merged: %s"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 316
    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_5

    .line 319
    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    goto :goto_2

    .line 324
    :cond_6
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "These video clips were added in \'current\', so we\'ll add them to \'merged\': %s"

    new-array v3, v11, [Ljava/lang/Object;

    .line 325
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getVideoTrackNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->copyClipIDs(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 332
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->copyNewerVideoClipsFromSrcBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Ljava/util/ArrayList;

    .line 340
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getVideoClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v0

    .line 341
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->IDsOfNodes(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->ensureMediaNodesForClipNodeIDs(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    .line 345
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeAudioClip()V

    .line 347
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->IDsOfNodes(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->ensureMediaNodesForClipNodeIDs(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V

    .line 351
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->ensureNoDuplicateSortableIdentifiersInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 353
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeSequencePropertiesFromBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 354
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeProjectPropertiesFromBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 355
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 362
    return-object v0
.end method


# virtual methods
.method copyClipIDs(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 502
    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 503
    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {p4, p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 511
    int-to-long v4, v0

    move-object v0, p4

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->copyChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 515
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 520
    :cond_1
    return-void
.end method

.method copyNewerVideoClipsFromSrcBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    invoke-static {p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getVideoClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 532
    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 533
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 537
    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->replacePropertiesInNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/Boolean;

    move-result-object v1

    .line 541
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    :cond_1
    return-object v2
.end method

.method public doMerge()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 79
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "[DCXMergeHandler doMerge:] id = %s, name = %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 80
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 79
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeError:Ljava/lang/Error;

    .line 93
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeByAcceptingOnlyAvailableOption()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->removeUnusedMediaInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 96
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->resolveCompositeUsingMergedBranch()V

    .line 130
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getBase()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "[DCXMergeHandler doMerge:] id = %s, name = %s, server version has changes but client does not; so we are simply accepting the server version."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 109
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 108
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeByAcceptingServerBranch()V

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->removeUnusedMediaInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 113
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->removeInvalidLookNodes()V

    .line 114
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->resolveCompositeUsingMergedBranch()V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->doSmartMerge()Ljava/lang/Boolean;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->removeUnusedMediaInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    const-string/jumbo v0, "[DCXMergeHandler doMerge:] Encountered an error in doSmartMerge"

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->resolveCompositeUsingMergedBranch()V

    goto :goto_0
.end method

.method editsInNodeId(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 375
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 377
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->base:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 378
    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->pulled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v2, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 379
    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-virtual {v3, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 381
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 443
    :goto_0
    return-object v0

    .line 386
    :cond_1
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v6

    .line 387
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v7

    .line 388
    invoke-static {v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v8

    .line 390
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-nez v8, :cond_3

    :cond_2
    move-object v0, v1

    .line 392
    goto :goto_0

    .line 396
    :cond_3
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 402
    :try_start_1
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v5, v4

    .line 408
    :goto_2
    :try_start_2
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    move-object v4, v3

    .line 414
    :goto_3
    :try_start_3
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    move-object v3, v2

    .line 420
    :goto_4
    if-eqz v5, :cond_8

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 421
    if-eqz v5, :cond_9

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 423
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 425
    invoke-virtual {v10, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 430
    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 433
    :cond_6
    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 435
    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    move-object v0, v1

    .line 443
    goto/16 :goto_0

    .line 404
    :catch_1
    move-exception v5

    .line 405
    :try_start_5
    const-string/jumbo v5, "DCXMergeHandler"

    const-string/jumbo v11, "key - %s not there in base"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    goto :goto_2

    .line 410
    :catch_2
    move-exception v4

    .line 411
    const-string/jumbo v4, "DCXMergeHandler"

    const-string/jumbo v11, "key - %s not there in pulled"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    goto/16 :goto_3

    .line 416
    :catch_3
    move-exception v3

    .line 417
    const-string/jumbo v3, "DCXMergeHandler"

    const-string/jumbo v11, "key - %s not there in current"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v3, v2

    goto/16 :goto_4

    .line 420
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 421
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method ensureMediaNodesForClipNodeIDs(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 556
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 559
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v0

    .line 563
    :try_start_0
    const-string/jumbo v1, "mediaRef"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 573
    invoke-virtual {p2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 574
    if-nez v1, :cond_0

    .line 578
    invoke-virtual {p3, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithAbsolutePath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 579
    if-eqz v1, :cond_0

    .line 581
    invoke-static {p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getMediaNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 582
    if-eqz v3, :cond_0

    .line 584
    invoke-virtual {p2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildrenOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 586
    int-to-long v4, v0

    move-object v0, p2

    move-object v2, p3

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->copyChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;J)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 591
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 565
    :catch_1
    move-exception v0

    .line 567
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    .line 568
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 598
    :cond_1
    return-void
.end method

.method ensureNoDuplicateSortableIdentifiersInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V
    .locals 1

    .prologue
    .line 655
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getVideoTrackNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeDuplicateSortableValuesInChildrenOfNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)V

    .line 660
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "DCXMergeHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method public mergeAudioClip()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 669
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v3

    .line 670
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 671
    const-string/jumbo v5, "DCX Merge: the audio clip count <= 1 in merge branch"

    if-gt v4, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v5, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 673
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioClipNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/util/ArrayList;

    move-result-object v5

    .line 674
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 675
    const-string/jumbo v6, "DCX Merge: the audio clip count <= 1 in current branch"

    if-gt v0, v1, :cond_1

    :goto_1
    invoke-static {v6, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 679
    if-eq v4, v0, :cond_2

    .line 681
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "Determining which audio track node to use..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioTrackNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 684
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getAudioTrackNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 682
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->replaceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/Boolean;

    .line 702
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 671
    goto :goto_0

    :cond_1
    move v1, v2

    .line 675
    goto :goto_1

    .line 689
    :cond_2
    if-lez v4, :cond_3

    .line 691
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "Determining which properties to use for the audio track node..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 694
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    iget-object v2, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    .line 692
    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->replacePropertiesInNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/Boolean;

    goto :goto_2

    .line 699
    :cond_3
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "Neither branch has an audio clip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method mergeByAcceptingOnlyAvailableOption()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 234
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->current:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    if-nez v0, :cond_0

    .line 236
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "No Current branch, accepting \'pulled\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 238
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->base:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    if-nez v0, :cond_1

    .line 243
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "No Base branch, accepting \'current\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 245
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->pulled:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    if-nez v0, :cond_2

    .line 250
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "No Pulled branch, accepting \'current\'"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 252
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method mergeByAcceptingServerBranch()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getPulled()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 208
    return-void
.end method

.method public mergePreferences()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "[DCXMergeHandler mergePreferences:] id = %s, name = %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 136
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 135
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeError:Ljava/lang/Error;

    .line 140
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeByAcceptingOnlyAvailableOption()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeUnusedMediaRefNodesInPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 143
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->resolveCompositeUsingMergedBranch()V

    .line 177
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getBase()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getCompositeState()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const-string/jumbo v0, "DCXMergeHandler"

    const-string/jumbo v1, "[DCXMergeHandler mergePreferences:] id = %s, name = %s, server version has changes but client does not; so we are simply accepting the server version."

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    .line 156
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCompositeId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 155
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->mergeByAcceptingServerBranch()V

    .line 159
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeUnusedMediaRefNodesInPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 160
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->removeInvalidLookNodes()V

    .line 161
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->resolveCompositeUsingMergedBranch()V

    goto :goto_0

    .line 166
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->doSmartMerge()Ljava/lang/Boolean;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeUnusedMediaRefNodesInPreferences(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const-string/jumbo v0, "[DCXMergeHandler mergePreferences:] Encountered an error in doSmartPreferenceMerge"

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->resolveCompositeUsingMergedBranch()V

    goto :goto_0
.end method

.method mergeProjectPropertiesFromBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V
    .locals 2

    .prologue
    .line 604
    const-string/jumbo v0, "apc#properties"

    invoke-virtual {p1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 605
    const-string/jumbo v1, "apc#properties"

    invoke-virtual {p2, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 606
    invoke-static {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->dictionaryWithMostRecentModificationTime(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 610
    const-string/jumbo v1, "apc#properties"

    invoke-virtual {p2, v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    :cond_0
    return-void
.end method

.method mergeSequencePropertiesFromBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V
    .locals 6

    .prologue
    .line 617
    invoke-static {p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 618
    if-nez v0, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-static {p2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 626
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getSequenceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v2

    .line 624
    invoke-virtual {p0, v1, p2, v2, p1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->replacePropertiesInNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/Boolean;

    move-result-object v1

    .line 630
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "fadeIn"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "fadeOut"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "autoDuck"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "crossDissolves"

    aput-object v5, v3, v4

    .line 632
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 636
    invoke-virtual {p0, v0, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->threeWayMergeForNodeID(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 642
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getLookNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_0

    .line 646
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 647
    invoke-static {p2, v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setLookNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)V

    goto :goto_0
.end method

.method public removeInvalidLookNodes()V
    .locals 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getLookNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_1

    .line 190
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 193
    :cond_0
    const-string/jumbo v1, "DCXMergeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing invalid node from the current branch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->removeChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    .line 197
    :cond_1
    return-void
.end method

.method removeUnusedMediaInBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V
    .locals 0

    .prologue
    .line 664
    invoke-static {p1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->removeUnusedMediaRefNodes(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)V

    .line 665
    return-void
.end method

.method public replaceNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 710
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v3

    .line 711
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    .line 712
    :cond_0
    if-eqz v3, :cond_1

    if-nez v2, :cond_4

    .line 713
    :cond_1
    if-nez v2, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 717
    :goto_2
    return-object v0

    :cond_2
    move-object v3, v2

    .line 710
    goto :goto_0

    :cond_3
    move v0, v1

    .line 713
    goto :goto_1

    .line 715
    :cond_4
    invoke-static {p2, v3}, Lcom/adobe/premiereclip/dcx/DCXMergeSelectionFactory;->createSelectionWithMutableBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)Lcom/adobe/premiereclip/dcx/DCXMergeSelection;

    move-result-object v3

    .line 716
    invoke-static {p4, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeSelectionFactory;->createSelectionWithBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;)Lcom/adobe/premiereclip/dcx/DCXMergeSelection;

    move-result-object v2

    .line 717
    invoke-virtual {v3, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->ensureNewest(Lcom/adobe/premiereclip/dcx/DCXMergeSelection;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_3
.end method

.method public replacePropertiesInNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 726
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v3

    .line 727
    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getNodeId()Ljava/lang/String;

    move-result-object v2

    .line 728
    :cond_0
    if-eqz v3, :cond_1

    if-nez v2, :cond_4

    .line 729
    :cond_1
    if-nez v2, :cond_3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 733
    :goto_2
    return-object v0

    :cond_2
    move-object v3, v2

    .line 726
    goto :goto_0

    :cond_3
    move v0, v1

    .line 729
    goto :goto_1

    .line 731
    :cond_4
    invoke-static {p2, v3}, Lcom/adobe/premiereclip/dcx/DCXMergeSelectionFactory;->createSelectionWithMutableBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;Ljava/lang/String;)Lcom/adobe/premiereclip/dcx/DCXMergeSelection;

    move-result-object v3

    .line 732
    invoke-static {p4, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeSelectionFactory;->createSelectionWithBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;Ljava/lang/String;)Lcom/adobe/premiereclip/dcx/DCXMergeSelection;

    move-result-object v2

    .line 733
    invoke-virtual {v3, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeSelection;->ensureNewestProperties(Lcom/adobe/premiereclip/dcx/DCXMergeSelection;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_3
.end method

.method resolveCompositeUsingMergedBranch()V
    .locals 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->resolvePullWithBranch(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;)Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 219
    const-string/jumbo v1, "resolveCompositeUsingMergedBranch error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_0

    .line 225
    :cond_0
    const-string/jumbo v0, "ERROR: calling resolveCompositeUsingMergedBranch, but we haven\'t populated the merge branch yet!"

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method threeWayMergeForNodeID(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->merge:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->editsInNodeId(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v2

    .line 457
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 459
    invoke-virtual {v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v3

    .line 460
    invoke-static {v3}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v4

    .line 461
    if-eqz v4, :cond_1

    .line 467
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 469
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 481
    :cond_0
    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;->getMutableCopy()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;

    move-result-object v0

    .line 483
    invoke-static {v0, v4}, Lcom/adobe/premiereclip/dcx/DCXUtils;->setAppPropertiesForNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXMutableManifestNode;Lorg/json/JSONObject;)V

    .line 485
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->updateChild(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;
    :try_end_1
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 493
    :cond_1
    :goto_1
    return-void

    .line 487
    :catch_1
    move-exception v0

    .line 488
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/dcx/DCXMergeHandler;->logError(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;->printStackTrace()V

    goto :goto_1
.end method

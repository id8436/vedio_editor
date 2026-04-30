.class public Lcom/adobe/premiereclip/project/Project;
.super Ljava/lang/Object;
.source "Project.java"


# static fields
.field private static final MIN_CLIP_DURATION_DCX:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "Project"

.field public static final kAnalyticsProjectModeAuto:I = 0x1

.field public static final kAnalyticsProjectModeFreeform:I


# instance fields
.field private assetCount:I

.field private creationDate:Ljava/util/Date;

.field private editMode:I

.field private lastModifiedDate:Ljava/util/Date;

.field private normalPosterPath:Ljava/lang/String;

.field private pendingSendPPro:Z

.field private posterAssetPath:Ljava/lang/String;

.field private posterEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

.field private posterHashValue:Ljava/lang/String;

.field private posterInTime:J

.field private posterLook:Lcom/adobe/premiereclip/looks/BaseLook;

.field private posterPath:Ljava/lang/String;

.field public final projectKey:Ljava/lang/String;

.field private projectName:Ljava/lang/String;

.field private sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/adobe/premiereclip/project/Project;->projectName:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/adobe/premiereclip/project/Project;->creationDate:Ljava/util/Date;

    iput-object p3, p0, Lcom/adobe/premiereclip/project/Project;->lastModifiedDate:Ljava/util/Date;

    .line 84
    iput-object p4, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 85
    iput v0, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    .line 86
    iput-object v1, p0, Lcom/adobe/premiereclip/project/Project;->posterPath:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lcom/adobe/premiereclip/project/Project;->normalPosterPath:Ljava/lang/String;

    .line 88
    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/Project;->pendingSendPPro:Z

    .line 89
    return-void
.end method

.method private static convertSeconds2AlignedUs(F)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x3e8

    .line 495
    const v0, 0x46ea6000    # 30000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    .line 497
    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    .line 498
    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0xf4240

    const-wide/16 v6, 0x1

    invoke-static/range {v0 .. v7}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createClip(Lcom/adobe/premiereclip/media/ClipAsset;Ljava/util/ArrayList;)Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/media/ClipAsset;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)",
            "Lcom/adobe/premiereclip/project/sequence/Clip;"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 290
    const/4 v1, 0x0

    .line 292
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 293
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    .line 298
    :cond_1
    if-nez v1, :cond_2

    .line 299
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    iget-object v1, p0, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/media/ClipAsset;->fileUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/media/ClipAsset;->originalPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/premiereclip/media/ClipAsset;->originalAssetDate:Ljava/lang/String;

    iget-object v6, p0, Lcom/adobe/premiereclip/media/ClipAsset;->assetType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget v1, p0, Lcom/adobe/premiereclip/media/ClipAsset;->width:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 301
    iget v1, p0, Lcom/adobe/premiereclip/media/ClipAsset;->height:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 302
    iget-object v1, p0, Lcom/adobe/premiereclip/media/ClipAsset;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 303
    invoke-virtual {v0, v8, v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    move-object v1, v0

    .line 305
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    move-wide v2, v8

    move-wide v4, v8

    .line 306
    invoke-static/range {v1 .. v6}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAssets(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/ClipAsset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/project/Project;->addAssetsAtIndex(Ljava/util/ArrayList;I)V

    .line 287
    return-void
.end method

.method public addAssetsAtIndex(Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/media/ClipAsset;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 310
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 311
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 312
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/media/ClipAsset;

    .line 313
    iget-object v1, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/project/Project;->createClip(Lcom/adobe/premiereclip/media/ClipAsset;Ljava/util/ArrayList;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 315
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getHeight()I

    move-result v2

    .line 316
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getWidth()I

    move-result v3

    const-wide/16 v4, 0x0

    .line 318
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v6

    .line 315
    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/metrics/Metrics;->didAddVideoClipWithHeight(IIDF)V

    .line 320
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, v9, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClipsAtIndex(Ljava/util/ArrayList;I)V

    .line 331
    iget v0, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    .line 333
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :goto_1
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    .line 339
    add-int/lit8 v0, p2, -0x1

    if-ltz v0, :cond_3

    .line 340
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    move-object v1, v0

    .line 342
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 343
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 345
    :goto_3
    invoke-static {v1, v9, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->addClips(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    goto :goto_1

    :cond_2
    move-object v0, v8

    goto :goto_3

    :cond_3
    move-object v1, v8

    goto :goto_2
.end method

.method public addClipsAtIndex(Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 371
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v9

    .line 372
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 373
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 375
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getHeight()I

    move-result v2

    .line 376
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getWidth()I

    move-result v3

    const-wide/16 v4, 0x0

    .line 378
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v6

    .line 375
    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/metrics/Metrics;->didAddVideoClipWithHeight(IIDF)V

    .line 380
    iget-object v1, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    add-int v2, p2, v7

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClipAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 381
    iget v0, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    .line 372
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :goto_1
    return-void

    .line 389
    :cond_1
    add-int/lit8 v0, p2, -0x1

    if-ltz v0, :cond_3

    .line 390
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    move-object v1, v0

    .line 392
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 393
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 395
    :goto_3
    invoke-static {v1, p1, v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->addClips(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/util/ArrayList;Lcom/adobe/premiereclip/project/sequence/Clip;)V

    goto :goto_1

    :cond_2
    move-object v0, v8

    goto :goto_3

    :cond_3
    move-object v1, v8

    goto :goto_2
.end method

.method public composeAutomaticTimeline(FLcom/adobe/premiereclip/project/sequence/SyncData;Landroid/os/Handler;)V
    .locals 23

    .prologue
    .line 503
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/premiereclip/project/sequence/SyncData;->getBPMScaleFactor()F

    move-result v6

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v7

    .line 505
    invoke-virtual {v7}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v8

    .line 506
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 507
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 509
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 511
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    .line 513
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 515
    instance-of v3, v2, Lcom/adobe/premiereclip/project/sequence/VideoClip;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 517
    check-cast v3, Lcom/adobe/premiereclip/project/sequence/VideoClip;

    .line 519
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v2

    .line 522
    if-nez v2, :cond_2

    .line 524
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    .line 526
    move/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->getVideoSegmentStartTimesWithPace(FF)[F

    move-result-object v11

    .line 528
    if-eqz v11, :cond_1

    .line 532
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 534
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    array-length v2, v11

    if-ge v5, v2, :cond_0

    .line 536
    aget v2, v11, v5

    invoke-static {v2}, Lcom/adobe/premiereclip/project/Project;->convertSeconds2AlignedUs(F)J

    move-result-wide v16

    .line 537
    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->copyClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/VideoClip;

    .line 538
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->setStartTimeUs(J)V

    .line 539
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->setEndTimeUs(J)V

    .line 540
    invoke-virtual {v2, v10}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->setClipGroupId(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 543
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/adobe/premiereclip/project/Project;->addClipsAtIndex(Ljava/util/ArrayList;I)V

    .line 544
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/Project;->removeAsset(I)V

    .line 545
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_1
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 553
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 559
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 562
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 564
    invoke-virtual {v7, v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getIndexForGroupId(Ljava/lang/String;)I

    move-result v9

    .line 566
    invoke-virtual {v7, v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClipGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 568
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/project/sequence/VideoClip;

    .line 571
    move/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->getVideoSegmentStartTimesWithPace(FF)[F

    move-result-object v11

    .line 573
    if-eqz v11, :cond_4

    .line 575
    array-length v4, v11

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v4, v5

    .line 577
    if-gez v4, :cond_7

    .line 579
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    array-length v2, v11

    if-ge v3, v2, :cond_6

    .line 581
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 582
    aget v4, v11, v3

    invoke-static {v4}, Lcom/adobe/premiereclip/project/Project;->convertSeconds2AlignedUs(F)J

    move-result-wide v4

    .line 584
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v12

    cmp-long v9, v12, v4

    if-eqz v9, :cond_5

    .line 585
    invoke-virtual {v2, v4, v5}, Lcom/adobe/premiereclip/project/sequence/Clip;->setStartTimeUs(J)V

    .line 586
    invoke-virtual {v2, v4, v5}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    .line 579
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 591
    :cond_6
    array-length v2, v11

    move v3, v2

    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 593
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 594
    invoke-virtual {v7, v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getIndexForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/Project;->removeAsset(I)V

    .line 595
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 598
    :cond_7
    if-lez v4, :cond_4

    .line 600
    const/4 v4, 0x0

    move v5, v4

    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_9

    .line 602
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 603
    aget v12, v11, v5

    invoke-static {v12}, Lcom/adobe/premiereclip/project/Project;->convertSeconds2AlignedUs(F)J

    move-result-wide v12

    .line 605
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v16

    cmp-long v14, v16, v12

    if-eqz v14, :cond_8

    .line 606
    invoke-virtual {v4, v12, v13}, Lcom/adobe/premiereclip/project/sequence/Clip;->setStartTimeUs(J)V

    .line 607
    invoke-virtual {v4, v12, v13}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    .line 600
    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    .line 611
    :cond_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 613
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v4

    :goto_7
    array-length v4, v11

    if-ge v5, v4, :cond_a

    .line 615
    aget v4, v11, v5

    invoke-static {v4}, Lcom/adobe/premiereclip/project/Project;->convertSeconds2AlignedUs(F)J

    move-result-wide v16

    .line 616
    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->copyClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/project/sequence/VideoClip;

    .line 617
    const/high16 v13, 0x3e800000    # 0.25f

    invoke-virtual {v4, v13}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->setVolume(F)V

    .line 618
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->setStartTimeUs(J)V

    .line 619
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->setEndTimeUs(J)V

    .line 620
    invoke-virtual {v4, v2}, Lcom/adobe/premiereclip/project/sequence/VideoClip;->setClipGroupId(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_7

    .line 623
    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/adobe/premiereclip/project/Project;->addClipsAtIndex(Ljava/util/ArrayList;I)V

    goto/16 :goto_3

    .line 635
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v19

    .line 637
    const-wide/16 v6, 0x0

    .line 638
    const/4 v4, 0x0

    .line 639
    const-wide/16 v12, 0x0

    .line 641
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/sequence/SyncData;->getTransition(I)F

    move-result v20

    .line 643
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 644
    const/4 v2, 0x0

    move v14, v2

    move-wide/from16 v16, v6

    :goto_8
    move/from16 v0, v21

    if-ge v14, v0, :cond_13

    .line 646
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 647
    add-int/lit8 v2, v21, -0x1

    if-ge v14, v2, :cond_d

    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 648
    :goto_9
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v22

    .line 649
    sget-object v3, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-object/from16 v0, v22

    if-eq v0, v3, :cond_c

    sget-object v3, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-object/from16 v0, v22

    if-ne v0, v3, :cond_e

    :cond_c
    const/4 v3, 0x1

    :goto_a
    move v11, v4

    .line 654
    :goto_b
    cmp-long v4, v12, v16

    if-gtz v4, :cond_f

    .line 655
    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/project/sequence/SyncData;->getTransition(I)F

    move-result v5

    sub-float v5, v5, v20

    const v6, 0x46ea6000    # 30000.0f

    mul-float/2addr v5, v6

    float-to-long v6, v5

    .line 657
    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long v12, v6, v8

    move v11, v4

    goto :goto_b

    .line 647
    :cond_d
    const/4 v2, 0x0

    goto :goto_9

    .line 649
    :cond_e
    const/4 v3, 0x0

    goto :goto_a

    .line 662
    :cond_f
    if-nez v3, :cond_16

    .line 663
    add-int/lit8 v3, v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/SyncData;->getTransition(I)F

    move-result v3

    sub-float v3, v3, v20

    const v4, 0x46ea6000    # 30000.0f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    .line 665
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v4

    .line 667
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v4

    .line 669
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 670
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    .line 672
    :goto_c
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 673
    const-wide/16 v4, 0x7530

    mul-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 677
    sub-long v4, v6, v16

    cmp-long v4, v2, v4

    if-lez v4, :cond_12

    move-wide v2, v6

    .line 693
    :goto_d
    sub-long v2, v2, v16

    .line 694
    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_10

    .line 695
    const-wide/16 v2, 0x1388

    .line 700
    :cond_10
    const-wide/16 v4, 0x7530

    const-wide/32 v6, 0xf4240

    const-wide/16 v8, 0x1

    invoke-static/range {v2 .. v9}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v4

    .line 702
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 703
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUs()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-eqz v8, :cond_11

    .line 704
    invoke-virtual {v10, v6, v7}, Lcom/adobe/premiereclip/project/sequence/Clip;->setEndTimeUs(J)V

    .line 705
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_11
    long-to-float v4, v4

    const v5, 0x49742400    # 1000000.0f

    div-float/2addr v4, v5

    .line 709
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v6

    long-to-float v5, v6

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v5, v6

    .line 710
    const-string/jumbo v6, "Composer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Clip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , start: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " , duration: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", transition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    add-long v4, v16, v2

    .line 644
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move-wide/from16 v16, v4

    move v4, v11

    goto/16 :goto_8

    .line 682
    :cond_12
    sub-long v4, v12, v16

    cmp-long v4, v2, v4

    if-gez v4, :cond_16

    .line 686
    add-long v2, v2, v16

    .line 688
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto/16 :goto_d

    .line 715
    :cond_13
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_15

    .line 719
    :cond_14
    new-instance v2, Lcom/adobe/premiereclip/project/Project$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v15, v1}, Lcom/adobe/premiereclip/project/Project$1;-><init>(Lcom/adobe/premiereclip/project/Project;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 728
    :cond_15
    return-void

    :cond_16
    move-wide v2, v12

    goto/16 :goto_d

    :cond_17
    move-wide v2, v4

    goto/16 :goto_c
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->creationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDurationUs()D
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public getEditMode()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/adobe/premiereclip/project/Project;->editMode:I

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->lastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getNormalPosterPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->normalPosterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterClip()Lcom/adobe/premiereclip/project/sequence/Clip;
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getPosterClipIndex()I

    move-result v0

    .line 157
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 158
    const/4 v0, 0x0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    goto :goto_0
.end method

.method public getPosterClipIndex()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    const/4 v0, -0x1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 140
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 141
    :goto_1
    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v5

    sget-object v6, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v5, v6, :cond_2

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v3

    sget-object v5, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v3, v5, :cond_0

    .line 142
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 143
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 144
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    move-object v3, v0

    move v0, v2

    .line 145
    goto :goto_1

    :cond_3
    move v0, v1

    .line 147
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getPosterHashValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->posterHashValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPosterPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->posterPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectExportName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 96
    const/16 v1, 0x9

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "/"

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string/jumbo v3, "\""

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ":"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "?"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string/jumbo v3, "*"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string/jumbo v3, "\\"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string/jumbo v3, "|"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string/jumbo v3, "<"

    aput-object v3, v2, v1

    const/16 v1, 0x8

    const-string/jumbo v3, ">"

    aput-object v3, v2, v1

    .line 97
    iget-object v1, p0, Lcom/adobe/premiereclip/project/Project;->projectName:Ljava/lang/String;

    .line 98
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 99
    const-string/jumbo v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-object v1
.end method

.method public getProjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getPosterClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->NONE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    .line 176
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getPosterClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    goto :goto_0
.end method

.method public isPendingSendPPro()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/Project;->pendingSendPPro:Z

    return v0
.end method

.method public moveAsset(II)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->moveClip(II)V

    .line 413
    return-void
.end method

.method public moveGroupAsset(II)V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->moveGroup(II)V

    .line 417
    return-void
.end method

.method public muteClip(I)V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 478
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->muteClip()V

    .line 479
    return-void
.end method

.method public posterPropertiesEqual(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->posterAssetPath:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 222
    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 222
    goto :goto_0

    .line 223
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 224
    goto :goto_0

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->normalPosterPath:Ljava/lang/String;

    if-nez v2, :cond_4

    move v0, v1

    .line 229
    goto :goto_0

    .line 231
    :cond_4
    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->posterAssetPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 234
    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->posterLook:Lcom/adobe/premiereclip/looks/BaseLook;

    iget-object v3, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v3

    if-ne v2, v3, :cond_7

    move v2, v0

    .line 237
    :goto_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getPosterClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v4

    .line 238
    if-eqz v4, :cond_9

    .line 239
    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v3

    .line 240
    if-eqz v2, :cond_8

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v2

    sget-object v5, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v2, v5, :cond_5

    iget-wide v6, p0, Lcom/adobe/premiereclip/project/Project;->posterInTime:J

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v4

    cmp-long v2, v6, v4

    if-nez v2, :cond_8

    :cond_5
    move v2, v0

    :goto_2
    move-object v8, v3

    move v3, v2

    move-object v2, v8

    .line 245
    :goto_3
    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/adobe/premiereclip/project/Project;->posterEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v3

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/adobe/premiereclip/project/Project;->posterEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    .line 246
    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v3

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/adobe/premiereclip/project/Project;->posterEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    .line 247
    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v3

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v2

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v2, v1

    .line 234
    goto :goto_1

    :cond_8
    move v2, v1

    .line 240
    goto :goto_2

    .line 242
    :cond_9
    const-string/jumbo v3, "Project"

    const-string/jumbo v4, "We have got in a pickle"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v3, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-direct {v3}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;-><init>()V

    move-object v8, v3

    move v3, v2

    move-object v2, v8

    goto :goto_3
.end method

.method public removeAsset(I)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->removeClip(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 400
    iget v0, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    .line 401
    return-void
.end method

.method public removeGroupAsset(I)V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getFirstClipIndexInGroup(I)I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLastClipIndexInGroup(I)I

    move-result v1

    .line 406
    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->removeClips(II)V

    .line 407
    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v2, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->removeGroup(I)V

    .line 408
    iget v2, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, v2, v0

    iput v0, p0, Lcom/adobe/premiereclip/project/Project;->assetCount:I

    .line 409
    return-void
.end method

.method public replaceAssetAtIndex(ILcom/adobe/premiereclip/media/ClipAsset;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 349
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 352
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v7

    .line 354
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AssetReference;

    iget-object v1, p2, Lcom/adobe/premiereclip/media/ClipAsset;->clipAssetID:Ljava/lang/String;

    iget-object v2, p2, Lcom/adobe/premiereclip/media/ClipAsset;->fileUri:Landroid/net/Uri;

    iget-object v3, p2, Lcom/adobe/premiereclip/media/ClipAsset;->filePath:Ljava/lang/String;

    iget-object v4, p2, Lcom/adobe/premiereclip/media/ClipAsset;->originalPath:Ljava/lang/String;

    iget-object v5, p2, Lcom/adobe/premiereclip/media/ClipAsset;->originalAssetDate:Ljava/lang/String;

    iget-object v6, p2, Lcom/adobe/premiereclip/media/ClipAsset;->assetType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget v1, p2, Lcom/adobe/premiereclip/media/ClipAsset;->width:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setWidth(I)V

    .line 357
    iget v1, p2, Lcom/adobe/premiereclip/media/ClipAsset;->height:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setHeight(I)V

    .line 358
    iget-object v1, p2, Lcom/adobe/premiereclip/media/ClipAsset;->rotation:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setRotation(Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 359
    invoke-virtual {v0, v8, v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->setDurationUs(J)V

    move-wide v1, v8

    move-wide v3, v8

    move-object v5, v7

    .line 361
    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/project/sequence/Sequence;->createClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;JJLjava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1, v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->addClipAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 363
    iget-object v1, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->removeClip(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 364
    invoke-static {v7}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->resetKey(Ljava/lang/String;)V

    .line 365
    invoke-static {v7}, Lcom/adobe/premiereclip/util/BitmapCache;->markBitmapDirty(Ljava/lang/String;)V

    .line 367
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXWriter;->updateClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 368
    return-void
.end method

.method public setAssetAvailability(IZ)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAvailability(IZ)V

    .line 492
    return-void
.end method

.method public setAssetDuration(IJ)V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setAssetDurationUs(IJ)V

    .line 488
    return-void
.end method

.method public setAudioFadeInOfClip(IZ)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 458
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAudioFadeInApplied(Z)V

    .line 459
    return-void
.end method

.method public setAudioFadeOutOfClip(IZ)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 463
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setAudioFadeOutApplied(Z)V

    .line 464
    return-void
.end method

.method public setAudioVolumeOfClip(IF)V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 473
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setVolume(F)V

    .line 474
    return-void
.end method

.method public setEditMode(I)V
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Lcom/adobe/premiereclip/project/Project;->editMode:I

    .line 213
    return-void
.end method

.method public setEndTimeOfClipUs(IJ)V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setEndTimeOfClipUs(IJ)V

    .line 434
    return-void
.end method

.method public setExposureOnClip(IF)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 438
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setSeekExposure(F)V

    .line 439
    return-void
.end method

.method public setGlobalTransition(Z)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setGlobalTransition(Z)V

    .line 421
    return-void
.end method

.method public setHighlightsOnClip(IF)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 443
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setHighlights(F)V

    .line 444
    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/adobe/premiereclip/project/Project;->lastModifiedDate:Ljava/util/Date;

    .line 122
    return-void
.end method

.method public setNormalPosterPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/adobe/premiereclip/project/Project;->normalPosterPath:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setPendingSendPPro(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/Project;->pendingSendPPro:Z

    .line 130
    return-void
.end method

.method public setPosterHashValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/adobe/premiereclip/project/Project;->posterHashValue:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setPosterPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/adobe/premiereclip/project/Project;->posterPath:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setPosterProperties()V
    .locals 4

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/Project;->posterAssetPath:Ljava/lang/String;

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/project/Project;->posterInTime:J

    .line 257
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/Project;->posterLook:Lcom/adobe/premiereclip/looks/BaseLook;

    .line 259
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-direct {v0}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/Project;->posterEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    .line 260
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getPosterClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v1

    .line 263
    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->posterEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getExposure()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setExposure(F)V

    .line 264
    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->posterEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getHighlights()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setHighlights(F)V

    .line 265
    iget-object v2, p0, Lcom/adobe/premiereclip/project/Project;->posterEffects:Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->getShadows()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;->setShadows(F)V

    .line 267
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adobe/premiereclip/project/Project;->posterInTime:J

    .line 269
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/project/Project;->posterAssetPath:Ljava/lang/String;

    .line 271
    :cond_0
    return-void
.end method

.method public setProjectName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/adobe/premiereclip/project/Project;->projectName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setShadowsOnClip(IF)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 448
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setShadows(F)V

    .line 449
    return-void
.end method

.method public setSmartVolumeOfClip(IZ)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 468
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setSmartVolumeApplied(Z)V

    .line 469
    return-void
.end method

.method public setSpeedOfClip(IF)V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 453
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setSpeed(F)V

    .line 454
    return-void
.end method

.method public setStartTimeOfClipUs(IJ)V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->setStartTimeOfClipUs(IJ)V

    .line 430
    return-void
.end method

.method public shouldApplyLookOnPoster()Z
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getPosterClip()Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v1, v2, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->STORY_CARD:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unMuteClip(I)V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/adobe/premiereclip/project/Project;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 483
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->unMuteClip()V

    .line 484
    return-void
.end method

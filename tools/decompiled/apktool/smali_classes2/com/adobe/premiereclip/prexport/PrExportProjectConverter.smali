.class public Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;
.super Ljava/lang/Object;
.source "PrExportProjectConverter.java"


# static fields
.field private static final AUDIO_SAMPLE_RATE:I = 0xac44

.field private static final FADE_FULL_DURATION:I = 0x1e

.field private static final FADE_SHORT_DURATION:I = 0x4

.field private static final PPRO_EXPORT_MEDIA_FOLDER_NAME:Ljava/lang/String; = "media"

.field private static final VIDEO_FRAME_RATE:I = 0x7530

.field private static final VIDEO_FRAME_SAMPLE_SIZE:I = 0x3e8


# instance fields
.field private mMasterClips:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->mMasterClips:Ljava/util/HashMap;

    .line 86
    return-void
.end method

.method private addMissingVideoTransitions(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;J)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 576
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 577
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 578
    invoke-virtual {p3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->getDuration()J

    move-result-wide v4

    .line 579
    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 580
    sub-long/2addr v0, v4

    rem-long/2addr v0, p4

    .line 586
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 587
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    :cond_1
    invoke-virtual {p3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->getInPoint()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 591
    :cond_2
    new-instance v0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$1;-><init>(Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 597
    return-object v2
.end method

.method private calculateBeatMarkersForMediaRef(Lcom/adobe/premiereclip/project/sequence/AudioTrack;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/project/sequence/AudioTrack;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x3e8

    .line 533
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 534
    new-instance v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/adobe/premiereclip/editor/SnapToBeatController;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioTrack;)V

    .line 535
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->getAllSyncPoints()Ljava/util/ArrayList;

    move-result-object v10

    .line 536
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 537
    const-string/jumbo v0, "PPro"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sync pts size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    .line 541
    iget-wide v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    .line 542
    iget v1, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    .line 543
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    sub-long v6, v2, v12

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    .line 545
    new-instance v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    sub-long/2addr v2, v12

    invoke-direct {v0, v2, v3, v1}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 550
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 551
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    .line 552
    iget v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 558
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 561
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 562
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertFrameValueForVideo(J)J

    move-result-wide v2

    .line 563
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    .line 564
    cmpl-float v0, v0, v11

    if-ltz v0, :cond_2

    .line 565
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;

    const-wide/16 v4, -0x1

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-direct/range {v1 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 571
    :cond_3
    return-object v9
.end method

.method private clipDurationToDCXDuration(JJ)J
    .locals 5

    .prologue
    .line 302
    mul-long v0, p1, p3

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private convertAndAddCrossDissolveForVideoTrack(Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 444
    invoke-virtual {p4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFadeDurationForClipDuration(J)J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFadeDurationForClipDuration(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 445
    const-wide/16 v4, 0x4

    cmp-long v0, v1, v4

    if-nez v0, :cond_1

    .line 446
    invoke-virtual {p1, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->adjustCurrentTime(J)V

    .line 447
    invoke-virtual {p2, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->adjustCurrentTime(J)V

    .line 448
    if-eqz p3, :cond_1

    .line 449
    invoke-virtual {p3, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustOutPoint(J)V

    .line 450
    invoke-virtual {p3, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustDuration(J)V

    .line 451
    invoke-virtual {p3, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustTrackDuration(J)V

    .line 452
    invoke-virtual {p3, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustEnd(J)V

    .line 453
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->numLinkedClips()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 454
    invoke-virtual {p3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getLinkedClipAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    move-result-object v3

    .line 455
    if-eqz v3, :cond_0

    .line 456
    invoke-virtual {v3, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustOutPoint(J)V

    .line 457
    invoke-virtual {v3, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustDuration(J)V

    .line 458
    invoke-virtual {v3, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustTrackDuration(J)V

    .line 459
    invoke-virtual {v3, v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustEnd(J)V

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->center:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-wide/16 v4, 0x2

    div-long v4, v1, v4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 465
    return-void
.end method

.method private convertAudioClipForClip(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;
    .locals 8

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getNumAudioChannels()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 339
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertDurationForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J

    move-result-wide v2

    .line 340
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/EmptyAudioTrackClip;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/EmptyAudioTrackClip;-><init>(J)V

    .line 360
    :cond_0
    :goto_0
    return-object v1

    .line 344
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getNameForMediaReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getMasterClipForName(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    move-result-object v3

    .line 346
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertDurationForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J

    move-result-wide v6

    .line 347
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertInPointForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J

    move-result-wide v4

    .line 349
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;

    invoke-direct/range {v1 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 351
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertSpeedFilterForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/SpeedFilter;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_2

    .line 353
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->addFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;)V

    .line 355
    :cond_2
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertAudioLevelsFilterForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->addFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;)V

    goto :goto_0
.end method

.method private convertAudioLevelsFilterForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;
    .locals 3

    .prologue
    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;-><init>()V

    .line 262
    const-string/jumbo v1, "Level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;->setParamValue(Ljava/lang/String;F)V

    .line 268
    :goto_0
    return-object v0

    .line 265
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;-><init>()V

    .line 266
    const-string/jumbo v1, "Level"

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/AudioLevelsFilter;->setParamValue(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method private convertAudioTrack(Lcom/adobe/premiereclip/project/sequence/AudioTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;JLjava/lang/String;ZLjava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/project/sequence/AudioTrack;",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    .line 603
    const/4 v8, 0x0

    .line 604
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 605
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeInApplied()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;

    const-wide/16 v3, 0x1e

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->start:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 609
    :cond_1
    const-wide/16 v2, 0x0

    .line 611
    const-string/jumbo v4, "PrExportConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "audio clip duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v14, v2

    .line 613
    :goto_1
    cmp-long v2, v14, p3

    if-gez v2, :cond_6

    .line 614
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v10, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertAudioClipForClip(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;

    move-result-object v17

    .line 615
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_2

    .line 616
    const-wide/16 v2, -0x1

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->getInPoint()J

    move-result-wide v4

    mul-long/2addr v2, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->adjustInPoint(J)V

    .line 618
    :cond_2
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getTimeScale()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->clipDurationToDCXDuration(JJ)J

    move-result-wide v2

    .line 619
    const-string/jumbo v4, "audio"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertFrameValueForMediaReference(Ljava/lang/String;J)J

    move-result-wide v6

    .line 620
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->getInPoint()J

    move-result-wide v2

    sub-long v2, v6, v2

    .line 622
    const-string/jumbo v4, "PrExportConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "audio clip asset original duration : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "  converted duration : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    add-long v4, v14, v2

    cmp-long v4, v4, p3

    if-lez v4, :cond_9

    .line 624
    sub-long v2, p3, v14

    move-wide v12, v2

    .line 626
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->getDuration()J

    move-result-wide v2

    .line 627
    cmp-long v4, v12, v2

    if-eqz v4, :cond_3

    .line 628
    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->setDuration(J)V

    .line 629
    sub-long v2, v12, v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->adjustOutPoint(J)V

    .line 632
    :cond_3
    if-eqz p6, :cond_4

    .line 633
    if-nez v8, :cond_8

    .line 634
    invoke-direct/range {p0 .. p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->calculateBeatMarkersForMediaRef(Lcom/adobe/premiereclip/project/sequence/AudioTrack;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object/from16 v5, v17

    .line 635
    invoke-direct/range {v2 .. v7}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->addMissingVideoTransitions(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;J)Ljava/util/ArrayList;

    move-result-object v2

    move-object v11, v2

    .line 637
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 638
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    invoke-direct/range {v3 .. v9}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;-><init>(JJLjava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->addMarker(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;)V

    goto :goto_4

    :cond_4
    move-object v11, v8

    .line 643
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 644
    add-long v2, v14, v12

    move-wide v14, v2

    move-object v8, v11

    .line 645
    goto/16 :goto_1

    .line 647
    :cond_6
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeOutApplied()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;

    const-wide/16 v3, 0x1e

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->end:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-wide/16 v6, 0x1e

    invoke-direct/range {v2 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    goto/16 :goto_0

    .line 651
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->calculateTimings()V

    .line 652
    return-void

    :cond_8
    move-object v11, v8

    goto :goto_3

    :cond_9
    move-wide v12, v2

    goto :goto_2
.end method

.method private convertBackgroundTrackToMasterClip(Lcom/adobe/premiereclip/project/Project;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;
    .locals 10

    .prologue
    .line 240
    const-string/jumbo v0, "PrExportConverter"

    const-string/jumbo v1, "adding background audio to masterclips"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getNameForBackgroundTrack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFileNameForBackgroundTrack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 243
    const/4 v5, 0x1

    .line 244
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationUs()J

    move-result-wide v0

    const-wide/16 v6, 0x7530

    invoke-direct {p0, v0, v1, v6, v7}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->clipDurationToDCXDuration(JJ)J

    move-result-wide v6

    .line 245
    const-wide/16 v8, 0x0

    .line 246
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;-><init>(Ljava/lang/String;Ljava/lang/String;ZIJJ)V

    return-object v1
.end method

.method private convertClipForBumper(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;
    .locals 11

    .prologue
    const-wide/16 v8, 0x0

    .line 804
    .line 805
    invoke-static {p2}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 806
    const-string/jumbo v1, "Default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 810
    :goto_0
    if-eqz p1, :cond_1

    .line 812
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v0

    .line 813
    const-wide/32 v2, 0xf4240

    .line 816
    const-wide/16 v4, 0x7530

    .line 817
    const-wide/16 v6, 0x3e8

    .line 818
    invoke-static/range {v0 .. v7}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v0

    .line 821
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertFrameValueForVideo(J)J

    move-result-wide v6

    .line 824
    :goto_1
    const/4 v5, 0x0

    .line 827
    if-eqz p1, :cond_0

    .line 828
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getNumAudioChannels()I

    move-result v5

    .line 830
    :cond_0
    invoke-direct {p0, v10}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->filePathForMediaWithFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 831
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    const/4 v4, 0x1

    move-object v2, v10

    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;-><init>(Ljava/lang/String;Ljava/lang/String;ZIJJ)V

    .line 832
    return-object v1

    :cond_1
    move-wide v6, v8

    goto :goto_1

    :cond_2
    move-object v10, v0

    goto :goto_0
.end method

.method private convertClipToTitleClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;
    .locals 5

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertDurationForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J

    move-result-wide v0

    .line 226
    check-cast p1, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->getTitleText()Ljava/lang/String;

    move-result-object v2

    .line 227
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;

    const-string/jumbo v4, " "

    invoke-static {v2, v4}, Lcom/adobe/premiereclip/util/Utilities;->stringByReplacingNonPlaneZeroCharacters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;-><init>(Ljava/lang/String;J)V

    return-object v3
.end method

.method private convertClips(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 887
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 888
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 889
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v2

    sget-object v3, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 893
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getNameForMediaReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 894
    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->mMasterClips:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    const-string/jumbo v2, "ProjConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got clip name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertMediaReferenceToMasterClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->storeMasterClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;Ljava/lang/String;)V

    .line 900
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 903
    :cond_1
    return-void
.end method

.method private convertDurationForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J
    .locals 8

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getTimeScale()J

    move-result-wide v0

    .line 307
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->clipDurationToDCXDuration(JJ)J

    move-result-wide v2

    .line 309
    const-string/jumbo v4, "PrExportConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clip name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "   clip duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "   clip timescale : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertFrameValueForMediaReference(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private convertFrameValueForAudio(J)J
    .locals 3

    .prologue
    .line 204
    long-to-float v0, p1

    const v1, 0x472c4400    # 44100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private convertFrameValueForMediaReference(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 208
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertFrameValueForAudio(J)J

    move-result-wide v0

    .line 212
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertFrameValueForVideo(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private convertFrameValueForVideo(J)J
    .locals 3

    .prologue
    .line 200
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method private convertInPointForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J
    .locals 4

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getTimeScale()J

    move-result-wide v0

    .line 316
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->clipDurationToDCXDuration(JJ)J

    move-result-wide v0

    .line 317
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertFrameValueForMediaReference(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private convertLooksFilterForSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 273
    .line 275
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v2

    .line 279
    if-eqz v2, :cond_0

    .line 280
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;

    invoke-direct {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;-><init>(Ljava/lang/String;)V

    .line 281
    const-string/jumbo v2, "path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFileNameForLook(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 286
    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private convertMediaReferenceToMasterClip(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;
    .locals 10

    .prologue
    .line 231
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getNameForMediaReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFileNameForMediaReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getNumAudioChannels()I

    move-result v5

    .line 234
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v6

    invoke-direct {p0, v0, v6, v7}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertFrameValueForMediaReference(Ljava/lang/String;J)J

    move-result-wide v6

    .line 235
    const-wide/16 v8, 0x0

    .line 236
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getMediaType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "audio"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;-><init>(Ljava/lang/String;Ljava/lang/String;ZIJJ)V

    return-object v1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private convertMotionFilterForBumperClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;
    .locals 4

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 788
    if-eqz p1, :cond_0

    .line 791
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/adobe/common/Size;->makeSize(II)Lcom/adobe/common/Size;

    move-result-object v1

    .line 792
    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-static {v2, v3}, Lcom/adobe/common/Size;->makeSize(II)Lcom/adobe/common/Size;

    move-result-object v2

    .line 793
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->determineScaleForFrame(Lcom/adobe/common/Size;Lcom/adobe/common/Size;)F

    move-result v1

    .line 794
    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 796
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;-><init>()V

    .line 797
    const-string/jumbo v2, "Scale"

    invoke-virtual {v0, v2, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;->setParamValue(Ljava/lang/String;F)V

    .line 800
    :cond_0
    return-object v0
.end method

.method private convertMotionFilterForStillImage(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;
    .locals 4

    .prologue
    .line 428
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;

    invoke-direct {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;-><init>()V

    .line 430
    const/4 v0, 0x0

    .line 431
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v2

    sget-object v3, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    invoke-direct {p0, v1, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertRotationParamForMotionFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    .line 434
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertScaleParamForMotionFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v2

    .line 436
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 437
    const/4 v0, 0x0

    .line 440
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private convertPointXToPercentXForFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 2

    .prologue
    .line 876
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private convertPointYToPercentYForFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 2

    .prologue
    .line 883
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private convertRotationParamForMotionFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;Lcom/adobe/premiereclip/project/sequence/Clip;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 414
    :try_start_0
    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getRotation()Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->asInt()I

    move-result v1

    .line 415
    if-eqz v1, :cond_0

    .line 416
    rsub-int v1, v1, 0x168

    .line 417
    const-string/jumbo v2, "Rotation"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v0, 0x1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 421
    :catch_0
    move-exception v1

    .line 422
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private convertScaleParamForMotionFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;Lcom/adobe/premiereclip/project/sequence/Clip;)Z
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    .line 364
    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getOriginalDimensions()[Ljava/lang/Object;

    move-result-object v3

    .line 365
    aget-object v0, v3, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 366
    aget-object v0, v3, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 368
    aget-object v0, v3, v7

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    .line 370
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    .line 371
    const-string/jumbo v7, "Scale"

    .line 376
    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 378
    aget v3, v0, v1

    int-to-float v3, v3

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 379
    aget v0, v0, v2

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    .line 380
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v4

    move v3, v0

    .line 382
    :goto_0
    cmpl-float v0, v3, v4

    if-eqz v0, :cond_1

    .line 384
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 388
    :goto_1
    invoke-virtual {p2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getScalingOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertDurationForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J

    move-result-wide v4

    .line 391
    const v0, 0x3e19999a    # 0.15f

    const-wide/16 v8, 0x1e

    div-long v8, v4, v8

    long-to-float v2, v8

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v2, v6

    mul-float/2addr v0, v2

    .line 392
    mul-float v2, v3, v0

    add-float/2addr v2, v3

    .line 393
    const-string/jumbo v6, "PRExportConvert"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " end: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " inc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v3, v8, v9}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;->setParamValue(Ljava/lang/String;FJ)V

    .line 399
    invoke-virtual {p1, v7, v2, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;->setParamValue(Ljava/lang/String;FJ)V

    .line 403
    :goto_2
    return v1

    :cond_0
    move v1, v0

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0

    .line 370
    :array_0
    .array-data 4
        0x780
        0x438
    .end array-data
.end method

.method private convertSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;Ljava/lang/String;)V
    .locals 22

    .prologue
    .line 655
    const-string/jumbo v4, "PrExportConverter"

    const-string/jumbo v5, "starting sequence conversion to xml"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v5

    .line 658
    new-instance v6, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;

    invoke-direct {v6}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;-><init>()V

    .line 659
    new-instance v7, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;

    invoke-virtual/range {p2 .. p2}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->getNumChannels()I

    move-result v4

    invoke-direct {v7, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;-><init>(I)V

    .line 661
    new-instance v8, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->fadeInApplied()Z

    move-result v4

    .line 662
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->fadeOutApplied()Z

    move-result v9

    .line 663
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->transitionAppliedOnSequence()Z

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v4, v9, v10}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;-><init>(Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;ZZZ)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "Normal"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 665
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertLooksFilterForSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->setLook(Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;)V

    :cond_0
    move-object/from16 v4, p0

    move-object/from16 v9, p3

    .line 668
    invoke-direct/range {v4 .. v9}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertVideoTrack(Lcom/adobe/premiereclip/project/sequence/VideoTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;Ljava/lang/String;)V

    .line 669
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->addVideoTrack(Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;)V

    .line 670
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->addAudioTrack(Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;)V

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v10

    .line 692
    new-instance v11, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;

    invoke-virtual/range {p2 .. p2}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->getNumChannels()I

    move-result v4

    invoke-direct {v11, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;-><init>(I)V

    .line 693
    const-wide/16 v12, 0x0

    .line 694
    invoke-virtual {v6}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->numItems()I

    move-result v4

    if-lez v4, :cond_1

    .line 695
    invoke-virtual {v6}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->numItems()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v6, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->getItemAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->getEnd()J

    move-result-wide v12

    .line 698
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 699
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->isSnapToBeatApplied()Z

    move-result v4

    .line 700
    if-eqz v4, :cond_3

    .line 701
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v6}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->numItems()I

    move-result v4

    if-ge v5, v4, :cond_3

    .line 702
    invoke-virtual {v6, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->getItemAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    move-result-object v4

    .line 703
    instance-of v9, v4, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;

    if-eqz v9, :cond_2

    .line 704
    check-cast v4, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;

    .line 705
    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->getEnd()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 710
    :cond_3
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->isSnapToBeatApplied()Z

    move-result v15

    move-object/from16 v9, p0

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v16}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertAudioTrack(Lcom/adobe/premiereclip/project/sequence/AudioTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;JLjava/lang/String;ZLjava/util/ArrayList;)V

    .line 712
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->addAudioTrack(Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->isOverlayEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertTrackClipForOverlay(Lcom/adobe/premiereclip/project/sequence/Sequence;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;

    move-result-object v4

    .line 718
    if-eqz v4, :cond_6

    .line 720
    new-instance v5, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;

    invoke-direct {v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;-><init>()V

    .line 723
    iget-boolean v9, v8, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->fadeIn:Z

    if-eqz v9, :cond_4

    .line 724
    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->getDuration()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFadeDurationForClipDuration(J)J

    move-result-wide v15

    .line 726
    new-instance v14, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;

    sget-object v17, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->start:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-wide/16 v18, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    invoke-virtual {v5, v14}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 730
    :cond_4
    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->getMasterClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    move-result-object v9

    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->storeMasterClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;Ljava/lang/String;)V

    .line 733
    invoke-virtual {v4, v12, v13}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->setDuration(J)V

    .line 736
    invoke-virtual {v5, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 739
    iget-boolean v8, v8, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->fadeOut:Z

    if-eqz v8, :cond_5

    .line 740
    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->getDuration()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFadeDurationForClipDuration(J)J

    move-result-wide v15

    .line 742
    new-instance v14, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;

    sget-object v17, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->end:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    move-wide/from16 v18, v15

    invoke-direct/range {v14 .. v19}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    invoke-virtual {v5, v14}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 745
    :cond_5
    invoke-virtual {v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->calculateTimings()V

    .line 748
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->addVideoTrack(Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;)V

    .line 753
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->isBumperEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 754
    invoke-static/range {p3 .. p3}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/premiereclip/editor/Editor;->createBumperClip(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v4

    .line 756
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertClipForBumper(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    move-result-object v17

    .line 758
    if-eqz v17, :cond_9

    .line 760
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->storeMasterClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;Ljava/lang/String;)V

    .line 762
    new-instance v15, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getName()Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getDuration()J

    move-result-wide v20

    invoke-direct/range {v15 .. v21}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 764
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertMotionFilterForBumperClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;

    move-result-object v4

    .line 765
    if-eqz v4, :cond_7

    .line 766
    invoke-virtual {v15, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->addFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;)V

    .line 769
    :cond_7
    invoke-virtual {v6, v15}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 771
    new-instance v15, Lcom/adobe/premiereclip/prexport/fcpxml/clip/EmptyAudioTrackClip;

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getDuration()J

    move-result-wide v4

    invoke-direct {v15, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/EmptyAudioTrackClip;-><init>(J)V

    .line 772
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 773
    new-instance v15, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getName()Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getDuration()J

    move-result-wide v20

    invoke-direct/range {v15 .. v21}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 775
    :cond_8
    invoke-virtual {v7, v15}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 778
    invoke-virtual/range {v17 .. v17}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getDuration()J

    move-result-wide v4

    add-long/2addr v12, v4

    .line 782
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->setDuration(J)V

    .line 783
    return-void
.end method

.method private convertSpeedFilterForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/SpeedFilter;
    .locals 6

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v1

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 252
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/SpeedFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/SpeedFilter;-><init>()V

    .line 253
    const-string/jumbo v1, "speed"

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/SpeedFilter;->setParamValue(Ljava/lang/String;F)V

    .line 255
    :cond_0
    return-object v0
.end method

.method private convertTrackClipForOverlay(Lcom/adobe/premiereclip/project/sequence/Sequence;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;
    .locals 11

    .prologue
    .line 836
    .line 837
    invoke-static {p2}, Lcom/adobe/premiereclip/dcx/DCXReader;->getOverlayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->filePathForMediaWithFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x96

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;-><init>(Ljava/lang/String;Ljava/lang/String;ZIJJ)V

    .line 840
    invoke-direct {p0, v1, v2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->storeMasterClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;Ljava/lang/String;)V

    .line 843
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x96

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v3 .. v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 846
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;-><init>()V

    .line 848
    invoke-static {p2}, Lcom/adobe/premiereclip/dcx/DCXReader;->getOverlayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 849
    if-eqz v2, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 851
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 852
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 853
    invoke-static {v2, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 854
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 855
    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 857
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 858
    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x780

    const/16 v10, 0x438

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 861
    invoke-virtual {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getVideoSettings()Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    move-result-object v1

    .line 862
    iput v2, v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->width:I

    .line 863
    iput v4, v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->height:I

    .line 866
    invoke-direct {p0, v5, v6}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertPointXToPercentXForFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v1

    .line 867
    invoke-direct {p0, v5, v6}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertPointYToPercentYForFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v2

    .line 868
    const-string/jumbo v4, "Center"

    invoke-virtual {v0, v4, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;->setParamValue(Ljava/lang/String;FF)V

    .line 871
    :cond_0
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->addFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;)V

    .line 872
    return-object v3
.end method

.method private convertVideoClipForClip(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;
    .locals 8

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertDurationForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J

    move-result-wide v6

    .line 322
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertInPointForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J

    move-result-wide v4

    .line 323
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getNameForMediaReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getMasterClipForName(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    move-result-object v3

    .line 326
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;

    invoke-direct/range {v1 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 328
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertSpeedFilterForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/SpeedFilter;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->addFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;)V

    .line 332
    :cond_0
    return-object v1
.end method

.method private convertVideoTrack(Lcom/adobe/premiereclip/project/sequence/VideoTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 469
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v9

    .line 470
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-boolean v0, p4, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->fadeIn:Z

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 475
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertDurationForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)J

    move-result-wide v0

    .line 476
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFadeDurationForClipDuration(J)J

    move-result-wide v1

    .line 477
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->start:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    invoke-virtual {p2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 480
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 481
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 485
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 486
    invoke-direct {p0, v6}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertClipToTitleClip(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;

    move-result-object v1

    .line 487
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/EmptyAudioTrackClip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->getDuration()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/EmptyAudioTrackClip;-><init>(J)V

    move-object v8, v0

    .line 501
    :goto_2
    invoke-virtual {v1, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->addLinkedClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V

    .line 503
    iget-boolean v0, p4, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->crossDissolve:Z

    if-eqz v0, :cond_2

    if-lez v7, :cond_2

    .line 504
    invoke-virtual {p2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->numItems()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->getItemAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 505
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertAndAddCrossDissolveForVideoTrack(Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V

    .line 508
    :cond_2
    invoke-virtual {p2, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 510
    invoke-virtual {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getAudioFadeDurationForClipDuration(J)J

    move-result-wide v1

    .line 511
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeInApplied()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getNumAudioChannels()I

    move-result v0

    if-lez v0, :cond_3

    .line 512
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->start:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    invoke-virtual {p3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 515
    :cond_3
    invoke-virtual {p3, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 517
    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAudioFadeOutApplied()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getNumAudioChannels()I

    move-result v0

    if-lez v0, :cond_4

    .line 518
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->end:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    move-wide v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    invoke-virtual {p3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 480
    :cond_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    .line 489
    :cond_5
    invoke-direct {p0, v6, p5}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertVideoClipForClip(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;

    move-result-object v1

    .line 490
    iget-object v0, p4, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->look:Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;

    if-eqz v0, :cond_6

    .line 491
    iget-object v0, p4, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->look:Lcom/adobe/premiereclip/prexport/fcpxml/filter/LooksFilter;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->addFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;)V

    .line 494
    :cond_6
    invoke-direct {p0, v6}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertMotionFilterForStillImage(Lcom/adobe/premiereclip/project/sequence/Clip;)Lcom/adobe/premiereclip/prexport/fcpxml/filter/MotionFilter;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_7

    .line 496
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;->addFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;)V

    .line 498
    :cond_7
    invoke-direct {p0, v6, p5}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertAudioClipForClip(Lcom/adobe/premiereclip/project/sequence/Clip;Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    .line 522
    :cond_8
    iget-boolean v0, p4, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter$TrackOptions;->fadeOut:Z

    if-eqz v0, :cond_9

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->getItemAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->getDuration()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFadeDurationForClipDuration(J)J

    move-result-wide v1

    .line 525
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->end:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    move-wide v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V

    invoke-virtual {p2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V

    .line 528
    :cond_9
    invoke-virtual {p2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->calculateTimings()V

    .line 529
    invoke-virtual {p3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->calculateTimings()V

    goto/16 :goto_0
.end method

.method private determineScaleForFrame(Lcom/adobe/common/Size;Lcom/adobe/common/Size;)F
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p2}, Lcom/adobe/common/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/adobe/common/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 408
    invoke-virtual {p2}, Lcom/adobe/common/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/adobe/common/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 409
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private filePathForMediaWithFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAudioFadeDurationForClipDuration(J)J
    .locals 3

    .prologue
    const-wide/16 v0, 0x1e

    .line 221
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 v0, 0x3

    :cond_0
    return-wide v0
.end method

.method private getFadeDurationForClipDuration(J)J
    .locals 3

    .prologue
    .line 217
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, 0x2

    div-long v0, p1, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1e

    goto :goto_0
.end method

.method private getFileNameForBackgroundTrack(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_1

    .line 173
    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getBackgroundTrackNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    invoke-static {v0}, Lcom/adobe/premiereclip/dcx/DCXUtils;->appPropertiesFromNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    const-string/jumbo v3, "mediaRef"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 177
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    .line 178
    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getChildWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v0

    .line 179
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFileNameForManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 181
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 183
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getFileNameForLook(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    .line 157
    invoke-static {v1}, Lcom/adobe/premiereclip/dcx/DCXUtils;->getLookNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 158
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFileNameForManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/lang/String;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getFileNameForManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 89
    const-string/jumbo v2, ""

    .line 90
    const-string/jumbo v1, ""

    .line 92
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getComponentsOf(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;)Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    .line 95
    const-string/jumbo v4, "ProjectConverter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "got filename and path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for relationship "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 96
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getRelationship()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getComponentId()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    move-object v1, v2

    :goto_1
    move-object v2, v1

    move-object v1, v0

    .line 106
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_2
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private getFileNameForMediaReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getProjectPathFromProjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->loadComposite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->getComponentWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    move-result-object v2

    .line 122
    if-nez v2, :cond_0

    .line 123
    const-string/jumbo v0, "ProjConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got component null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v0, ""

    .line 135
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeBranch;->findParentOfComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_1

    .line 128
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFileNameForManifestNode(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifestNode;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    const-string/jumbo v0, "ProjConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got medianode null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string/jumbo v0, ""

    goto :goto_0

    .line 134
    :cond_2
    const-string/jumbo v0, "ProjConverter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got branch null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getMasterClipForName(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->mMasterClips:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->mMasterClips:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNameForBackgroundTrack(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFileNameForBackgroundTrack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 191
    const/4 v1, 0x0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 194
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 196
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getNameForMediaReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->getFileNameForMediaReference(Lcom/adobe/premiereclip/project/sequence/AssetReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    const/4 v1, 0x0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 148
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private storeMasterClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->mMasterClips:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method


# virtual methods
.method public convertProject(Lcom/adobe/premiereclip/project/Project;Lcom/adobe/premiereclip/prexport/fcpxml/Project;)V
    .locals 5

    .prologue
    .line 906
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->mMasterClips:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 908
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/Project;->getProjectName()Ljava/lang/String;

    move-result-object v0

    .line 909
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    .line 911
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getVideoTrackGroup()Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    .line 912
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 914
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v2

    if-lez v2, :cond_0

    .line 915
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 919
    iget-object v4, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v4}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertClips(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 933
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;

    invoke-direct {v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;-><init>(Ljava/lang/String;)V

    .line 934
    iget-object v0, p1, Lcom/adobe/premiereclip/project/Project;->projectKey:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/premiereclip/prexport/PrExportProjectConverter;->convertSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/Project;->addSequence(Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;)V

    .line 937
    return-void
.end method

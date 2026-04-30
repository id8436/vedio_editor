.class public Lcom/adobe/premiereclip/editor/SnapToBeatController;
.super Ljava/lang/Object;
.source "SnapToBeatController.java"

# interfaces
.implements Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;


# static fields
.field private static final DEFAULT_END_SYNC_POINT_VALUE:F = 3.5f

.field private static final DEFAULT_TRANSITION_SYNC_POINT_VALUE:F = 0.3f

.field private static final FILTER_THRESHOLD:F = 0.1f

.field private static final MAX_BEAT_BUCKETS:I = 0x19

.field private static final MIN_BEAT_BUCKETS:I = 0x3

.field private static final MODERATE_BPM:F = 156.0f

.field public static final SAMPLE_SIZE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SnapToBeatController"

.field public static final TIME_SCALE:J = 0x7530L


# instance fields
.field private alwaysPreservedEndPointFromAutoConversion:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;"
        }
    .end annotation
.end field

.field private audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

.field private context:Landroid/content/Context;

.field private enabled:Z

.field private exportedTransitionTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mostCommonOffsetInterval:J

.field private snapToBeatListener:Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;

.field private syncPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioTrack;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->context:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->alwaysPreservedEndPointFromAutoConversion:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enabled:Z

    .line 88
    return-void
.end method

.method public static binary_search(Ljava/util/ArrayList;J)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 668
    const/4 v1, 0x0

    .line 669
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    .line 672
    :goto_0
    if-gt v3, v2, :cond_2

    .line 673
    add-int v0, v2, v3

    div-int/lit8 v1, v0, 0x2

    .line 675
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    cmp-long v0, v4, p1

    if-gez v0, :cond_0

    .line 676
    add-int/lit8 v0, v1, 0x1

    move v3, v0

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    cmp-long v0, v4, p1

    if-lez v0, :cond_1

    .line 678
    add-int/lit8 v0, v1, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 684
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private calculateHistogramMeanOfMode(Ljava/util/ArrayList;)D
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 454
    const-wide/16 v8, 0x0

    .line 457
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 460
    div-int/lit8 v10, v12, 0x5

    .line 462
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v14, v2

    .line 463
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v0, v2

    move-wide/from16 v16, v0

    .line 464
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 465
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 471
    const/4 v7, 0x1

    .line 472
    :goto_0
    if-eqz v7, :cond_e

    .line 473
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 474
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 475
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_0

    .line 476
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 478
    :cond_0
    sub-double v2, v14, v16

    int-to-double v4, v10

    div-double v20, v2, v4

    .line 479
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 481
    const/4 v3, 0x0

    .line 482
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 483
    const/4 v2, 0x0

    move v5, v2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 486
    if-nez v4, :cond_2

    .line 487
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v4

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    add-double v24, v24, v16

    cmpl-double v2, v22, v24

    if-ltz v2, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    add-int/lit8 v2, v4, 0x1

    int-to-double v0, v2

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    add-double v24, v24, v16

    cmpg-double v2, v22, v24

    if-gtz v2, :cond_1

    .line 488
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_1
    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    .line 491
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    int-to-double v0, v4

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    add-double v24, v24, v16

    cmpl-double v2, v22, v24

    if-lez v2, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    add-int/lit8 v2, v4, 0x1

    int-to-double v0, v2

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    add-double v24, v24, v16

    cmpg-double v2, v22, v24

    if-gtz v2, :cond_1

    .line 492
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 496
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 482
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 500
    :cond_4
    const/4 v3, 0x0

    .line 501
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 502
    const/4 v2, 0x1

    move v6, v3

    move v3, v2

    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 503
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v2, v4, v20

    if-gez v2, :cond_5

    .line 505
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v6, v3

    .line 502
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    .line 511
    :cond_6
    const/4 v11, 0x0

    .line 512
    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-eq v3, v6, :cond_7

    .line 513
    int-to-long v0, v11

    move-wide/from16 v20, v0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v11, v0

    .line 512
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_7
    move v3, v11

    .line 516
    :goto_7
    int-to-long v0, v3

    move-wide/from16 v20, v0

    int-to-long v0, v11

    move-wide/from16 v22, v0

    add-long v22, v22, v4

    cmp-long v2, v20, v22

    if-gez v2, :cond_9

    .line 517
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v2, v20, v22

    if-eqz v2, :cond_8

    .line 518
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_8
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_7

    .line 521
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_b

    .line 522
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v4, v2

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    div-double v2, v4, v2

    .line 527
    :goto_8
    const-wide v4, 0x3ff2666666666666L    # 1.15

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_a

    if-le v10, v12, :cond_d

    .line 528
    :cond_a
    const/4 v2, 0x0

    move v3, v2

    move-wide v4, v8

    :goto_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_c

    .line 529
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v4, v6

    .line 528
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    .line 524
    :cond_b
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_8

    .line 531
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v8, v4, v2

    .line 532
    const/4 v2, 0x0

    move v3, v10

    :goto_a
    move v7, v2

    move v10, v3

    .line 536
    goto/16 :goto_0

    .line 534
    :cond_d
    mul-int/lit8 v2, v10, 0x2

    move v3, v2

    move v2, v7

    goto :goto_a

    .line 538
    :cond_e
    return-wide v8
.end method

.method public static findClosestSyncPoint(Ljava/util/ArrayList;J)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;J)I"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 636
    invoke-static {p0, p1, p2}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->lower_bound(Ljava/util/ArrayList;J)I

    move-result v1

    .line 637
    const-wide v2, 0x7fffffffffffffffL

    .line 638
    if-ne v1, v6, :cond_1

    .line 639
    const-string/jumbo v0, "SnapToBeatController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find lower bound for time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v2

    .line 643
    :goto_0
    cmp-long v0, v4, p1

    if-ltz v0, :cond_4

    .line 644
    const-wide/high16 v2, -0x8000000000000000L

    .line 645
    if-lez v1, :cond_2

    .line 646
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    .line 651
    :cond_0
    :goto_1
    sub-long v2, p1, v2

    sub-long/2addr v4, p1

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 652
    add-int/lit8 v0, v1, -0x1

    .line 657
    :goto_2
    return v0

    .line 641
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    move-wide v4, v2

    goto :goto_0

    .line 647
    :cond_2
    if-ne v1, v6, :cond_0

    .line 648
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    goto :goto_1

    :cond_3
    move v0, v1

    .line 654
    goto :goto_2

    .line 657
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private findNeighbors(ILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-gt v2, p1, :cond_1

    .line 543
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    add-int v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v6, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 542
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 548
    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 549
    return-void
.end method

.method private frame_align(J)J
    .locals 5

    .prologue
    const-wide/16 v2, 0x3e8

    .line 664
    div-long v0, p1, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private generateSyncPoints(F[FZ)V
    .locals 12

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    .line 173
    const-wide/16 v6, 0x7530

    .line 176
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    .line 178
    int-to-float v0, v0

    mul-float/2addr v0, p1

    long-to-float v1, v6

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 179
    if-eqz p3, :cond_0

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->frame_align(J)J

    move-result-wide v0

    .line 184
    :cond_0
    const/4 v2, 0x1

    :goto_0
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 185
    aget v3, p2, v2

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 187
    int-to-float v3, v2

    mul-float/2addr v3, p1

    long-to-float v4, v6

    mul-float/2addr v3, v4

    float-to-long v4, v3

    .line 188
    const-string/jumbo v3, "SnapToBeatController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sync point at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    int-to-float v9, v2

    mul-float/2addr v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " converted to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v4, v5}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->frame_align(J)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz p3, :cond_1

    .line 190
    invoke-direct {p0, v4, v5}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->frame_align(J)J

    move-result-wide v4

    .line 192
    :cond_1
    iget-object v3, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    new-instance v8, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    aget v9, p2, v2

    invoke-direct {v8, v4, v5, v9}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_3
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    new-instance v3, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    const/high16 v4, 0x40600000    # 3.5f

    invoke-direct {v3, v0, v1, v4}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const-string/jumbo v0, "SnapToBeatController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sync points size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->mostCommonOffsetInterval:J

    .line 200
    return-void
.end method

.method private getBucketCount(JJJ)I
    .locals 5

    .prologue
    .line 448
    const/high16 v0, 0x41c80000    # 25.0f

    sub-long v2, p5, p3

    long-to-float v1, v2

    long-to-float v2, p1

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 449
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getSyncPointsForClip(Ljava/util/ArrayList;JJJJJJJ)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;JJJJJJJ)V"
        }
    .end annotation

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 445
    :cond_0
    return-void

    .line 214
    :cond_1
    new-instance v21, Ljava/util/TreeSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeSet;-><init>()V

    move-object/from16 v5, p0

    move-wide/from16 v6, p8

    move-wide/from16 v8, p12

    move-wide/from16 v10, p14

    .line 216
    invoke-direct/range {v5 .. v11}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->getBucketCount(JJJ)I

    move-result v22

    .line 218
    sub-long v4, p14, p12

    .line 219
    move/from16 v0, v22

    int-to-long v6, v0

    div-long v24, v4, v6

    .line 222
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->mostCommonOffsetInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F

    move-result-object v4

    .line 232
    if-eqz v4, :cond_2

    .line 233
    new-instance v5, Lcom/adobe/premiereclip/automode/AutoModeAudio;

    invoke-direct {v5}, Lcom/adobe/premiereclip/automode/AutoModeAudio;-><init>()V

    .line 234
    invoke-virtual {v5, v4}, Lcom/adobe/premiereclip/automode/AutoModeAudio;->getPaceInBPM([F)F

    move-result v4

    .line 235
    const v5, 0x49dbba00    # 1800000.0f

    div-float v4, v5, v4

    float-to-long v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->mostCommonOffsetInterval:J

    .line 238
    :cond_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->mostCommonOffsetInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_3

    .line 239
    const-wide/16 v4, 0x3a98

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->mostCommonOffsetInterval:J

    .line 244
    :cond_3
    const-string/jumbo v4, "SnapToBeatController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "adding mostCommonOffsetInterval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->mostCommonOffsetInterval:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    add-long v8, p2, p6

    .line 270
    const/4 v10, 0x0

    .line 272
    const-wide/16 v4, 0x0

    cmp-long v4, p10, v4

    if-eqz v4, :cond_1b

    .line 273
    cmp-long v4, p10, p4

    if-ltz v4, :cond_1a

    .line 274
    div-long v4, p10, p4

    mul-long v4, v4, p4

    sub-long v4, v8, v4

    .line 275
    rem-long p10, p10, p4

    move-wide v6, v4

    .line 277
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    move-wide/from16 v0, p10

    invoke-static {v4, v0, v1}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->binary_search(Ljava/util/ArrayList;J)I

    move-result v5

    .line 278
    const/4 v4, -0x1

    if-eq v5, v4, :cond_19

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v10, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    sub-long/2addr v10, v6

    .line 280
    new-instance v12, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    invoke-direct {v12, v10, v11, v4}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 281
    const/4 v4, 0x1

    move v5, v4

    .line 308
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    int-to-long v10, v4

    .line 310
    const-wide/16 v12, -0x1

    cmp-long v4, v10, v12

    if-eqz v4, :cond_6

    .line 311
    sub-long v10, p10, v6

    .line 312
    new-instance v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    const v12, 0x3e99999a    # 0.3f

    invoke-direct {v4, v10, v11, v12}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    const/4 v4, 0x0

    .line 316
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 317
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 318
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    .line 319
    iget-wide v14, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    cmp-long v13, v14, v10

    if-nez v13, :cond_4

    .line 324
    :cond_5
    if-eqz v4, :cond_6

    iget-wide v12, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    cmp-long v10, v12, v10

    if-nez v10, :cond_6

    .line 325
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->alwaysPreservedEndPointFromAutoConversion:Ljava/util/HashMap;

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    new-instance v11, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    move-wide/from16 v0, p10

    invoke-direct {v11, v0, v1, v4}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const/4 v5, 0x1

    .line 332
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->alwaysPreservedEndPointFromAutoConversion:Ljava/util/HashMap;

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    .line 333
    if-eqz v4, :cond_7

    .line 334
    iget-wide v10, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    .line 335
    cmp-long v12, v10, p4

    if-ltz v12, :cond_18

    .line 336
    div-long v6, v10, p4

    mul-long v6, v6, p4

    sub-long v12, v8, v6

    .line 337
    rem-long v6, v10, p4

    move-wide v10, v12

    .line 339
    :goto_3
    new-instance v12, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    sub-long/2addr v6, v10

    iget v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    invoke-direct {v12, v6, v7, v4}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_7
    cmp-long v4, p14, p4

    if-ltz v4, :cond_17

    .line 345
    div-long v6, p14, p4

    mul-long v6, v6, p4

    sub-long v6, v8, v6

    .line 346
    rem-long v10, p14, p4

    move-wide v12, v6

    .line 349
    :goto_4
    if-nez v5, :cond_a

    .line 352
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-static {v4, v10, v11}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->lower_bound(Ljava/util/ArrayList;J)I

    move-result v6

    .line 353
    const/4 v4, -0x1

    if-eq v6, v4, :cond_16

    .line 354
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    .line 358
    :goto_5
    const-wide/16 v14, 0x0

    cmp-long v7, v4, v14

    if-eqz v7, :cond_a

    .line 359
    :cond_8
    cmp-long v7, v4, v10

    if-ltz v7, :cond_a

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    .line 360
    if-eqz v6, :cond_9

    .line 361
    add-int/lit8 v6, v6, -0x1

    .line 363
    :cond_9
    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    sub-long v14, v4, v12

    .line 365
    cmp-long v4, v14, p14

    if-gez v4, :cond_c

    cmp-long v4, v14, p12

    if-ltz v4, :cond_c

    .line 366
    new-instance v5, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    invoke-direct {v5, v14, v15, v4}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_a
    :goto_6
    const-wide/16 v4, 0x0

    .line 386
    cmp-long v6, p12, p4

    if-ltz v6, :cond_15

    .line 387
    div-long v4, p12, p4

    mul-long v4, v4, p4

    .line 388
    sub-long v10, v8, v4

    .line 389
    rem-long p12, p12, p4

    .line 390
    move-wide/from16 v0, p4

    move-wide/from16 v2, p14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-wide/from16 v27, v4

    move-wide v4, v6

    move-wide/from16 v6, v27

    .line 394
    :goto_7
    const/4 v12, 0x0

    move/from16 v20, v12

    move-wide v12, v10

    move-wide v10, v4

    :goto_8
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_11

    .line 395
    move/from16 v0, v20

    int-to-long v4, v0

    mul-long v4, v4, v24

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->mostCommonOffsetInterval:J

    div-long/2addr v4, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->mostCommonOffsetInterval:J

    mul-long/2addr v4, v14

    add-long v4, v4, p12

    .line 397
    cmp-long v14, v4, p4

    if-ltz v14, :cond_14

    .line 398
    add-long v10, v6, v4

    div-long v10, v10, p4

    mul-long v10, v10, p4

    sub-long v12, v8, v10

    .line 399
    rem-long v4, v4, p4

    .line 400
    move-wide/from16 v0, p4

    move-wide/from16 v2, p14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide v14, v12

    move-wide v12, v10

    move-wide v10, v4

    .line 403
    :goto_9
    const-wide/16 v4, -0x1

    .line 404
    const-wide/16 v18, -0x1

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v10, v11}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->lower_bound(Ljava/util/ArrayList;J)I

    move-result v23

    .line 407
    const/16 v16, -0x1

    move/from16 v0, v23

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    move-wide/from16 v16, v4

    .line 411
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v11}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->upper_bound(Ljava/util/ArrayList;J)I

    move-result v26

    .line 412
    const/4 v4, -0x1

    move/from16 v0, v26

    if-eq v0, v4, :cond_12

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    .line 416
    :goto_b
    const-wide/16 v18, -0x1

    cmp-long v18, v16, v18

    if-nez v18, :cond_e

    const-wide/16 v18, -0x1

    cmp-long v18, v4, v18

    if-nez v18, :cond_e

    .line 394
    :cond_b
    :goto_c
    add-int/lit8 v4, v20, 0x1

    move/from16 v20, v4

    move-wide v10, v12

    move-wide v12, v14

    goto/16 :goto_8

    .line 371
    :cond_c
    add-long v4, v14, v12

    .line 374
    :cond_d
    if-nez v6, :cond_8

    goto/16 :goto_6

    .line 420
    :cond_e
    const-wide/16 v18, -0x1

    cmp-long v18, v4, v18

    if-eqz v18, :cond_f

    sub-long v18, v16, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    sub-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v10, v18, v10

    if-gez v10, :cond_10

    .line 422
    :cond_f
    cmp-long v4, v16, v12

    if-gez v4, :cond_b

    .line 423
    sub-long v10, v16, v14

    .line 424
    new-instance v5, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    invoke-direct {v5, v10, v11, v4}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 428
    :cond_10
    cmp-long v10, v4, v12

    if-gez v10, :cond_b

    .line 429
    sub-long v10, v4, v14

    .line 430
    new-instance v5, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget v4, v4, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    invoke-direct {v5, v10, v11, v4}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;-><init>(JF)V

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 436
    :cond_11
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 439
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    .line 440
    iget-wide v4, v12, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    const-wide/16 v6, 0x7530

    const-wide/32 v8, 0xf4240

    const-wide/16 v10, 0x3e8

    invoke-static/range {v4 .. v11}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v4

    .line 441
    const-string/jumbo v6, "SnapToBeatController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "filtered sp = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v12, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v12, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->intensity:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput-wide v4, v12, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    goto :goto_d

    :cond_12
    move-wide/from16 v4, v18

    goto/16 :goto_b

    :cond_13
    move-wide/from16 v16, v4

    goto/16 :goto_a

    :cond_14
    move-wide v14, v12

    move-wide v12, v10

    move-wide v10, v4

    goto/16 :goto_9

    :cond_15
    move-wide v6, v4

    move-wide v10, v8

    move-wide/from16 v4, p14

    goto/16 :goto_7

    :cond_16
    move-wide v4, v10

    goto/16 :goto_5

    :cond_17
    move-wide/from16 v10, p14

    move-wide v12, v8

    goto/16 :goto_4

    :cond_18
    move-wide/from16 v27, v10

    move-wide v10, v6

    move-wide/from16 v6, v27

    goto/16 :goto_3

    :cond_19
    move v5, v10

    goto/16 :goto_1

    :cond_1a
    move-wide v6, v8

    goto/16 :goto_0

    :cond_1b
    move v5, v10

    move-wide v6, v8

    goto/16 :goto_2
.end method

.method public static lower_bound(Ljava/util/ArrayList;J)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 688
    const/4 v1, 0x0

    .line 689
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 692
    :goto_0
    if-ge v1, v2, :cond_1

    .line 693
    add-int v0, v2, v1

    div-int/lit8 v3, v0, 0x2

    .line 695
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    cmp-long v0, v4, p1

    if-gez v0, :cond_0

    .line 696
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 698
    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    cmp-long v0, v2, p1

    if-ltz v0, :cond_2

    move v0, v1

    .line 705
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private upper_bound(Ljava/util/ArrayList;J)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 709
    const/4 v1, 0x0

    .line 710
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 713
    :goto_0
    if-ge v1, v2, :cond_1

    .line 714
    add-int v0, v2, v1

    div-int/lit8 v3, v0, 0x2

    .line 716
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v4, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    cmp-long v0, v4, p2

    if-gtz v0, :cond_0

    .line 717
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 719
    goto :goto_0

    .line 723
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;

    iget-wide v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;->time:J

    cmp-long v0, v2, p2

    if-lez v0, :cond_2

    move v0, v1

    .line 726
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public clearListener()V
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->snapToBeatListener:Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;

    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 162
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->clearListener()V

    .line 164
    :cond_0
    return-void
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enabled:Z

    .line 168
    return-void
.end method

.method public enable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 112
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isImpactDataSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->onImpactDataAvailable(Lcom/adobe/premiereclip/project/sequence/AudioClip;[F)V

    .line 115
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enabled:Z

    .line 126
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enabled:Z

    .line 127
    return-void

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->snapToBeatListener:Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;

    if-eqz v0, :cond_0

    .line 117
    iput-boolean v2, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enabled:Z

    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->snapToBeatListener:Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;->onReady()V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F

    .line 122
    iput-object v3, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    .line 123
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->alwaysPreservedEndPointFromAutoConversion:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public getAllSyncPoints()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 567
    :goto_0
    return-object v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 562
    new-instance v2, Lcom/adobe/premiereclip/automode/AutoModeAudio;

    invoke-direct {v2}, Lcom/adobe/premiereclip/automode/AutoModeAudio;-><init>()V

    .line 563
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->context:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getImpactData(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/AudioClip$ImpactDataListener;)[F

    move-result-object v0

    .line 564
    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/automode/AutoModeAudio;->getGravityData([F)[F

    move-result-object v1

    .line 565
    aget v0, v0, v4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->generateSyncPoints(F[FZ)V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->syncPoints:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getSyncPointsForClip(ILcom/adobe/premiereclip/project/sequence/Sequence;ZZ)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/adobe/premiereclip/project/sequence/Sequence;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/editor/SnapToBeatController$SyncPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    .line 574
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isImpactDataSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    invoke-virtual/range {p2 .. p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 577
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-virtual {v12}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x3e8

    invoke-static/range {v2 .. v9}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v16

    .line 581
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->sequenceStartTimeOfClip(I)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x3e8

    invoke-static/range {v2 .. v9}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v22

    .line 584
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getStartTimeUs()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x3e8

    invoke-static/range {v2 .. v9}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v24

    .line 586
    invoke-virtual {v10}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x3e8

    invoke-static/range {v2 .. v9}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v26

    .line 588
    sub-long v14, v22, v16

    .line 590
    invoke-virtual {v12}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {v12}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-long v2, v2

    const-wide/32 v4, 0xf4240

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x3e8

    .line 589
    invoke-static/range {v2 .. v9}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v10

    .line 592
    const-wide/16 v2, 0x0

    .line 594
    const-wide/16 v4, 0x0

    .line 595
    if-eqz p3, :cond_2

    move-wide/from16 v20, v14

    .line 599
    :goto_0
    if-eqz p4, :cond_1

    .line 605
    invoke-virtual {v12}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    const-wide/16 v6, 0x7530

    const-wide/16 v8, 0x3e8

    invoke-static/range {v2 .. v9}, Lcom/adobe/premiereclip/util/Utilities;->convertTimescale(JJJJ)J

    move-result-wide v2

    add-long v2, v2, v22

    .line 610
    add-long v12, v2, v24

    .line 613
    :goto_1
    add-long v14, v22, v24

    .line 614
    add-long v2, v14, v10

    sub-long v16, v2, v16

    .line 616
    const-string/jumbo v2, "SnapToBeatController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gSP o="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " aD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " vO="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " vD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " vET="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move-wide/from16 v4, v24

    move-wide/from16 v6, v26

    move-wide/from16 v8, v20

    .line 620
    invoke-direct/range {v2 .. v17}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->getSyncPointsForClip(Ljava/util/ArrayList;JJJJJJJ)V

    move-object/from16 v2, v18

    .line 632
    :goto_2
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-wide v12, v2

    goto/16 :goto_1

    :cond_2
    move-wide/from16 v20, v4

    goto/16 :goto_0
.end method

.method public isDetectingData()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isDetectingImpactData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->enabled:Z

    return v0
.end method

.method public isFetchingData()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isFetchingImpactData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->audioTrack:Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioClip;->isImpactDataSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onImpactDataAvailable(Lcom/adobe/premiereclip/project/sequence/AudioClip;[F)V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/adobe/premiereclip/automode/AutoModeAudio;

    invoke-direct {v0}, Lcom/adobe/premiereclip/automode/AutoModeAudio;-><init>()V

    .line 132
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/automode/AutoModeAudio;->getGravityData([F)[F

    move-result-object v0

    .line 136
    const-string/jumbo v1, "SnapToBeatController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gd size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/premiereclip/editor/SnapToBeatController;->generateSyncPoints(F[FZ)V

    .line 138
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->snapToBeatListener:Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->snapToBeatListener:Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;->onReady()V

    .line 141
    :cond_0
    return-void
.end method

.method public setListener(Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->snapToBeatListener:Lcom/adobe/premiereclip/editor/SnapToBeatController$SnapToBeatListener;

    .line 154
    return-void
.end method

.method public setTransitionTimes(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    .line 145
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    const-string/jumbo v1, "SnapToBeatController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exported TT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/SnapToBeatController;->exportedTransitionTimes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method

.class public Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;
.super Ljava/lang/Object;
.source "GroupingManager.java"


# static fields
.field private static final DAY:J = 0x15180L

.field private static final DISTANCE_THRESHOLD:D = 0.01667

.field private static final HOUR:J = 0xe10L

.field private static final MAX_NUM_ITEMS:I = 0x64

.field private static final MEAN_VERSION:I = 0x2

.field private static final MINUTE:J = 0x3cL

.field private static final MIN_NUM_ITEMS:I = 0x5

.field private static final MONTH:J = 0x278d00L

.field private static final SECOND:J = 0x1L

.field private static final WEEK:J = 0x93a80L

.field private static final YEAR:J = 0x1e13380L

.field private static final interval_values:[J

.field private static final levels_vs_intervals:[J

.field private static final separation_levels:[J


# instance fields
.field private assetMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->interval_values:[J

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->separation_levels:[J

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->levels_vs_intervals:[J

    return-void

    .line 35
    nop

    :array_0
    .array-data 8
        0x1
        0x3c
        0xe10
        0x15180
        0x93a80
        0x278d00
        0x1e13380
    .end array-data

    .line 36
    :array_1
    .array-data 8
        0x93a80
        0x15180
        0x1c20
    .end array-data

    .line 37
    :array_2
    .array-data 8
        0x15180
        0xa8c0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getAssetMap(Landroid/content/Context;)Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getAssetMap(Landroid/content/Context;JJ)Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    .line 52
    return-void
.end method

.method private analyzeIntoGroups()Lcom/adobe/premiereclip/mediabrowser/grouping/Group;
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 127
    const/4 v0, 0x0

    .line 128
    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->levels_vs_intervals:[J

    aget-wide v2, v1, v0

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getAssetGroupsCreatedInIntervals(JJJ)Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    .line 131
    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->groupIntoTimeEvents(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 132
    invoke-virtual {v2, v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChildren(Ljava/util/ArrayList;)V

    .line 133
    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->predictLocations(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    .line 134
    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->analyzeLocation(ILcom/adobe/premiereclip/mediabrowser/grouping/Group;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    goto :goto_0
.end method

.method private analyzeLocation(ILcom/adobe/premiereclip/mediabrowser/grouping/Group;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 566
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->areAllChildrenLeaves()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 567
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->divideEvent(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)Ljava/util/ArrayList;

    move-result-object v5

    .line 568
    if-nez p1, :cond_3

    .line 569
    new-instance v6, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v6}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    .line 570
    invoke-virtual {v6, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChild(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    .line 572
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    invoke-virtual {v6}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 574
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v4

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 577
    new-instance v8, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v8}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    move v3, v2

    .line 578
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 579
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v8, v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChild(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    .line 578
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 581
    :cond_0
    invoke-virtual {v6}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 582
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 583
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .line 584
    goto :goto_0

    .line 585
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 587
    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    :goto_2
    return-object v0

    .line 590
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v5, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    move v2, v4

    .line 595
    :goto_3
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 596
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {p0, v1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->analyzeLocation(ILcom/adobe/premiereclip/mediabrowser/grouping/Group;)Landroid/util/Pair;

    move-result-object v0

    .line 597
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 599
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 601
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v4

    move v5, v2

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 603
    new-instance v8, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v8}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    move v6, v3

    .line 604
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v6, v3, :cond_5

    .line 605
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v8, v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChild(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    .line 604
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_5

    .line 607
    :cond_5
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 608
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 609
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    .line 610
    goto :goto_4

    .line 611
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 613
    :goto_6
    add-int/lit8 v0, v5, 0x1

    move v2, v0

    .line 614
    goto/16 :goto_3

    .line 616
    :cond_7
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    move v5, v2

    goto :goto_6
.end method

.method private divideEvent(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 620
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 621
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 622
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v12

    .line 638
    :goto_0
    return-object v0

    .line 626
    :cond_1
    const/4 v0, 0x1

    move v10, v0

    move v11, v1

    :goto_1
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 627
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 628
    iget-object v2, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v3, v10, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 629
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLatitude()D

    move-result-wide v2

    .line 630
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLongitude()D

    move-result-wide v4

    .line 631
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLatitude()D

    move-result-wide v6

    .line 632
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLongitude()D

    move-result-wide v8

    move-object v1, p0

    .line 633
    invoke-direct/range {v1 .. v9}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getDistance(DDDD)D

    move-result-wide v0

    const-wide v2, 0x3f9111f0c34c1a8bL    # 0.01667

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_3

    sub-int v0, v10, v11

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 634
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v10

    .line 626
    :goto_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    move v11, v1

    goto :goto_1

    :cond_2
    move-object v0, v12

    .line 638
    goto :goto_0

    :cond_3
    move v1, v11

    goto :goto_2
.end method

.method private getAssetGroupSortedOnTimeStamp()Lcom/adobe/premiereclip/mediabrowser/grouping/Group;
    .locals 4

    .prologue
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$4;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 224
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v3, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    .line 227
    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->setChildren(Ljava/util/ArrayList;)V

    .line 228
    return-object v0
.end method

.method private getAssetGroupsCreatedInIntervals(JJJ)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 233
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getAssetGroupSortedOnTimeStamp()Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    .line 236
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 237
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v6

    .line 238
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v0

    .line 239
    const-wide/16 v8, -0x1

    cmp-long v2, p3, v8

    if-nez v2, :cond_0

    .line 240
    invoke-direct {p0, v6, v7, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getStartTime(JJ)J

    move-result-wide p3

    .line 242
    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v2, p5, v6

    if-nez v2, :cond_1

    .line 243
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getEndTime(JJ)J

    move-result-wide p5

    .line 246
    :cond_1
    sub-long v0, p5, p3

    long-to-double v0, v0

    long-to-double v6, p1

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    .line 247
    const-wide/16 v6, 0x0

    cmpl-double v2, v0, v6

    if-eqz v2, :cond_2

    double-to-int v2, v0

    int-to-double v6, v2

    sub-double v6, v0, v6

    const-wide/16 v8, 0x0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_3

    .line 248
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v6

    .line 251
    :cond_3
    const/4 v2, 0x0

    :goto_0
    double-to-int v6, v0

    if-ge v2, v6, :cond_4

    .line 252
    new-instance v6, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v6}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 256
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v6

    .line 257
    cmp-long v1, v6, p3

    if-ltz v1, :cond_5

    .line 260
    cmp-long v1, v6, p5

    if-lez v1, :cond_8

    .line 271
    :cond_6
    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    .line 272
    const/4 v1, 0x0

    .line 273
    const/4 v0, 0x0

    move-object v3, v2

    move v2, v1

    move v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 274
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 275
    if-eqz v2, :cond_a

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 276
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_7
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 263
    :cond_8
    cmp-long v1, v6, p5

    if-nez v1, :cond_9

    .line 264
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChild(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    goto :goto_1

    .line 267
    :cond_9
    sub-long/2addr v6, p3

    div-long/2addr v6, p1

    long-to-int v1, v6

    .line 268
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChild(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    goto :goto_1

    .line 279
    :cond_a
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 280
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x5

    if-lt v0, v6, :cond_b

    .line 281
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    .line 283
    const/4 v2, 0x1

    goto :goto_3

    .line 285
    :cond_b
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 286
    const/4 v2, 0x0

    goto :goto_3

    .line 289
    :cond_c
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 290
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 291
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_d
    :goto_4
    return-object v5

    .line 294
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method private getAssetMap(Landroid/content/Context;)Ljava/util/TreeMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    const-string/jumbo v0, "/"

    invoke-static {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getAssetsFromMediaStore(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 195
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_0
    return-object v1
.end method

.method private getAssetMap(Landroid/content/Context;JJ)Ljava/util/TreeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getCapturedMediaFolder()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getAssetsFromMediaStore(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 204
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v4

    cmp-long v3, v4, p4

    if-gtz v3, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 208
    :cond_1
    return-object v1
.end method

.method private static getAssetsFromMediaStore(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static/range {p0 .. p0}, Lcom/adobe/premiereclip/mediabrowser/Utils;->initPhoneMedia(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v18

    .line 143
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 144
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 145
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    const-string/jumbo v2, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 147
    const-string/jumbo v2, "_data"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 148
    const-string/jumbo v2, "media_type"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 149
    const-string/jumbo v2, "duration"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 150
    const-string/jumbo v2, "bucket_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 151
    const-string/jumbo v2, "bucket_display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 152
    const-string/jumbo v2, "_size"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 153
    const-string/jumbo v2, "latitude"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 154
    const-string/jumbo v2, "longitude"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 155
    const-string/jumbo v2, "datetaken"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 156
    const/4 v2, 0x0

    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 157
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 158
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 161
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 162
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 163
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 164
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "b"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-wide/16 v30, 0x3e8

    div-long v16, v16, v30

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v30, 0x0

    cmp-long v3, v16, v30

    if-lez v3, :cond_0

    .line 168
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v17}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;-><init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/adobe/premiereclip/mediabrowser/Bucket;DDJ)V

    .line 169
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 174
    :cond_1
    return-object v19
.end method

.method private static getCapturedMediaFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDistance(DDDD)D
    .locals 7

    .prologue
    .line 642
    sub-double v0, p1, p5

    sub-double v2, p1, p5

    mul-double/2addr v0, v2

    sub-double v2, p3, p7

    sub-double v4, p3, p7

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getEndTime(JJ)J
    .locals 1

    .prologue
    .line 306
    return-wide p1
.end method

.method private getGaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 465
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 466
    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    add-int/lit8 v0, v1, -0x1

    .line 468
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v1, v0

    goto :goto_0

    .line 470
    :cond_0
    add-int/lit8 v4, v1, 0x1

    .line 472
    const/4 v2, 0x0

    .line 473
    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 477
    :cond_2
    if-ge v2, v4, :cond_4

    .line 478
    :goto_2
    if-ge v2, v4, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 479
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 481
    :cond_3
    if-ne v2, v4, :cond_5

    .line 494
    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move v1, v2

    .line 485
    :goto_4
    if-ge v1, v4, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 489
    :cond_6
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    if-ne v1, v4, :cond_1

    goto :goto_3
.end method

.method private getGroupsHeuristic(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 436
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 437
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 438
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_0
    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getMean(Ljava/util/ArrayList;)D

    move-result-wide v4

    .line 441
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 442
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v1, v6, v1

    add-int/lit8 v1, v1, 0x1

    .line 443
    int-to-double v6, v1

    cmpl-double v6, v6, v4

    if-ltz v6, :cond_1

    .line 444
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 448
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 451
    const/4 v0, 0x0

    .line 452
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 453
    new-instance v5, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v5}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    move v2, v1

    .line 454
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_3

    .line 455
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v5, v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChild(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    .line 454
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 457
    :cond_3
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 459
    goto :goto_2

    .line 460
    :cond_4
    return-object v3
.end method

.method private getMean(Ljava/util/ArrayList;)D
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)D"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 398
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 428
    :goto_0
    return-wide v0

    .line 402
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 403
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 404
    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v6, v2, v0

    .line 408
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 409
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v10, v1

    sub-double/2addr v10, v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr v0, v6

    mul-double/2addr v0, v10

    add-double/2addr v0, v2

    move-wide v2, v0

    .line 410
    goto :goto_2

    .line 411
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v0, v2

    .line 412
    cmpl-double v0, v2, v4

    if-nez v0, :cond_3

    move-wide v0, v6

    .line 413
    goto :goto_0

    .line 417
    :cond_3
    const/4 v0, 0x0

    .line 418
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 419
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v10, v9

    sub-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    div-double/2addr v10, v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_6

    .line 420
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v10, v0

    add-double/2addr v4, v10

    .line 421
    add-int/lit8 v0, v1, 0x1

    :goto_4
    move v1, v0

    .line 423
    goto :goto_3

    .line 424
    :cond_4
    if-nez v1, :cond_5

    move-wide v0, v6

    .line 425
    goto/16 :goto_0

    .line 427
    :cond_5
    int-to-double v0, v1

    div-double v0, v4, v0

    .line 428
    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_4
.end method

.method private getMediaGroups()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->analyzeIntoGroups()Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    move-result-object v0

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-direct {p0, v0, v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getMediaGroupsInternal(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;Ljava/util/HashMap;)V

    .line 59
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setId(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->setGroupName(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    .line 62
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getThumbnailItems()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v4, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$1;

    invoke-direct {v4, p0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$2;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getMediaGroupsInternal(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/premiereclip/mediabrowser/Bucket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 110
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getMediaModel()Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 113
    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/mediabrowser/Bucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setParentBucket(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    .line 118
    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->addItem(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)V

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getMediaGroupsInternal(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;Ljava/util/HashMap;)V

    goto :goto_0

    .line 124
    :cond_2
    return-void
.end method

.method private getStartEndTime(Ljava/util/ArrayList;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 310
    move v1, v2

    .line 311
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 312
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 318
    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v4

    .line 319
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 320
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v4, v0

    .line 321
    goto :goto_1

    .line 315
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 324
    :goto_2
    if-ltz v1, :cond_3

    .line 325
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 330
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 331
    iget-object v3, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v2

    .line 332
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 333
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 334
    goto :goto_3

    .line 328
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 335
    :cond_5
    new-instance v0, Landroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getStartTime(JJ)J
    .locals 1

    .prologue
    .line 302
    return-wide p1
.end method

.method private groupIntoTimeEvents(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/grouping/Group;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getGaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 343
    add-int/lit8 v8, p2, 0x1

    .line 344
    const/4 v0, 0x0

    .line 345
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 346
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 347
    goto :goto_0

    .line 348
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->levels_vs_intervals:[J

    array-length v0, v0

    if-ge v8, v0, :cond_1

    .line 349
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getStartEndTime(Ljava/util/ArrayList;)Landroid/util/Pair;

    move-result-object v1

    .line 350
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 351
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 353
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->levels_vs_intervals:[J

    aget-wide v2, v0, v8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getAssetGroupsCreatedInIntervals(JJJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 354
    invoke-direct {p0, v0, v8}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->groupIntoTimeEvents(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 394
    :goto_1
    return-object v0

    .line 358
    :cond_1
    if-le v1, v5, :cond_6

    .line 359
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 361
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 362
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChild(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    .line 363
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 364
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    goto :goto_2

    .line 369
    :cond_4
    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 370
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    move-object v0, v2

    .line 380
    goto :goto_1

    .line 374
    :cond_6
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    .line 375
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 376
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChildren(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 378
    :cond_7
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 384
    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getGroupsHeuristic(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 386
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 387
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->groupIntoTimeEvents(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 388
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-direct {v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;-><init>()V

    .line 389
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->addChildren(Ljava/util/ArrayList;)V

    .line 390
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move-object v0, v2

    .line 394
    goto/16 :goto_1
.end method

.method private interpolateGroup(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;II)V
    .locals 18

    .prologue
    .line 529
    const-wide/16 v2, -0x1

    .line 530
    const/4 v4, -0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_6

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v2

    move-wide v6, v2

    .line 533
    :goto_0
    const-wide/16 v2, -0x1

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, p3

    if-ge v0, v4, :cond_5

    .line 535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v2

    move-wide v12, v2

    .line 538
    :goto_1
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_1

    .line 563
    :cond_0
    return-void

    .line 542
    :cond_1
    add-int/lit8 v2, p2, 0x1

    move v5, v2

    :goto_2
    move/from16 v0, p3

    if-ge v5, v0, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 545
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 546
    invoke-virtual {v4}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v14

    .line 547
    const-wide v10, 0x5af3107a4000L

    const-wide v8, 0x5af3107a4000L

    .line 548
    const-wide/16 v16, -0x1

    cmp-long v16, v6, v16

    if-eqz v16, :cond_2

    .line 549
    sub-long v10, v14, v6

    .line 551
    :cond_2
    const-wide/16 v16, -0x1

    cmp-long v16, v12, v16

    if-eqz v16, :cond_3

    .line 552
    sub-long v8, v12, v14

    .line 554
    :cond_3
    cmp-long v8, v10, v8

    if-gtz v8, :cond_4

    .line 555
    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setLatitude(D)V

    .line 556
    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setLongitude(D)V

    .line 542
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_2

    .line 559
    :cond_4
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setLatitude(D)V

    .line 560
    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->setLongitude(D)V

    goto :goto_3

    :cond_5
    move-wide v12, v2

    goto/16 :goto_1

    :cond_6
    move-wide v6, v2

    goto/16 :goto_0
.end method

.method private predictLocations(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->areAllChildrenLeaves()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->relocateGroup(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    .line 506
    :cond_0
    return-void

    .line 502
    :cond_1
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 503
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->predictLocations(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V

    goto :goto_0
.end method

.method private relocateGroup(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 509
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    const/4 v1, -0x1

    .line 511
    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    .line 512
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 513
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;

    .line 514
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLatitude()D

    move-result-wide v4

    .line 515
    iget-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/Group;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getLongitude()D

    move-result-wide v0

    .line 516
    cmpl-double v4, v4, v6

    if-eqz v4, :cond_2

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_2

    .line 517
    invoke-direct {p0, p1, v3, v2}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->interpolateGroup(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;II)V

    move v1, v2

    .line 520
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    .line 521
    goto :goto_0

    .line 522
    :cond_0
    add-int/lit8 v0, v2, -0x1

    if-gt v3, v0, :cond_1

    .line 523
    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, p1, v3, v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->interpolateGroup(Lcom/adobe/premiereclip/mediabrowser/grouping/Group;II)V

    .line 526
    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private setGroupName(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v2

    .line 92
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v0

    .line 93
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v4, v2

    move-wide v2, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 94
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-lez v1, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v4

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v8

    cmp-long v1, v2, v8

    if-gez v1, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v0

    :goto_1
    move-wide v2, v0

    .line 100
    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    mul-long v6, v4, v10

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v6, Ljava/util/Date;

    mul-long/2addr v2, v10

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1, v4, v5}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->setStartTime(J)V

    .line 106
    return-void

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method


# virtual methods
.method public getAssetsInInterval(JJ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->assetMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 184
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v4

    cmp-long v3, v4, p3

    if-gez v3, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDate()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-lez v3, :cond_0

    .line 185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_1
    return-object v1
.end method

.method public getSortedMediaGroups()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/Bucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getMediaGroups()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$3;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v0
.end method

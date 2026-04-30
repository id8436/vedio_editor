.class public Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;
.super Lcom/adobe/premiereclip/editor/Timeline;
.source "AutomaticTimeline.java"


# static fields
.field public static final UPDATE_PROJECT_POSTER:Ljava/lang/String; = "UPDATE_PROJECT_POSTER"


# instance fields
.field private currentClipIndex:I

.field private firstClipDirty:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/premiereclip/editor/Timeline;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->timelineThumbSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->timelineThumbSize:I

    return v0
.end method

.method static synthetic access$1000(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->updateProjectPoster(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->updateProjectPoster(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createNewAdapter()Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->createNewAdapter()Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createNewAdapter()Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;

    new-instance v1, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)V

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$DraggableClipAdapter;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;)V

    return-object v0
.end method

.method public getCurrentClipIndex()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->currentClipIndex:I

    return v0
.end method

.method public initTimeline(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 414
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->currentClipIndex:I

    .line 415
    iget v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->currentClipIndex:I

    invoke-virtual {p0, p1, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->setClips(Ljava/util/ArrayList;I)V

    .line 416
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->refreshClipsTime(Ljava/util/ArrayList;)V

    .line 417
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstClipDirty()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->firstClipDirty:Z

    return v0
.end method

.method public refreshClipsTime(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    return-void
.end method

.method public saveCurrentClipIndex(I)V
    .locals 0

    .prologue
    .line 424
    iput p1, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->currentClipIndex:I

    .line 425
    return-void
.end method

.method public setClips(Ljava/util/ArrayList;I)V
    .locals 20
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
    .line 96
    new-instance v18, Ljava/util/LinkedHashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedHashMap;-><init>()V

    .line 97
    const-string/jumbo v19, "No_GroupID_Set"

    .line 98
    const/4 v3, 0x0

    .line 100
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 101
    const/4 v2, 0x0

    move/from16 v16, v2

    move/from16 v17, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 102
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 103
    const/4 v14, 0x0

    .line 104
    instance-of v3, v2, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 105
    check-cast v3, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->isStoryCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const/4 v14, 0x1

    .line 110
    :cond_0
    new-instance v3, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v5

    iget-wide v6, v2, Lcom/adobe/premiereclip/project/sequence/Clip;->stableId:J

    .line 111
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v9

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v10

    .line 112
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v15

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v15}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;-><init>(Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/media/ClipAsset;JLjava/lang/String;ZJJZLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V

    .line 119
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 120
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    new-instance v4, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)V

    .line 122
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->setGroupId(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->addClipAsset(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;)V

    move/from16 v3, v17

    .line 101
    :goto_1
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    move/from16 v17, v3

    goto/16 :goto_0

    .line 128
    :cond_2
    new-instance v2, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)V

    .line 129
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->addClipAsset(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;)V

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$GroupAssetWrapper;->setGroupId(Ljava/lang/String;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    add-int/lit8 v3, v17, 0x1

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->updateProjectPoster()V

    .line 140
    :goto_2
    new-instance v3, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;-><init>(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;)V

    .line 141
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->deleteProjectPoster()V

    goto :goto_2

    .line 144
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->updateData(Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline$AssetGroup;I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyDataSetChanged()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->updateTimelineView()V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->projectID:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/Editor;->createBumperClip(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v2

    .line 149
    if-nez v2, :cond_6

    const-wide/16 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->bumperDuration:J

    .line 150
    return-void

    .line 149
    :cond_6
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v2

    goto :goto_4
.end method

.method protected triggerProjectPosterSave()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/adobe/premiereclip/editor/Timeline;->triggerProjectPosterSave()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/editor/automatic/AutomaticTimeline;->firstClipDirty:Z

    .line 156
    return-void
.end method

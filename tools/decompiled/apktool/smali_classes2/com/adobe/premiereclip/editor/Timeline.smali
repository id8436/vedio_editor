.class public Lcom/adobe/premiereclip/editor/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"


# static fields
.field public static final ANIMATION_DURATION:I = 0x3e8

.field protected static final COLUMN_COUNT:I = 0x4

.field public static final FORCE_UPDATE_POSTER_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Timeline"


# instance fields
.field private CoachmarkAdjust:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

.field protected activity:Landroid/app/Activity;

.field protected bumperDuration:J

.field protected clipDeleteListener:Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;

.field protected mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

.field protected final mAnimator:Lcom/e/a/a/a/a/c;

.field private mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

.field protected mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

.field protected mWrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private pendingProjectPosterIdentifier:Ljava/lang/String;

.field protected projectID:Ljava/lang/String;

.field private projectPosterIdentifier:Ljava/lang/String;

.field protected timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

.field protected final timelineThumbSize:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->CoachmarkAdjust:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    .line 89
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline;->activity:Landroid/app/Activity;

    .line 90
    iput-object p2, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectID:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c02eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 96
    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x5

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->timelineThumbSize:I

    .line 98
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    const v1, 0x7f040189

    invoke-virtual {v0, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 101
    const v1, 0x7f12060d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 105
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->activity:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v1, Lcom/adobe/premiereclip/editor/Timeline$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/editor/Timeline$1;-><init>(Lcom/adobe/premiereclip/editor/Timeline;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 115
    new-instance v0, Lcom/e/a/a/a/b/l;

    invoke-direct {v0}, Lcom/e/a/a/a/b/l;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    .line 117
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0, v3}, Lcom/e/a/a/a/b/l;->a(Z)V

    .line 118
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/e/a/a/a/b/l;->b(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline;->createNewAdapter()Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    .line 125
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    invoke-virtual {v1, v0}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mWrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 127
    new-instance v0, Lcom/e/a/a/a/a/d;

    invoke-direct {v0}, Lcom/e/a/a/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAnimator:Lcom/e/a/a/a/a/c;

    .line 129
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mWrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 130
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAnimator:Lcom/e/a/a/a/a/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/e/a/a/a/b/l;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 134
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-direct {v1, v2, p1}, Lcom/adobe/premiereclip/util/Utilities$AdapterImageLoaderOnScrollListener;-><init>(Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 136
    new-instance v0, Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    invoke-direct {v0, p1, v3}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    .line 137
    invoke-static {p1}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    .line 138
    return-void
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/editor/Timeline;)Lcom/adobe/premiereclip/ClipPreferences;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/editor/Timeline;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/adobe/premiereclip/editor/Timeline;->showCoachmark()V

    return-void
.end method

.method private showCoachmark()V
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->CoachmarkAdjust:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mPreferences:Lcom/adobe/premiereclip/ClipPreferences;

    const-string/jumbo v1, "FREEFORM_ADJUST"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getPreference(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->CoachmarkAdjust:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/coachmarks/CoachMarks;->showCoachMarkWithOk(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V

    .line 871
    :cond_0
    return-void
.end method


# virtual methods
.method public addClip(Lcom/adobe/premiereclip/project/sequence/Clip;I)V
    .locals 16

    .prologue
    .line 172
    const/4 v14, 0x0

    .line 173
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v2, :cond_0

    move-object/from16 v2, p1

    .line 174
    check-cast v2, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->isStoryCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v14, 0x1

    .line 178
    :cond_0
    new-instance v3, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/adobe/premiereclip/project/sequence/Clip;->stableId:J

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v10

    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v15

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v15}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;-><init>(Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/media/ClipAsset;JLjava/lang/String;ZJJZLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->addClip(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v2

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/Timeline;->updateProjectPoster(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/Timeline;->updateTimelineView()V

    .line 185
    return-void
.end method

.method protected createNewAdapter()Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;-><init>(Lcom/adobe/premiereclip/editor/Timeline;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method protected deleteProjectPoster()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->pendingProjectPosterIdentifier:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline;->triggerProjectPosterSave()V

    .line 248
    return-void
.end method

.method public getCoachmarkObject()Lcom/adobe/premiereclip/coachmarks/CoachMarks;
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mCoachmark:Lcom/adobe/premiereclip/coachmarks/CoachMarks;

    return-object v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 840
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/l;->b()V

    .line 842
    iput-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 847
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 848
    iput-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mWrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 852
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mWrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {v0}, Lcom/e/a/a/a/d/e;->a(Landroid/support/v7/widget/RecyclerView$Adapter;)Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 853
    iput-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mWrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 855
    :cond_2
    iput-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    .line 856
    iput-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 857
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerViewDragDropManager:Lcom/e/a/a/a/b/l;

    invoke-virtual {v0}, Lcom/e/a/a/a/b/l;->d()V

    .line 837
    return-void
.end method

.method public projectPosterSaved()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->pendingProjectPosterIdentifier:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline;->triggerProjectPosterSave()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->pendingProjectPosterIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline;->triggerProjectPosterSave()V

    goto :goto_0
.end method

.method public refreshClipsTime(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 794
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 801
    :cond_0
    return-void

    .line 797
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->setClipDurationUs(J)V

    .line 799
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 797
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public removeClip(I)V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->removeClipFromView(I)V

    .line 233
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    invoke-interface {v0, p1}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipRemoved(I)V

    .line 234
    const-string/jumbo v0, "Project Poster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline;->updateProjectPoster(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline;->updateTimelineView()V

    .line 238
    return-void
.end method

.method public resetClip(Lcom/adobe/premiereclip/project/sequence/Clip;I)V
    .locals 16

    .prologue
    .line 188
    const/4 v14, 0x0

    .line 189
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v2, :cond_0

    move-object/from16 v2, p1

    .line 190
    check-cast v2, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->isStoryCard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const/4 v14, 0x1

    .line 194
    :cond_0
    new-instance v3, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    add-int/lit8 v4, p2, 0x1

    .line 195
    invoke-virtual {v2, v4}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v9

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v15

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v15}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;-><init>(Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/media/ClipAsset;JLjava/lang/String;ZJJZLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V

    .line 198
    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v2

    sget-object v4, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v2, v4, :cond_1

    .line 201
    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-static {v2}, Lcom/adobe/premiereclip/util/BitmapCache;->markBitmapDirty(Ljava/lang/String;)V

    .line 203
    invoke-static {v2}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->resetKey(Ljava/lang/String;)V

    .line 205
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    move/from16 v0, p2

    invoke-virtual {v2, v3, v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->replaceClip(Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    move/from16 v0, p2

    invoke-interface {v2, v0}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/editor/Timeline;->updateProjectPoster(Ljava/lang/String;)V

    .line 209
    :cond_2
    return-void
.end method

.method public resetClipThumb(I)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    .line 217
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v1, v2, :cond_0

    .line 218
    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->markBitmapDirty(Ljava/lang/String;)V

    .line 220
    invoke-static {v0}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->resetKey(Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    .line 224
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    invoke-interface {v0, p1}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterIdentifier:Ljava/lang/String;

    .line 227
    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline;->updateProjectPoster(Ljava/lang/String;)V

    .line 229
    :cond_1
    return-void
.end method

.method public setActiveClipIndex(IZ)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->setActiveClipIndex(IZ)V

    .line 213
    return-void
.end method

.method public setClipDeleteListener(Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline;->clipDeleteListener:Lcom/adobe/premiereclip/editor/Timeline$ClipDeleteListener;

    .line 783
    return-void
.end method

.method public setClips(Ljava/util/ArrayList;I)V
    .locals 18
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
    .line 145
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 146
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 147
    const/4 v2, 0x0

    move/from16 v16, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 148
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 149
    const/4 v14, 0x0

    .line 150
    instance-of v3, v2, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 151
    check-cast v3, Lcom/adobe/premiereclip/project/sequence/ImageClip;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/ImageClip;->isStoryCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    const/4 v14, 0x1

    .line 155
    :cond_0
    new-instance v3, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getClipAsset()Lcom/adobe/premiereclip/media/ClipAsset;

    move-result-object v5

    iget-wide v6, v2, Lcom/adobe/premiereclip/project/sequence/Clip;->stableId:J

    .line 156
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v9

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v10

    .line 157
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v15

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v15}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;-><init>(Lcom/adobe/premiereclip/editor/Timeline;Lcom/adobe/premiereclip/media/ClipAsset;JLjava/lang/String;ZJJZLcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;)V

    .line 155
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/Timeline;->updateProjectPoster()V

    .line 164
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->updateData(Ljava/util/ArrayList;I)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/Timeline;->updateTimelineView()V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/premiereclip/editor/Timeline;->projectID:Ljava/lang/String;

    invoke-static {v2}, Lcom/adobe/premiereclip/dcx/DCXReader;->getBumperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/Editor;->createBumperClip(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v2

    .line 168
    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/adobe/premiereclip/editor/Timeline;->bumperDuration:J

    .line 169
    return-void

    .line 162
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/premiereclip/editor/Timeline;->deleteProjectPoster()V

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUs()J

    move-result-wide v2

    goto :goto_2
.end method

.method public setCoachmarkParam(Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline;->CoachmarkAdjust:Lcom/adobe/premiereclip/coachmarks/CoachMarks$CoachmarkParam;

    .line 865
    return-void
.end method

.method public setTimelineListener(Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    .line 833
    return-void
.end method

.method protected triggerProjectPosterSave()V
    .locals 1

    .prologue
    .line 283
    invoke-static {}, Lcom/adobe/premiereclip/util/ProjectPosterTask;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->pendingProjectPosterIdentifier:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterIdentifier:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onProjectPosterUpdated()V

    .line 287
    :cond_0
    return-void
.end method

.method public updateDuration(J)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->updateDuration(J)V

    .line 304
    return-void
.end method

.method public updateProjectPoster()V
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterIdentifier:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->timelineListener:Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$TimelineListener;->onClipChanged(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/premiereclip/editor/Timeline;->updateProjectPoster(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected updateProjectPoster(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    if-nez p1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline;->deleteProjectPoster()V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline;->pendingProjectPosterIdentifier:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterIdentifier:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 264
    const-string/jumbo v0, "Timeline"

    const-string/jumbo v1, "project poster identifier is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline;->triggerProjectPosterSave()V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->pendingProjectPosterIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->projectPosterIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline;->triggerProjectPosterSave()V

    goto :goto_0
.end method

.method public updateTimeOfClipAt(IJJ)V
    .locals 14

    .prologue
    .line 804
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 829
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    .line 811
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getOptimizedStartTime(J)J

    move-result-wide v6

    .line 812
    const-string/jumbo v4, "Timeline"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clip thumb before: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v3}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getStartTimeMs()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-wide/16 v4, 0x3e8

    div-long v4, v6, v4

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v3}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getStartTimeMs()J

    move-result-wide v8

    cmp-long v3, v4, v8

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move v4, v3

    .line 814
    :goto_1
    move-wide/from16 v0, p4

    long-to-double v8, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    iget-object v3, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v3}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getClipDurationUs()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    cmp-long v3, v8, v10

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 815
    :goto_2
    if-nez v4, :cond_2

    if-eqz v3, :cond_0

    .line 819
    :cond_2
    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->setClipDurationUs(J)V

    .line 820
    invoke-virtual {v2, v6, v7}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->setStartTimeUs(J)V

    .line 822
    if-eqz v4, :cond_5

    .line 823
    const-string/jumbo v3, "Timeline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetting clip thumb: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long v4, v6, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-static {v2}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->access$000(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/editor/Timeline$ClipAssetWrapper;->getStartTimeMs()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/editor/Timeline;->resetClipThumb(I)V

    goto/16 :goto_0

    .line 813
    :cond_3
    const/4 v3, 0x0

    move v4, v3

    goto :goto_1

    .line 814
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 826
    :cond_5
    const-string/jumbo v2, "Timeline"

    const-string/jumbo v3, "not resetting clip thumb"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v2, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->notifyItemWithoutRecyclingViewHolder(I)V

    goto/16 :goto_0
.end method

.method protected updateTimelineView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->getItemCount()I

    move-result v0

    .line 294
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget v1, p0, Lcom/adobe/premiereclip/editor/Timeline;->timelineThumbSize:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mAdapter:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->scrollToActiveClip()V

    .line 300
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_0
.end method

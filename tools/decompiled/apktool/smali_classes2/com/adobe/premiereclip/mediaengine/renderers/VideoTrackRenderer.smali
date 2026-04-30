.class public Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;
.super Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;
.source "VideoTrackRenderer.java"


# instance fields
.field private clipRendererResourcePool:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;

.field private clipRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private clipRenderingIndex:I

.field private clipRenderingOnly:Z

.field private context:Landroid/content/Context;

.field private emptyTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

.field private isEnded:Z

.field private trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

.field private videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/VideoTrack;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V

    .line 61
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->context:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    .line 63
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->width:I

    .line 64
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->height:I

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    .line 66
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getOverlay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v5, v6

    .line 67
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 68
    iget-object v7, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    new-instance v0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/project/sequence/Clip;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/Clip;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v4, v6

    .line 66
    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;-><init>(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    .line 72
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-direct {v0, p1, v1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRendererResourcePool:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;

    .line 73
    iput-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->isEnded:Z

    .line 74
    iput-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingOnly:Z

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingIndex:I

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->emptyTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Lcom/adobe/premiereclip/project/sequence/VideoTrack;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    return-object v0
.end method

.method private assignResourcesForClipIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getOverlay()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRendererResourcePool:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;

    invoke-virtual {v1, v0, p1}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->getResourcesForClipIndex(II)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    move-result-object v1

    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->setClipRendererResources(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;)V

    .line 135
    :cond_0
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getFrameAtTime(JJLjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingOnly:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingIndex:I

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    new-instance v2, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$1;-><init>(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v2, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClipsAtTrackTimeUs(J)Ljava/util/ArrayList;

    move-result-object v11

    .line 151
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v2, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getTransition(J)Lcom/adobe/premiereclip/project/sequence/Transition;

    move-result-object v5

    .line 152
    const/4 v4, -0x1

    .line 153
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 154
    const-string/jumbo v2, "VideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ended time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->isEnded:Z

    .line 156
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getLastAvailClipIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 157
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getLastAvailClipIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v3

    .line 158
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    iget-object v5, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getLastAvailClipIndex()I

    move-result v5

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->trackTimeFromClipTime(IJ)J

    move-result-wide v6

    .line 159
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v2, v6, v7}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getTransition(J)Lcom/adobe/premiereclip/project/sequence/Transition;

    move-result-object v2

    .line 160
    new-instance v5, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v6}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getLastAvailClipIndex()I

    move-result v6

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v8

    invoke-direct {v5, v6, v8, v9}, Lcom/adobe/premiereclip/project/sequence/Playable;-><init>(IJ)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v4

    move-object v10, v2

    .line 190
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Playable;

    .line 191
    iget v3, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    iget v3, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->assignResourcesForClipIndex(I)V

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    iget v4, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    iget-wide v4, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipOffsetUs:J

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->getFrameAtTime(JJLjava/util/List;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 195
    :catch_0
    move-exception v3

    .line 196
    invoke-virtual {v3}, Lcom/google/android/exoplayer/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 198
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/project/sequence/Clip;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/adobe/premiereclip/project/sequence/Clip;->setTempUnavailable(Z)V

    .line 199
    iget v2, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    if-eq v4, v2, :cond_2

    .line 200
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->getFrameAtTime(JJLjava/util/List;)V

    goto/16 :goto_0

    .line 164
    :cond_3
    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingOnly:Z

    if-eqz v2, :cond_7

    .line 165
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_c

    .line 166
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Playable;

    .line 167
    iget v2, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    iget v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingIndex:I

    if-ne v2, v6, :cond_5

    move v2, v3

    .line 172
    :goto_4
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 173
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingIndex:I

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v3

    .line 175
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    iget v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingIndex:I

    invoke-virtual {v4, v6}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->trackStartTimeOfClip(I)J

    move-result-wide v6

    cmp-long v4, p1, v6

    if-gez v4, :cond_6

    .line 177
    new-instance v4, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingIndex:I

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v8

    invoke-direct {v4, v6, v8, v9}, Lcom/adobe/premiereclip/project/sequence/Playable;-><init>(IJ)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_4
    :goto_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->isEnded:Z

    move v9, v2

    move-object v10, v5

    goto/16 :goto_1

    .line 165
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 179
    :cond_6
    new-instance v4, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingIndex:I

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v8

    invoke-direct {v4, v6, v8, v9}, Lcom/adobe/premiereclip/project/sequence/Playable;-><init>(IJ)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 187
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->isEnded:Z

    move v9, v4

    move-object v10, v5

    goto/16 :goto_1

    .line 208
    :cond_8
    sget-boolean v2, Lcom/adobe/premiereclip/project/sequence/Sequence;->MODE_PLAYBACK:Z

    if-eqz v2, :cond_9

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v2, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getLastAvailClipIndex()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 209
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v2, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 210
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->disabledTransition()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 211
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v2, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->assignResourcesForClipIndex(I)V

    .line 215
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v2, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v4

    .line 216
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v2, v2, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    invoke-virtual {v2, v4, v5}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->getFrameAtTimeAsync(J)V

    .line 222
    :cond_9
    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingOnly:Z

    if-nez v2, :cond_a

    .line 223
    iget v2, v10, Lcom/adobe/premiereclip/project/sequence/Transition;->blendFactor:F

    .line 232
    :goto_6
    new-instance v3, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;

    invoke-direct {v3, p0, v2, v11}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$2;-><init>(Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;FLjava/util/ArrayList;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 225
    :cond_a
    const/4 v2, 0x1

    if-ne v9, v2, :cond_b

    .line 226
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_6

    .line 228
    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    move v2, v4

    goto/16 :goto_4
.end method

.method public init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->init()V

    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRendererResourcePool:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->initResources(II)V

    .line 98
    invoke-direct {p0, v5}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->assignResourcesForClipIndex(I)V

    .line 100
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->height:I

    sget-object v3, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;->NORMAL:Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    const/4 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;-><init>(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;IZ)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->emptyTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 102
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->emptyTexture:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setGPUMediaTexture(ILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 104
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->onOutputSizeChanged(II)V

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->init()V

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getXOffset()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setTextureXOffset(F)V

    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getYOffset()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->setTextureYOffset(F)V

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->addFilterToChain(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 110
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->isEnded:Z

    return v0
.end method

.method public onDisplaySizeChanged()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->width:I

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->height:I

    .line 82
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;->onDisplaySizeChanged()V

    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;->onOutputSizeChanged(II)V

    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRendererResourcePool:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->width:I

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->onOutputSizeChanged(II)V

    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->trackFilter:Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer$TrackFilter;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->outputFrameBuffer:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->changeBuffer(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V

    .line 86
    return-void
.end method

.method protected onReleased()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    .line 272
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->onReleased()V

    goto :goto_0

    .line 274
    :cond_0
    invoke-static {}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getInstance()Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->releaseAllDecoders()V

    .line 275
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRendererResourcePool:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResourcePool;->release()V

    .line 277
    return-void
.end method

.method public resetClips()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getInstance()Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->releaseAllDecoders()V

    .line 114
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getOverlay()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v5, v0

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 117
    iget-object v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    new-instance v0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->videoTrack:Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/Clip;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    .line 115
    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

.method public resetPosition()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;

    .line 123
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->resetAsync()V

    goto :goto_0

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->isEnded:Z

    .line 126
    return-void
.end method

.method public setClipRendering(I)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingOnly:Z

    .line 90
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/VideoTrackRenderer;->clipRenderingIndex:I

    .line 91
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/adobe/premiereclip/mediaengine/SequencePlayer;
.super Ljava/lang/Object;
.source "SequencePlayer.java"

# interfaces
.implements Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;


# instance fields
.field private _trackPlayMetricsOnStop:Z

.field private _trackSequencePlayFull:Z

.field private audioSequenceSampleSource:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;

.field private clipPlayback:Z

.field private currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

.field private exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

.field private initialized:Z

.field private listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

.field private playerState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

.field private sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

.field private videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playerState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    return-object p1
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->clipPlayback:Z

    return v0
.end method

.method private isClipEndedLessPrecision(IJ)Z
    .locals 4

    .prologue
    .line 219
    const-wide/32 v2, 0x186a0

    .line 220
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v0

    sub-long v0, p2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseInternal()V
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->pause()V

    .line 384
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onPaused()V

    .line 387
    :cond_0
    return-void
.end method

.method private setActiveClip(I)V
    .locals 1

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setActiveClip(IZ)V

    .line 473
    return-void
.end method

.method private setActiveClip(IZ)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_2

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->setCurrentClip(I)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$402(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;I)I

    .line 481
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z

    .line 483
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setTrimBarsForClip(I)V

    .line 487
    :cond_2
    return-void

    .line 481
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setClipTimeNormalized(IJZ)V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 226
    long-to-float v1, p2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    long-to-float v0, v2

    div-float/2addr v1, v0

    .line 227
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playerState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    sget-object v3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    if-eq v0, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->setClipTime(FZ)V

    .line 230
    :cond_1
    return-void

    .line 227
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPlaybackState(Z)V
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 271
    return-void
.end method

.method private setTrimBarsForClip(I)V
    .locals 6

    .prologue
    .line 491
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 492
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUs()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 493
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUs()J

    move-result-wide v2

    long-to-float v2, v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v4

    long-to-float v0, v4

    div-float v0, v2, v0

    .line 494
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->updateTrimBars(FF)V

    .line 497
    :cond_0
    return-void
.end method


# virtual methods
.method public getClipSaveState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;
    .locals 5

    .prologue
    .line 449
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$300(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)Z

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;-><init>(IJZ)V

    .line 450
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$300(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 451
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipOffset:J

    .line 455
    :goto_0
    return-object v1

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->getCurrentClipOffset()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipOffset:J

    goto :goto_0
.end method

.method public getCurrentClipOffset()J
    .locals 6

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->getCurrentPlayTimeUs()J

    move-result-wide v2

    .line 405
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClipsAtSequenceTimeUs(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v0, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    if-ne v4, v0, :cond_0

    .line 407
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget-wide v0, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipOffsetUs:J

    .line 416
    :goto_0
    return-wide v0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 409
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 410
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/adobe/premiereclip/project/sequence/Sequence;->sequenceStartTimeOfClip(I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 411
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v0

    goto :goto_0

    .line 413
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v0

    goto :goto_0

    .line 416
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPlayTimeUs()J
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const-wide/16 v0, -0x1

    .line 303
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public getPlayerState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playerState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 187
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->clipPlayback:Z

    .line 188
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    .line 189
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 190
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->LOADING:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playerState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    .line 191
    new-array v0, v5, [Lcom/google/android/exoplayer/TrackRenderer;

    .line 192
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 193
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-direct {v1, p2, p0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;-><init>(Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    .line 194
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    aput-object v1, v0, v4

    .line 196
    new-instance v1, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-direct {v1, p1, v2}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;-><init>(Landroid/content/Context;Lcom/adobe/premiereclip/project/sequence/Sequence;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->audioSequenceSampleSource:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;

    .line 198
    new-instance v1, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->audioSequenceSampleSource:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;)V

    aput-object v1, v0, v6

    .line 201
    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    invoke-static {v5, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    .line 202
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 203
    iput-boolean v6, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    .line 204
    const-wide/16 v0, 0x0

    .line 205
    new-instance v2, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-direct {v2, p0, v3, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;IZ)V

    iput-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    .line 206
    iget v2, p3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    if-eq v2, v3, :cond_0

    iget v2, p3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    iget v1, p3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    iget-wide v2, p3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipOffset:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->sequenceTimeFromClipTime(IJ)J

    move-result-wide v0

    .line 208
    iget v2, p3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    invoke-direct {p0, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setActiveClip(I)V

    .line 209
    iget v2, p3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipIndex:I

    iget-wide v4, p3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->clipOffset:J

    invoke-direct {p0, v2, v4, v5, v6}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipTimeNormalized(IJZ)V

    .line 210
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    iget-boolean v3, p3, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;->isEnded:Z

    invoke-static {v2, v3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z

    .line 214
    :goto_0
    invoke-virtual {p0, v6}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipPlayback(Z)V

    .line 215
    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToSequenceTime(J)V

    .line 216
    return-void

    .line 212
    :cond_0
    invoke-direct {p0, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setActiveClip(I)V

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnded()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 549
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    if-eqz v0, :cond_0

    .line 550
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 551
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationInSeconds()D

    move-result-wide v2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 552
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v4

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 553
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v5

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 554
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 550
    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/metrics/Metrics;->didPlaySequenceWithDuration(DIILjava/lang/Boolean;)V

    .line 557
    :cond_0
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    .line 558
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 559
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->pauseInternal()V

    .line 560
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z

    .line 561
    return-void
.end method

.method public onReleased()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 565
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 567
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationInSeconds()D

    move-result-wide v2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 568
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v4

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 569
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v5

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 570
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 566
    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/metrics/Metrics;->didPlaySequenceWithDuration(DIILjava/lang/Boolean;)V

    .line 573
    :cond_0
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    .line 574
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 575
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onReleased()V

    .line 576
    return-void
.end method

.method public onTimeUpdate(J)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 502
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->setSequenceTime(J)V

    .line 504
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClipsAtSequenceTimeUs(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 506
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v1, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z

    .line 507
    iget-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->clipPlayback:Z

    if-nez v1, :cond_3

    .line 508
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    .line 509
    iget v1, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setActiveClip(I)V

    .line 510
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 511
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->foundUnavailableClip(I)V

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v1

    if-lez v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 516
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->foundUnavailableClip(I)V

    .line 520
    :cond_1
    iget v1, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    iget-wide v2, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipOffsetUs:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipTimeNormalized(IJZ)V

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onLoadingCompleted()V

    .line 545
    :cond_2
    :goto_1
    return-void

    .line 522
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    .line 523
    iget v2, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 524
    iget v1, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    iget-wide v2, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipOffsetUs:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipTimeNormalized(IJZ)V

    .line 525
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    iget v2, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    iget-wide v4, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipOffsetUs:J

    invoke-direct {p0, v2, v4, v5}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->isClipEndedLessPrecision(IJ)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z

    .line 526
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onLoadingCompleted()V

    goto :goto_1

    .line 530
    :cond_5
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->pauseInternal()V

    .line 531
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v1, "current clip: isended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0, v5}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z

    goto :goto_0

    .line 535
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 536
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 537
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipTimeNormalized(IJZ)V

    goto/16 :goto_0

    .line 539
    :cond_7
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v5}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->setClipTime(FZ)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 365
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0, v7}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setPlaybackState(Z)V

    .line 368
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    if-eqz v0, :cond_1

    .line 369
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 370
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getSequenceDurationInSeconds()D

    move-result-wide v2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 371
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numAudioClips()I

    move-result v4

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 372
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->numVideoClips()I

    move-result v5

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 373
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 369
    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/metrics/Metrics;->didPlaySequenceWithDuration(DIILjava/lang/Boolean;)V

    .line 376
    :cond_1
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    .line 377
    iput-boolean v7, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 378
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PAUSED:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playerState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    .line 379
    return-void
.end method

.method public playClip()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 256
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_CLIP:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playerState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    .line 260
    invoke-virtual {p0, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipPlayback(Z)V

    .line 261
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$300(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToClipTime(IJ)V

    .line 264
    :cond_2
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    .line 265
    invoke-direct {p0, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setPlaybackState(Z)V

    goto :goto_0
.end method

.method public playSequence()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;->PLAYING_SEQUENCE:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->playerState:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$PLAYER_STATE;

    .line 278
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->getCurrentPlayTimeUs()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 279
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getLastAvailClipIndex()I

    move-result v3

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$300(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z

    .line 281
    invoke-virtual {p0, v6, v7}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToSequenceTime(J)V

    .line 282
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackSequencePlayFull:Z

    .line 284
    :cond_2
    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipPlayback(Z)V

    .line 285
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->_trackPlayMetricsOnStop:Z

    .line 286
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setPlaybackState(Z)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 278
    goto :goto_1
.end method

.method public reinitAudio(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 351
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->audioSequenceSampleSource:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->audioSequenceSampleSource:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->resetSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;I)V

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->audioSequenceSampleSource:Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/AudioSequenceSampleSource;->prepare()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lcom/google/android/exoplayer/ExoPlayer;->setRendererEnabled(IZ)V

    .line 361
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, v3, v3}, Lcom/google/android/exoplayer/ExoPlayer;->setRendererEnabled(IZ)V

    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public release()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 437
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onReleased()V

    .line 439
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;-><init>(IJZ)V

    .line 445
    :goto_0
    return-object v0

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->getClipSaveState()Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ClipSaveState;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    .line 444
    iput-boolean v4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    goto :goto_0
.end method

.method public resetClips()V
    .locals 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onLoadingStarted()V

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public seekCurrentClipToOffset(F)V
    .locals 8

    .prologue
    .line 307
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->setPendingSeek()V

    .line 312
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onLoadingStarted()V

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 316
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v1

    div-float v1, p1, v1

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    .line 317
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v4

    invoke-direct {p0, v4, v2, v3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->isClipEndedLessPrecision(IJ)Z

    move-result v4

    invoke-static {v1, v4}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$302(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;Z)Z

    .line 318
    const-string/jumbo v1, "endedissue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current clip: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v5}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " orioffset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ended: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    .line 320
    invoke-static {v5}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$300(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ended time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 322
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v0

    .line 326
    :goto_1
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v3}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->sequenceTimeFromClipTime(IJ)J

    move-result-wide v0

    .line 327
    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToSequenceTime(J)V

    goto/16 :goto_0

    .line 323
    :cond_3
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 324
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getEndTimeUsWithSpeed()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method public seekToClipTime(IJ)V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->setPendingSeek()V

    .line 394
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onLoadingStarted()V

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->sequenceTimeFromClipTime(IJ)J

    move-result-wide v0

    .line 398
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setActiveClip(I)V

    .line 399
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipPlayback(Z)V

    .line 400
    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToSequenceTime(J)V

    goto :goto_0
.end method

.method public seekToSequenceTime(J)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 420
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 421
    :cond_0
    const-string/jumbo v0, "VideoRend"

    const-string/jumbo v1, "exoplayer null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->setPendingSeek()V

    .line 425
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onLoadingStarted()V

    .line 429
    :cond_2
    div-long v0, p1, v2

    .line 430
    rem-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 431
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 433
    :cond_3
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method public selectClip(IZ)V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 336
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->setPendingSeek()V

    .line 337
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    if-eqz v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->onLoadingStarted()V

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->sequenceStartTimeOfClip(I)J

    move-result-wide v0

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setActiveClip(IZ)V

    .line 342
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setClipPlayback(Z)V

    .line 343
    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->seekToSequenceTime(J)V

    goto :goto_0

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->setActiveClip(IZ)V

    goto :goto_0
.end method

.method public setClipPlayback(Z)V
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->initialized:Z

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->exoPlayer:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->currentClip:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;

    .line 241
    invoke-static {v0}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;->access$400(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$CurrentClip;)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 240
    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    .line 243
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->clipPlayback:Z

    if-eq v0, p1, :cond_0

    .line 244
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->clipPlayback:Z

    .line 245
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->reinitAudio(Z)V

    goto :goto_0

    .line 241
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public setListener(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;)V
    .locals 2

    .prologue
    .line 463
    if-nez p1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 466
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;-><init>(Lcom/adobe/premiereclip/mediaengine/SequencePlayer;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$1;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    .line 467
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->access$002(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;)Lcom/adobe/premiereclip/mediaengine/SequencePlayer$Listener;

    .line 468
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->listenerWrapper:Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;->access$602(Lcom/adobe/premiereclip/mediaengine/SequencePlayer$ListenerWrapper;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0
.end method

.method public setScrubbing(Z)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/SequencePlayer;->videoPlayerRenderer:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->setScrubbing(Z)V

    .line 253
    :cond_0
    return-void
.end method

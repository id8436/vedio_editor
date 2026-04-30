.class public Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;
.super Lcom/google/android/exoplayer/TrackRenderer;
.source "VideoPlayerRenderer.java"


# static fields
.field public static final MSG_READY:I = 0x3

.field public static final MSG_RESET_CLIPS:I = 0x0

.field public static final MSG_SET_CLIP_PLAYBACK:I = 0x1

.field public static final MSG_SET_PLAYBACK_STATE:I = 0x2


# instance fields
.field private exception:Lcom/google/android/exoplayer/ExoPlaybackException;

.field private filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

.field private glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

.field private listener:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private volatile pendingSeek:Z

.field private playing:Z

.field private volatile prepared:Z

.field private volatile preparing:Z

.field private reset:Z

.field private volatile scrubbing:Z

.field private seeking:Z

.field private sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/google/android/exoplayer/TrackRenderer;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    .line 68
    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->listener:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;

    .line 69
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getGlView()Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    .line 70
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->preparing:Z

    .line 71
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->prepared:Z

    .line 72
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    .line 73
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->seeking:Z

    .line 74
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->scrubbing:Z

    .line 75
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->playing:Z

    .line 76
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->reset:Z

    .line 77
    iput-boolean v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->pendingSeek:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->mOutputWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->mOutputHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->prepared:Z

    return p1
.end method

.method static synthetic access$602(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->preparing:Z

    return p1
.end method


# virtual methods
.method protected doPrepare()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->preparing:Z

    if-eqz v0, :cond_0

    .line 84
    monitor-exit p0

    .line 113
    :goto_0
    return v2

    .line 85
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->prepared:Z

    if-eqz v0, :cond_1

    .line 86
    monitor-exit p0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 87
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->exception:Lcom/google/android/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->exception:Lcom/google/android/exoplayer/ExoPlaybackException;

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->exception:Lcom/google/android/exoplayer/ExoPlaybackException;

    .line 90
    throw v0

    .line 92
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->preparing:Z

    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;

    invoke-direct {v1, p0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$1;-><init>(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method protected doSomeWork(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->reset:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->pendingSeek:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->prepared:Z

    if-nez v0, :cond_2

    .line 172
    :cond_0
    const-string/jumbo v0, "VideoRend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset still "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->pendingSeek:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->prepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->mOutputWidth:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->mOutputHeight:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->mOutputWidth:I

    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->getDisplayHeight()I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->mOutputHeight:I

    .line 179
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$2;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$2;-><init>(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->scrubbing:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->playing:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->seeking:Z

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, -0x1

    :goto_1
    int-to-long v4, v0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getFrameAtTime(JJLjava/util/List;)V

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->seeking:Z

    .line 189
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->pendingSeek:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->reset:Z

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    new-instance v1, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$3;

    invoke-direct {v1, p0, v6}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$3;-><init>(Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->runOnDraw(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->requestRender()V

    .line 201
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->listener:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->listener:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;

    invoke-interface {v0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;->onTimeUpdate(J)V

    goto :goto_0

    .line 187
    :cond_6
    const/16 v0, 0x7530

    goto :goto_1
.end method

.method protected getBufferedPositionUs()J
    .locals 2

    .prologue
    .line 218
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected getCurrentPositionUs()J
    .locals 2

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDurationUs()J
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer/TrackRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 138
    :goto_0
    return-void

    .line 120
    :pswitch_0
    const-string/jumbo v0, "VideoRend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clip playback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->setClipRendering(I)V

    goto :goto_0

    .line 124
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->reset:Z

    .line 125
    const-string/jumbo v0, "VideoRend"

    const-string/jumbo v1, "reset true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->resetClips()V

    goto :goto_0

    .line 129
    :pswitch_2
    const-string/jumbo v0, "VideoRend"

    const-string/jumbo v1, "reset false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->reset:Z

    goto :goto_0

    .line 133
    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->playing:Z

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected isEnded()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v1, "ended: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->listener:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->listener:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;->onEnded()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isEnded()Z

    move-result v0

    return v0
.end method

.method protected isReady()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onEnabled(JZ)V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->pendingSeek:Z

    .line 151
    return-void
.end method

.method protected onReleased()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->resetClips()V

    .line 241
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->resetPosition()V

    .line 242
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->glView:Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->filter:Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;->removeFilterFromChain(Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;)V

    .line 243
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->seeking:Z

    .line 244
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->playing:Z

    .line 245
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->scrubbing:Z

    .line 246
    iput-boolean v2, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->reset:Z

    .line 247
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->listener:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->listener:Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer$Listener;->onReleased()V

    .line 250
    :cond_0
    return-void
.end method

.method protected seekTo(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 223
    const-string/jumbo v0, "VideoRend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seek to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->seeking:Z

    .line 225
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->reset:Z

    .line 226
    iput-boolean v3, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->pendingSeek:Z

    .line 227
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->sequenceRenderer:Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/renderers/SequenceRenderer;->resetPosition()V

    .line 228
    return-void
.end method

.method public setPendingSeek()V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->pendingSeek:Z

    .line 142
    return-void
.end method

.method public setScrubbing(Z)V
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/adobe/premiereclip/mediaengine/playercomponent/VideoPlayerRenderer;->scrubbing:Z

    .line 146
    return-void
.end method

.class public Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;
.super Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;
.source "ClipRenderer.java"


# static fields
.field private static final motionSpeed:F = 0.03f


# instance fields
.field private asyncDone:Z

.field private clip:Lcom/adobe/premiereclip/project/sequence/Clip;

.field private clipIndex:I

.field private clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

.field private mContext:Landroid/content/Context;

.field private final startScale:F

.field private trackIndex:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;Lcom/adobe/premiereclip/project/sequence/Clip;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/mediaengine/renderers/ComponentRenderer;-><init>(Lcom/adobe/premiereclip/mediaengine/gpumedia/GPUMediaSurfaceView;)V

    .line 51
    iput-object p3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 52
    invoke-virtual {p3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getScale()F

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->startScale:F

    .line 53
    iput p4, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->trackIndex:I

    .line 54
    iput p5, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipIndex:I

    .line 55
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->mContext:Landroid/content/Context;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->asyncDone:Z

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;)Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    return-object v0
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
    .line 104
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    if-nez v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->getMediaSurface()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    move-result-object v7

    .line 108
    invoke-static {}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getInstance()Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->trackIndex:I

    iget v6, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipIndex:I

    long-to-float v2, p1

    iget-object v8, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 112
    invoke-virtual {v8}, Lcom/adobe/premiereclip/project/sequence/Clip;->getSpeed()F

    move-result v8

    mul-float/2addr v2, v8

    float-to-long v8, v2

    const/4 v12, 0x0

    move-wide/from16 v10, p3

    .line 108
    invoke-virtual/range {v3 .. v12}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getFrameAtTime(Landroid/content/Context;IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;JJZ)J

    move-result-wide v2

    .line 116
    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 118
    :goto_1
    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getLook()Lcom/adobe/premiereclip/looks/BaseLook;

    move-result-object v5

    if-nez v2, :cond_6

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v5, v3}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;Z)V

    .line 119
    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipOptionEffects()Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->setClipEffects(Lcom/adobe/premiereclip/project/sequence/ClipOptionsEffects;)V

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getScalingOn()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 124
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v2

    sub-long v2, p1, v2

    long-to-float v2, v2

    .line 125
    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    .line 127
    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->startScale:F

    const v4, 0x3cf5c28f    # 0.03f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    .line 128
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    invoke-virtual {v3, v2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->setScale(F)V

    .line 133
    :goto_3
    invoke-virtual {v7}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getCropParamsChanged()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->onClipCropChanged()V

    .line 137
    :cond_3
    invoke-virtual {v7}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v7}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 138
    :cond_4
    new-instance v2, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer$1;

    invoke-direct {v2, p0}, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer$1;-><init>(Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;)V

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 116
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 118
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 130
    :cond_7
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->startScale:F

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->setScale(F)V

    goto :goto_3
.end method

.method public getFrameAtTimeAsync(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 87
    iget-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->asyncDone:Z

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    if-eqz v0, :cond_0

    .line 95
    iput-boolean v10, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->asyncDone:Z

    .line 97
    const-string/jumbo v0, "VideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getInstance()Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->trackIndex:I

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipIndex:I

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    .line 99
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->getMediaSurface()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    move-result-object v5

    const-wide/16 v8, -0x1

    move-wide v6, p1

    .line 98
    invoke-virtual/range {v1 .. v10}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getFrameAtTime(Landroid/content/Context;IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;JJZ)J

    goto :goto_0
.end method

.method public getOutputTexture()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;->getClipFrameBuffer()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public onDisplaySizeChanged()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method protected onReleased()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public resetAsync()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->asyncDone:Z

    .line 68
    return-void
.end method

.method public setClipRendererResources(Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    if-eq v0, p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/renderers/ClipRenderer;->clipRendererResources:Lcom/adobe/premiereclip/mediaengine/resources/ClipRendererResources;

    .line 74
    :cond_0
    return-void
.end method

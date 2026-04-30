.class Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;
.super Ljava/lang/Object;
.source "MediaDecoderCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

.field final synthetic val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

.field final synthetic val$mediaDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

.field final synthetic val$mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

.field final synthetic val$timeStampUs:J

.field final synthetic val$timoutUs:J


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;JLcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;JLcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    iput-object p2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$mediaDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    iput-wide p3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$timeStampUs:J

    iput-object p5, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    iput-wide p6, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$timoutUs:J

    iput-object p8, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$mediaDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->isGettingFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$mediaDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    iget-wide v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$timeStampUs:J

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$mediaSurface:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    iget-wide v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$timoutUs:J

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->getFrameAtTime(JLcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;J)J
    :try_end_0
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-virtual {v0}, Lcom/google/android/exoplayer/ExoPlaybackException;->printStackTrace()V

    .line 272
    :try_start_1
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$mediaDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->release()V

    .line 273
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->access$000(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :try_start_2
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    invoke-static {v1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->access$100(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$mediaDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 279
    :goto_1
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    monitor-enter v1

    .line 280
    :try_start_3
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    invoke-static {v2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->access$200(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;)Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 281
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 282
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v2, "Exception for clip which does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    monitor-exit v1

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 275
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_5 .. :try_end_5} :catch_1

    .line 276
    :catch_1
    move-exception v1

    .line 277
    invoke-virtual {v1}, Lcom/google/android/exoplayer/ExoPlaybackException;->printStackTrace()V

    goto :goto_1

    .line 285
    :cond_1
    :try_start_6
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-static {v3, v0, v4}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->access$300(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;Ljava/lang/Exception;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->access$400(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->val$clip:Lcom/adobe/premiereclip/project/sequence/Clip;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setTempUnavailable(Z)V

    .line 287
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;->this$0:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    new-instance v3, Lcom/google/android/exoplayer/ExoPlaybackException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->access$502(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;Lcom/google/android/exoplayer/ExoPlaybackException;)Lcom/google/android/exoplayer/ExoPlaybackException;

    .line 289
    :cond_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

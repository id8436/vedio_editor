.class public Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;
.super Ljava/lang/Object;
.source "MediaDecoderCache.java"


# static fields
.field private static final MAX_OPEN_MEDIA_COUNT:I = 0x3

.field private static mDecoderCache:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;


# instance fields
.field private currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

.field private currentDecoderCapacity:I

.field private mDecoderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private pendingException:Lcom/google/android/exoplayer/ExoPlaybackException;

.field private sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

.field private final syncObject:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoderCapacity:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->syncObject:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->syncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;)Ljava/util/List;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;)Lcom/adobe/premiereclip/project/sequence/Sequence;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;Ljava/lang/Exception;Lcom/adobe/premiereclip/project/sequence/Clip;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->isFailureDueToDecoderCapacity(Ljava/lang/Exception;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;Lcom/adobe/premiereclip/project/sequence/Clip;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->trimFeaturesForPerformance(Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;Lcom/google/android/exoplayer/ExoPlaybackException;)Lcom/google/android/exoplayer/ExoPlaybackException;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->pendingException:Lcom/google/android/exoplayer/ExoPlaybackException;

    return-object p1
.end method

.method private getCLipType(II)Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    return-object v0
.end method

.method private getClipSize(II)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDimensions()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getDecoder(Landroid/content/Context;IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 125
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getSourcePath(II)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->calculateHash(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 127
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 128
    invoke-direct {p0, p4}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->removeDecoderWithSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Z

    .line 129
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 178
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move v2, v7

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 137
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v1, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 139
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 140
    invoke-direct {p0, p4}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->removeDecoderWithSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Z

    move-result v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    invoke-direct {p0, p4, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->resetMediaSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;II)V

    goto :goto_0

    .line 132
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 151
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getCLipType(II)Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    .line 152
    sget-object v2, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$2;->$SwitchMap$com$adobe$premiereclip$project$sequence$Clip$CLIP_TYPE:[I

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getClipSize(II)[Ljava/lang/Object;

    move-result-object v3

    .line 160
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;

    aget-object v2, v3, v7

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v3, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x2

    aget-object v6, v3, v2

    check-cast v6, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/mediaengine/decoderutils/ImageDecoder;-><init>(Ljava/lang/String;IIIILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 164
    :goto_2
    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 165
    const-string/jumbo v0, "VideoDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Mediasurface connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0, p4}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->removeDecoderWithSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Z

    .line 170
    :goto_3
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoderCapacity:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoderCapacity:I

    if-lez v0, :cond_4

    .line 171
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v1, "Release decoder: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 173
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->releaseDecoder(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;)V

    goto :goto_3

    .line 155
    :pswitch_0
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_2

    .line 176
    :cond_4
    invoke-direct {p0, p4, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->resetMediaSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;II)V

    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-interface {v0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    goto/16 :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderCache:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderCache:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    .line 53
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderCache:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;

    return-object v0
.end method

.method private getSourcePath(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getAssetPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isFailureDueToDecoderCapacity(Ljava/lang/Exception;Lcom/adobe/premiereclip/project/sequence/Clip;)Z
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p2}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->isUltraHD(Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v0

    return v0
.end method

.method private isUltraHD(Lcom/adobe/premiereclip/project/sequence/Clip;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDimensions()[Ljava/lang/Object;

    move-result-object v4

    .line 104
    aget-object v0, v4, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 105
    aget-object v0, v4, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v4

    .line 107
    sget-object v5, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v4, v5, :cond_1

    .line 108
    if-ge v3, v0, :cond_0

    move v0, v3

    .line 111
    :cond_0
    const/16 v3, 0x438

    if-lt v0, v3, :cond_1

    move v0, v1

    .line 115
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private notifySequenceNotSetError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/google/android/exoplayer/ExoPlaybackException;

    const-string/jumbo v1, "Sequence not set"

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method private releaseDecoder(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget v0, p1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->setDisableTransition(Z)V

    .line 185
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p1, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->clipIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->setTempUnavailable(Z)V

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->release()V

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoderCapacity:I

    .line 189
    monitor-exit p0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeDecoderWithSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->getSurface()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "VideoDecoder"

    const-string/jumbo v1, "connected mediasurface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->getSurface()Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 82
    const-string/jumbo v0, "VideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Release surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 84
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->releaseDecoder(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;)V

    .line 85
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    const/4 v2, 0x1

    .line 90
    :cond_0
    return v2

    .line 80
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private resetMediaSurface(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;II)V
    .locals 4

    .prologue
    .line 119
    invoke-direct {p0, p2, p3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getClipSize(II)[Ljava/lang/Object;

    move-result-object v1

    .line 120
    const-string/jumbo v0, "VideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Reset surface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x1

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v0, 0x2

    aget-object v0, v1, v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;

    invoke-virtual {p1, v2, v3, v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;->resetSurface(IILcom/adobe/premiereclip/mediaengine/gpumedia/Rotation;)V

    .line 122
    return-void
.end method

.method private trimFeaturesForPerformance(Lcom/adobe/premiereclip/project/sequence/Clip;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 195
    iget v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoderCapacity:I

    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 196
    const-string/jumbo v0, "VideoDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot disable features... already disabled.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoderCapacity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    monitor-exit p0

    .line 204
    :goto_0
    return v0

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoderCapacity:I

    .line 200
    const-string/jumbo v2, "VideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disabling features... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoderCapacity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-boolean v1, Lcom/adobe/premiereclip/project/sequence/Sequence;->MODE_PLAYBACK:Z

    if-eqz v1, :cond_1

    .line 202
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/adobe/premiereclip/project/sequence/Clip;->setDisableTransition(Z)V

    .line 204
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getFrameAtTime(Landroid/content/Context;IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;JJZ)J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v13, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->syncObject:Ljava/lang/Object;

    monitor-enter v13

    .line 221
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    :try_start_1
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->pendingException:Lcom/google/android/exoplayer/ExoPlaybackException;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->pendingException:Lcom/google/android/exoplayer/ExoPlaybackException;

    .line 224
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->pendingException:Lcom/google/android/exoplayer/ExoPlaybackException;

    .line 225
    throw v2

    .line 227
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 297
    :catchall_1
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 227
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    :try_start_4
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->notifySequenceNotSetError()V

    .line 230
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_5

    .line 231
    sget-boolean v2, Lcom/adobe/premiereclip/project/sequence/Sequence;->MODE_PLAYBACK:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/adobe/premiereclip/mediaengine/decoderutils/VideoDecoder;->FULL_CAPABILITY:Z

    .line 232
    invoke-direct/range {p0 .. p4}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getDecoder(Landroid/content/Context;IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;)Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 234
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/adobe/premiereclip/project/sequence/Clip;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    if-nez p9, :cond_4

    .line 242
    :try_start_5
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    move-wide/from16 v3, p5

    move-object/from16 v5, p4

    move-wide/from16 v6, p7

    invoke-virtual/range {v2 .. v7}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->getFrameAtTime(JLcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;J)J
    :try_end_5
    .catch Lcom/google/android/exoplayer/ExoPlaybackException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v2

    :try_start_6
    monitor-exit v13

    .line 296
    :goto_1
    return-wide v2

    .line 231
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v2

    .line 244
    invoke-virtual {v2}, Lcom/google/android/exoplayer/ExoPlaybackException;->printStackTrace()V

    .line 245
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->release()V

    .line 247
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 248
    iget-object v3, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, p3

    if-lt v0, v3, :cond_2

    .line 249
    const-wide/16 v2, -0x1

    monitor-exit v13

    goto :goto_1

    .line 251
    :cond_2
    invoke-direct {p0, v2, v10}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->isFailureDueToDecoderCapacity(Ljava/lang/Exception;Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v10}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->trimFeaturesForPerformance(Lcom/adobe/premiereclip/project/sequence/Clip;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    const/4 v12, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    invoke-virtual/range {v3 .. v12}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->getFrameAtTime(Landroid/content/Context;IILcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;JJZ)J

    move-result-wide v2

    monitor-exit v13

    goto :goto_1

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getClips(I)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/premiereclip/project/sequence/Clip;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/project/sequence/Clip;->setTempUnavailable(Z)V

    .line 255
    new-instance v2, Lcom/google/android/exoplayer/ExoPlaybackException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_4
    const-string/jumbo v2, "VideoDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "async init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v4, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 261
    new-instance v11, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;

    move-object v3, p0

    move-wide/from16 v5, p5

    move-object/from16 v7, p4

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v10}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache$1;-><init>(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;JLcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaSurface;JLcom/adobe/premiereclip/project/sequence/Clip;)V

    invoke-direct {v11, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 292
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 296
    :cond_5
    const-wide/16 v2, -0x1

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1
.end method

.method public releaseAllDecoders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->syncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->notifySequenceNotSetError()V

    .line 311
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    .line 312
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->releaseDecoder(Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;)V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->currentDecoder:Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 315
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    return-void
.end method

.method public resetAllDecoderPositions()V
    .locals 4

    .prologue
    .line 301
    iget-object v2, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->syncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 302
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->mDecoderList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoder;->resetPosition:Z

    .line 302
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 305
    :cond_0
    monitor-exit v2

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSequence(Lcom/adobe/premiereclip/project/sequence/Sequence;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/decoderutils/MediaDecoderCache;->sequence:Lcom/adobe/premiereclip/project/sequence/Sequence;

    .line 210
    return-void
.end method

.class public Lcom/adobe/premiereclip/editor/waveform/WaveUtils;
.super Ljava/lang/Object;
.source "WaveUtils.java"


# static fields
.field public static final END_DURATION_BLOCKED:J = 0x4c4b40L

.field private static final MAX_LENGTH_WAVE:I = 0x4e20

.field private static final MIN_LENGTH_WAVE:I = 0xc8

.field private static final waveScaleFactor:D = 5.0E-5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDurationOfWave(Lcom/adobe/premiereclip/project/Project;I)J
    .locals 5

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v1

    if-lez v1, :cond_0

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v0

    .line 78
    invoke-static {p0}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getTotalWaveFormLength(Lcom/adobe/premiereclip/project/Project;)I

    move-result v2

    int-to-long v2, v2

    .line 80
    long-to-double v0, v0

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 81
    int-to-double v2, p1

    mul-double/2addr v0, v2

    .line 83
    const-string/jumbo v2, "MusicView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  for pixels "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 86
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getTotalWaveFormLength(Lcom/adobe/premiereclip/project/Project;)I
    .locals 13

    .prologue
    const-wide/32 v6, 0x7fffffff

    const-wide/16 v4, 0x4e20

    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v8

    if-lez v8, :cond_2

    .line 38
    invoke-virtual {v3, v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v8

    .line 40
    long-to-double v2, v8

    const-wide v10, 0x3f0a36e2eb1c432dL    # 5.0E-5

    mul-double/2addr v10, v2

    .line 41
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 43
    cmp-long v12, v2, v6

    if-lez v12, :cond_0

    move-wide v2, v6

    .line 46
    :cond_0
    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    move-wide v2, v4

    .line 49
    :cond_1
    cmp-long v4, v2, v0

    if-gez v4, :cond_3

    .line 52
    :goto_0
    const-string/jumbo v2, "MusicView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "total length: got pixels "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  for duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    long-to-int v0, v0

    .line 54
    rem-int/lit16 v1, v0, 0xc8

    sub-int/2addr v0, v1

    .line 57
    :goto_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public static getWaveFormLength(Lcom/adobe/premiereclip/project/Project;J)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-static {p0}, Lcom/adobe/premiereclip/editor/waveform/WaveUtils;->getTotalWaveFormLength(Lcom/adobe/premiereclip/project/Project;)I

    move-result v1

    .line 62
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/Project;->getSequence()Lcom/adobe/premiereclip/project/sequence/Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/Sequence;->getAudioTrackGroup()Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getNumClips()I

    move-result v3

    if-lez v3, :cond_0

    .line 64
    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->getClipAtIndex(I)Lcom/adobe/premiereclip/project/sequence/Clip;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getAssetReference()Lcom/adobe/premiereclip/project/sequence/AssetReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/AssetReference;->getDurationUs()J

    move-result-wide v2

    .line 66
    int-to-double v0, v1

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 67
    long-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 68
    long-to-int v0, v0

    .line 70
    :cond_0
    return v0
.end method

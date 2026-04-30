.class public Lcom/adobe/premiereclip/project/sequence/AudioTrack;
.super Lcom/adobe/premiereclip/project/sequence/Track;
.source "AudioTrack.java"


# static fields
.field private static final DEFAULT_SYNC_PACE:F = 0.4f


# instance fields
.field private audioDuckApplied:Z

.field private audioSyncPace:F

.field private snapToBeatApplied:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/Track;-><init>()V

    .line 34
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->audioSyncPace:F

    .line 35
    return-void
.end method


# virtual methods
.method public clipTimeFromTrackTime(IJ)J
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAudioSyncPace()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->audioSyncPace:F

    return v0
.end method

.method public getClipsAtTrackTimeUs(J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Playable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackDurationUS()J
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAudioDuckApplied()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->audioDuckApplied:Z

    return v0
.end method

.method public isSnapToBeatApplied()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->snapToBeatApplied:Z

    return v0
.end method

.method public replaceAudioClip(Lcom/adobe/premiereclip/project/sequence/AudioClip;)V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->removeAllClips()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 40
    return-void
.end method

.method public setAudioDuckApplied(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->audioDuckApplied:Z

    .line 56
    return-void
.end method

.method public setAudioSyncPace(F)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->audioSyncPace:F

    .line 89
    return-void
.end method

.method public setSnapToBeatApplied(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->snapToBeatApplied:Z

    .line 48
    return-void
.end method

.method public trackStartTimeOfClip(I)J
    .locals 2

    .prologue
    .line 70
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public trackTimeFromClipTime(IJ)J
    .locals 2

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

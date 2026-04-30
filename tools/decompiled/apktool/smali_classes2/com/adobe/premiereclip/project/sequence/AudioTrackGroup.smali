.class public Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;
.super Ljava/lang/Object;
.source "AudioTrackGroup.java"


# instance fields
.field private audioTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/AudioTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->audioTracks:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-direct {v0}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->audioTracks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public addClipToAudioTrack(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->AUDIO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->audioTracks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/AudioTrack;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 42
    :cond_0
    return-void
.end method

.method public getAudioTrack()Lcom/adobe/premiereclip/project/sequence/AudioTrack;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/AudioTrackGroup;->audioTracks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/AudioTrack;

    return-object v0
.end method

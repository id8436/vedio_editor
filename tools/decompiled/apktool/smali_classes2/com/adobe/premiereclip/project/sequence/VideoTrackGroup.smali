.class public Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;
.super Ljava/lang/Object;
.source "VideoTrackGroup.java"


# instance fields
.field private videoTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-direct {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;-><init>()V

    .line 31
    new-instance v1, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-direct {v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;-><init>()V

    .line 32
    invoke-virtual {v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setOverlay()V

    .line 33
    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public addClipToOverlayTrack(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 69
    return-void
.end method

.method public addClipToVideoTrack(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 61
    return-void
.end method

.method public addClipToVideoTrackAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->addClipAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 65
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    return-object v0
.end method

.method public getOverlayTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    return-object v0
.end method

.method public getTrackGroupDurationUs()J
    .locals 5

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    .line 81
    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    .line 82
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getTrackDurationUS()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    return-wide v2
.end method

.method public getVideoTrack(I)Lcom/adobe/premiereclip/project/sequence/VideoTrack;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->getMainVideoTrack()Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getWidth()I

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrackGroup;->videoTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;

    .line 54
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setWidth(I)V

    .line 55
    invoke-virtual {v0, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setHeight(I)V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

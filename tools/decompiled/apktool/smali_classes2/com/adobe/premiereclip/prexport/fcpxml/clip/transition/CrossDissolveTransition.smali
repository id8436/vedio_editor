.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;
.source "CrossDissolveTransition.java"


# direct methods
.method public constructor <init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V
    .locals 10

    .prologue
    .line 28
    const-string/jumbo v6, "Cross Dissolve"

    const-string/jumbo v7, "Cross Dissolve"

    const-string/jumbo v8, "Dissolve"

    sget-object v9, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;-><init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;)V

    .line 29
    return-void
.end method


# virtual methods
.method public adjustHeadClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
    .locals 4

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mTailDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 53
    :cond_0
    return-void

    .line 37
    :cond_1
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setEnd(J)V

    .line 38
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mTailDuration:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustOutPoint(J)V

    .line 39
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mTailDuration:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustTrackDuration(J)V

    .line 41
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->numLinkedClips()I

    move-result v0

    if-lez v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getLinkedClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 43
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mTailDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustOutPoint(J)V

    .line 44
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mTailDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustEnd(J)V

    .line 45
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getNextClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    move-result-object v0

    .line 46
    :goto_0
    if-eqz v0, :cond_2

    .line 47
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mTailDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustStart(J)V

    .line 48
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mTailDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustEnd(J)V

    .line 49
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getNextClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    move-result-object v0

    goto :goto_0
.end method

.method public adjustTailClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
    .locals 4

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mHeadDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 85
    :cond_0
    return-void

    .line 61
    :cond_1
    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setStart(J)V

    .line 62
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mHeadDuration:J

    neg-long v0, v0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustEnd(J)V

    .line 64
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mHeadDuration:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustTrackDuration(J)V

    .line 66
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getNextClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    move-result-object v0

    .line 67
    :goto_0
    if-eqz v0, :cond_2

    .line 68
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustStart(J)V

    .line 69
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustEnd(J)V

    .line 70
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getNextClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->numLinkedClips()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getLinkedClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 74
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mHeadDuration:J

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustInPoint(J)V

    .line 75
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mHeadDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustTrackDuration(J)V

    .line 76
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mHeadDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustEnd(J)V

    .line 77
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getNextClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    move-result-object v0

    .line 78
    :goto_1
    if-eqz v0, :cond_3

    .line 79
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mHeadDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustStart(J)V

    .line 80
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/CrossDissolveTransition;->mHeadDuration:J

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->adjustEnd(J)V

    .line 81
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getNextClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    move-result-object v0

    goto :goto_1
.end method

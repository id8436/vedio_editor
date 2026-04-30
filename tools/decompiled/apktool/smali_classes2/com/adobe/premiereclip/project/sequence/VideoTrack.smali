.class public Lcom/adobe/premiereclip/project/sequence/VideoTrack;
.super Lcom/adobe/premiereclip/project/sequence/Track;
.source "VideoTrack.java"


# instance fields
.field private fadeInApplied:Z

.field private fadeOutApplied:Z

.field private height:I

.field private isOverlay:Z

.field private look:Lcom/adobe/premiereclip/looks/BaseLook;

.field private transitionApplied:Z

.field private width:I

.field private xOffset:F

.field private yOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/Track;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->isOverlay:Z

    .line 41
    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    .line 42
    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied:Z

    .line 43
    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied:Z

    .line 44
    return-void
.end method

.method private getBumperClipOffset()J
    .locals 5

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 227
    const-wide/16 v2, 0x0

    .line 228
    if-ltz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isBumper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v0

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 231
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private getOverlayEmptyClipOffset()J
    .locals 6

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 237
    const-wide/16 v2, 0x0

    .line 238
    if-ltz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipType()Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    move-result-object v0

    sget-object v5, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->EMPTY_VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    if-ne v0, v5, :cond_0

    .line 239
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v0

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 241
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private setClipSpecialProperties(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V

    .line 88
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->width:I

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setMaxWidth(I)V

    .line 89
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->height:I

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->setMaxHeight(I)V

    .line 90
    return-void
.end method

.method private toggleFadeIn()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied:Z

    .line 278
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied:Z

    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleFadeOut()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied:Z

    .line 283
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied:Z

    return v0

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleGlobalTransition()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    .line 273
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setClipSpecialProperties(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 95
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/project/sequence/Track;->addClip(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 96
    return-void
.end method

.method public addClipAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->setClipSpecialProperties(Lcom/adobe/premiereclip/project/sequence/Clip;)V

    .line 101
    invoke-super {p0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/Track;->addClipAtIndex(Lcom/adobe/premiereclip/project/sequence/Clip;I)V

    .line 102
    return-void
.end method

.method public clipTimeFromTrackTime(IJ)J
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->trackStartTimeOfClip(I)J

    move-result-wide v0

    sub-long v0, p2, v0

    return-wide v0
.end method

.method public fadeInApplied()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied:Z

    return v0
.end method

.method protected fadeInLengthUs()J
    .locals 6

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied:Z

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 334
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v2

    const-wide/32 v4, 0x1e8480

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 335
    const-wide/32 v0, 0xf4240

    .line 339
    :goto_0
    return-wide v0

    .line 337
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    goto :goto_0

    .line 339
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public fadeOutApplied()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied:Z

    return v0
.end method

.method protected fadeOutLengthUs()J
    .locals 6

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied:Z

    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    .line 345
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 346
    if-ltz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isBumper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    add-int/lit8 v0, v1, -0x1

    .line 349
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 350
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v2

    const-wide/32 v4, 0x1e8480

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 351
    const-wide/32 v0, 0xf4240

    .line 355
    :goto_1
    return-wide v0

    .line 353
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    goto :goto_1

    .line 355
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getClipGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/project/sequence/Clip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    .line 382
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 383
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 384
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 385
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 389
    :cond_1
    return-object v3
.end method

.method public getClipsAtTrackTimeUs(J)Ljava/util/ArrayList;
    .locals 15
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
    .line 117
    const-wide/16 v2, 0x0

    .line 118
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v5

    .line 120
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    if-nez v0, :cond_3

    .line 122
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 123
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 124
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v6, v6, p1

    if-lez v6, :cond_2

    .line 125
    new-instance v6, Lcom/adobe/premiereclip/project/sequence/Playable;

    sub-long v2, p1, v2

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v8

    add-long/2addr v2, v8

    invoke-direct {v6, v1, v2, v3}, Lcom/adobe/premiereclip/project/sequence/Playable;-><init>(IJ)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v0, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->disabledTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    :cond_1
    return-object v4

    .line 128
    :cond_2
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 122
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 133
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 134
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 135
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v1, v6}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v6

    .line 136
    cmp-long v8, p1, v2

    if-ltz v8, :cond_4

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v8

    add-long/2addr v8, v2

    sub-long/2addr v8, v6

    cmp-long v8, p1, v8

    if-gez v8, :cond_4

    .line 137
    new-instance v8, Lcom/adobe/premiereclip/project/sequence/Playable;

    sub-long v10, p1, v2

    add-long/2addr v10, v6

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-direct {v8, v1, v10, v11}, Lcom/adobe/premiereclip/project/sequence/Playable;-><init>(IJ)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v8

    sub-long v6, v8, v6

    add-long/2addr v2, v6

    .line 139
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v6

    .line 140
    sub-long v8, v2, v6

    cmp-long v0, p1, v8

    if-ltz v0, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 141
    new-instance v8, Lcom/adobe/premiereclip/project/sequence/Playable;

    add-int/lit8 v9, v1, 0x1

    sub-long/2addr v2, v6

    sub-long v2, p1, v2

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-direct {v8, v9, v0, v1}, Lcom/adobe/premiereclip/project/sequence/Playable;-><init>(IJ)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 145
    :cond_4
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v8

    sub-long v6, v8, v6

    add-long/2addr v2, v6

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public getFadeInPercent(J)F
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInLengthUs()J

    move-result-wide v2

    .line 213
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 214
    long-to-float v4, p1

    long-to-float v2, v2

    div-float v2, v4, v2

    sub-float/2addr v1, v2

    .line 215
    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    .line 221
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getFadeOutPercent(JJ)F
    .locals 7

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 245
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutLengthUs()J

    move-result-wide v2

    .line 247
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getTrackDurationUS()J

    move-result-wide v4

    sub-long/2addr v4, p3

    sub-long/2addr v4, v2

    sub-long v4, p1, v4

    long-to-float v1, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 250
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    .line 256
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->height:I

    return v0
.end method

.method public getIndexForClip(Lcom/adobe/premiereclip/project/sequence/Clip;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 371
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 372
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 373
    if-ne v0, p1, :cond_0

    .line 377
    :goto_1
    return v1

    .line 371
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 377
    goto :goto_1
.end method

.method public getIndexForGroupId(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 360
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 361
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 362
    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getClipGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    :goto_1
    return v1

    .line 360
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 366
    goto :goto_1
.end method

.method public getLook()Lcom/adobe/premiereclip/looks/BaseLook;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    return-object v0
.end method

.method public getOverlay()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->isOverlay:Z

    return v0
.end method

.method public getTrackDurationUS()J
    .locals 10

    .prologue
    .line 78
    const-wide/16 v2, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v4

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 81
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v6

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v8

    sub-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    return-wide v2
.end method

.method public getTransition(J)Lcom/adobe/premiereclip/project/sequence/Transition;
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    .line 185
    const/4 v2, 0x0

    .line 186
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->isOverlay:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getOverlayEmptyClipOffset()J

    move-result-wide v0

    .line 187
    :goto_0
    iget-boolean v3, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied:Z

    if-eqz v3, :cond_2

    cmp-long v3, p1, v10

    if-ltz v3, :cond_2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInLengthUs()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-gez v3, :cond_2

    .line 188
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Transition;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->FADE_IN:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getFadeInPercent(J)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Transition;-><init>(Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;F)V

    .line 204
    :goto_1
    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Transition;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->NULL:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Transition;-><init>(Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;F)V

    .line 207
    :cond_0
    return-object v0

    .line 186
    :cond_1
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getBumperClipOffset()J

    move-result-wide v0

    goto :goto_0

    .line 190
    :cond_2
    iget-boolean v3, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getTrackDurationUS()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v3, p1, v4

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getTrackDurationUS()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutLengthUs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, p1, v4

    if-ltz v3, :cond_3

    .line 191
    new-instance v2, Lcom/adobe/premiereclip/project/sequence/Transition;

    sget-object v3, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->FADE_OUT:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getFadeOutPercent(JJ)F

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/adobe/premiereclip/project/sequence/Transition;-><init>(Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;F)V

    move-object v0, v2

    goto :goto_1

    .line 193
    :cond_3
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    if-eqz v0, :cond_4

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClipsAtTrackTimeUs(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 196
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v3, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v0, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    invoke-virtual {p0, v3, v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v4

    .line 197
    cmp-long v0, v4, v10

    if-lez v0, :cond_4

    .line 198
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget v0, v0, Lcom/adobe/premiereclip/project/sequence/Playable;->clipIndex:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 199
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/project/sequence/Playable;

    iget-wide v2, v1, Lcom/adobe/premiereclip/project/sequence/Playable;->clipOffsetUs:J

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-float v0, v0

    long-to-float v1, v4

    div-float v1, v0, v1

    .line 200
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Transition;

    sget-object v2, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->CROSS_FADE:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    invoke-direct {v0, v2, v1}, Lcom/adobe/premiereclip/project/sequence/Transition;-><init>(Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;F)V

    goto/16 :goto_1

    :cond_4
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->width:I

    return v0
.end method

.method public getXOffset()F
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->xOffset:F

    return v0
.end method

.method public getYOffset()F
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->yOffset:F

    return v0
.end method

.method public setFadeIn(Z)V
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeInApplied:Z

    if-eq p1, v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->toggleFadeIn()Z

    .line 296
    :cond_0
    return-void
.end method

.method public setFadeOut(Z)V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->fadeOutApplied:Z

    if-eq p1, v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->toggleFadeOut()Z

    .line 302
    :cond_0
    return-void
.end method

.method public setGlobalTransition(Z)V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    if-eq p1, v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->toggleGlobalTransition()Z

    .line 290
    :cond_0
    return-void
.end method

.method protected setHeight(I)V
    .locals 2

    .prologue
    .line 62
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->height:I

    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 64
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->setMaxHeight(I)V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V
    .locals 3

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 107
    iget-object v2, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->look:Lcom/adobe/premiereclip/looks/BaseLook;

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/project/sequence/Clip;->setLook(Lcom/adobe/premiereclip/looks/BaseLook;)V

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public setOverlay()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->isOverlay:Z

    .line 70
    return-void
.end method

.method protected setWidth(I)V
    .locals 2

    .prologue
    .line 55
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->width:I

    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->clips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    .line 57
    invoke-virtual {v0, p1}, Lcom/adobe/premiereclip/project/sequence/Clip;->setMaxWidth(I)V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public setXYOffset(FF)V
    .locals 0

    .prologue
    .line 393
    iput p1, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->xOffset:F

    .line 394
    iput p2, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->yOffset:F

    .line 395
    return-void
.end method

.method public trackStartTimeOfClip(I)J
    .locals 2

    .prologue
    .line 156
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->trackTimeFromClipTime(IJ)J

    move-result-wide v0

    .line 159
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public trackTimeFromClipTime(IJ)J
    .locals 10

    .prologue
    const-wide/16 v0, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getTrackDurationUS()J

    move-result-wide v0

    .line 174
    :cond_0
    :goto_0
    return-wide v0

    .line 166
    :cond_1
    if-ltz p1, :cond_0

    .line 170
    const/4 v2, 0x0

    move v8, v2

    move-wide v2, v0

    move v1, v8

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v4

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 170
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getStartTimeUsWithSpeed()J

    move-result-wide v0

    sub-long v0, p2, v0

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, p1, v4}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionLengthUs(II)J

    move-result-wide v4

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 174
    goto :goto_0
.end method

.method public transitionAppliedOnSequence()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    return v0
.end method

.method protected transitionLengthUs(II)J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 305
    iget-boolean v0, p0, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->transitionApplied:Z

    if-eqz v0, :cond_0

    .line 307
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isBumper()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v0

    move-wide v4, v0

    .line 313
    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->isBumper()Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/adobe/premiereclip/project/sequence/VideoTrack;->getClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Clip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/project/sequence/Clip;->getDurationUsWithSpeed()J

    move-result-wide v0

    .line 320
    :goto_1
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 321
    const-wide/32 v2, 0x1e8480

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 322
    const-wide/32 v2, 0xf4240

    .line 328
    :cond_0
    :goto_2
    return-wide v2

    :cond_1
    move-wide v4, v2

    .line 311
    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 317
    goto :goto_1

    .line 325
    :cond_3
    const-wide/16 v2, 0x2

    div-long v2, v0, v2

    goto :goto_2
.end method

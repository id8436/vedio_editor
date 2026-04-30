.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;
.source "Track.java"


# instance fields
.field protected mCurrentItemStartTime:J

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mNumNonEmptyTypes:I

.field protected mTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mTrackIndex:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mCurrentItemStartTime:J

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mNumNonEmptyTypes:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public addItem(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)V
    .locals 6

    .prologue
    .line 68
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mTrackIndex:I

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->setTrackIndex(I)V

    .line 69
    invoke-static {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->isEmptyTrackClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mNumNonEmptyTypes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mNumNonEmptyTypes:I

    .line 73
    :cond_0
    instance-of v0, p1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 76
    invoke-static {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->isEmptyTrackClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    iget v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mNumNonEmptyTypes:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setClipIndex(I)V

    .line 80
    :cond_1
    iget-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mCurrentItemStartTime:J

    .line 81
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getDuration()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setStart(J)V

    .line 83
    invoke-virtual {v0, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setEnd(J)V

    .line 85
    iput-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mCurrentItemStartTime:J

    .line 87
    invoke-virtual {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->getLastClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setPrevClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V

    .line 90
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setNextClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public adjustCurrentTime(J)V
    .locals 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mCurrentItemStartTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mCurrentItemStartTime:J

    .line 65
    return-void
.end method

.method public calculateTimings()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 106
    const-wide/16 v2, 0x0

    .line 107
    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 109
    instance-of v1, v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;

    if-eqz v1, :cond_2

    .line 110
    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;

    .line 112
    if-lez v2, :cond_7

    .line 113
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 114
    instance-of v3, v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    if-eqz v3, :cond_7

    .line 115
    check-cast v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 119
    :goto_1
    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->adjustHeadClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V

    .line 121
    invoke-virtual {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getEnd()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 122
    invoke-virtual {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getEnd()J

    move-result-wide v4

    .line 130
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_6

    .line 131
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 132
    instance-of v3, v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    if-eqz v3, :cond_6

    .line 133
    check-cast v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 136
    :goto_3
    if-eqz v1, :cond_1

    .line 137
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->adjustTailClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V

    .line 139
    :cond_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->getHeadDuration()J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-virtual {v0, v8, v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->setStart(J)V

    .line 140
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->getStart()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->getDuration()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->setEnd(J)V

    .line 107
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getTrackDuration()J

    move-result-wide v8

    add-long/2addr v4, v8

    goto :goto_2

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->getEnd()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mCurrentItemStartTime:J

    .line 146
    :cond_5
    return-void

    :cond_6
    move-object v1, v6

    goto :goto_3

    :cond_7
    move-object v1, v6

    goto :goto_1
.end method

.method public getItemAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getLastClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;
    .locals 4

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 44
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 46
    instance-of v3, v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    if-eqz v3, :cond_0

    .line 47
    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 52
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public numItems()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setTrackIndex(I)V
    .locals 3

    .prologue
    .line 97
    iput p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mTrackIndex:I

    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 100
    iget v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mTrackIndex:I

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->setTrackIndex(I)V

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 4

    .prologue
    .line 165
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "track"

    invoke-direct {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 167
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "locked"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 169
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 173
    return-void
.end method

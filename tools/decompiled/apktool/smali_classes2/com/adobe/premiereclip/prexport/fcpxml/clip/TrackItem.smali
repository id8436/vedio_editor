.class public abstract Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;
.source "TrackItem.java"


# instance fields
.field protected mClipIndex:I

.field protected mDuration:J

.field protected mEnd:J

.field protected mStart:J

.field protected mTrackDuration:J

.field protected mTrackIndex:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 34
    iput-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mStart:J

    .line 35
    iput-wide v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mEnd:J

    .line 36
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mDuration:J

    .line 37
    iput-wide p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mTrackDuration:J

    .line 38
    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mTrackIndex:I

    .line 39
    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mClipIndex:I

    .line 40
    return-void
.end method


# virtual methods
.method public adjustEnd(J)V
    .locals 3

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mEnd:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mEnd:J

    .line 64
    return-void
.end method

.method public adjustStart(J)V
    .locals 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mStart:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mStart:J

    .line 52
    return-void
.end method

.method public adjustTrackDuration(J)V
    .locals 3

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mTrackDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mTrackDuration:J

    .line 84
    return-void
.end method

.method public getClipIndex()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mClipIndex:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mEnd:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mStart:J

    return-wide v0
.end method

.method public getTrackDuration()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mTrackDuration:J

    return-wide v0
.end method

.method public getTrackIndex()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mTrackIndex:I

    return v0
.end method

.method public setClipIndex(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mClipIndex:I

    .line 100
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mDuration:J

    .line 72
    return-void
.end method

.method public setEnd(J)V
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mEnd:J

    .line 60
    return-void
.end method

.method public setStart(J)V
    .locals 1

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mStart:J

    .line 48
    return-void
.end method

.method public setTrackDuration(J)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mTrackDuration:J

    .line 80
    return-void
.end method

.method public setTrackIndex(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;->mTrackIndex:I

    .line 92
    return-void
.end method

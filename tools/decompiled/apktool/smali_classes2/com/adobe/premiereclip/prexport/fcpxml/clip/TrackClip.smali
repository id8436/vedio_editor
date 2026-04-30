.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;
.source "TrackClip.java"


# instance fields
.field protected mFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;",
            ">;"
        }
    .end annotation
.end field

.field protected mInPoint:J

.field protected mLinkedClips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;",
            ">;"
        }
    .end annotation
.end field

.field protected mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;",
            ">;"
        }
    .end annotation
.end field

.field protected mMasterClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

.field protected mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

.field protected mName:Ljava/lang/String;

.field protected mNextClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

.field protected mOutPoint:J

.field protected mPrevClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

.field protected mXmlId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p6, p7, p6, p7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;-><init>(JJ)V

    .line 48
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    .line 49
    iput-object p2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMasterClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    .line 51
    iput-wide p4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mInPoint:J

    .line 52
    add-long v0, p4, p6

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mOutPoint:J

    .line 53
    iput-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mPrevClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 54
    iput-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mNextClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mLinkedClips:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mFilters:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMarkers:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public addFilter(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public addLinkXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 5

    .prologue
    .line 144
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "link"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "linkclipref"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mXmlId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 146
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "mediatype"

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->MediaTypeStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->getNumVal()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 147
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "trackindex"

    iget v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mTrackIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 148
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "clipindex"

    iget v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mClipIndex:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 149
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 150
    return-void
.end method

.method public addLinkedClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mLinkedClips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public addMarker(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public adjustDuration(J)V
    .locals 3

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mDuration:J

    .line 94
    return-void
.end method

.method public adjustInPoint(J)V
    .locals 3

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mInPoint:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mInPoint:J

    .line 90
    return-void
.end method

.method public adjustOutPoint(J)V
    .locals 3

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mOutPoint:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mOutPoint:J

    .line 86
    return-void
.end method

.method public getInPoint()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mInPoint:J

    return-wide v0
.end method

.method public getLinkedClipAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mLinkedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mLinkedClips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinkedClips()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mLinkedClips:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMarkerAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;

    return-object v0
.end method

.method public getMasterClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMasterClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mNextClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    return-object v0
.end method

.method public getOutPoint()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mOutPoint:J

    return-wide v0
.end method

.method public getPrevClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mPrevClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    return-object v0
.end method

.method public numLinkedClips()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mLinkedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public numMarkers()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setNextClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mNextClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 125
    return-void
.end method

.method public setPrevClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mPrevClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 117
    return-void
.end method

.method public setXmlId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mXmlId:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 6

    .prologue
    .line 154
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "clipitem"

    invoke-direct {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mXmlId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "frameBlend"

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "masterclipid"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMasterClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    invoke-virtual {v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getXmlId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 158
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 159
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 160
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "duration"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mDuration:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 161
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "start"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mStart:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 162
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "end"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mEnd:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 163
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "in"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mInPoint:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 164
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "out"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mOutPoint:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 167
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMasterClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->addFileXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 170
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;

    .line 171
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Filter;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;

    .line 176
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mLinkedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 182
    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->addLinkXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 184
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->mLinkedClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 185
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->addLinkXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_2

    .line 189
    :cond_2
    invoke-virtual {p1, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 190
    return-void
.end method

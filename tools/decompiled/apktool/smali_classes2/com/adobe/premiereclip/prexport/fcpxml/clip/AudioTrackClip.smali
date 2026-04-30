.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;
.source "AudioTrackClip.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V
    .locals 9

    .prologue
    .line 28
    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->audio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;-><init>(Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 29
    return-void
.end method


# virtual methods
.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 6

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 35
    const-string/jumbo v0, "clipitem"

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->getLastChild(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    move-result-object v1

    .line 38
    const-string/jumbo v2, "premiereChannelType"

    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->mMasterClip:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getNumAudioChannels()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "mono"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "sourcetrack"

    invoke-direct {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "mediatype"

    sget-object v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->MediaTypeStrings:[Ljava/lang/String;

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->audio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->getNumVal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 43
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "trackindex"

    iget v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;->mTrackIndex:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 45
    return-void

    .line 38
    :cond_0
    const-string/jumbo v0, "stereo"

    goto :goto_0
.end method

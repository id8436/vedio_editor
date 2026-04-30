.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;
.source "AudioTrack.java"


# instance fields
.field private mNumChannels:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;-><init>()V

    .line 30
    iput p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->mNumChannels:I

    .line 31
    return-void
.end method


# virtual methods
.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/Track;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 36
    const-string/jumbo v0, "track"

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->getLastChild(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    move-result-object v1

    .line 37
    const-string/jumbo v0, "PannerCurrentValue"

    const-string/jumbo v2, "0.5"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "PannerStartKeyframe"

    const-string/jumbo v2, "-91445760000000000,0.5,0,0,0,0,0,0"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "PannerName"

    const-string/jumbo v2, "Balance"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "currentExplodedTrackIndex"

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "totalExplodedTrackCount"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "premiereTrackType"

    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->mNumChannels:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "Mono"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "outputchannelindex"

    const-string/jumbo v3, "1"

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 44
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "Stereo"

    goto :goto_0
.end method

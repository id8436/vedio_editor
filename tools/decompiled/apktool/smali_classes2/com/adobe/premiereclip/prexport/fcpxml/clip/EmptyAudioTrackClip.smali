.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/EmptyAudioTrackClip;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;
.source "EmptyAudioTrackClip.java"


# direct methods
.method public constructor <init>(J)V
    .locals 9

    .prologue
    .line 27
    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/AudioTrackClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 28
    return-void
.end method


# virtual methods
.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

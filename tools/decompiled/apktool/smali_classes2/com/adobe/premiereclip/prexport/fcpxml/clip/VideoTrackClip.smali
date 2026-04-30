.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;
.source "VideoTrackClip.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V
    .locals 9

    .prologue
    .line 27
    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;-><init>(Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 28
    return-void
.end method

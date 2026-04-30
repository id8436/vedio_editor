.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/AudioFadeTransition;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;
.source "AudioFadeTransition.java"


# direct methods
.method public constructor <init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;J)V
    .locals 10

    .prologue
    .line 28
    const-string/jumbo v6, "Cross Fade (+0dB)"

    const-string/jumbo v7, "KGAudioTransCrossFade0dB"

    const-string/jumbo v8, ""

    sget-object v9, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->audio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

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
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public adjustTailClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

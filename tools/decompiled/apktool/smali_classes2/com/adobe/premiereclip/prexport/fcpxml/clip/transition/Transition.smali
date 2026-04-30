.class public abstract Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;
.source "Transition.java"


# instance fields
.field protected mAlignment:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

.field protected mCategory:Ljava/lang/String;

.field protected mCutPoint:J

.field protected mEffectId:Ljava/lang/String;

.field protected mHeadDuration:J

.field protected mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

.field protected mName:Ljava/lang/String;

.field protected mNtsc:Z

.field protected mTailDuration:J

.field protected mTimebase:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;


# direct methods
.method public constructor <init>(JLcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;)V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;-><init>(JJ)V

    .line 44
    iput-wide p4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mHeadDuration:J

    .line 45
    sub-long v0, p1, p4

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mTailDuration:J

    .line 46
    iput-wide p4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mCutPoint:J

    .line 47
    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mAlignment:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mNtsc:Z

    .line 49
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->P_30:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mTimebase:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    .line 50
    iput-object p6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mName:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mEffectId:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mCategory:Ljava/lang/String;

    .line 53
    iput-object p9, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    .line 54
    return-void
.end method


# virtual methods
.method public abstract adjustHeadClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
.end method

.method public abstract adjustTailClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
.end method

.method public getHeadDuration()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mHeadDuration:J

    return-wide v0
.end method

.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 6

    .prologue
    .line 65
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "transitionitem"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "start"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mStart:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 67
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "end"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mEnd:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 68
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "alignment"

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->TransitionAlignmentStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mAlignment:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->getNumVal()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 69
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "cutPoint"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mCutPoint:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 72
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "rate"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "timebase"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mTimebase:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->getNumVal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 74
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "ntsc"

    iget-boolean v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mNtsc:Z

    invoke-static {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 78
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "effect"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 80
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "effectid"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mEffectId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 83
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mCategory:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "effectcategory"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mCategory:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 87
    :cond_0
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "effecttype"

    const-string/jumbo v3, "transition"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 88
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "mediatype"

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->MediaTypeStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/transition/Transition;->mMediaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->getNumVal()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 89
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "wipecode"

    const-string/jumbo v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 90
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "wipeaccuracy"

    const-string/jumbo v3, "100"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 91
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "startratio"

    const-string/jumbo v3, "0"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 92
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "endratio"

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 93
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "reverse"

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 95
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 96
    return-void
.end method

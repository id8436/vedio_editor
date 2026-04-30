.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;
.super Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;
.source "TitleTrackClip.java"


# instance fields
.field private mTitleString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 30
    const-string/jumbo v2, ""

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/VideoTrackClip;-><init>(Ljava/lang/String;Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;JJ)V

    .line 31
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->mTitleString:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private addValueEntryElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "valueentry"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "name"

    invoke-direct {v1, v2, p2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 37
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "value"

    invoke-direct {v1, v2, p3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 38
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 39
    return-void
.end method


# virtual methods
.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 43
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "generatoritem"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "id"

    const-string/jumbo v2, "Text"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "name"

    const-string/jumbo v3, "Text"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 47
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "duration"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->mDuration:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 50
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "rate"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "ntsc"

    invoke-static {v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 52
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "timebase"

    sget-object v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->P_30:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->getNumVal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 55
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "in"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->mInPoint:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 56
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "out"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->mOutPoint:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 57
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "start"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->mStart:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 58
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "end"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->mEnd:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 59
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "alphatype"

    sget-object v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoAlphaTypeStrings:[Ljava/lang/String;

    sget-object v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->black:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    invoke-virtual {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->getNumVal()I

    move-result v4

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 62
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "effect"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "name"

    const-string/jumbo v4, "Text"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 64
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "effectid"

    const-string/jumbo v4, "Text"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 65
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "effectcategory"

    const-string/jumbo v4, "Text"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 66
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "effecttype"

    const-string/jumbo v4, "generator"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 67
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "mediatype"

    sget-object v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->MediaTypeStrings:[Ljava/lang/String;

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->getNumVal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 70
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "str"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 72
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Text"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 73
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->mTitleString:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 74
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 77
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "fontname"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 79
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Font"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 80
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "Lucida Grande"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 81
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 84
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "fontsize"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 86
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Size"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 87
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemin"

    const-string/jumbo v5, "0"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 88
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemax"

    const-string/jumbo v5, "1000"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 89
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "36"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 90
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 93
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "fontstyle"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 95
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Style"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 96
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemin"

    const-string/jumbo v5, "1"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 97
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemax"

    const-string/jumbo v5, "4"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 98
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuelist"

    const-string/jumbo v5, "36"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v4, "Plain"

    const-string/jumbo v5, "1"

    invoke-direct {p0, v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->addValueEntryElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v4, "Bold"

    const-string/jumbo v5, "2"

    invoke-direct {p0, v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->addValueEntryElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v4, "Italic"

    const-string/jumbo v5, "3"

    invoke-direct {p0, v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->addValueEntryElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v4, "Bold/Italic"

    const-string/jumbo v5, "4"

    invoke-direct {p0, v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->addValueEntryElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 104
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "1"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 105
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 108
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "fontalign"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 110
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Alignment"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 111
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemin"

    const-string/jumbo v5, "1"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 112
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemax"

    const-string/jumbo v5, "3"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 113
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuelist"

    const-string/jumbo v5, "36"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v4, "Left"

    const-string/jumbo v5, "1"

    invoke-direct {p0, v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->addValueEntryElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v4, "Center"

    const-string/jumbo v5, "2"

    invoke-direct {p0, v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->addValueEntryElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v4, "Right"

    const-string/jumbo v5, "3"

    invoke-direct {p0, v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TitleTrackClip;->addValueEntryElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 118
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "2"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 119
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 122
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "fontcolor"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 124
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Font Color"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 125
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    invoke-direct {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "alpha"

    const-string/jumbo v6, "255"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 127
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "red"

    const-string/jumbo v6, "255"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 128
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "green"

    const-string/jumbo v6, "255"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 129
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "blue"

    const-string/jumbo v6, "255"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 130
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 131
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 134
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "origin"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 136
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Origin"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 137
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    invoke-direct {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "horiz"

    const-string/jumbo v6, "0"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 139
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "vert"

    const-string/jumbo v6, "0"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 140
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 141
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 144
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 145
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "fonttrack"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 146
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Tracking"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 147
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemin"

    const-string/jumbo v5, "-200"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 148
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemax"

    const-string/jumbo v5, "200"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 149
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "1"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 150
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 153
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "leading"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 155
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Leading"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 156
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemin"

    const-string/jumbo v5, "-100"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 157
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemax"

    const-string/jumbo v5, "100"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 158
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "0"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 159
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 162
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "aspect"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 164
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Aspect"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 165
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemin"

    const-string/jumbo v5, "0.1"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 166
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "valuemax"

    const-string/jumbo v5, "5"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 167
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "1"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 168
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 171
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "autokern"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 173
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Auto Kerning"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 174
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    invoke-static {v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 175
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 178
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "parameter"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "parameterid"

    const-string/jumbo v5, "subpixel"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 180
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "name"

    const-string/jumbo v5, "Subpixel"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 181
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "value"

    invoke-static {v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 182
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 187
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "sourcetrack"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "mediatype"

    sget-object v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->MediaTypeStrings:[Ljava/lang/String;

    sget-object v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->video:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$MediaType;->getNumVal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 189
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 191
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 192
    return-void
.end method

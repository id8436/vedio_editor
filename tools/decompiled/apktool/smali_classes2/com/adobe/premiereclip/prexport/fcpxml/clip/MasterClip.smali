.class public Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;
.source "MasterClip.java"


# instance fields
.field private mAudioClipIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

.field private mDuration:J

.field private mFile:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;

.field private mFullFileAdded:Z

.field private mHasAudio:Z

.field private mHasVideo:Z

.field private mInPoint:J

.field private mName:Ljava/lang/String;

.field private mTimebase:I

.field private mUuid:Ljava/lang/String;

.field private mVideoClipId:Ljava/lang/String;

.field private mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

.field private mXmlId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIJJ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mName:Ljava/lang/String;

    .line 54
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;-><init>(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFile:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;

    .line 55
    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFullFileAdded:Z

    .line 56
    iput-wide p5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mDuration:J

    .line 57
    iput-wide p7, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mInPoint:J

    .line 58
    iput-boolean p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasVideo:Z

    .line 59
    if-lez p4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasAudio:Z

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mXmlId:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mUuid:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoClipId:Ljava/lang/String;

    .line 63
    const/16 v0, 0x1e

    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mTimebase:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioClipIds:Ljava/util/ArrayList;

    .line 66
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasVideo:Z

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasAudio:Z

    if-eqz v0, :cond_2

    .line 71
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iput p4, v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    .line 74
    :cond_2
    return-void
.end method

.method private addFileFullXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 8

    .prologue
    .line 90
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "file"

    invoke-direct {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFile:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;

    invoke-static {v2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->access$000(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFile:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;

    invoke-static {v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->access$100(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 94
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "pathurl"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFile:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;

    invoke-static {v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->access$200(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 96
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "rate"

    invoke-direct {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "timebase"

    iget v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mTimebase:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 98
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "ntsc"

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 99
    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 101
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "duration"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mDuration:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 103
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "timecode"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 105
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "00:00:00:00"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 106
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "frame"

    const-string/jumbo v5, "0"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 107
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "displayformat"

    const-string/jumbo v5, "NDF"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 108
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 110
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "media"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 112
    iget-boolean v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasVideo:Z

    if-eqz v3, :cond_0

    .line 114
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "video"

    invoke-direct {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "duration"

    iget-wide v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mDuration:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 117
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "samplecharacteristics"

    invoke-direct {v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 119
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "width"

    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget v6, v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->width:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 120
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "height"

    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget v6, v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->height:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 121
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "anamorphic"

    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-boolean v6, v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->anamorphic:Z

    invoke-static {v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 122
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "pixelaspectratio"

    sget-object v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoAspectRatioStrings:[Ljava/lang/String;

    iget-object v7, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-object v7, v7, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->aspectRatio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->getNumVal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 123
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "fielddominance"

    sget-object v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoFieldDominanceStrings:[Ljava/lang/String;

    iget-object v7, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-object v7, v7, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->fieldDominance:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    invoke-virtual {v7}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->getNumVal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-direct {v0, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 124
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 126
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasAudio:Z

    if-eqz v0, :cond_2

    .line 132
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "audio"

    invoke-direct {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "samplecharacteristics"

    invoke-direct {v0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "depth"

    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v6, v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->sampleDepth:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 136
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "samplerate"

    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v6, v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->sampleRate:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 137
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 139
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "channelcount"

    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v5, v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 141
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasVideo:Z

    if-eqz v0, :cond_1

    .line 143
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "layout"

    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v0, v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    const-string/jumbo v0, "mono"

    :goto_0
    invoke-direct {v4, v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 145
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "audiochannel"

    invoke-direct {v0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 146
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "sourcechannel"

    const-string/jumbo v6, "1"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 147
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "channellabel"

    const-string/jumbo v6, "discrete"

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 148
    invoke-virtual {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 151
    :cond_1
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 154
    :cond_2
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 158
    invoke-virtual {p1, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 159
    return-void

    .line 143
    :cond_3
    const-string/jumbo v0, "stereo"

    goto :goto_0
.end method

.method private addLinksXmlElements(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 5

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasVideo:Z

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "link"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "linkclipref"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoClipId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 167
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "mediatype"

    const-string/jumbo v3, "video"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 168
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "trackindex"

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 169
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "clipindex"

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 171
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasAudio:Z

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v0, v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    if-ge v1, v0, :cond_1

    .line 177
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "link"

    invoke-direct {v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "linkclipref"

    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioClipIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 179
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "mediatype"

    const-string/jumbo v4, "audio"

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 180
    add-int/lit8 v0, v1, 0x1

    .line 181
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "trackindex"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 182
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "clipindex"

    const-string/jumbo v4, "1"

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 184
    invoke-virtual {p1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 175
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 187
    :cond_1
    return-void
.end method


# virtual methods
.method public addFileShortXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 3

    .prologue
    .line 317
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "file"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFile:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;

    invoke-static {v2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->access$000(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 320
    return-void
.end method

.method public addFileXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFullFileAdded:Z

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFullFileAdded:Z

    .line 325
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->addFileFullXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->addFileShortXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mDuration:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumAudioChannels()I
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasAudio:Z

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v0, v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    goto :goto_0
.end method

.method public getVideoSettings()Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    return-object v0
.end method

.method public getXmlId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mXmlId:Ljava/lang/String;

    return-object v0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasAudio:Z

    return v0
.end method

.method public setAudioclipIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioClipIds:Ljava/util/ArrayList;

    .line 203
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mFile:Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;->access$002(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip$MasterClipFile;Ljava/lang/String;)Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mUuid:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setVideoclipId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoClipId:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setXmlId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mXmlId:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    new-instance v5, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "clip"

    invoke-direct {v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "id"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mXmlId:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v0, "explodedTracks"

    const-string/jumbo v3, "true"

    invoke-virtual {v5, v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v0, "frameBlend"

    invoke-static {v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "uuid"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mUuid:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 232
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "masterclipid"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mXmlId:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 233
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "ismasterclip"

    invoke-static {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 234
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "duration"

    iget-wide v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mDuration:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 235
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasVideo:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "rate"

    invoke-direct {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 238
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "timebase"

    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-object v6, v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->timebase:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    invoke-virtual {v6}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->getNumVal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 239
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "ntsc"

    iget-object v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-boolean v6, v6, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->ntsc:Z

    invoke-static {v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 240
    invoke-virtual {v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 242
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "in"

    iget-wide v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mInPoint:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 243
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "name"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 246
    new-instance v6, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "media"

    invoke-direct {v6, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 248
    iget-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasVideo:Z

    if-eqz v0, :cond_4

    .line 250
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "video"

    invoke-direct {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 252
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "track"

    invoke-direct {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 255
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "clipitem"

    invoke-direct {v4, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 258
    const-string/jumbo v3, "id"

    iget-object v7, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoClipId:Ljava/lang/String;

    invoke-virtual {v4, v3, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v3, "frameBlend"

    invoke-static {v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "masterclipid"

    iget-object v8, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mXmlId:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 261
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "name"

    iget-object v8, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mName:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 262
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "alphatype"

    sget-object v8, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoAlphaTypeStrings:[Ljava/lang/String;

    iget-object v9, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-object v9, v9, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->alphaType:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;

    invoke-virtual {v9}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAlphaType;->getNumVal()I

    move-result v9

    aget-object v8, v8, v9

    invoke-direct {v3, v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 263
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "pixelaspectratio"

    sget-object v8, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoAspectRatioStrings:[Ljava/lang/String;

    iget-object v9, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-object v9, v9, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->aspectRatio:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;

    invoke-virtual {v9}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoAspectRatio;->getNumVal()I

    move-result v9

    aget-object v8, v8, v9

    invoke-direct {v3, v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 264
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v7, "anamorphic"

    iget-object v8, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mVideoSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-boolean v8, v8, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->anamorphic:Z

    invoke-static {v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 266
    invoke-direct {p0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->addFileFullXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 269
    invoke-direct {p0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->addLinksXmlElements(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 271
    invoke-virtual {v6, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    move v0, v1

    .line 273
    :goto_0
    iget-boolean v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mHasAudio:Z

    if-eqz v3, :cond_3

    .line 275
    new-instance v7, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "audio"

    invoke-direct {v7, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    move v3, v2

    move v4, v0

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v0, v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    if-ge v3, v0, :cond_2

    .line 278
    new-instance v8, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "track"

    invoke-direct {v8, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 279
    new-instance v9, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "clipitem"

    invoke-direct {v9, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 280
    const-string/jumbo v10, "id"

    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mAudioClipIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v10, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v0, "frameBlend"

    invoke-static {v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v10, "masterclipid"

    iget-object v11, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mXmlId:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 283
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v10, "name"

    iget-object v11, p0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->mName:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 285
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v10, "sourcetrack"

    invoke-direct {v0, v10}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 286
    new-instance v10, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v11, "mediatype"

    const-string/jumbo v12, "audio"

    invoke-direct {v10, v11, v12}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 287
    add-int/lit8 v10, v3, 0x1

    .line 288
    new-instance v11, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v12, "trackindex"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 289
    invoke-virtual {v9, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 291
    if-nez v4, :cond_1

    .line 293
    invoke-direct {p0, v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->addFileFullXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    move v4, v1

    .line 301
    :goto_2
    invoke-direct {p0, v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->addLinksXmlElements(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 303
    invoke-virtual {v8, v9}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 305
    invoke-virtual {v7, v8}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 276
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 298
    :cond_1
    invoke-virtual {p0, v9}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->addFileShortXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_2

    .line 308
    :cond_2
    invoke-virtual {v6, v7}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 310
    :cond_3
    invoke-virtual {v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 312
    invoke-virtual {p1, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 313
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.class public Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;
.source "Sequence.java"


# instance fields
.field private mAudioTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

.field private mAudioTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNtsc:Z

.field private mUuid:Ljava/lang/String;

.field private mVideoFrameRate:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

.field private mVideoTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

.field private mVideoTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mName:Ljava/lang/String;

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mDuration:J

    .line 49
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->P_30:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoFrameRate:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mNtsc:Z

    .line 51
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    .line 52
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    invoke-direct {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTracks:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTracks:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mMarkers:Ljava/util/List;

    .line 57
    return-void
.end method

.method private addAudioFormatXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 7

    .prologue
    .line 84
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "numOutputChannels"

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v2, v2, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 85
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "format"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "samplecharacteristics"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "depth"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v4, v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->sampleDepth:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 89
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "samplerate"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v4, v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->sampleRate:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 92
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 95
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 97
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "outputs"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "group"

    invoke-direct {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "index"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 101
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "numchannels"

    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v5, v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 102
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "downmix"

    const-string/jumbo v5, "0"

    invoke-direct {v3, v4, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 104
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v4, "channel"

    invoke-direct {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v4, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v5, "index"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 106
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 108
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 109
    invoke-virtual {p1, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method

.method private addRateXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;Z)V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "rate"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "timebase"

    invoke-virtual {p2}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;->getNumVal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 62
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "ntsc"

    invoke-static {p3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 63
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 64
    return-void
.end method

.method private addVideoFormatXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 6

    .prologue
    .line 67
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "format"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "samplecharacteristics"

    invoke-direct {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-object v2, v2, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->timebase:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-boolean v3, v3, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->ntsc:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->addRateXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;Z)V

    .line 72
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "width"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget v4, v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->width:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 73
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "height"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget v4, v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 74
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "anamorphic"

    iget-object v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-boolean v4, v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->anamorphic:Z

    invoke-static {v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->convertBooltoString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 75
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "pixelaspectratio"

    sget-object v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoAspectRatioStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 76
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "fielddominance"

    sget-object v4, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils;->VideoFieldDominanceStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;

    iget-object v5, v5, Lcom/adobe/premiereclip/prexport/fcpxml/utils/VideoSettings;->fieldDominance:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;

    invoke-virtual {v5}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoFieldDominance;->getNumVal()I

    move-result v5

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 77
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v3, "colordepth"

    const-string/jumbo v4, "24"

    invoke-direct {v2, v3, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 81
    return-void
.end method


# virtual methods
.method public addAudioTrack(Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->setTrackIndex(I)V

    .line 169
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public addMarker(Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mMarkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public addVideoTrack(Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->setTrackIndex(I)V

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public getAudioTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMarkerAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mMarkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;

    return-object v0
.end method

.method public getNumChannels()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTrackSettings:Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;

    iget v0, v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/AudioSettings;->numChannels:I

    return v0
.end method

.method public getNumMarkers()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVideoTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public numAudioTracks()I
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public numVideoTracks()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 185
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mDuration:J

    .line 186
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mUuid:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 6

    .prologue
    .line 114
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "sequence"

    invoke-direct {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "MZ.Sequence.EditingModeGUID"

    const-string/jumbo v2, "795454d9-d3c2-429d-9474-923ab13b7018"

    invoke-virtual {v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "uuid"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mUuid:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 118
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "duration"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mDuration:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoFrameRate:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;

    iget-boolean v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mNtsc:Z

    invoke-direct {p0, v1, v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->addRateXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$VideoTimebase;Z)V

    .line 122
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 124
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "media"

    invoke-direct {v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "video"

    invoke-direct {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->addVideoFormatXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 129
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mVideoTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;

    .line 130
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 134
    new-instance v3, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "audio"

    invoke-direct {v3, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->addAudioFormatXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mAudioTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;

    .line 138
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 143
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 145
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->mMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;

    .line 147
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_2

    .line 151
    :cond_2
    invoke-virtual {p1, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 152
    return-void
.end method

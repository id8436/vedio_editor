.class public Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;
.super Ljava/lang/Object;
.source "ProjectXmlGenerator.java"


# instance fields
.field private mClipitemCount:I

.field private mFileCount:I

.field private mMasterClipCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    .line 40
    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mFileCount:I

    .line 41
    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mMasterClipCount:I

    .line 42
    return-void
.end method

.method private processBinContentsForXml(Lcom/adobe/premiereclip/prexport/fcpxml/Bin;)V
    .locals 7

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->getMasterClips()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    .line 62
    const-string/jumbo v1, "ProjToXml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got masterclip uuid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->setUuid(Ljava/lang/String;)V

    .line 65
    iget v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mMasterClipCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mMasterClipCount:I

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "masterclip-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mMasterClipCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->setXmlId(Ljava/lang/String;)V

    .line 69
    iget v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mFileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mFileCount:I

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "file-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mFileCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->setFileId(Ljava/lang/String;)V

    .line 73
    iget v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "clipitem-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->setVideoclipId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getNumAudioChannels()I

    move-result v1

    if-lez v1, :cond_0

    .line 78
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getNumAudioChannels()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 81
    iget v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clipitem-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v0, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->setAudioclipIds(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 89
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->getSequences()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;

    .line 90
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->getVideoTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;

    .line 91
    invoke-virtual {v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/VideoTrack;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 92
    instance-of v5, v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    if-eqz v5, :cond_5

    .line 93
    check-cast v1, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 94
    iget v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clipitem-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v1, v5}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setXmlId(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->setMasterClipIdsForTrackClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V

    goto :goto_2

    .line 102
    :cond_6
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->getAudioTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;

    .line 103
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/track/AudioTrack;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackItem;

    .line 104
    instance-of v4, v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    if-eqz v4, :cond_8

    .line 105
    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;

    .line 106
    iget v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "clipitem-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-virtual {v0, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->setXmlId(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->setMasterClipIdsForTrackClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V

    goto :goto_3

    .line 114
    :cond_9
    return-void
.end method

.method private setMasterClipIdsForTrackClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;)V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/TrackClip;->getMasterClip()Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getXmlId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->setUuid(Ljava/lang/String;)V

    .line 49
    iget v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mMasterClipCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mMasterClipCount:I

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "masterclip-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mMasterClipCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->setXmlId(Ljava/lang/String;)V

    .line 53
    iget v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mFileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mFileCount:I

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "file-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mFileCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->setFileId(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public convertProjectToXml(Lcom/adobe/premiereclip/prexport/fcpxml/Project;Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mMasterClipCount:I

    .line 118
    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mFileCount:I

    .line 119
    iput v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->mClipitemCount:I

    .line 122
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->processBinContentsForXml(Lcom/adobe/premiereclip/prexport/fcpxml/Bin;)V

    .line 123
    :goto_0
    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/prexport/fcpxml/Project;->numBins()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 125
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/Project;->getBinAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/Bin;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/ProjectXmlGenerator;->processBinContentsForXml(Lcom/adobe/premiereclip/prexport/fcpxml/Bin;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "xmeml"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "4"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/Project;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 133
    invoke-virtual {p2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 134
    return-void
.end method

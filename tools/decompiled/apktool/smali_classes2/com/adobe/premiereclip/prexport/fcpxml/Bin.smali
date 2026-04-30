.class public Lcom/adobe/premiereclip/prexport/fcpxml/Bin;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;
.source "Bin.java"


# instance fields
.field protected mBins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/Bin;",
            ">;"
        }
    .end annotation
.end field

.field protected mMasterClips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;",
            ">;"
        }
    .end annotation
.end field

.field protected mName:Ljava/lang/String;

.field protected mSequences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mXmlTagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mName:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "bin"

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mXmlTagName:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mBins:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mMasterClips:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mSequences:Ljava/util/ArrayList;

    .line 42
    return-void
.end method


# virtual methods
.method public addBin(Lcom/adobe/premiereclip/prexport/fcpxml/Bin;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mBins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public addMasterClip(Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mMasterClips:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public addSequence(Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mSequences:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public getBinAt(I)Lcom/adobe/premiereclip/prexport/fcpxml/Bin;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mBins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mBins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;

    .line 52
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBins()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/Bin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mBins:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMasterClips()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mMasterClips:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSequences()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mSequences:Ljava/util/ArrayList;

    return-object v0
.end method

.method public numBins()J
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mBins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public numMasterClips()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mMasterClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 4

    .prologue
    .line 85
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mXmlTagName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 88
    new-instance v2, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v0, "children"

    invoke-direct {v2, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mBins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;

    .line 91
    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mMasterClips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;

    .line 95
    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/clip/MasterClip;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_1

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->mSequences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;

    .line 99
    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/Sequence;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 103
    invoke-virtual {p1, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 104
    return-void
.end method

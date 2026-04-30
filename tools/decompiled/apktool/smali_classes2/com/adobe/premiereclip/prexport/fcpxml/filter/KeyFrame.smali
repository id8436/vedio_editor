.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;
.source "KeyFrame.java"


# instance fields
.field private mValue:Ljava/lang/String;

.field private mWhen:J


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;->mWhen:J

    .line 38
    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;->mValue:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;->mWhen:J

    .line 33
    iput-object p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;->mValue:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 6

    .prologue
    .line 43
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "keyframe"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "when"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;->mWhen:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 45
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "value"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/KeyFrame;->mValue:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 47
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 48
    return-void
.end method

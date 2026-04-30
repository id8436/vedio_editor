.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;
.source "Marker.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private inPoint:J

.field private name:Ljava/lang/String;

.field private outPoint:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/Xmlable;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->inPoint:J

    .line 35
    iput-wide p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->outPoint:J

    .line 36
    iput-object p5, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->name:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->comment:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 6

    .prologue
    .line 42
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "marker"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "comment"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->comment:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 44
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 45
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "in"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->inPoint:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 46
    new-instance v1, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v2, "out"

    iget-wide v4, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/Marker;->outPoint:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 48
    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->addChild(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 49
    return-void
.end method

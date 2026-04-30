.class public Lcom/adobe/premiereclip/prexport/fcpxml/Project;
.super Lcom/adobe/premiereclip/prexport/fcpxml/Bin;
.source "Project.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;-><init>(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "project"

    iput-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Project;->mXmlTagName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/adobe/premiereclip/prexport/fcpxml/Bin;->toXmlElement(Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;)V

    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/Project;->mXmlTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->getChild(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    move-result-object v0

    .line 33
    const-string/jumbo v1, "exportedBy"

    const-string/jumbo v2, "premiereclip"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.class public Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;
.super Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;
.source "XmlDocument.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlDocument;->toString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    const-string/jumbo v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->toString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    return-object v0
.end method

.class public Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;
.super Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;
.source "HorizVertFilterParameter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 27
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/FilterParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p3, p4}, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;->setValue(II)V

    .line 29
    return-void
.end method


# virtual methods
.method public setValue(FF)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;->mValueElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "horiz"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;->mValueElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "vert"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;->mValueElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public setValue(II)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;->mValueElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 33
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "horiz"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;

    const-string/jumbo v1, "vert"

    invoke-direct {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/prexport/fcpxml/XmlElement;->setValue(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/adobe/premiereclip/prexport/fcpxml/filter/HorizVertFilterParameter;->mValueElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$4;
.super Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.source "AtomRssTransforms.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 254
    return-void
.end method

.method public startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 234
    instance-of v1, p3, Lcom/google/gdata/model/atom/OutOfLineContent;

    if-nez v1, :cond_0

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v0

    .line 245
    :goto_0
    return v0

    .line 238
    :cond_0
    check-cast p3, Lcom/google/gdata/model/atom/OutOfLineContent;

    .line 239
    invoke-virtual {p3}, Lcom/google/gdata/model/atom/OutOfLineContent;->getMimeType()Lcom/google/gdata/util/ContentType;

    move-result-object v1

    .line 240
    invoke-virtual {p3}, Lcom/google/gdata/model/atom/OutOfLineContent;->getSrc()Ljava/net/URI;

    move-result-object v2

    .line 241
    if-nez v1, :cond_1

    move-object v1, v0

    :goto_1
    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {p3}, Lcom/google/gdata/model/atom/OutOfLineContent;->getLength()J

    move-result-wide v2

    invoke-static {p1, v1, v0, v2, v3}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->access$000(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Ljava/lang/String;J)V

    .line 245
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v1}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public textContent(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 250
    return-void
.end method

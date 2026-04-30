.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$7;
.super Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.source "AtomRssTransforms.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
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
    .line 358
    return-void
.end method

.method public startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 7
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
    const/4 v6, 0x0

    .line 325
    instance-of v0, p3, Lcom/google/gdata/model/atom/Link;

    if-nez v0, :cond_0

    .line 326
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v0

    .line 349
    :goto_0
    return v0

    .line 328
    :cond_0
    check-cast p3, Lcom/google/gdata/model/atom/Link;

    .line 329
    invoke-virtual {p3}, Lcom/google/gdata/model/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p3}, Lcom/google/gdata/model/atom/Link;->getType()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {p3}, Lcom/google/gdata/model/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {p3}, Lcom/google/gdata/model/atom/Link;->getLength()J

    move-result-wide v4

    .line 334
    if-eqz v0, :cond_2

    const-string/jumbo v3, "enclosure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    invoke-static {p1, v1, v2, v4, v5}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms;->access$000(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Ljava/lang/String;J)V

    .line 349
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :cond_2
    const-string/jumbo v1, "comments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 337
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "comments"

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :cond_3
    const-string/jumbo v1, "alternate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "link"

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_4
    const-string/jumbo v1, "via"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    if-eqz v2, :cond_1

    .line 344
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v1, "url"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 346
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "source"

    invoke-virtual {p1, v1, v2, v0, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
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
    .line 354
    return-void
.end method

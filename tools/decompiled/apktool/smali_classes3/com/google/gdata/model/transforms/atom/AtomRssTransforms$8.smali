.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$8;
.super Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.source "AtomRssTransforms.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 371
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
    .line 413
    return-void
.end method

.method public startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 5
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

    const/4 v4, 0x0

    .line 375
    invoke-virtual {p3}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/atom/Source;->ICON:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v2}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 376
    invoke-virtual {p3}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v2

    sget-object v3, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 378
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    instance-of v2, p2, Lcom/google/gdata/model/atom/Source;

    if-nez v2, :cond_3

    .line 379
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v0

    .line 404
    :cond_2
    :goto_0
    return v0

    .line 382
    :cond_3
    check-cast p2, Lcom/google/gdata/model/atom/Source;

    .line 384
    if-eqz v1, :cond_4

    sget-object v1, Lcom/google/gdata/model/atom/Source;->LOGO:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p2, v1}, Lcom/google/gdata/model/atom/Source;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 389
    :cond_4
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "image"

    invoke-virtual {p1, v1, v2, v4, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 390
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "url"

    invoke-virtual {p3}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Lcom/google/gdata/model/atom/Source;->getTitle()Lcom/google/gdata/model/atom/TextContent;

    move-result-object v1

    .line 394
    if-eqz v1, :cond_5

    .line 395
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "title"

    invoke-virtual {v1}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 398
    :cond_5
    invoke-virtual {p2}, Lcom/google/gdata/model/atom/Source;->getHtmlLink()Lcom/google/gdata/model/atom/Link;

    move-result-object v1

    .line 399
    if-eqz v1, :cond_6

    .line 400
    sget-object v2, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "link"

    invoke-virtual {v1}, Lcom/google/gdata/model/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 402
    :cond_6
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "image"

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    goto :goto_0
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
    .line 409
    return-void
.end method

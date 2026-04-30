.class public Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.super Ljava/lang/Object;
.source "XmlGenerator.java"

# interfaces
.implements Lcom/google/gdata/wireformats/XmlGenerator$ElementGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0, p2, p3}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->getName(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected getAttributes(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Lcom/google/gdata/model/Element;->getAttributeIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v5

    .line 191
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 195
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Attribute;

    .line 196
    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->getAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v2

    .line 197
    if-nez p2, :cond_0

    move-object v1, v3

    .line 199
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/gdata/model/AttributeMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v1

    .line 200
    :goto_2
    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_3
    new-instance v6, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v2, v1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_0
    invoke-interface {p2, v2}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v1

    goto :goto_1

    .line 199
    :cond_1
    invoke-virtual {v2}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v2, v3

    .line 200
    goto :goto_3

    :cond_3
    move-object v3, v4

    .line 206
    :cond_4
    return-object v3
.end method

.method protected getName(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/QName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/model/QName;"
        }
    .end annotation

    .prologue
    .line 168
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    goto :goto_0
.end method

.method protected getNamespaces(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    invoke-static {p2, p3}, Lcom/google/gdata/wireformats/GeneratorUtils;->calculateNamespaces(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 155
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->getNamespaces(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;

    move-result-object v0

    .line 156
    invoke-virtual {p0, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->getAttributes(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-virtual {p0, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->getName(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/QName;

    move-result-object v2

    .line 159
    invoke-virtual {v2}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2, v1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public textContent(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    if-nez p3, :cond_1

    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v0

    .line 213
    :goto_0
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->characters(Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void

    .line 211
    :cond_1
    invoke-interface {p3, p2, p3}, Lcom/google/gdata/model/ElementMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

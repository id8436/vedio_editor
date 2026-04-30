.class final Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$3;
.super Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;
.source "AtomRssTransforms.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
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
    .line 213
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
    const/4 v1, 0x0

    .line 176
    instance-of v0, p3, Lcom/google/gdata/model/atom/Person;

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/wireformats/XmlGenerator$XmlElementGenerator;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v0

    .line 204
    :goto_0
    return v0

    :cond_0
    move-object v0, p3

    .line 180
    check-cast v0, Lcom/google/gdata/model/atom/Person;

    .line 181
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Person;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Person;->getName()Ljava/lang/String;

    move-result-object v3

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 187
    :goto_1
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    if-eqz v3, :cond_3

    .line 192
    if-eqz v0, :cond_2

    .line 193
    const-string/jumbo v2, " ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    if-eqz v0, :cond_3

    .line 197
    const-string/jumbo v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_3
    invoke-virtual {p0, p3, p4}, Lcom/google/gdata/model/transforms/atom/AtomRssTransforms$3;->getName(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v0, v3, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move v0, v1

    .line 204
    goto :goto_0

    :cond_4
    move v0, v1

    .line 185
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
    .line 209
    return-void
.end method

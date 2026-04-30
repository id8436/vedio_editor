.class public Lcom/google/gdata/wireformats/GeneratorUtils;
.super Ljava/lang/Object;
.source "GeneratorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNamespace(Ljava/util/Map;Lcom/google/gdata/model/QName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;",
            "Lcom/google/gdata/model/QName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 86
    if-nez p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static calculateNamespaces(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 46
    invoke-static {v0, p0, p1}, Lcom/google/gdata/wireformats/GeneratorUtils;->calculateNamespaces(Ljava/util/Map;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 47
    return-object v0
.end method

.method private static calculateNamespaces(Ljava/util/Map;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 59
    :goto_0
    invoke-static {p0, v0}, Lcom/google/gdata/wireformats/GeneratorUtils;->addNamespace(Ljava/util/Map;Lcom/google/gdata/model/QName;)V

    .line 61
    invoke-virtual {p1, p2}, Lcom/google/gdata/model/Element;->getAttributeIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v1

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Attribute;

    .line 64
    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->getAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v3

    .line 65
    if-nez p2, :cond_1

    move-object v0, v2

    .line 67
    :goto_2
    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 68
    :goto_3
    invoke-static {p0, v0}, Lcom/google/gdata/wireformats/GeneratorUtils;->addNamespace(Ljava/util/Map;Lcom/google/gdata/model/QName;)V

    goto :goto_1

    .line 58
    :cond_0
    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {p2, v3}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    goto :goto_2

    .line 67
    :cond_2
    invoke-interface {v0}, Lcom/google/gdata/model/AttributeMetadata;->getName()Lcom/google/gdata/model/QName;

    move-result-object v0

    goto :goto_3

    .line 71
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/gdata/model/Element;->getElementIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v3

    .line 72
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    .line 74
    if-nez p2, :cond_4

    move-object v1, v2

    .line 76
    :goto_5
    invoke-static {p0, v0, v1}, Lcom/google/gdata/wireformats/GeneratorUtils;->calculateNamespaces(Ljava/util/Map;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    goto :goto_4

    .line 74
    :cond_4
    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    goto :goto_5

    .line 78
    :cond_5
    return-void
.end method

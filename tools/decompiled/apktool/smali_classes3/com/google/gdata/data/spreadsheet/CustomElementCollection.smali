.class public Lcom/google/gdata/data/spreadsheet/CustomElementCollection;
.super Ljava/lang/Object;
.source "CustomElementCollection.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# instance fields
.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    return-object v0
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 184
    const-class v1, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 185
    sget-object v1, Lcom/google/gdata/data/spreadsheet/Namespaces;->gSpreadCustomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 186
    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setAggregate(Z)V

    .line 188
    return-object v0
.end method


# virtual methods
.method public clearValueLocal(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 204
    sget-object v4, Lcom/google/gdata/data/spreadsheet/Namespaces;->gSpreadCustomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;

    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v1, v3, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;

    invoke-direct {v0, p0, p3}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;-><init>(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;

    .line 108
    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public replaceWithLocal(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 163
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 164
    return-void
.end method

.method public setValueLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    const-string/jumbo v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Formulas are not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->values:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;

    invoke-direct {v2, p0, p2}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;-><init>(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

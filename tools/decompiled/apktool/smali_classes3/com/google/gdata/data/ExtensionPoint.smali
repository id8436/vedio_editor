.class public Lcom/google/gdata/data/ExtensionPoint;
.super Lcom/google/gdata/data/AbstractExtension;
.source "ExtensionPoint.java"


# instance fields
.field private manifest:Lcom/google/gdata/data/ExtensionManifest;

.field private nonRepeatingExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;",
            "Lcom/google/gdata/data/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private repeatingExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field protected xmlBlob:Lcom/google/gdata/util/XmlBlob;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    .line 70
    new-instance v0, Lcom/google/gdata/util/XmlBlob;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlBlob;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    .line 80
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    .line 70
    new-instance v0, Lcom/google/gdata/util/XmlBlob;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlBlob;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    .line 90
    iget-object v0, p1, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    .line 91
    iget-object v0, p1, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    .line 92
    iget-object v0, p1, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    .line 93
    iget-object v0, p1, Lcom/google/gdata/data/ExtensionPoint;->manifest:Lcom/google/gdata/data/ExtensionManifest;

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->manifest:Lcom/google/gdata/data/ExtensionManifest;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/ExtensionPoint;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/gdata/data/ExtensionPoint;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    return-object v0
.end method

.method protected static createExtensionInstance(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 566
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateExtension:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1

    .line 570
    :catch_1
    move-exception v0

    .line 571
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->cantCreateExtension:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionPoint;->addExtension(Lcom/google/gdata/data/Extension;Ljava/lang/Class;)Z

    .line 180
    return-void
.end method

.method protected addExtension(Lcom/google/gdata/data/Extension;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/Extension;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addRepeatingExtension(Lcom/google/gdata/data/Extension;)V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionPoint;->addRepeatingExtension(Lcom/google/gdata/data/Extension;Ljava/lang/Class;)V

    .line 206
    return-void
.end method

.method protected addRepeatingExtension(Lcom/google/gdata/data/Extension;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/Extension;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 194
    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method protected checkRequiredExtensions(Lcom/google/gdata/data/ExtensionManifest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p1, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionDescription;

    .line 662
    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->getExtensionClass()Ljava/lang/Class;

    move-result-object v1

    .line 665
    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->isRepeatable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 669
    :goto_0
    if-nez v1, :cond_0

    .line 670
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->missingExtensionElement:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Required extension element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionDescription;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " not found."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 675
    throw v1

    .line 665
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 679
    :cond_2
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method protected generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Lcom/google/gdata/data/AttributeGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p6}, Lcom/google/gdata/data/AttributeGenerator;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No content allowed on an extension point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gdata/data/ExtensionProfile;->getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionPoint;->checkRequiredExtensions(Lcom/google/gdata/data/ExtensionManifest;)V
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/ExtensionPoint;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 441
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/ExtensionPoint;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 442
    invoke-virtual {p1, p3, p4}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 443
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lcom/google/gdata/util/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateCumulativeXmlBlob(Lcom/google/gdata/data/ExtensionProfile;)Lcom/google/gdata/util/XmlBlob;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Lcom/google/gdata/util/XmlBlob;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlBlob;-><init>()V

    .line 314
    invoke-virtual {v1}, Lcom/google/gdata/util/XmlBlob;->getNamespaces()Ljava/util/List;

    move-result-object v2

    .line 316
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 317
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-direct {v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;)V

    .line 319
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Lcom/google/gdata/util/XmlBlob;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/XmlBlob;->setLang(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Lcom/google/gdata/util/XmlBlob;->getBase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/XmlBlob;->setBase(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Lcom/google/gdata/util/XmlBlob;->getNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 323
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->manifest:Lcom/google/gdata/data/ExtensionManifest;

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->manifest:Lcom/google/gdata/data/ExtensionManifest;

    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionManifest;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 328
    new-instance v6, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-interface {v2, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;

    .line 336
    invoke-interface {v0, v4, p1}, Lcom/google/gdata/data/Extension;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_1

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 340
    invoke-virtual {v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;

    .line 342
    invoke-interface {v0, v4, p1}, Lcom/google/gdata/data/Extension;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_3

    .line 344
    :cond_4
    invoke-virtual {v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    goto :goto_2

    .line 347
    :cond_5
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/XmlBlob;->setBlob(Ljava/lang/String;)V

    .line 348
    return-object v1
.end method

.method protected generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;

    .line 483
    invoke-interface {v0, p1, p2}, Lcom/google/gdata/data/Extension;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 487
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 488
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;

    .line 489
    invoke-interface {v0, p1, p2}, Lcom/google/gdata/data/Extension;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_2

    .line 491
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    goto :goto_1

    .line 494
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    if-eqz v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->innerXml(Ljava/lang/String;)V

    .line 497
    :cond_3
    return-void
.end method

.method protected generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/util/XmlBlob;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 465
    return-void
.end method

.method public getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;

    return-object v0
.end method

.method protected getExtensionDescription(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ExtensionDescription;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/data/ExtensionDescription;"
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/ExtensionPoint;->getManifest(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v1

    .line 544
    if-nez v1, :cond_1

    .line 545
    const/4 v0, 0x0

    .line 555
    :cond_0
    :goto_0
    return-object v0

    .line 548
    :cond_1
    iget-object v0, v1, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-static {p3, p4}, Lcom/google/gdata/util/common/base/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionDescription;

    .line 551
    if-nez v0, :cond_0

    .line 552
    iget-object v0, v1, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    const-string/jumbo v1, "*"

    invoke-static {p3, v1}, Lcom/google/gdata/util/common/base/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionDescription;

    goto :goto_0
.end method

.method protected getExtensionHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/xml/sax/Attributes;",
            ")",
            "Lcom/google/gdata/util/XmlParser$ElementHandler;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 607
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/gdata/data/ExtensionPoint;->getExtensionDescription(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v3

    .line 609
    if-nez v3, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-object v0

    .line 612
    :cond_1
    invoke-virtual {v3}, Lcom/google/gdata/data/ExtensionDescription;->getExtensionClass()Ljava/lang/Class;

    move-result-object v4

    .line 613
    if-eqz v4, :cond_0

    .line 620
    invoke-virtual {v3}, Lcom/google/gdata/data/ExtensionDescription;->isAggregate()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 621
    invoke-virtual {p0, v4}, Lcom/google/gdata/data/ExtensionPoint;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v1

    .line 624
    :goto_1
    const/4 v0, 0x1

    .line 625
    if-nez v1, :cond_3

    .line 626
    invoke-static {v4}, Lcom/google/gdata/data/ExtensionPoint;->createExtensionInstance(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v1

    .line 632
    :goto_2
    invoke-interface {v1, p1, p3, p4, p5}, Lcom/google/gdata/data/Extension;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v2

    .line 636
    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {v3}, Lcom/google/gdata/data/ExtensionDescription;->isRepeatable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 639
    invoke-virtual {p0, v1, v4}, Lcom/google/gdata/data/ExtensionPoint;->addRepeatingExtension(Lcom/google/gdata/data/Extension;Ljava/lang/Class;)V

    :cond_2
    move-object v0, v2

    .line 651
    goto :goto_0

    .line 628
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 641
    :cond_4
    invoke-virtual {p0, v1, v4}, Lcom/google/gdata/data/ExtensionPoint;->addExtension(Lcom/google/gdata/data/Extension;Ljava/lang/Class;)Z

    move-result v0

    .line 642
    if-nez v0, :cond_2

    .line 643
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateExtension:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate extension element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 647
    throw v0

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public getExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/data/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p4}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method protected getManifest(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)",
            "Lcom/google/gdata/data/ExtensionManifest;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->manifest:Lcom/google/gdata/data/ExtensionManifest;

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p1, p2}, Lcom/google/gdata/data/ExtensionProfile;->getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->manifest:Lcom/google/gdata/data/ExtensionManifest;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->manifest:Lcom/google/gdata/data/ExtensionManifest;

    return-object v0
.end method

.method public getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 146
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    return-object v0
.end method

.method public getRepeatingExtensions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Extension;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getXmlBlob()Lcom/google/gdata/util/XmlBlob;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    return-object v0
.end method

.method public final hasExtension(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hasRepeatingExtension(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/gdata/data/Extension;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initializeArbitraryXml(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lcom/google/gdata/util/XmlParser$ElementHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Lcom/google/gdata/util/XmlParser$ElementHandler;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 507
    invoke-virtual {p1}, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml()Z

    move-result v0

    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/ExtensionPoint;->getManifest(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v3

    .line 511
    if-eqz v3, :cond_1

    .line 512
    iget-boolean v2, v3, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    if-eqz v2, :cond_1

    .line 513
    iget-boolean v2, v3, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    .line 518
    iget-boolean v0, v3, Lcom/google/gdata/data/ExtensionManifest;->mixedContent:Z

    .line 522
    :goto_0
    if-eqz v2, :cond_0

    .line 523
    iget-object v2, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {p3, v2, v0, v1}, Lcom/google/gdata/util/XmlParser$ElementHandler;->initializeXmlBlob(Lcom/google/gdata/util/XmlBlob;ZZ)V

    .line 528
    :cond_0
    return-void

    :cond_1
    move v2, v0

    move v0, v1

    goto :goto_0
.end method

.method public parseCumulativeXmlBlob(Lcom/google/gdata/util/XmlBlob;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/XmlBlob;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 361
    new-instance v0, Lcom/google/gdata/util/XmlBlob;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlBlob;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    .line 362
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 363
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 366
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 367
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter;

    invoke-direct {v0, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;-><init>(Ljava/io/Writer;)V

    .line 368
    const-string/jumbo v2, "CUMULATIVE_BLOB"

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/util/XmlBlob;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 369
    const-string/jumbo v2, "CUMULATIVE_BLOB"

    invoke-static {v0, v1, v2, p1}, Lcom/google/gdata/util/XmlBlob;->endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;)V

    .line 372
    new-instance v0, Ljava/io/StringReader;

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 373
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    .line 374
    new-instance v2, Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;

    invoke-direct {v2, p0, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$CumulativeBlobHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    const-string/jumbo v3, ""

    const-string/jumbo v4, "CUMULATIVE_BLOB"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public removeExtension(Lcom/google/gdata/data/Extension;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public removeExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 225
    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setExtension(Lcom/google/gdata/data/Extension;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionPoint;->addExtension(Lcom/google/gdata/data/Extension;Ljava/lang/Class;)Z

    .line 187
    return-void
.end method

.method public setXmlBlob(Lcom/google/gdata/util/XmlBlob;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionPoint;->xmlBlob:Lcom/google/gdata/util/XmlBlob;

    .line 301
    return-void
.end method

.method public visit(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-interface {p1, p2, p0}, Lcom/google/gdata/data/ExtensionVisitor;->visit(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/Extension;)Z

    move-result v0

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 286
    :cond_0
    invoke-interface {p1, p0}, Lcom/google/gdata/data/ExtensionVisitor;->visitComplete(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 287
    return-void
.end method

.method protected visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 241
    instance-of v0, p2, Lcom/google/gdata/data/ExtensionPoint;

    if-eqz v0, :cond_0

    .line 242
    check-cast p2, Lcom/google/gdata/data/ExtensionPoint;

    invoke-virtual {p2, p1, p0}, Lcom/google/gdata/data/ExtensionPoint;->visit(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/ExtensionPoint;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-interface {p1, p0, p2}, Lcom/google/gdata/data/ExtensionVisitor;->visit(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/Extension;)Z

    goto :goto_0
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->nonRepeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionPoint;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint;->repeatingExtensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 262
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Extension;

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionPoint;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    goto :goto_1

    .line 266
    :cond_2
    return-void
.end method

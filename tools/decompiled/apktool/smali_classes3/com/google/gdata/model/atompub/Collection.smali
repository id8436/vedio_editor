.class public Lcom/google/gdata/model/atompub/Collection;
.super Lcom/google/gdata/model/Element;
.source "Collection.java"

# interfaces
.implements Lcom/google/gdata/data/Reference;
.implements Lcom/google/gdata/data/introspection/ICollection;


# static fields
.field public static final HREF:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/atompub/Collection;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final coreVersion:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomPubStandardNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "collection"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/model/atompub/Collection;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 69
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string/jumbo v1, "href"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atompub/Collection;->HREF:Lcom/google/gdata/model/AttributeKey;

    .line 75
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string/jumbo v1, "title"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atompub/Collection;->TITLE:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 58
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/atompub/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    .line 99
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atompub/Collection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 58
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/atompub/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    .line 106
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/atompub/Collection;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 58
    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/atompub/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/gdata/model/atompub/Collection;-><init>()V

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atompub/Collection;->setHref(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Lcom/google/gdata/model/atom/TextContent;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/google/gdata/model/atompub/Collection;-><init>()V

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atompub/Collection;->setHref(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/atompub/Collection;->setTitle(Lcom/google/gdata/model/atom/TextContent;)Lcom/google/gdata/model/atompub/Collection;

    .line 138
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    .line 139
    invoke-virtual {p0, v2}, Lcom/google/gdata/model/atompub/Collection;->addAccept(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Collection;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/google/gdata/model/atompub/Collection;->TITLE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 88
    sget-object v1, Lcom/google/gdata/model/atompub/Collection;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 89
    sget-object v1, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 90
    sget-object v1, Lcom/google/gdata/model/atompub/Categories;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 91
    sget-object v1, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->setRequired(Z)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public addAccept(Lcom/google/gdata/model/atompub/Accept;)Lcom/google/gdata/model/atompub/Collection;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 191
    return-object p0
.end method

.method public addAccept(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Collection;
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    new-instance v1, Lcom/google/gdata/model/atompub/Accept;

    invoke-direct {v1, p1}, Lcom/google/gdata/model/atompub/Accept;-><init>(Ljava/lang/String;)V

    invoke-super {p0, v0, v1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 201
    return-object p0
.end method

.method public addCategories(Lcom/google/gdata/model/atompub/Categories;)Lcom/google/gdata/model/atompub/Collection;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/google/gdata/model/atompub/Categories;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 256
    return-object p0
.end method

.method public getAcceptList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Collection;->getAccepts()Ljava/util/List;

    move-result-object v0

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Accept;

    .line 179
    invoke-virtual {v0}, Lcom/google/gdata/model/atompub/Accept;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_0
    return-object v1
.end method

.method public getAccepts()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atompub/Accept;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/gdata/model/atompub/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    sget-object v2, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Accept;

    .line 156
    invoke-virtual {v0}, Lcom/google/gdata/model/atompub/Accept;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 157
    if-eqz v3, :cond_1

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 158
    const-string/jumbo v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 159
    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 160
    new-instance v6, Lcom/google/gdata/model/atompub/Accept;

    invoke-direct {v6, v5}, Lcom/google/gdata/model/atompub/Accept;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 169
    :cond_3
    return-object v0
.end method

.method public getCategorieses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/atompub/Categories;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/google/gdata/model/atompub/Categories;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getTitle()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Collection;->getTitle()Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/model/atom/TextContent;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/TextContent;

    return-object v0
.end method

.method public hasAccepts()Z
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasCategorieses()Z
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/google/gdata/model/atompub/Categories;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Collection;->getHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 321
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public removeAccept(Lcom/google/gdata/model/atompub/Accept;)Z
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeAccept(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Collection;->getAccepts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Accept;

    .line 223
    invoke-virtual {v0}, Lcom/google/gdata/model/atompub/Accept;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    sget-object v1, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v1, v0}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    .line 225
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 227
    goto :goto_0

    .line 228
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->TITLE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atompub/Collection;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    sget-object v1, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/atompub/Collection;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/atom/TextContent;

    .line 330
    if-eqz v0, :cond_3

    .line 331
    if-nez v1, :cond_2

    .line 332
    invoke-static {v0}, Lcom/google/gdata/model/atom/TextContent;->plainText(Ljava/lang/String;)Lcom/google/gdata/model/atom/TextContent;

    move-result-object v0

    .line 333
    sget-object v1, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atompub/Collection;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 351
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/gdata/model/atompub/Collection;->coreVersion:Lcom/google/gdata/util/Version;

    sget-object v1, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 352
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Collection;->getAccepts()Ljava/util/List;

    move-result-object v0

    .line 353
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Accept;

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 357
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/atompub/Accept;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :cond_2
    invoke-virtual {v1}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-virtual {p2, p0, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_0

    .line 342
    :cond_3
    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/google/gdata/model/atompub/Collection;->TITLE:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atompub/Collection;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 361
    :cond_4
    sget-object v0, Lcom/google/gdata/model/atompub/Accept;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atompub/Collection;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 362
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atompub/Collection;->addAccept(Ljava/lang/String;)Lcom/google/gdata/model/atompub/Collection;

    .line 366
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/Element;->resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/atompub/Collection;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 284
    return-void
.end method

.method public setTitle(Lcom/google/gdata/model/atom/TextContent;)Lcom/google/gdata/model/atompub/Collection;
    .locals 2

    .prologue
    .line 310
    sget-object v1, Lcom/google/gdata/model/atompub/Collection;->TITLE:Lcom/google/gdata/model/AttributeKey;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/model/atompub/Collection;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 311
    sget-object v0, Lcom/google/gdata/model/atom/Source;->TITLE:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 312
    return-object p0

    .line 310
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/model/atom/TextContent;->getPlainText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Collection href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/google/gdata/model/atompub/Collection;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/atompub/Collection;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

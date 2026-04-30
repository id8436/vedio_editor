.class Lcom/google/gdata/model/AdaptationRegistryFactory;
.super Ljava/lang/Object;
.source "AdaptationRegistryFactory.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/gdata/model/AdaptationRegistryFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/AdaptationRegistryFactory;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCompatible(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataKey;->getDatatype()Ljava/lang/Class;

    move-result-object v1

    .line 204
    invoke-virtual {p1}, Lcom/google/gdata/model/MetadataKey;->getDatatype()Ljava/lang/Class;

    move-result-object v2

    .line 206
    if-eq v1, v2, :cond_0

    .line 207
    sget-object v0, Lcom/google/gdata/model/AdaptationRegistryFactory;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Incompatible datatypes.  First("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " but Second("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .line 213
    :cond_0
    return v0
.end method

.method private static checkCompatibleElements(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 227
    .line 229
    const/4 v0, 0x1

    .line 231
    invoke-static {p0, p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->checkCompatible(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v2

    .line 236
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v3

    .line 237
    if-eq v2, v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 239
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v0

    move-object v0, p1

    .line 249
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return-object v0

    .line 242
    :cond_1
    sget-object v0, Lcom/google/gdata/model/AdaptationRegistryFactory;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Incompatible element types. First("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " but Second("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    move-object v0, p0

    .line 245
    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v0

    move-object v0, p0

    goto :goto_0
.end method

.method static create(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Lcom/google/gdata/model/AdaptationRegistry;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/google/gdata/model/AdaptationRegistry;

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->unionAttributes(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->unionElements(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/model/AdaptationRegistry;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method private static getAttributeNames(Lcom/google/gdata/model/ElementTransform;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementTransform;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 118
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementTransform;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 119
    iget-object v0, v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    return-object v1
.end method

.method private static getElementNames(Lcom/google/gdata/model/ElementTransform;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementTransform;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/QName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementTransform;->getElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 190
    iget-object v0, v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_0
    return-object v1
.end method

.method private static unionAttributes(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementTransform;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 67
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 68
    invoke-static {p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->getAttributeNames(Lcom/google/gdata/model/ElementTransform;)Ljava/util/Set;

    move-result-object v2

    .line 69
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 71
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 74
    invoke-virtual {p0, v8, v0, v8}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v5

    .line 76
    if-nez v5, :cond_1

    .line 77
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid adaptor key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    invoke-virtual {v5}, Lcom/google/gdata/model/ElementTransform;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 81
    iget-object v6, v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    .line 82
    invoke-virtual {v6}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v7

    .line 85
    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 95
    if-eqz v0, :cond_3

    .line 98
    invoke-static {v0, v6}, Lcom/google/gdata/model/AdaptationRegistryFactory;->checkCompatible(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    invoke-interface {v1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_3
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 110
    :cond_4
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static unionElements(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementTransform;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementTransform;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 139
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 140
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 141
    invoke-static {p1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->getElementNames(Lcom/google/gdata/model/ElementTransform;)Ljava/util/Set;

    move-result-object v4

    .line 143
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementTransform;->getAdaptations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 146
    invoke-virtual {p0, v8, v0, v8}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementTransform;->getElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 149
    iget-object v1, v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    .line 150
    invoke-virtual {v1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v7

    .line 153
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 164
    if-eqz v0, :cond_4

    .line 167
    invoke-static {v0, v1}, Lcom/google/gdata/model/AdaptationRegistryFactory;->checkCompatibleElements(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 170
    :goto_1
    if-nez v0, :cond_2

    .line 171
    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_2
    if-ne v0, v1, :cond_1

    .line 174
    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_3
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

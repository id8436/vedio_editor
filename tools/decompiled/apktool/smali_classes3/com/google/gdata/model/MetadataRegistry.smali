.class public final Lcom/google/gdata/model/MetadataRegistry;
.super Ljava/lang/Object;
.source "MetadataRegistry.java"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cachedSchema:Lcom/google/gdata/model/Schema;

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/ElementMetadataRegistryBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    .line 62
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/gdata/model/MetadataRegistry;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataRegistry;->merge(Lcom/google/gdata/model/MetadataRegistry;)Lcom/google/gdata/model/MetadataRegistry;

    .line 72
    return-void
.end method

.method private declared-synchronized buildSchema()Lcom/google/gdata/model/Schema;
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->cachedSchema:Lcom/google/gdata/model/Schema;

    .line 182
    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/google/gdata/model/MetadataRegistry;->whitelistAttributes()V

    .line 184
    invoke-direct {p0}, Lcom/google/gdata/model/MetadataRegistry;->whitelistElements()V

    .line 186
    new-instance v0, Lcom/google/gdata/model/Schema;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/Schema;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    iput-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->cachedSchema:Lcom/google/gdata/model/Schema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getOrCreateAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;"
        }
    .end annotation

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/Schema;->getRootKey(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v1

    .line 435
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    .line 436
    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 438
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-object v0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getOrCreateElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadataRegistryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementMetadataRegistryBuilder;"
        }
    .end annotation

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/Schema;->getRootKey(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v1

    .line 396
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 397
    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 399
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-object v0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private whitelistAttributes()V
    .locals 10

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 212
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 215
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->getCreators()Ljava/util/Map;

    move-result-object v5

    .line 218
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/TransformKey;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    .line 221
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributeWhitelist()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 222
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributeWhitelist()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/TransformKey;

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 230
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 231
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/AttributeKey;

    .line 232
    invoke-virtual {v2}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 237
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/TransformKey;

    invoke-virtual {v3, v1}, Lcom/google/gdata/model/TransformKey;->matches(Lcom/google/gdata/model/TransformKey;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementCreatorImpl;

    invoke-virtual {v2}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributeSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 244
    :cond_6
    invoke-interface {v8, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 245
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 246
    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 247
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing attributes!  Whitelist specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " but did not find those attributes."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_7
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 253
    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 254
    invoke-virtual {v1}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementKey;

    .line 255
    invoke-virtual {v1}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v8

    invoke-virtual {p0, v2, v0, v8}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/gdata/model/AttributeCreator;->setVisible(Z)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_3

    .line 260
    :cond_9
    return-void
.end method

.method private whitelistElements()V
    .locals 10

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 273
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 276
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->getCreators()Ljava/util/Map;

    move-result-object v5

    .line 279
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 280
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/TransformKey;

    .line 281
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    .line 282
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementCreatorImpl;->getElementWhitelist()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 283
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementCreatorImpl;->getElementWhitelist()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 288
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 289
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/TransformKey;

    .line 290
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 291
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 292
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementKey;

    .line 293
    invoke-virtual {v2}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 296
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 298
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/TransformKey;

    invoke-virtual {v3, v1}, Lcom/google/gdata/model/TransformKey;->matches(Lcom/google/gdata/model/TransformKey;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 301
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementCreatorImpl;

    invoke-virtual {v2}, Lcom/google/gdata/model/ElementCreatorImpl;->getElementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 305
    :cond_6
    invoke-interface {v8, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 306
    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 307
    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 308
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing children!  Whitelist specified "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " but did not find those child elements."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_7
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 314
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 315
    invoke-virtual {v1}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementKey;

    .line 316
    invoke-virtual {v1}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v8

    invoke-virtual {p0, v2, v0, v8}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/gdata/model/ElementCreator;->setVisible(Z)Lcom/google/gdata/model/ElementCreator;

    goto :goto_3

    .line 321
    :cond_9
    return-void
.end method


# virtual methods
.method public adapt(Lcom/google/gdata/model/ElementKey;Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TE;>;",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<+TD;+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/gdata/model/ElementCreator;->adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 450
    return-void
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeCreator;"
        }
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/AttributeCreator;"
        }
    .end annotation

    .prologue
    .line 425
    invoke-direct {p0, p2}, Lcom/google/gdata/model/MetadataRegistry;->getOrCreateAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-direct {p0, p2}, Lcom/google/gdata/model/MetadataRegistry;->getOrCreateElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    .line 383
    if-nez p1, :cond_0

    if-eqz p3, :cond_1

    .line 384
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/MetadataRegistry;->register(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/MetadataRegistry;

    .line 386
    :cond_1
    return-object v0
.end method

.method public build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    return-object v0
.end method

.method public createSchema()Lcom/google/gdata/model/Schema;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->cachedSchema:Lcom/google/gdata/model/Schema;

    .line 172
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/gdata/model/MetadataRegistry;->buildSchema()Lcom/google/gdata/model/Schema;

    move-result-object v0

    goto :goto_0
.end method

.method dirty()V
    .locals 2

    .prologue
    .line 198
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "Cannot call dirty() without holding the lock on the registry."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->cachedSchema:Lcom/google/gdata/model/Schema;

    .line 201
    return-void
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method getElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Schema$RootKey;",
            "Lcom/google/gdata/model/ElementMetadataRegistryBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public isRegistered(Lcom/google/gdata/model/ElementKey;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 328
    invoke-static {p1}, Lcom/google/gdata/model/Schema;->getRootKey(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 330
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, v2, p1, v2}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->isRegistered(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Z

    move-result v0

    .line 333
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized merge(Lcom/google/gdata/model/MetadataRegistry;)Lcom/google/gdata/model/MetadataRegistry;
    .locals 5

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    :try_start_1
    iget-object v0, p1, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Schema$RootKey;

    .line 85
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    .line 86
    if-nez v2, :cond_0

    .line 87
    new-instance v2, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    invoke-direct {v2, p0}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 88
    iget-object v4, p0, Lcom/google/gdata/model/MetadataRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;

    invoke-virtual {v2, v0}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->merge(Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 93
    :cond_1
    :try_start_3
    iget-object v0, p1, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 94
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Schema$RootKey;

    .line 95
    iget-object v2, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    .line 96
    if-nez v2, :cond_2

    .line 97
    new-instance v2, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    invoke-direct {v2, p0}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;-><init>(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 98
    iget-object v4, p0, Lcom/google/gdata/model/MetadataRegistry;->elements:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;

    invoke-virtual {v2, v0}, Lcom/google/gdata/model/ElementMetadataRegistryBuilder;->merge(Lcom/google/gdata/model/ElementMetadataRegistryBuilder;)V

    goto :goto_1

    .line 102
    :cond_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    monitor-exit p0

    return-object p0
.end method

.method public register(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/MetadataRegistry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/MetadataRegistry;"
        }
    .end annotation

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v0

    .line 118
    const-class v1, Lcom/google/gdata/model/Element;

    if-ne v1, v0, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 124
    :cond_0
    :goto_0
    return-object p0

    .line 121
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/MetadataRegistry;->registerClass(Ljava/lang/Class;)Lcom/google/gdata/model/MetadataRegistry;

    goto :goto_0
.end method

.method public declared-synchronized registerClass(Ljava/lang/Class;)Lcom/google/gdata/model/MetadataRegistry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;)",
            "Lcom/google/gdata/model/MetadataRegistry;"
        }
    .end annotation

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/model/Element;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    move-object v0, p0

    .line 147
    :goto_0
    monitor-exit p0

    return-object v0

    .line 139
    :cond_0
    :try_start_1
    const-string/jumbo v0, "registerMetadata"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/google/gdata/model/MetadataRegistry;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " had a non-static registerMetadata(MetadataRegistry) method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :catch_0
    move-exception v0

    .line 150
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, p0

    .line 147
    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    .line 153
    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " doesn\'t support metadata registration."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :catch_2
    move-exception v0

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 158
    :catch_3
    move-exception v0

    .line 161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

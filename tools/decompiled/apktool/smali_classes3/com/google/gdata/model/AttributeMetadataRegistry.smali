.class final Lcom/google/gdata/model/AttributeMetadataRegistry;
.super Ljava/lang/Object;
.source "AttributeMetadataRegistry.java"


# instance fields
.field private final cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final schema:Lcom/google/gdata/model/Schema;

.field private final transforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/AttributeTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/AttributeMetadataRegistry;->cache:Ljava/util/concurrent/ConcurrentMap;

    .line 58
    iput-object p1, p0, Lcom/google/gdata/model/AttributeMetadataRegistry;->schema:Lcom/google/gdata/model/Schema;

    .line 59
    invoke-virtual {p2}, Lcom/google/gdata/model/AttributeMetadataRegistryBuilder;->getCreators()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/model/AttributeMetadataRegistry;->getTransforms(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/AttributeMetadataRegistry;->transforms:Ljava/util/Map;

    .line 60
    return-void
.end method

.method private getTransform(Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeTransform;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeTransform;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 127
    iget-object v0, p0, Lcom/google/gdata/model/AttributeMetadataRegistry;->transforms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/TransformKey;

    invoke-virtual {v1, p1}, Lcom/google/gdata/model/TransformKey;->matches(Lcom/google/gdata/model/TransformKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-static {v2}, Lcom/google/gdata/model/AttributeTransform;->create(Ljava/lang/Iterable;)Lcom/google/gdata/model/AttributeTransform;

    move-result-object v0

    :goto_1
    return-object v0

    .line 136
    :pswitch_0
    sget-object v0, Lcom/google/gdata/model/AttributeTransform;->EMPTY:Lcom/google/gdata/model/AttributeTransform;

    goto :goto_1

    .line 137
    :pswitch_1
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeTransform;

    goto :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTransforms(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/AttributeCreatorImpl;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/TransformKey;",
            "Lcom/google/gdata/model/AttributeTransform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 72
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeCreatorImpl;->toTransform()Lcom/google/gdata/model/AttributeTransform;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<TD;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 84
    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v0, "key"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p1, p2, p3}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v2

    .line 91
    iget-object v0, p0, Lcom/google/gdata/model/AttributeMetadataRegistry;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeMetadata;

    .line 94
    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0, v2, p2}, Lcom/google/gdata/model/AttributeMetadataRegistry;->getTransform(Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeTransform;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/google/gdata/model/AttributeMetadataRegistry;->schema:Lcom/google/gdata/model/Schema;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/model/AttributeTransform;->toMetadata(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v1

    .line 98
    iget-object v0, p0, Lcom/google/gdata/model/AttributeMetadataRegistry;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeMetadata;

    .line 100
    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeTransform;
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
            "Lcom/google/gdata/model/AttributeTransform;"
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p1, p2, p3}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/gdata/model/AttributeMetadataRegistry;->getTransform(Lcom/google/gdata/model/TransformKey;Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeTransform;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/google/gdata/model/ElementCreatorImpl;
.super Lcom/google/gdata/model/MetadataCreatorImpl;
.source "ElementCreatorImpl.java"

# interfaces
.implements Lcom/google/gdata/model/ElementCreator;


# static fields
.field static final ATTRIBUTE_MARKER:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field static final ELEMENT_MARKER:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNDECLARED:Lcom/google/gdata/model/QName;


# instance fields
.field private final adaptations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private attributeWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

.field private contentRequired:Ljava/lang/Boolean;

.field private final elementKey:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation
.end field

.field private elementWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private flattened:Z

.field private properties:Ljava/lang/Object;

.field private validator:Lcom/google/gdata/model/ElementValidator;

.field private virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string/jumbo v1, "**UNDECLARED**"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/model/ElementCreatorImpl;->UNDECLARED:Lcom/google/gdata/model/QName;

    .line 52
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl;->UNDECLARED:Lcom/google/gdata/model/QName;

    const-class v1, Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/ElementCreatorImpl;->ATTRIBUTE_MARKER:Lcom/google/gdata/model/AttributeKey;

    .line 56
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl;->UNDECLARED:Lcom/google/gdata/model/QName;

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/Element;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/ElementCreatorImpl;->ELEMENT_MARKER:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method constructor <init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/MetadataCreatorImpl;-><init>(Lcom/google/gdata/model/MetadataRegistry;Lcom/google/gdata/model/TransformKey;)V

    .line 71
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributes:Ljava/util/Map;

    .line 72
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elements:Ljava/util/Map;

    .line 73
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->adaptations:Ljava/util/Map;

    .line 85
    invoke-virtual {p2}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/google/gdata/model/ElementKey;

    const-string/jumbo v2, "Key must be to an element."

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    check-cast v0, Lcom/google/gdata/model/ElementKey;

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementKey:Lcom/google/gdata/model/ElementKey;

    .line 89
    return-void
.end method

.method private addAttribute(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/ElementCreatorImpl$Action;",
            ")",
            "Lcom/google/gdata/model/AttributeCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 424
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 425
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 426
    sget-object v2, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    if-ne p2, v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributes:Ljava/util/Map;

    new-instance v3, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    invoke-direct {v3, p1, p2}, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;-><init>(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementKey:Lcom/google/gdata/model/ElementKey;

    iget-object v3, p0, Lcom/google/gdata/model/ElementCreatorImpl;->transformKey:Lcom/google/gdata/model/TransformKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    monitor-exit v1

    return-object v0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementCreatorImpl$Action;",
            ")",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 527
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    .line 528
    invoke-static {v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v2, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    if-ne p2, v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elements:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elements:Ljava/util/Map;

    new-instance v3, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    invoke-direct {v3, p1, p2}, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementKey:Lcom/google/gdata/model/ElementKey;

    iget-object v3, p0, Lcom/google/gdata/model/ElementCreatorImpl;->transformKey:Lcom/google/gdata/model/TransformKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    monitor-exit v1

    return-object v0

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private check()V
    .locals 3

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    sget-object v1, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-ne v0, v1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    invoke-virtual {v0}, Lcom/google/gdata/model/VirtualElementHolder;->getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;

    move-result-object v0

    if-nez v0, :cond_1

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid element transform. MultipleVirtualElement set on an element with single cardinality for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementKey:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    invoke-virtual {v0}, Lcom/google/gdata/model/VirtualElementHolder;->getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    move-result-object v0

    if-nez v0, :cond_1

    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid element transform. SingleVirtualElement set on an element with multiple cardinality for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementKey:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_1
    return-void
.end method

.method private getAttributeCreator(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/google/gdata/model/Path;->selectsAttribute()Z

    move-result v0

    const-string/jumbo v1, "Must be an attribute path"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 302
    invoke-virtual {p1}, Lcom/google/gdata/model/Path;->getParentKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 303
    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementKey:Lcom/google/gdata/model/ElementKey;

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/model/Path;->getSelectedAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    iget-object v3, p0, Lcom/google/gdata/model/ElementCreatorImpl;->transformKey:Lcom/google/gdata/model/TransformKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeCreatorImpl;

    return-object v0
.end method

.method private getElementCreator(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 4

    .prologue
    .line 330
    invoke-virtual {p1}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v0

    const-string/jumbo v1, "Must be an element path"

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 332
    invoke-virtual {p1}, Lcom/google/gdata/model/Path;->getParentKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 333
    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementKey:Lcom/google/gdata/model/ElementKey;

    .line 336
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    iget-object v3, p0, Lcom/google/gdata/model/ElementCreatorImpl;->transformKey:Lcom/google/gdata/model/TransformKey;

    invoke-virtual {v3}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    return-object v0
.end method

.method private setElementPath(Lcom/google/gdata/model/Path;)V
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 265
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/VirtualElementHolder;->of(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/VirtualElementHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 266
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private whitelistAttributes(Ljava/util/Collection;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributeWhitelist:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributeWhitelist:Ljava/util/Set;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributeWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 411
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 412
    monitor-exit v1

    .line 413
    return-object p0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private whitelistElements(Ljava/util/Collection;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementWhitelist:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementWhitelist:Ljava/util/Set;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 504
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 505
    monitor-exit v1

    .line 506
    return-object p0

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public bridge synthetic adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/model/ElementCreatorImpl;->adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->adaptations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0, p2}, Lcom/google/gdata/model/MetadataRegistry;->register(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/MetadataRegistry;

    .line 145
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 146
    monitor-exit v1

    .line 147
    return-object p0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 362
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->addAttribute(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 455
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->ADD:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addUndeclaredAttributeMarker()Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementCreatorImpl;->addUndeclaredAttributeMarker()Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public addUndeclaredAttributeMarker()Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1

    .prologue
    .line 348
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl;->ATTRIBUTE_MARKER:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreatorImpl;

    .line 349
    return-object p0
.end method

.method public bridge synthetic addUndeclaredElementMarker()Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementCreatorImpl;->addUndeclaredElementMarker()Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public addUndeclaredElementMarker()Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1

    .prologue
    .line 441
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl;->ELEMENT_MARKER:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    .line 442
    return-object p0
.end method

.method public bridge synthetic blacklistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->blacklistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public varargs blacklistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 513
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 514
    :try_start_0
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 515
    invoke-virtual {p0, v3}, Lcom/google/gdata/model/ElementCreatorImpl;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/gdata/model/ElementCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/ElementCreatorImpl;

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_0
    monitor-exit v1

    .line 518
    return-object p0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic flatten()Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementCreatorImpl;->flatten()Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public flatten()Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 275
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->flattened:Z

    .line 276
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 277
    monitor-exit v1

    .line 278
    return-object p0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAdaptations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->adaptations:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method getAttributeSet()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 596
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 597
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 598
    iget-object v0, v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 600
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getAttributeWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributeWhitelist:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributeWhitelist:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->attributes:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    return-object v0
.end method

.method getContentRequired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->contentRequired:Ljava/lang/Boolean;

    return-object v0
.end method

.method getElementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 615
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v1

    .line 616
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 617
    iget-object v0, v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getElementWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementWhitelist:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elementWhitelist:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method getElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->elements:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method getProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->properties:Ljava/lang/Object;

    return-object v0
.end method

.method getValidator()Lcom/google/gdata/model/ElementValidator;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    return-object v0
.end method

.method getVirtualElementHolder()Lcom/google/gdata/model/VirtualElementHolder;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    return-object v0
.end method

.method isFlattened()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->flattened:Z

    return v0
.end method

.method merge(Lcom/google/gdata/model/ElementCreatorImpl;)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->merge(Lcom/google/gdata/model/MetadataCreatorImpl;)V

    .line 97
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 100
    :cond_0
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->contentRequired:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->contentRequired:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->contentRequired:Ljava/lang/Boolean;

    .line 103
    :cond_1
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 106
    :cond_2
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->properties:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->properties:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->properties:Ljava/lang/Object;

    .line 109
    :cond_3
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 112
    :cond_4
    iget-boolean v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->flattened:Z

    if-eqz v0, :cond_5

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->flattened:Z

    .line 118
    :cond_5
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;

    .line 119
    iget-object v2, v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    iget-object v0, v0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-direct {p0, v2, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->addAttribute(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)Lcom/google/gdata/model/AttributeCreatorImpl;

    goto :goto_0

    .line 121
    :cond_6
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->elements:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;

    .line 122
    iget-object v2, v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->key:Lcom/google/gdata/model/ElementKey;

    iget-object v0, v0, Lcom/google/gdata/model/ElementCreatorImpl$ElementInfo;->action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-direct {p0, v2, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)Lcom/google/gdata/model/ElementCreatorImpl;

    goto :goto_1

    .line 126
    :cond_7
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->adaptations:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/gdata/model/ElementCreatorImpl;->adaptations:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->attributeWhitelist:Ljava/util/Set;

    if-eqz v0, :cond_8

    .line 130
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->attributeWhitelist:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->whitelistAttributes(Ljava/util/Collection;)Lcom/google/gdata/model/ElementCreatorImpl;

    .line 132
    :cond_8
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->elementWhitelist:Ljava/util/Set;

    if-eqz v0, :cond_9

    .line 133
    iget-object v0, p1, Lcom/google/gdata/model/ElementCreatorImpl;->elementWhitelist:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->whitelistElements(Ljava/util/Collection;)Lcom/google/gdata/model/ElementCreatorImpl;

    .line 135
    :cond_9
    return-void
.end method

.method public moveAttribute(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/AttributeCreator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/Path;",
            ")",
            "Lcom/google/gdata/model/AttributeCreator;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p2}, Lcom/google/gdata/model/Path;->selectsAttribute()Z

    move-result v0

    const-string/jumbo v1, "Path must refer to an attribute."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 288
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->replaceAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    .line 289
    invoke-direct {p0, p2}, Lcom/google/gdata/model/ElementCreatorImpl;->getAttributeCreator(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Lcom/google/gdata/model/AttributeCreatorImpl;->getTransformKey()Lcom/google/gdata/model/TransformKey;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/google/gdata/model/AttributeCreatorImpl;->setSource(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/TransformKey;)V

    .line 291
    invoke-virtual {v1}, Lcom/google/gdata/model/AttributeCreatorImpl;->moved()Lcom/google/gdata/model/MetadataCreatorImpl;

    .line 292
    return-object v0
.end method

.method public moveElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/ElementCreator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/Path;",
            ")",
            "Lcom/google/gdata/model/ElementCreator;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p2}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v0

    const-string/jumbo v1, "Path must refer to an element."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->replaceElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    .line 319
    invoke-direct {p0, p2}, Lcom/google/gdata/model/ElementCreatorImpl;->getElementCreator(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lcom/google/gdata/model/ElementCreatorImpl;->getTransformKey()Lcom/google/gdata/model/TransformKey;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/google/gdata/model/ElementCreatorImpl;->setSource(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/TransformKey;)V

    .line 321
    invoke-virtual {v1}, Lcom/google/gdata/model/ElementCreatorImpl;->moved()Lcom/google/gdata/model/MetadataCreatorImpl;

    .line 322
    return-object v0
.end method

.method public bridge synthetic orderAndWhitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->orderAndWhitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public varargs orderAndWhitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 382
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 383
    invoke-virtual {p0, v2}, Lcom/google/gdata/model/ElementCreatorImpl;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreatorImpl;

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->whitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic orderAndWhitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->orderAndWhitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public varargs orderAndWhitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 476
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 477
    invoke-virtual {p0, v2}, Lcom/google/gdata/model/ElementCreatorImpl;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->whitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->replaceAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public replaceAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreatorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/AttributeCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 372
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->REPLACE:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->addAttribute(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)Lcom/google/gdata/model/AttributeCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->replaceElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public replaceElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 466
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->REPLACE:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 161
    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->cardinality:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    .line 162
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 163
    monitor-exit v1

    .line 164
    return-object p0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setContentRequired(Z)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setContentRequired(Z)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setContentRequired(Z)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 177
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->contentRequired:Ljava/lang/Boolean;

    .line 178
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 179
    monitor-exit v1

    .line 180
    return-object p0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setMultipleVirtualElement(Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setMultipleVirtualElement(Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setMultipleVirtualElement(Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 243
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/VirtualElementHolder;->of(Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;)Lcom/google/gdata/model/VirtualElementHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 245
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 246
    monitor-exit v1

    .line 247
    return-object p0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1

    .prologue
    .line 540
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    return-object v0
.end method

.method public bridge synthetic setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setName(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setProperties(Ljava/lang/Object;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 211
    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->properties:Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 213
    monitor-exit v1

    .line 214
    return-object p0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setRequired(Z)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setRequired(Z)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1

    .prologue
    .line 545
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    return-object v0
.end method

.method public bridge synthetic setRequired(Z)Lcom/google/gdata/model/MetadataCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequired(Z)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setRequired(Z)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setSingleVirtualElement(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setSingleVirtualElement(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setSingleVirtualElement(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2

    .prologue
    .line 226
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 227
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/VirtualElementHolder;->of(Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;)Lcom/google/gdata/model/VirtualElementHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->virtualElementHolder:Lcom/google/gdata/model/VirtualElementHolder;

    .line 228
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 229
    monitor-exit v1

    .line 230
    return-object p0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSource(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/TransformKey;)V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/MetadataCreatorImpl;->setSource(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/TransformKey;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setElementPath(Lcom/google/gdata/model/Path;)V

    .line 258
    return-void
.end method

.method public bridge synthetic setValidator(Lcom/google/gdata/model/ElementValidator;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setValidator(Lcom/google/gdata/model/ElementValidator;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setValidator(Lcom/google/gdata/model/ElementValidator;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    monitor-enter v1

    .line 194
    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/model/ElementCreatorImpl;->validator:Lcom/google/gdata/model/ElementValidator;

    .line 195
    iget-object v0, p0, Lcom/google/gdata/model/ElementCreatorImpl;->registry:Lcom/google/gdata/model/MetadataRegistry;

    invoke-virtual {v0}, Lcom/google/gdata/model/MetadataRegistry;->dirty()V

    .line 196
    monitor-exit v1

    .line 197
    return-object p0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1

    .prologue
    .line 555
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    return-object v0
.end method

.method public bridge synthetic setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setVirtualValue(Lcom/google/gdata/model/Metadata$VirtualValue;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVisible(Z)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public setVisible(Z)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1

    .prologue
    .line 550
    invoke-super {p0, p1}, Lcom/google/gdata/model/MetadataCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/MetadataCreatorImpl;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementCreatorImpl;

    return-object v0
.end method

.method public bridge synthetic setVisible(Z)Lcom/google/gdata/model/MetadataCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setVisible(Z)Lcom/google/gdata/model/MetadataCreatorImpl;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->setVisible(Z)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method toTransform()Lcom/google/gdata/model/ElementTransform;
    .locals 1

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/google/gdata/model/ElementCreatorImpl;->check()V

    .line 650
    invoke-static {p0}, Lcom/google/gdata/model/ElementTransform;->create(Lcom/google/gdata/model/ElementCreatorImpl;)Lcom/google/gdata/model/ElementTransform;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->whitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelistAttributes([Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->whitelistAttributes(Ljava/util/Collection;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementCreatorImpl;->whitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelistElements([Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreatorImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementCreatorImpl;"
        }
    .end annotation

    .prologue
    .line 489
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/model/ElementCreatorImpl;->whitelistElements(Ljava/util/Collection;)Lcom/google/gdata/model/ElementCreatorImpl;

    move-result-object v0

    return-object v0
.end method

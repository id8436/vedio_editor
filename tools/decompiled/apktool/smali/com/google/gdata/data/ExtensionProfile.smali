.class public Lcom/google/gdata/data/ExtensionProfile;
.super Ljava/lang/Object;
.source "ExtensionProfile.java"


# instance fields
.field private additionalNamespaces:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private allowsArbitraryXml:Z

.field private declared:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

.field private feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

.field private isAutoExtending:Z

.field private nsDecls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field

.field private final profile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gdata/data/ExtensionManifest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->declared:Ljava/util/HashSet;

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->additionalNamespaces:Ljava/util/Collection;

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending:Z

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    .line 534
    return-void
.end method

.method static synthetic access$002(Lcom/google/gdata/data/ExtensionProfile;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/gdata/data/ExtensionProfile;->extensionPointClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized computeNamespaceDecls()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 438
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->additionalNamespaces:Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 440
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

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

    check-cast v0, Lcom/google/gdata/data/ExtensionManifest;

    .line 441
    invoke-virtual {v0}, Lcom/google/gdata/data/ExtensionManifest;->getNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 444
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;->computeNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;->computeNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 452
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method private extensionPointClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    return-object p1
.end method

.method private getOrCreateManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)",
            "Lcom/google/gdata/data/ExtensionManifest;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/ExtensionProfile;->getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/gdata/data/ExtensionManifest;->extendedType:Ljava/lang/Class;

    if-ne v1, p1, :cond_0

    .line 430
    :goto_0
    return-object v0

    .line 397
    :cond_0
    new-instance v2, Lcom/google/gdata/data/ExtensionManifest;

    invoke-direct {v2, p1}, Lcom/google/gdata/data/ExtensionManifest;-><init>(Ljava/lang/Class;)V

    .line 402
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 403
    :goto_1
    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, v0, Lcom/google/gdata/data/ExtensionManifest;->extendedType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ExtensionProfile;->getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v0

    goto :goto_1

    .line 411
    :cond_1
    :goto_2
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionManifest;

    .line 413
    iget-object v3, v2, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 415
    iget-boolean v3, v0, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    iput-boolean v3, v2, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    .line 416
    iget-object v0, v0, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    iget-object v1, v2, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 430
    goto :goto_0
.end method


# virtual methods
.method public addDeclarations(Lcom/google/gdata/data/Kind$Adaptor;)V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/google/gdata/data/ExtensionProfile;->declared:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {p1, p0}, Lcom/google/gdata/data/Kind$Adaptor;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 73
    :cond_0
    return-void
.end method

.method public allowsArbitraryXml()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    return v0
.end method

.method public declared-synchronized declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Lcom/google/gdata/data/ExtensionDescription;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 93
    monitor-enter p0

    move-object v8, p2

    .line 94
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending:Z

    if-eqz v1, :cond_0

    const-class v1, Lcom/google/gdata/data/Kind$Adaptable;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    if-nez v0, :cond_3

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    const/4 v9, 0x1

    .line 101
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->getExtensionClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->getLocalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->isRepeatable()Z

    move-result v5

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->isAggregate()Z

    move-result v6

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->allowsArbitraryXml()Z

    move-result v7

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->allowsMixedContent()Z

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZZZ)V

    move-object v1, v0

    move v0, v9

    .line 111
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/gdata/data/ExtensionProfile;->extensionPointClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    move-object v8, v1

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/gdata/data/ExtensionProfile;->getOrCreateManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Lcom/google/gdata/util/common/base/Pair;

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/base/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    iget-object v2, v0, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-interface {v2, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, v0, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionManifest;

    .line 125
    iget-object v0, v0, Lcom/google/gdata/data/ExtensionManifest;->supportedExtensions:Ljava/util/Map;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->allowsArbitraryXml()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->getExtensionClass()Ljava/lang/Class;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/google/gdata/data/ExtensionProfile;->getOrCreateManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v8}, Lcom/google/gdata/data/ExtensionDescription;->allowsMixedContent()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;Z)V

    .line 136
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :cond_3
    move-object v1, v8

    goto :goto_1
.end method

.method public declared-synchronized declare(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->additionalNamespaces:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareArbitraryXmlExtension(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareArbitraryXmlExtension(Ljava/lang/Class;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/gdata/data/ExtensionProfile;->getOrCreateManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v1

    .line 244
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    .line 245
    iput-boolean p2, v1, Lcom/google/gdata/data/ExtensionManifest;->mixedContent:Z

    .line 248
    iget-object v0, v1, Lcom/google/gdata/data/ExtensionManifest;->subclassManifests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionManifest;

    .line 249
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    .line 250
    iput-boolean p2, v0, Lcom/google/gdata/data/ExtensionManifest;->mixedContent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 253
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized declareEntryExtension(Lcom/google/gdata/data/ExtensionDescription;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareEntryExtension(Ljava/lang/Class;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareEntryLinkProfile(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionProfile;->entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareFeedExtension(Lcom/google/gdata/data/ExtensionDescription;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareFeedExtension(Ljava/lang/Class;)V
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized declareFeedLinkProfile(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionProfile;->feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public generateConfig(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 654
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v2, "arbitraryXml"

    iget-boolean v3, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v2, "extensionProfile"

    iget-object v3, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 658
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->additionalNamespaces:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 660
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 661
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v4, "alias"

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v4, "uri"

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v3, "namespaceDescription"

    invoke-virtual {p1, v0, v3, v2, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_0
    new-instance v1, Ljava/util/TreeSet;

    new-instance v0, Lcom/google/gdata/data/ExtensionProfile$1;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/ExtensionProfile$1;-><init>(Lcom/google/gdata/data/ExtensionProfile;)V

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 677
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 678
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 681
    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 683
    iget-object v1, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/ExtensionManifest;

    .line 685
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 686
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v5, "extendedClass"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v4, "arbitraryXml"

    iget-boolean v5, v1, Lcom/google/gdata/data/ExtensionManifest;->arbitraryXml:Z

    invoke-direct {v0, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v4, "extensionPoint"

    invoke-virtual {p1, v0, v4, v3, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 691
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 695
    invoke-virtual {v1}, Lcom/google/gdata/data/ExtensionManifest;->getSupportedExtensions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionDescription;

    .line 696
    invoke-virtual {v3, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 700
    :cond_2
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionDescription;

    .line 701
    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/ExtensionDescription;->generateConfig(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_4

    .line 704
    :cond_3
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "extensionPoint"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    goto :goto_2

    .line 707
    :cond_4
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string/jumbo v1, "extensionProfile"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public declared-synchronized getEntryLinkProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->entryLinkProfile:Lcom/google/gdata/data/ExtensionProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFeedLinkProfile()Lcom/google/gdata/data/ExtensionProfile;
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->feedLinkProfile:Lcom/google/gdata/data/ExtensionProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/gdata/data/ExtensionManifest;"
        }
    .end annotation

    .prologue
    .line 295
    .line 296
    :goto_0
    if-eqz p1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionManifest;

    .line 298
    if-eqz v0, :cond_0

    .line 302
    :goto_1
    return-object v0

    .line 300
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized getNamespaceDecls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionProfile;->computeNamespaceDecls()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->nsDecls:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoExtending()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending:Z

    return v0
.end method

.method public isDeclared(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionProfile;->profile:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseConfig(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 633
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/gdata/data/ExtensionProfile$Handler;-><init>(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/ClassLoader;Lorg/xml/sax/Attributes;)V

    .line 634
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string/jumbo v2, "http://schemas.google.com/gdata/config/2005"

    const-string/jumbo v3, "extensionProfile"

    invoke-virtual {v1, p3, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public setArbitraryXml(Z)V
    .locals 0

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionProfile;->allowsArbitraryXml:Z

    return-void
.end method

.method public setAutoExtending(Z)V
    .locals 0

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionProfile;->isAutoExtending:Z

    return-void
.end method

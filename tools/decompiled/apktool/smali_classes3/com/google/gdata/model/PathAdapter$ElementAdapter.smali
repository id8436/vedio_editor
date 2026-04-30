.class Lcom/google/gdata/model/PathAdapter$ElementAdapter;
.super Ljava/lang/Object;
.source "PathAdapter.java"

# interfaces
.implements Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;
.implements Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;


# instance fields
.field private final path:Lcom/google/gdata/model/Path;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Path;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    .line 362
    return-void
.end method

.method private static mergeKeys(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;
    .locals 3
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
    .line 501
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object p0

    .line 505
    :cond_0
    return-object p0
.end method


# virtual methods
.method public generateMultiple(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v0

    const-string/jumbo v1, "An attribute path cannot be used to generate elements."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-static {v0, p1}, Lcom/google/gdata/model/PathAdapter;->getFinalElements(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Ljava/util/Collection;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    :goto_0
    return-object v0

    .line 430
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 431
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    .line 433
    :try_start_0
    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->mergeKeys(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    .line 435
    invoke-static {v3, v0}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid metadata"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v0, v1

    .line 440
    goto :goto_0
.end method

.method public generateSingle(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v0

    const-string/jumbo v1, "An attribute path cannot be used to generate elements."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-static {v0, p1}, Lcom/google/gdata/model/PathAdapter;->getFinalElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 377
    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    .line 382
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->mergeKeys(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    .line 384
    invoke-static {v1, v0}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid metadata"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v0

    const-string/jumbo v1, "An attribute path cannot be used to parse elements."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-static {v0, p1}, Lcom/google/gdata/model/PathAdapter;->createParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v1}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    .line 405
    :try_start_0
    invoke-static {v1, p3}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/util/Collection;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 453
    iget-object v0, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->selectsElement()Z

    move-result v0

    const-string/jumbo v1, "An attribute path cannot be used to parse elements."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 456
    iget-object v0, p0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v0, p2}, Lcom/google/gdata/model/Path;->toAbsolute(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Path;

    move-result-object v0

    .line 458
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/google/gdata/model/PathAdapter;->createParentElements(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;I)Ljava/util/Collection;

    move-result-object v1

    .line 461
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    .line 462
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedElement()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    .line 464
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 465
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 468
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 469
    invoke-static {v0}, Lcom/google/gdata/model/PathAdapter;->access$000(Lcom/google/gdata/model/ElementMetadata;)V

    .line 471
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    .line 473
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 480
    :cond_0
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v5, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-ne v0, v1, :cond_1

    .line 482
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Metadata for key "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " represents a single-cardinality element."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " The path must contain at least one multiple-cardinality"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " element in order to parse multiple elements."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    .line 490
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    goto :goto_1

    .line 493
    :cond_2
    return-void
.end method

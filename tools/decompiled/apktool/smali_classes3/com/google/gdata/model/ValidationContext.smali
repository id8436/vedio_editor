.class public Lcom/google/gdata/model/ValidationContext;
.super Ljava/lang/Object;
.source "ValidationContext.java"


# instance fields
.field private errors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ErrorContent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ValidationContext;->errors:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/gdata/model/ValidationContext;->errors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 81
    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/google/gdata/model/ValidationContext;->errors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public addError(Lcom/google/gdata/model/Element;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v0, v0, Lcom/google/gdata/client/CoreErrorDomain;->invalidExtension:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-virtual {v0, p2}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    .line 71
    return-void
.end method

.method public getErrors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/Element;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/ErrorContent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/model/ValidationContext;->errors:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/gdata/model/ValidationContext;->errors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    iget-object v0, p0, Lcom/google/gdata/model/ValidationContext;->errors:Ljava/util/Map;

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

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v1, " { "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ErrorContent;

    .line 103
    new-instance v5, Lcom/google/gdata/util/ParseException;

    invoke-direct {v5, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    invoke-virtual {v5}, Lcom/google/gdata/util/ParseException;->toXmlErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_0
    const-string/jumbo v0, ", "

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Join;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v0, " }"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

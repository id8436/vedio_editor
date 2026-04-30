.class abstract Lcom/google/gdata/model/MetadataImpl;
.super Ljava/lang/Object;
.source "MetadataImpl.java"

# interfaces
.implements Lcom/google/gdata/model/Metadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gdata/model/Metadata",
        "<TD;>;"
    }
.end annotation


# instance fields
.field final context:Lcom/google/gdata/model/MetadataContext;

.field private final isRequired:Z

.field private final isVisible:Z

.field final key:Lcom/google/gdata/model/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/MetadataKey",
            "<TD;>;"
        }
    .end annotation
.end field

.field private final name:Lcom/google/gdata/model/QName;

.field final parent:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation
.end field

.field final schema:Lcom/google/gdata/model/Schema;

.field private final virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/Transform;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataKey",
            "<TD;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "schema"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Schema;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->schema:Lcom/google/gdata/model/Schema;

    .line 48
    const-string/jumbo v0, "key"

    invoke-static {p4, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/MetadataKey;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->key:Lcom/google/gdata/model/MetadataKey;

    .line 49
    iput-object p3, p0, Lcom/google/gdata/model/MetadataImpl;->parent:Lcom/google/gdata/model/ElementKey;

    .line 50
    iput-object p5, p0, Lcom/google/gdata/model/MetadataImpl;->context:Lcom/google/gdata/model/MetadataContext;

    .line 52
    invoke-static {p1, p2, p5}, Lcom/google/gdata/model/AttributeTransform;->mergeSource(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/Transform;

    move-result-object v1

    .line 54
    new-array v0, v5, [Lcom/google/gdata/model/QName;

    invoke-virtual {v1}, Lcom/google/gdata/model/Transform;->getName()Lcom/google/gdata/model/QName;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p4}, Lcom/google/gdata/model/MetadataKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/google/gdata/model/MetadataImpl;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/QName;

    iput-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->name:Lcom/google/gdata/model/QName;

    .line 56
    new-array v0, v5, [Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/google/gdata/model/Transform;->getRequired()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/google/gdata/model/MetadataImpl;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/model/MetadataImpl;->isRequired:Z

    .line 59
    invoke-virtual {v1}, Lcom/google/gdata/model/Transform;->getPath()Lcom/google/gdata/model/Path;

    move-result-object v0

    .line 60
    invoke-virtual {v1}, Lcom/google/gdata/model/Transform;->isMoved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iput-boolean v3, p0, Lcom/google/gdata/model/MetadataImpl;->isVisible:Z

    .line 73
    :goto_0
    invoke-virtual {v1}, Lcom/google/gdata/model/Transform;->getVirtualValue()Lcom/google/gdata/model/Metadata$VirtualValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    .line 74
    return-void

    .line 64
    :cond_0
    if-eqz v0, :cond_1

    .line 67
    invoke-static {v0, p1, p3, p5}, Lcom/google/gdata/model/MetadataImpl;->isVisible(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/model/MetadataImpl;->isVisible:Z

    goto :goto_0

    .line 71
    :cond_1
    new-array v0, v5, [Ljava/lang/Boolean;

    invoke-virtual {v1}, Lcom/google/gdata/model/Transform;->getVisible()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/google/gdata/model/MetadataImpl;->firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/model/MetadataImpl;->isVisible:Z

    goto :goto_0
.end method

.method static varargs firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    .prologue
    .line 102
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 103
    if-eqz v2, :cond_0

    .line 104
    return-object v2

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Values must contain at least a single non-null value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isVisible(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Path;",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/MetadataKey;

    .line 85
    invoke-virtual {p1, p2, v0, p3}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/Transform;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/google/gdata/model/Transform;->getVisible()Ljava/lang/Boolean;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    const/4 v0, 0x0

    .line 94
    :goto_1
    return v0

    .line 90
    :cond_1
    instance-of v2, v0, Lcom/google/gdata/model/ElementKey;

    if-eqz v2, :cond_0

    .line 91
    check-cast v0, Lcom/google/gdata/model/ElementKey;

    move-object p2, v0

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/model/Metadata$VirtualValue;->generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Lcom/google/gdata/model/MetadataContext;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->context:Lcom/google/gdata/model/MetadataContext;

    return-object v0
.end method

.method public getKey()Lcom/google/gdata/model/MetadataKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/MetadataKey",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->key:Lcom/google/gdata/model/MetadataKey;

    return-object v0
.end method

.method public getName()Lcom/google/gdata/model/QName;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->name:Lcom/google/gdata/model/QName;

    return-object v0
.end method

.method public getParent()Lcom/google/gdata/model/ElementKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->parent:Lcom/google/gdata/model/ElementKey;

    return-object v0
.end method

.method public getSchema()Lcom/google/gdata/model/Schema;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->schema:Lcom/google/gdata/model/Schema;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/gdata/model/MetadataImpl;->isRequired:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/gdata/model/MetadataImpl;->isVisible:Z

    return v0
.end method

.method parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/gdata/model/MetadataImpl;->virtualValue:Lcom/google/gdata/model/Metadata$VirtualValue;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/gdata/model/Metadata$VirtualValue;->parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/model/MetadataImpl;->parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/model/MetadataImpl;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

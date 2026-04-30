.class public Lcom/google/gdata/model/MetadataValueTransform;
.super Ljava/lang/Object;
.source "MetadataValueTransform.java"

# interfaces
.implements Lcom/google/gdata/model/Metadata$VirtualValue;


# instance fields
.field private final sources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/google/gdata/model/MetadataKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/MetadataValueTransform;->sources:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 4
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
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/gdata/model/MetadataValueTransform;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/MetadataKey;

    .line 57
    instance-of v2, v0, Lcom/google/gdata/model/ElementKey;

    if-eqz v2, :cond_3

    .line 58
    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    if-nez p2, :cond_1

    move-object v0, v1

    .line 63
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v0

    .line 65
    :goto_1
    if-eqz v0, :cond_0

    .line 80
    :goto_2
    return-object v0

    .line 61
    :cond_1
    invoke-interface {p2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_2
    invoke-interface {v0, v2, v0}, Lcom/google/gdata/model/ElementMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 70
    :cond_3
    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 71
    if-nez p2, :cond_4

    move-object v2, v1

    .line 73
    :goto_3
    if-nez v2, :cond_5

    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    :goto_4
    if-eqz v0, :cond_0

    goto :goto_2

    .line 71
    :cond_4
    invoke-interface {p2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v2

    goto :goto_3

    .line 73
    :cond_5
    invoke-interface {v2, p1, p2}, Lcom/google/gdata/model/AttributeMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 80
    goto :goto_2
.end method

.method public parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 3
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
    .line 88
    iget-object v0, p0, Lcom/google/gdata/model/MetadataValueTransform;->sources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/MetadataValueTransform;->sources:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/MetadataKey;

    .line 92
    instance-of v1, v0, Lcom/google/gdata/model/ElementKey;

    if-eqz v1, :cond_2

    .line 93
    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 94
    invoke-interface {p2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    .line 95
    invoke-virtual {p1, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 96
    if-nez v1, :cond_1

    .line 98
    :try_start_0
    invoke-interface {v2}, Lcom/google/gdata/model/ElementMetadata;->createElement()Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    :cond_1
    move-object v0, v1

    .line 104
    invoke-interface {v2, v0, v2, p3}, Lcom/google/gdata/model/ElementMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :cond_2
    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 107
    invoke-interface {p2, v0}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    .line 108
    invoke-interface {v0, p1, p2, p3}, Lcom/google/gdata/model/AttributeMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    goto :goto_0
.end method

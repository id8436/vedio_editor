.class public Lcom/google/gdata/model/MetadataValidator;
.super Ljava/lang/Object;
.source "MetadataValidator.java"

# interfaces
.implements Lcom/google/gdata/model/ElementValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ValidationContext;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 36
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-ne v1, v2, :cond_0

    .line 38
    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidTextContent:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must not contain text content."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    .line 50
    :cond_0
    :goto_0
    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 51
    invoke-interface {p3, v0}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v2

    .line 52
    invoke-interface {v2}, Lcom/google/gdata/model/AttributeMetadata;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 53
    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->missingAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Element must contain value for attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_1

    .line 43
    :cond_2
    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    if-eq v1, v2, :cond_0

    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->isContentRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingTextContent:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Element "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " must contain a text content value."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_0

    .line 60
    :cond_3
    invoke-interface {p3}, Lcom/google/gdata/model/ElementMetadata;->getElements()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 61
    invoke-interface {p3, v0}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Lcom/google/gdata/model/ElementMetadata;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 63
    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->missingExtensionElement:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Element must contain a child named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/gdata/model/ValidationContext;->addError(Lcom/google/gdata/model/Element;Lcom/google/gdata/util/ErrorContent;)V

    goto :goto_2

    .line 68
    :cond_5
    return-void
.end method

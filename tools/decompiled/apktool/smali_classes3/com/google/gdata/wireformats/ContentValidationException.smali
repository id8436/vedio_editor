.class public Lcom/google/gdata/wireformats/ContentValidationException;
.super Lcom/google/gdata/util/ServiceException;
.source "ContentValidationException.java"


# instance fields
.field protected vc:Lcom/google/gdata/model/ValidationContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/gdata/model/ValidationContext;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/google/gdata/wireformats/ContentValidationException;->vc:Lcom/google/gdata/model/ValidationContext;

    .line 40
    sget-object v0, Lcom/google/gdata/util/ContentType;->TEXT_PLAIN:Lcom/google/gdata/util/ContentType;

    invoke-virtual {p2}, Lcom/google/gdata/model/ValidationContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/wireformats/ContentValidationException;->setResponse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getContext()Lcom/google/gdata/model/ValidationContext;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/gdata/wireformats/ContentValidationException;->vc:Lcom/google/gdata/model/ValidationContext;

    return-object v0
.end method

.method public toParseException()Lcom/google/gdata/util/ParseException;
    .locals 6

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/google/gdata/wireformats/ContentValidationException;->vc:Lcom/google/gdata/model/ValidationContext;

    invoke-virtual {v0}, Lcom/google/gdata/model/ValidationContext;->getErrors()Ljava/util/Map;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 56
    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/util/ErrorContent;

    .line 59
    new-instance v1, Lcom/google/gdata/util/ParseException;

    invoke-direct {v1, v0}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 60
    invoke-virtual {v1, v4}, Lcom/google/gdata/util/ParseException;->setLocation(Ljava/lang/String;)V

    .line 61
    if-nez v2, :cond_1

    move-object v0, v1

    :goto_1
    move-object v2, v0

    .line 66
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/gdata/util/ParseException;->addSibling(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/util/ServiceException;

    move-object v0, v2

    goto :goto_1

    .line 69
    :cond_2
    return-object v2
.end method

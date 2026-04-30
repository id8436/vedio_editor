.class public Lcom/google/gdata/data/docs/ObjectNumber;
.super Lcom/google/gdata/data/AbstractExtension;
.source "ObjectNumber.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "objectNumber"
    nsAlias = "docs"
    nsUri = "http://schemas.google.com/docs/2007"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "objectNumber"


# instance fields
.field private value:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ObjectNumber;->setValue(Ljava/lang/Integer;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ObjectNumber;->setImmutable(Z)V

    .line 58
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/google/gdata/data/docs/ObjectNumber;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 106
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    .line 118
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 122
    if-ne p0, p1, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    .line 125
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ObjectNumber;->sameClassAs(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    check-cast p1, Lcom/google/gdata/data/docs/ObjectNumber;

    .line 129
    iget-object v0, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/data/docs/ObjectNumber;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ObjectNumber;->getValue()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 136
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setValue(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ObjectNumber;->throwExceptionIfImmutable()V

    .line 76
    iput-object p1, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ObjectNumber value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/docs/ObjectNumber;->value:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

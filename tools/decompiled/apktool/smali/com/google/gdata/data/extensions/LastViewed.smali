.class public Lcom/google/gdata/data/extensions/LastViewed;
.super Lcom/google/gdata/data/AbstractExtension;
.source "LastViewed.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "lastViewed"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "lastViewed"


# instance fields
.field private value:Lcom/google/gdata/data/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/DateTime;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/LastViewed;->setValue(Lcom/google/gdata/data/DateTime;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/LastViewed;->setImmutable(Z)V

    .line 60
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/google/gdata/data/extensions/LastViewed;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 108
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
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    .line 120
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 124
    if-ne p0, p1, :cond_0

    .line 125
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/LastViewed;->sameClassAs(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    check-cast p1, Lcom/google/gdata/data/extensions/LastViewed;

    .line 131
    iget-object v0, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    iget-object v1, p1, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    invoke-static {v0, v1}, Lcom/google/gdata/data/extensions/LastViewed;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getValue()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/LastViewed;->getValue()Lcom/google/gdata/data/DateTime;

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
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    if-eqz v1, :cond_0

    .line 138
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v1}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setValue(Lcom/google/gdata/data/DateTime;)V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/LastViewed;->throwExceptionIfImmutable()V

    .line 78
    iput-object p1, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{LastViewed value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/LastViewed;->value:Lcom/google/gdata/data/DateTime;

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
    .line 92
    return-void
.end method

.class public Lcom/google/gdata/data/webmastertools/Keyword;
.super Lcom/google/gdata/data/AbstractExtension;
.source "Keyword.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "keyword"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation


# static fields
.field private static final SOURCE:Ljava/lang/String; = "source"

.field static final XML_NAME:Ljava/lang/String; = "keyword"


# instance fields
.field private source:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/Keyword;->setSource(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/webmastertools/Keyword;->setValue(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/Keyword;->setImmutable(Z)V

    .line 77
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/google/gdata/data/webmastertools/Keyword;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 158
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 159
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
    const/4 v1, 0x1

    .line 171
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    if-ne p0, p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/webmastertools/Keyword;->sameClassAs(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    check-cast p1, Lcom/google/gdata/data/webmastertools/Keyword;

    .line 184
    iget-object v2, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/gdata/data/webmastertools/Keyword;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/gdata/data/webmastertools/Keyword;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasSource()Z
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/Keyword;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/Keyword;->getValue()Ljava/lang/String;

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
    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 192
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 195
    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2

    .prologue
    .line 164
    const-string/jumbo v0, "source"

    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/Keyword;->throwExceptionIfImmutable()V

    .line 95
    iput-object p1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/Keyword;->throwExceptionIfImmutable()V

    .line 123
    iput-object p1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Keyword source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    const-string/jumbo v0, "source"

    invoke-static {v0}, Lcom/google/gdata/data/webmastertools/Keyword;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/Keyword;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    return-void
.end method

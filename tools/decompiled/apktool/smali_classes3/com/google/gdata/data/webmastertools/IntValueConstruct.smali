.class public abstract Lcom/google/gdata/data/webmastertools/IntValueConstruct;
.super Lcom/google/gdata/data/ValueConstruct;
.source "IntValueConstruct.java"


# instance fields
.field private intValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/IntValueConstruct;->setIntValue(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    check-cast p1, Lcom/google/gdata/data/webmastertools/IntValueConstruct;

    .line 50
    iget v1, p0, Lcom/google/gdata/data/webmastertools/IntValueConstruct;->intValue:I

    iget v2, p1, Lcom/google/gdata/data/webmastertools/IntValueConstruct;->intValue:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/gdata/data/webmastertools/IntValueConstruct;->intValue:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/gdata/data/webmastertools/IntValueConstruct;->intValue:I

    return v0
.end method

.method public setIntValue(I)V
    .locals 1

    .prologue
    .line 84
    iput p1, p0, Lcom/google/gdata/data/webmastertools/IntValueConstruct;->intValue:I

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "value can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/IntValueConstruct;->setIntValue(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

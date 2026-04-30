.class public final Lcom/google/gdata/model/AttributeKey;
.super Lcom/google/gdata/model/MetadataKey;
.source "AttributeKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/model/MetadataKey",
        "<TD;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TD;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/QName;

    invoke-direct {p0, v0, p2}, Lcom/google/gdata/model/MetadataKey;-><init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V

    .line 64
    return-void
.end method

.method public static of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/google/gdata/model/AttributeKey",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/google/gdata/model/AttributeKey;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/model/AttributeKey;-><init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/gdata/model/MetadataKey;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 88
    if-ne p1, p0, :cond_1

    .line 89
    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    instance-of v0, p1, Lcom/google/gdata/model/AttributeKey;

    if-nez v0, :cond_2

    .line 94
    const/4 v0, -0x1

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    iget-object v1, p1, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->compareQName(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/QName;)I

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->compareClass(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lcom/google/gdata/model/MetadataKey;

    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeKey;->compareTo(Lcom/google/gdata/model/MetadataKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    if-ne p1, p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/gdata/model/AttributeKey;

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 120
    goto :goto_0

    .line 122
    :cond_3
    check-cast p1, Lcom/google/gdata/model/AttributeKey;

    .line 123
    iget-object v2, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    iget-object v3, p1, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v2, v3}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 107
    mul-int/lit8 v0, v0, 0x11

    .line 108
    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_0
    return v0
.end method

.method public matches(Lcom/google/gdata/model/MetadataKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    instance-of v1, p1, Lcom/google/gdata/model/AttributeKey;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeKey;->matchIdAndDatatype(Lcom/google/gdata/model/MetadataKey;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{AttributeKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/gdata/model/ElementKey;
.super Lcom/google/gdata/model/MetadataKey;
.source "ElementKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/google/gdata/model/Element;",
        ">",
        "Lcom/google/gdata/model/MetadataKey",
        "<TD;>;"
    }
.end annotation


# instance fields
.field final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TD;>;",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/MetadataKey;-><init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V

    .line 87
    const-string/jumbo v0, "elementType"

    invoke-static {p3, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-class v0, Lcom/google/gdata/model/Element;

    if-ne v0, p3, :cond_0

    .line 89
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    iput-object p3, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    .line 92
    return-void
.end method

.method public static of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const-class v0, Ljava/lang/String;

    const-class v1, Lcom/google/gdata/model/Element;

    invoke-static {p0, v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TV;>;)",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    const-class v0, Ljava/lang/Void;

    invoke-static {p0, v0, p1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<+TV;>;)",
            "Lcom/google/gdata/model/ElementKey",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/model/ElementKey;-><init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)V

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
    .line 127
    if-ne p1, p0, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    instance-of v0, p1, Lcom/google/gdata/model/ElementKey;

    if-nez v0, :cond_2

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    iget-object v1, p1, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->compareQName(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/QName;)I

    move-result v0

    .line 137
    if-nez v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    iget-object v0, v0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/google/gdata/model/ElementKey;->compareClass(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    .line 142
    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->compareClass(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/google/gdata/model/MetadataKey;

    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementKey;->compareTo(Lcom/google/gdata/model/MetadataKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    if-ne p1, p0, :cond_1

    move v1, v0

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/gdata/model/ElementKey;

    if-ne v2, v3, :cond_0

    .line 168
    check-cast p1, Lcom/google/gdata/model/ElementKey;

    .line 170
    iget-object v2, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    if-nez v2, :cond_3

    .line 171
    iget-object v2, p1, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    if-nez v2, :cond_0

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    iget-object v3, p1, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v2, v3}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 178
    goto :goto_1
.end method

.method public getElementType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 152
    mul-int/lit8 v0, v0, 0x11

    .line 153
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_0
    mul-int/lit8 v0, v0, 0x11

    .line 157
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

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

    .line 108
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    instance-of v1, p1, Lcom/google/gdata/model/ElementKey;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementKey;->matchIdAndDatatype(Lcom/google/gdata/model/MetadataKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    check-cast p1, Lcom/google/gdata/model/ElementKey;

    iget-object v1, p1, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ElementKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

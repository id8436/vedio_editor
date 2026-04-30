.class Lcom/dropbox/core/v2/files/RelocationBatchArg;
.super Ljava/lang/Object;
.source "RelocationBatchArg.java"


# instance fields
.field protected final allowOwnershipTransfer:Z

.field protected final allowSharedFolder:Z

.field protected final autorename:Z

.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;ZZZ)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'entries\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationPath;

    .line 54
    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'entries\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    .line 59
    iput-boolean p2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    .line 60
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    .line 61
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowOwnershipTransfer:Z

    .line 62
    return-void
.end method

.method public static newBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 263
    if-ne p1, p0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 267
    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 271
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    .line 272
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowOwnershipTransfer:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowOwnershipTransfer:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 279
    goto :goto_0
.end method

.method public getAllowOwnershipTransfer()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowOwnershipTransfer:Z

    return v0
.end method

.method public getAllowSharedFolder()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    return v0
.end method

.method public getAutorename()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 252
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    .line 254
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    .line 255
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowOwnershipTransfer:Z

    .line 256
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 252
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 258
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

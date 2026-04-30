.class Lcom/dropbox/core/v2/files/RelocationArg;
.super Lcom/dropbox/core/v2/files/RelocationPath;
.source "RelocationArg.java"


# instance fields
.field protected final allowOwnershipTransfer:Z

.field protected final allowSharedFolder:Z

.field protected final autorename:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-boolean p3, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    .line 54
    iput-boolean p4, p0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    .line 55
    iput-boolean p5, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowOwnershipTransfer:Z

    .line 56
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/RelocationArg$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    if-ne p1, p0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 281
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 285
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationArg;

    .line 286
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowOwnershipTransfer:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/RelocationArg;->allowOwnershipTransfer:Z

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 294
    goto :goto_0
.end method

.method public getAllowOwnershipTransfer()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowOwnershipTransfer:Z

    return v0
.end method

.method public getAllowSharedFolder()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    return v0
.end method

.method public getAutorename()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    return v0
.end method

.method public getFromPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->fromPath:Ljava/lang/String;

    return-object v0
.end method

.method public getToPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RelocationArg;->toPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 266
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowSharedFolder:Z

    .line 267
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->autorename:Z

    .line 268
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationArg;->allowOwnershipTransfer:Z

    .line 269
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 266
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 271
    invoke-super {p0}, Lcom/dropbox/core/v2/files/RelocationPath;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 272
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

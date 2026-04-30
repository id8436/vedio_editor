.class Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;
.super Lcom/dropbox/core/v2/files/GetMetadataArg;
.source "AlphaGetMetadataArg.java"


# instance fields
.field protected final includePropertyTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;-><init>(Ljava/lang/String;ZZZLjava/util/List;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/files/GetMetadataArg;-><init>(Ljava/lang/String;ZZZ)V

    .line 49
    if-eqz p5, :cond_3

    .line 50
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'includePropertyTemplates\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stringan item in list \'includePropertyTemplates\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    const-string/jumbo v2, "(/|ptid:).*"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Stringan item in list \'includePropertyTemplates\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_3
    iput-object p5, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includePropertyTemplates:Ljava/util/List;

    .line 63
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 265
    if-ne p1, p0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 269
    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 273
    check-cast p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;

    .line 274
    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeMediaInfo:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeMediaInfo:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeDeleted:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeDeleted:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeHasExplicitSharedMembers:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeHasExplicitSharedMembers:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includePropertyTemplates:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includePropertyTemplates:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includePropertyTemplates:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includePropertyTemplates:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includePropertyTemplates:Ljava/util/List;

    .line 278
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 282
    goto :goto_0
.end method

.method public getIncludeDeleted()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeDeleted:Z

    return v0
.end method

.method public getIncludeHasExplicitSharedMembers()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeHasExplicitSharedMembers:Z

    return v0
.end method

.method public getIncludeMediaInfo()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includeMediaInfo:Z

    return v0
.end method

.method public getIncludePropertyTemplates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includePropertyTemplates:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->path:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 256
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->includePropertyTemplates:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 259
    invoke-super {p0}, Lcom/dropbox/core/v2/files/GetMetadataArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 260
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

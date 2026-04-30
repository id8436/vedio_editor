.class Lcom/dropbox/core/v2/files/CommitInfoWithProperties;
.super Lcom/dropbox/core/v2/files/CommitInfo;
.source "CommitInfoWithProperties.java"


# instance fields
.field protected final propertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 81
    sget-object v2, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;ZLjava/util/List;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/files/WriteMode;",
            "Z",
            "Ljava/util/Date;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/v2/files/CommitInfo;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/WriteMode;ZLjava/util/Date;Z)V

    .line 58
    if-eqz p6, :cond_1

    .line 59
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroup;

    .line 60
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'propertyGroups\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    iput-object p6, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    .line 66
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 296
    if-ne p1, p0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 300
    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 304
    check-cast p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    .line 305
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    .line 306
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/files/WriteMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->autorename:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->autorename:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    .line 308
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mute:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mute:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    .line 310
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 314
    goto :goto_0
.end method

.method public getAutorename()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->autorename:Z

    return v0
.end method

.method public getClientModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->clientModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMode()Lcom/dropbox/core/v2/files/WriteMode;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mode:Lcom/dropbox/core/v2/files/WriteMode;

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->mute:Z

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->propertyGroups:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 290
    invoke-super {p0}, Lcom/dropbox/core/v2/files/CommitInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 291
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

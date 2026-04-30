.class public Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
.super Lcom/dropbox/core/v2/files/Metadata$Builder;
.source "FolderMetadata.java"


# instance fields
.field protected final id:Ljava/lang/String;

.field protected propertyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected sharedFolderId:Ljava/lang/String;

.field protected sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;-><init>(Ljava/lang/String;)V

    .line 216
    if-nez p2, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->id:Ljava/lang/String;

    .line 223
    iput-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->sharedFolderId:Ljava/lang/String;

    .line 224
    iput-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    .line 225
    iput-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->propertyGroups:Ljava/util/List;

    .line 226
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 9

    .prologue
    .line 345
    new-instance v0, Lcom/dropbox/core/v2/files/FolderMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->pathDisplay:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->sharedFolderId:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    iget-object v8, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->propertyGroups:Ljava/util/List;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/files/FolderMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/FolderSharingInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/files/Metadata;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->build()Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
    .locals 0

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 335
    return-object p0
.end method

.method public bridge synthetic withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
    .locals 0

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 317
    return-object p0
.end method

.method public bridge synthetic withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
    .locals 0

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 298
    return-object p0
.end method

.method public bridge synthetic withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)",
            "Lcom/dropbox/core/v2/files/FolderMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 276
    if-eqz p1, :cond_1

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroup;

    .line 278
    if-nez v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'propertyGroups\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->propertyGroups:Ljava/util/List;

    .line 284
    return-object p0
.end method

.method public withSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
    .locals 2

    .prologue
    .line 241
    if-eqz p1, :cond_0

    .line 242
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->sharedFolderId:Ljava/lang/String;

    .line 247
    return-object p0
.end method

.method public withSharingInfo(Lcom/dropbox/core/v2/files/FolderSharingInfo;)Lcom/dropbox/core/v2/files/FolderMetadata$Builder;
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FolderMetadata$Builder;->sharingInfo:Lcom/dropbox/core/v2/files/FolderSharingInfo;

    .line 260
    return-object p0
.end method

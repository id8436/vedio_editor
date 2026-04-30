.class public Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;
.super Lcom/dropbox/core/v2/files/Metadata$Builder;
.source "DeletedMetadata.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;-><init>(Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/DeletedMetadata;
    .locals 5

    .prologue
    .line 199
    new-instance v0, Lcom/dropbox/core/v2/files/DeletedMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;->pathDisplay:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/files/DeletedMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/files/Metadata;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;->build()Lcom/dropbox/core/v2/files/DeletedMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;
    .locals 0

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 189
    return-object p0
.end method

.method public bridge synthetic withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;
    .locals 0

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 171
    return-object p0
.end method

.method public bridge synthetic withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;->withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;
    .locals 0

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 152
    return-object p0
.end method

.method public bridge synthetic withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeletedMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/dropbox/core/v2/files/FileMetadata$Builder;
.super Lcom/dropbox/core/v2/files/Metadata$Builder;
.source "FileMetadata.java"


# instance fields
.field protected final clientModified:Ljava/util/Date;

.field protected contentHash:Ljava/lang/String;

.field protected hasExplicitSharedMembers:Ljava/lang/Boolean;

.field protected final id:Ljava/lang/String;

.field protected mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

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

.field protected final rev:Ljava/lang/String;

.field protected final serverModified:Ljava/util/Date;

.field protected sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

.field protected final size:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;-><init>(Ljava/lang/String;)V

    .line 370
    if-nez p2, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->id:Ljava/lang/String;

    .line 377
    if-nez p3, :cond_2

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'clientModified\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_2
    invoke-static {p3}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->clientModified:Ljava/util/Date;

    .line 381
    if-nez p4, :cond_3

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'serverModified\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_3
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->serverModified:Ljava/util/Date;

    .line 385
    if-nez p5, :cond_4

    .line 386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'rev\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_4
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_5

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_5
    const-string/jumbo v0, "[0-9a-f]+"

    invoke-static {v0, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_6
    iput-object p5, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->rev:Ljava/lang/String;

    .line 395
    iput-wide p6, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->size:J

    .line 396
    iput-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    .line 397
    iput-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    .line 398
    iput-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->propertyGroups:Ljava/util/List;

    .line 399
    iput-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    .line 400
    iput-object v2, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->contentHash:Ljava/lang/String;

    .line 401
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 18

    .prologue
    .line 555
    new-instance v2, Lcom/dropbox/core/v2/files/FileMetadata;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->clientModified:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->serverModified:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->rev:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->size:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->pathLower:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->pathDisplay:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->propertyGroups:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->contentHash:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v2 .. v17}, Lcom/dropbox/core/v2/files/FileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/MediaInfo;Lcom/dropbox/core/v2/files/FileSharingInfo;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/files/Metadata;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->build()Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withContentHash(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 485
    if-eqz p1, :cond_1

    .line 486
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'contentHash\' is shorter than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'contentHash\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->contentHash:Ljava/lang/String;

    .line 494
    return-object p0
.end method

.method public withHasExplicitSharedMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    .line 468
    return-object p0
.end method

.method public withMediaInfo(Lcom/dropbox/core/v2/files/MediaInfo;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    .line 413
    return-object p0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 0

    .prologue
    .line 544
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 545
    return-object p0
.end method

.method public bridge synthetic withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 0

    .prologue
    .line 526
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 527
    return-object p0
.end method

.method public bridge synthetic withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 0

    .prologue
    .line 507
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/files/Metadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;

    .line 508
    return-object p0
.end method

.method public bridge synthetic withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata$Builder;
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPropertyGroups(Ljava/util/List;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)",
            "Lcom/dropbox/core/v2/files/FileMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 441
    if-eqz p1, :cond_1

    .line 442
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroup;

    .line 443
    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'propertyGroups\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->propertyGroups:Ljava/util/List;

    .line 449
    return-object p0
.end method

.method public withSharingInfo(Lcom/dropbox/core/v2/files/FileSharingInfo;)Lcom/dropbox/core/v2/files/FileMetadata$Builder;
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/dropbox/core/v2/files/FileMetadata$Builder;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    .line 425
    return-object p0
.end method

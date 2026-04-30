.class public Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
.super Ljava/lang/Object;
.source "SharedFileMetadata.java"


# instance fields
.field protected accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

.field protected final id:Ljava/lang/String;

.field protected linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected ownerDisplayNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ownerTeam:Lcom/dropbox/core/v2/users/Team;

.field protected parentSharedFolderId:Ljava/lang/String;

.field protected pathDisplay:Ljava/lang/String;

.field protected pathLower:Ljava/lang/String;

.field protected permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

.field protected final previewUrl:Ljava/lang/String;

.field protected timeInvited:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    if-nez p1, :cond_0

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 356
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_1
    const-string/jumbo v0, "id:.*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->id:Ljava/lang/String;

    .line 362
    if-nez p2, :cond_3

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->name:Ljava/lang/String;

    .line 366
    if-nez p3, :cond_4

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'policy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 370
    if-nez p4, :cond_5

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'previewUrl\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_5
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->previewUrl:Ljava/lang/String;

    .line 374
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 375
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    .line 376
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 377
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerDisplayNames:Ljava/util/List;

    .line 378
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 379
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 380
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathDisplay:Ljava/lang/String;

    .line 381
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathLower:Ljava/lang/String;

    .line 382
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->permissions:Ljava/util/List;

    .line 383
    iput-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->timeInvited:Ljava/util/Date;

    .line 384
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 15

    .prologue
    .line 566
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->previewUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerDisplayNames:Ljava/util/List;

    iget-object v9, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v10, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathDisplay:Ljava/lang/String;

    iget-object v12, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v13, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->permissions:Ljava/util/List;

    iget-object v14, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->timeInvited:Ljava/util/Date;

    invoke-direct/range {v0 .. v14}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V

    return-object v0
.end method

.method public withAccessType(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 396
    return-object p0
.end method

.method public withExpectedLinkMetadata(Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    .line 411
    return-object p0
.end method

.method public withLinkMetadata(Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 425
    return-object p0
.end method

.method public withOwnerDisplayNames(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 442
    if-eqz p1, :cond_1

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'ownerDisplayNames\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerDisplayNames:Ljava/util/List;

    .line 450
    return-object p0
.end method

.method public withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 463
    return-object p0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 2

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 480
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 485
    return-object p0
.end method

.method public withPathDisplay(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathDisplay:Ljava/lang/String;

    .line 500
    return-object p0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->pathLower:Ljava/lang/String;

    .line 513
    return-object p0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 533
    if-eqz p1, :cond_1

    .line 534
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FilePermission;

    .line 535
    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'permissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->permissions:Ljava/util/List;

    .line 541
    return-object p0
.end method

.method public withTimeInvited(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 1

    .prologue
    .line 555
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;->timeInvited:Ljava/util/Date;

    .line 556
    return-object p0
.end method

.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
.super Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
.source "SharedFolderMetadata.java"


# instance fields
.field protected final linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

.field protected final previewUrl:Ljava/lang/String;

.field protected final sharedFolderId:Ljava/lang/String;

.field protected final timeInvited:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 15

    .prologue
    .line 142
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v14}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/FolderPolicy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dropbox/core/v2/users/Team;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 83
    if-nez p4, :cond_0

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'name\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    .line 87
    if-eqz p14, :cond_2

    .line 88
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FolderPermission;

    .line 89
    if-nez v1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'permissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_2
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    .line 95
    if-nez p5, :cond_3

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'policy\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_3
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 99
    if-nez p6, :cond_4

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'previewUrl\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_4
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    .line 103
    if-nez p7, :cond_5

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_5
    const-string/jumbo v1, "[-_0-9a-zA-Z:]+"

    move-object/from16 v0, p7

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_6
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    .line 110
    if-nez p8, :cond_7

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'timeInvited\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_7
    invoke-static/range {p8 .. p8}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    .line 114
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;
    .locals 9

    .prologue
    .line 307
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 480
    if-ne p1, p0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 484
    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 488
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .line 489
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    if-ne v2, v3, :cond_e

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    .line 492
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 493
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/FolderPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    .line 494
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    .line 496
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    .line 497
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 498
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 499
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    .line 500
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 501
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    .line 502
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_e
    move v0, v1

    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 506
    goto/16 :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getIsInsideTeamFolder()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    return v0
.end method

.method public getIsTeamFolder()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    return v0
.end method

.method public getLinkMetadata()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerDisplayNames()Ljava/util/List;
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
    .line 227
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerTeam()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getPolicy()Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInvited()Ljava/util/Date;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 465
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 474
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 475
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

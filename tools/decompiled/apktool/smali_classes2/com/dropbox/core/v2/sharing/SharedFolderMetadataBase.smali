.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
.super Ljava/lang/Object;
.source "SharedFolderMetadataBase.java"


# instance fields
.field protected final accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final isInsideTeamFolder:Z

.field protected final isTeamFolder:Z

.field protected final ownerDisplayNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final ownerTeam:Lcom/dropbox/core/v2/users/Team;

.field protected final parentSharedFolderId:Ljava/lang/String;

.field protected final pathLower:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 102
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dropbox/core/v2/users/Team;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accessType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 66
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    .line 67
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    .line 68
    if-eqz p4, :cond_2

    .line 69
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    if-nez v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'ownerDisplayNames\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerDisplayNames:Ljava/util/List;

    .line 76
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 77
    if-eqz p6, :cond_3

    .line 78
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    .line 83
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    if-ne p1, p0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 323
    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 327
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;

    .line 328
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerDisplayNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerDisplayNames:Ljava/util/List;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerDisplayNames:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerDisplayNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerDisplayNames:Ljava/util/List;

    .line 331
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 332
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 338
    goto/16 :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getIsInsideTeamFolder()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    return v0
.end method

.method public getIsTeamFolder()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    return v0
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
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerDisplayNames:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerTeam()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isInsideTeamFolder:Z

    .line 307
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->isTeamFolder:Z

    .line 308
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerDisplayNames:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->parentSharedFolderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;->pathLower:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 305
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 314
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

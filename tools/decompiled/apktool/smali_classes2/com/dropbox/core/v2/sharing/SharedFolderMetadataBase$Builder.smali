.class public Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
.super Ljava/lang/Object;
.source "SharedFolderMetadataBase.java"


# instance fields
.field protected final accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final isInsideTeamFolder:Z

.field protected final isTeamFolder:Z

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

.field protected pathLower:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZ)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    if-nez p1, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accessType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 211
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->isInsideTeamFolder:Z

    .line 212
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->isTeamFolder:Z

    .line 213
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerDisplayNames:Ljava/util/List;

    .line 214
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 215
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->pathLower:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;
    .locals 8

    .prologue
    .line 299
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->isInsideTeamFolder:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->isTeamFolder:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerDisplayNames:Ljava/util/List;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->parentSharedFolderId:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->pathLower:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withOwnerDisplayNames(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;"
        }
    .end annotation

    .prologue
    .line 233
    if-eqz p1, :cond_1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'ownerDisplayNames\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerDisplayNames:Ljava/util/List;

    .line 241
    return-object p0
.end method

.method public withOwnerTeam(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 254
    return-object p0
.end method

.method public withParentSharedFolderId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 2

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->parentSharedFolderId:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadataBase$Builder;->pathLower:Ljava/lang/String;

    .line 289
    return-object p0
.end method

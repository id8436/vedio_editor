.class Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;
.super Lcom/dropbox/core/v2/team/TeamFolderIdArg;
.source "TeamFolderArchiveArg.java"


# instance fields
.field protected final forceAsyncOff:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;-><init>(Ljava/lang/String;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderIdArg;-><init>(Ljava/lang/String;)V

    .line 36
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->forceAsyncOff:Z

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p1, p0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;

    .line 93
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->teamFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->teamFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->teamFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->teamFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->forceAsyncOff:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->forceAsyncOff:Z

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method public getForceAsyncOff()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->forceAsyncOff:Z

    return v0
.end method

.method public getTeamFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->teamFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;->forceAsyncOff:Z

    .line 76
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 75
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 78
    invoke-super {p0}, Lcom/dropbox/core/v2/team/TeamFolderIdArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

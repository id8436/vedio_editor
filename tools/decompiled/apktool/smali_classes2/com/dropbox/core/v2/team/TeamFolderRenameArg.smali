.class Lcom/dropbox/core/v2/team/TeamFolderRenameArg;
.super Lcom/dropbox/core/v2/team/TeamFolderIdArg;
.source "TeamFolderRenameArg.java"


# instance fields
.field protected final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderIdArg;-><init>(Ljava/lang/String;)V

    .line 35
    if-nez p2, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;

    .line 79
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->teamFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->teamFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->teamFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->teamFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->name:Ljava/lang/String;

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->teamFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 64
    invoke-super {p0}, Lcom/dropbox/core/v2/team/TeamFolderIdArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

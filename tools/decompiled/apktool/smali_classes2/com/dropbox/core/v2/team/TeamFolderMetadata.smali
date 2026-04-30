.class public Lcom/dropbox/core/v2/team/TeamFolderMetadata;
.super Ljava/lang/Object;
.source "TeamFolderMetadata.java"


# instance fields
.field protected final isTeamSharedDropbox:Z

.field protected final name:Ljava/lang/String;

.field protected final status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

.field protected final teamFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/team/TeamFolderStatus;Z)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'teamFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'teamFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    .line 51
    if-nez p2, :cond_2

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    .line 55
    if-nez p3, :cond_3

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'status\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    .line 59
    iput-boolean p4, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-ne p1, p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 119
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    .line 120
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    .line 122
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamFolderStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 127
    goto :goto_0
.end method

.method public getIsTeamSharedDropbox()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/dropbox/core/v2/team/TeamFolderStatus;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    return-object v0
.end method

.method public getTeamFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->teamFolderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->status:Lcom/dropbox/core/v2/team/TeamFolderStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;->isTeamSharedDropbox:Z

    .line 104
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 106
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

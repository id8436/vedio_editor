.class public Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;
.super Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
.source "FolderLinkMetadata.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p8}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    .line 58
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Builder;
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    if-ne p1, p0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 277
    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 281
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;

    .line 282
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->url:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->name:Ljava/lang/String;

    .line 283
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .line 284
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/LinkPermissions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->id:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->id:Ljava/lang/String;

    .line 285
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->expires:Ljava/util/Date;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->expires:Ljava/util/Date;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->expires:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->expires:Ljava/util/Date;

    .line 286
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->pathLower:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->pathLower:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->pathLower:Ljava/lang/String;

    .line 287
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 288
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    .line 289
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 293
    goto/16 :goto_0
.end method

.method public getContentOwnerTeamInfo()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPermissions()Lcom/dropbox/core/v2/sharing/LinkPermissions;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberInfo()Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/FolderLinkMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

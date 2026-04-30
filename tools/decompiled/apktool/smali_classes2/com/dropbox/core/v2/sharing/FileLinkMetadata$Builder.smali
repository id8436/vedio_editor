.class public Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;
.super Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
.source "FileLinkMetadata.java"


# instance fields
.field protected final clientModified:Ljava/util/Date;

.field protected final rev:Ljava/lang/String;

.field protected final serverModified:Ljava/util/Date;

.field protected final size:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 289
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)V

    .line 290
    if-nez p4, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'clientModified\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    invoke-static {p4}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->clientModified:Ljava/util/Date;

    .line 294
    if-nez p5, :cond_1

    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'serverModified\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    invoke-static {p5}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->serverModified:Ljava/util/Date;

    .line 298
    if-nez p6, :cond_2

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'rev\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_3

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_3
    const-string/jumbo v0, "[0-9a-f]+"

    invoke-static {v0, p6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_4
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->rev:Ljava/lang/String;

    .line 308
    iput-wide p7, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->size:J

    .line 309
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/FileLinkMetadata;
    .locals 15

    .prologue
    .line 390
    new-instance v1, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->clientModified:Ljava/util/Date;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->serverModified:Ljava/util/Date;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->rev:Ljava/lang/String;

    iget-wide v8, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->size:J

    iget-object v10, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->id:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->expires:Ljava/util/Date;

    iget-object v12, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v13, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v14, p0, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    invoke-direct/range {v1 .. v14}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    return-object v1
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->build()Lcom/dropbox/core/v2/sharing/FileLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withContentOwnerTeamInfo(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->withContentOwnerTeamInfo(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;

    .line 380
    return-object p0
.end method

.method public bridge synthetic withContentOwnerTeamInfo(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->withContentOwnerTeamInfo(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withExpires(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 336
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->withExpires(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;

    .line 337
    return-object p0
.end method

.method public bridge synthetic withExpires(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->withExpires(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->withId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;

    .line 324
    return-object p0
.end method

.method public bridge synthetic withId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->withId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;

    .line 351
    return-object p0
.end method

.method public bridge synthetic withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withTeamMemberInfo(Lcom/dropbox/core/v2/sharing/TeamMemberInfo;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->withTeamMemberInfo(Lcom/dropbox/core/v2/sharing/TeamMemberInfo;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;

    .line 365
    return-object p0
.end method

.method public bridge synthetic withTeamMemberInfo(Lcom/dropbox/core/v2/sharing/TeamMemberInfo;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;->withTeamMemberInfo(Lcom/dropbox/core/v2/sharing/TeamMemberInfo;)Lcom/dropbox/core/v2/sharing/FileLinkMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
.super Ljava/lang/Object;
.source "SharedLinkMetadata.java"


# instance fields
.field protected contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

.field protected expires:Ljava/util/Date;

.field protected id:Ljava/lang/String;

.field protected final linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

.field protected final name:Ljava/lang/String;

.field protected pathLower:Ljava/lang/String;

.field protected teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

.field protected final url:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    if-nez p1, :cond_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'url\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->url:Ljava/lang/String;

    .line 222
    if-nez p2, :cond_1

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->name:Ljava/lang/String;

    .line 226
    if-nez p3, :cond_2

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'linkPermissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    .line 230
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->id:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->expires:Ljava/util/Date;

    .line 232
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->pathLower:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 234
    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    .line 235
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 9

    .prologue
    .line 321
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->linkPermissions:Lcom/dropbox/core/v2/sharing/LinkPermissions;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->expires:Ljava/util/Date;

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->pathLower:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/LinkPermissions;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/TeamMemberInfo;Lcom/dropbox/core/v2/users/Team;)V

    return-object v0
.end method

.method public withContentOwnerTeamInfo(Lcom/dropbox/core/v2/users/Team;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->contentOwnerTeamInfo:Lcom/dropbox/core/v2/users/Team;

    .line 311
    return-object p0
.end method

.method public withExpires(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 1

    .prologue
    .line 267
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->expires:Ljava/util/Date;

    .line 268
    return-object p0
.end method

.method public withId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 2

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->id:Ljava/lang/String;

    .line 255
    return-object p0
.end method

.method public withPathLower(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->pathLower:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public withTeamMemberInfo(Lcom/dropbox/core/v2/sharing/TeamMemberInfo;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Builder;->teamMemberInfo:Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 296
    return-object p0
.end method

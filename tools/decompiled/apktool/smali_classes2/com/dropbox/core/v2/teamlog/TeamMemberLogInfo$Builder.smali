.class public Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
.source "TeamMemberLogInfo.java"


# instance fields
.field protected memberExternalId:Ljava/lang/String;

.field protected teamMemberId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;-><init>()V

    .line 131
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
    .locals 6

    .prologue
    .line 227
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->email:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    .line 183
    return-object p0
.end method

.method public bridge synthetic withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    .line 199
    return-object p0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    .line 217
    return-object p0
.end method

.method public bridge synthetic withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withMemberExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 2

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->memberExternalId:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public withTeamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;->teamMemberId:Ljava/lang/String;

    .line 145
    return-object p0
.end method

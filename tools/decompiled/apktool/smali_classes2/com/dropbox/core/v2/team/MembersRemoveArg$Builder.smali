.class public Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
.super Ljava/lang/Object;
.source "MembersRemoveArg.java"


# instance fields
.field protected keepAccount:Z

.field protected transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected wipeData:Z


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->wipeData:Z

    .line 155
    iput-object v1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 156
    iput-object v1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->keepAccount:Z

    .line 158
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MembersRemoveArg;
    .locals 6

    .prologue
    .line 242
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->wipeData:Z

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->keepAccount:Z

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/MembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;ZLcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    return-object v0
.end method

.method public withKeepAccount(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 1

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->keepAccount:Z

    .line 232
    :goto_0
    return-object p0

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->keepAccount:Z

    goto :goto_0
.end method

.method public withTransferAdminId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 207
    return-object p0
.end method

.method public withTransferDestId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 192
    return-object p0
.end method

.method public withWipeData(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 1

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->wipeData:Z

    .line 179
    :goto_0
    return-object p0

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->wipeData:Z

    goto :goto_0
.end method

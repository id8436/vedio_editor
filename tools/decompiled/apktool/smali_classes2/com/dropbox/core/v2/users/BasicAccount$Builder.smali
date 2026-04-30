.class public Lcom/dropbox/core/v2/users/BasicAccount$Builder;
.super Ljava/lang/Object;
.source "BasicAccount.java"


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final disabled:Z

.field protected final email:Ljava/lang/String;

.field protected final emailVerified:Z

.field protected final isTeammate:Z

.field protected final name:Lcom/dropbox/core/v2/users/Name;

.field protected profilePhotoUrl:Ljava/lang/String;

.field protected teamMemberId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x28

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    if-nez p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accountId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->accountId:Ljava/lang/String;

    .line 212
    if-nez p2, :cond_3

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    .line 216
    if-nez p3, :cond_4

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'email\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_4
    iput-object p3, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->email:Ljava/lang/String;

    .line 220
    iput-boolean p4, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->emailVerified:Z

    .line 221
    iput-boolean p5, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->disabled:Z

    .line 222
    iput-boolean p6, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->isTeammate:Z

    .line 223
    iput-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    .line 224
    iput-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->teamMemberId:Ljava/lang/String;

    .line 225
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/users/BasicAccount;
    .locals 9

    .prologue
    .line 261
    new-instance v0, Lcom/dropbox/core/v2/users/BasicAccount;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->email:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->emailVerified:Z

    iget-boolean v5, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->disabled:Z

    iget-boolean v6, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->isTeammate:Z

    iget-object v7, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->teamMemberId:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/users/BasicAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withProfilePhotoUrl(Ljava/lang/String;)Lcom/dropbox/core/v2/users/BasicAccount$Builder;
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->profilePhotoUrl:Ljava/lang/String;

    .line 237
    return-object p0
.end method

.method public withTeamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/users/BasicAccount$Builder;
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;->teamMemberId:Ljava/lang/String;

    .line 251
    return-object p0
.end method

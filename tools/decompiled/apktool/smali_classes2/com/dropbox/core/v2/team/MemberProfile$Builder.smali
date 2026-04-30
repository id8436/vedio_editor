.class public Lcom/dropbox/core/v2/team/MemberProfile$Builder;
.super Ljava/lang/Object;
.source "MemberProfile.java"


# instance fields
.field protected accountId:Ljava/lang/String;

.field protected final email:Ljava/lang/String;

.field protected final emailVerified:Z

.field protected externalId:Ljava/lang/String;

.field protected joinedOn:Ljava/util/Date;

.field protected final membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

.field protected final name:Lcom/dropbox/core/v2/users/Name;

.field protected persistentId:Ljava/lang/String;

.field protected final status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    if-nez p1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'teamMemberId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->teamMemberId:Ljava/lang/String;

    .line 270
    if-nez p2, :cond_1

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'email\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->email:Ljava/lang/String;

    .line 274
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->emailVerified:Z

    .line 275
    if-nez p4, :cond_2

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'status\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_2
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 279
    if-nez p5, :cond_3

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_3
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    .line 283
    if-nez p6, :cond_4

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'membershipType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_4
    iput-object p6, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 287
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->externalId:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->accountId:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->joinedOn:Ljava/util/Date;

    .line 290
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->persistentId:Ljava/lang/String;

    .line 291
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MemberProfile;
    .locals 11

    .prologue
    .line 365
    new-instance v0, Lcom/dropbox/core/v2/team/MemberProfile;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->email:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->emailVerified:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->externalId:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->accountId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->joinedOn:Ljava/util/Date;

    iget-object v10, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->persistentId:Ljava/lang/String;

    invoke-direct/range {v0 .. v10}, Lcom/dropbox/core/v2/team/MemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 319
    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->accountId:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->externalId:Ljava/lang/String;

    .line 304
    return-object p0
.end method

.method public withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 340
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->joinedOn:Ljava/util/Date;

    .line 341
    return-object p0
.end method

.method public withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->persistentId:Ljava/lang/String;

    .line 355
    return-object p0
.end method

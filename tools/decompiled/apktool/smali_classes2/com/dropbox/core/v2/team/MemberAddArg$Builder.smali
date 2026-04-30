.class public Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
.super Ljava/lang/Object;
.source "MemberAddArg.java"


# instance fields
.field protected final memberEmail:Ljava/lang/String;

.field protected memberExternalId:Ljava/lang/String;

.field protected memberGivenName:Ljava/lang/String;

.field protected memberPersistentId:Ljava/lang/String;

.field protected memberSurname:Ljava/lang/String;

.field protected role:Lcom/dropbox/core/v2/team/AdminTier;

.field protected sendWelcomeEmail:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'memberEmail\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberEmail\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberEmail\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberEmail:Ljava/lang/String;

    .line 223
    iput-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberGivenName:Ljava/lang/String;

    .line 224
    iput-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberSurname:Ljava/lang/String;

    .line 225
    iput-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    .line 226
    iput-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    .line 228
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 229
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MemberAddArg;
    .locals 8

    .prologue
    .line 369
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberEmail:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberGivenName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberSurname:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    iget-object v7, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/team/MemberAddArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/AdminTier;)V

    return-object v0
.end method

.method public withMemberExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 2

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberExternalId:Ljava/lang/String;

    .line 297
    return-object p0
.end method

.method public withMemberGivenName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 2

    .prologue
    .line 243
    if-eqz p1, :cond_1

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberGivenName\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    const-string/jumbo v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberGivenName\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberGivenName:Ljava/lang/String;

    .line 252
    return-object p0
.end method

.method public withMemberPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberPersistentId:Ljava/lang/String;

    .line 310
    return-object p0
.end method

.method public withMemberSurname(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 2

    .prologue
    .line 267
    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberSurname\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    const-string/jumbo v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberSurname\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->memberSurname:Ljava/lang/String;

    .line 276
    return-object p0
.end method

.method public withRole(Lcom/dropbox/core/v2/team/AdminTier;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 1

    .prologue
    .line 353
    if-eqz p1, :cond_0

    .line 354
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 359
    :goto_0
    return-object p0

    .line 357
    :cond_0
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    iput-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->role:Lcom/dropbox/core/v2/team/AdminTier;

    goto :goto_0
.end method

.method public withSendWelcomeEmail(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 1

    .prologue
    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    .line 335
    :goto_0
    return-object p0

    .line 333
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;->sendWelcomeEmail:Z

    goto :goto_0
.end method

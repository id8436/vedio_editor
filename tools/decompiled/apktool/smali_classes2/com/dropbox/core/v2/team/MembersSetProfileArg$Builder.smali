.class public Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
.super Ljava/lang/Object;
.source "MembersSetProfileArg.java"


# instance fields
.field protected newEmail:Ljava/lang/String;

.field protected newExternalId:Ljava/lang/String;

.field protected newGivenName:Ljava/lang/String;

.field protected newPersistentId:Ljava/lang/String;

.field protected newSurname:Ljava/lang/String;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    if-nez p1, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 203
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newEmail:Ljava/lang/String;

    .line 204
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newExternalId:Ljava/lang/String;

    .line 205
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newGivenName:Ljava/lang/String;

    .line 206
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newSurname:Ljava/lang/String;

    .line 207
    iput-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newPersistentId:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/MembersSetProfileArg;
    .locals 7

    .prologue
    .line 324
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newEmail:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newExternalId:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newGivenName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newSurname:Ljava/lang/String;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newPersistentId:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withNewEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 2

    .prologue
    .line 223
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newEmail\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newEmail\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newEmail:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public withNewExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 2

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newExternalId:Ljava/lang/String;

    .line 253
    return-object p0
.end method

.method public withNewGivenName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 2

    .prologue
    .line 268
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newGivenName\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    const-string/jumbo v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newGivenName\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newGivenName:Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public withNewPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newPersistentId:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public withNewSurname(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 2

    .prologue
    .line 292
    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newSurname\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    const-string/jumbo v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newSurname\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->newSurname:Ljava/lang/String;

    .line 301
    return-object p0
.end method

.class Lcom/dropbox/core/v2/team/MembersSetProfileArg;
.super Ljava/lang/Object;
.source "MembersSetProfileArg.java"


# instance fields
.field protected final newEmail:Ljava/lang/String;

.field protected final newExternalId:Ljava/lang/String;

.field protected final newGivenName:Ljava/lang/String;

.field protected final newPersistentId:Ljava/lang/String;

.field protected final newSurname:Ljava/lang/String;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 63
    if-eqz p2, :cond_2

    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newEmail\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newEmail\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    .line 72
    if-eqz p3, :cond_3

    .line 73
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_3

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    .line 78
    if-eqz p4, :cond_5

    .line 79
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newGivenName\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_4
    const-string/jumbo v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p4}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newGivenName\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_5
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    .line 87
    if-eqz p5, :cond_7

    .line 88
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_6

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newSurname\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_6
    const-string/jumbo v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'newSurname\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_7
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    .line 96
    iput-object p6, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 343
    if-ne p1, p0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 346
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 347
    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 351
    check-cast p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    .line 352
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    .line 356
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 361
    goto/16 :goto_0
.end method

.method public getNewEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getNewExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPersistentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSurname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newExternalId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newGivenName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newSurname:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newPersistentId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 338
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    sget-object v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

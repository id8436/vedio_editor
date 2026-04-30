.class public Lcom/dropbox/core/v2/team/MemberAddArg;
.super Ljava/lang/Object;
.source "MemberAddArg.java"


# instance fields
.field protected final memberEmail:Ljava/lang/String;

.field protected final memberExternalId:Ljava/lang/String;

.field protected final memberGivenName:Ljava/lang/String;

.field protected final memberPersistentId:Ljava/lang/String;

.field protected final memberSurname:Ljava/lang/String;

.field protected final role:Lcom/dropbox/core/v2/team/AdminTier;

.field protected final sendWelcomeEmail:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 112
    const/4 v6, 0x1

    sget-object v7, Lcom/dropbox/core/v2/team/AdminTier;->MEMBER_ONLY:Lcom/dropbox/core/v2/team/AdminTier;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/team/MemberAddArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/AdminTier;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/AdminTier;)V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'memberEmail\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberEmail\' is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberEmail\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    .line 66
    if-eqz p2, :cond_4

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_3

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberGivenName\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    const-string/jumbo v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberGivenName\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    .line 75
    if-eqz p3, :cond_6

    .line 76
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberSurname\' is longer than 100"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_5
    const-string/jumbo v0, "[^/:?*<>\"|]*"

    invoke-static {v0, p3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberSurname\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_6
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    .line 84
    if-eqz p4, :cond_7

    .line 85
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_7

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_7
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    .line 91
    iput-boolean p6, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    .line 92
    if-nez p7, :cond_8

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'role\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_8
    iput-object p7, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 96
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddArg$Builder;
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/MemberAddArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    if-ne p1, p0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 393
    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 397
    check-cast p1, Lcom/dropbox/core/v2/team/MemberAddArg;

    .line 398
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    .line 399
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    .line 401
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    .line 404
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/AdminTier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 408
    goto/16 :goto_0
.end method

.method public getMemberEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberPersistentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberSurname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Lcom/dropbox/core/v2/team/AdminTier;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    return-object v0
.end method

.method public getSendWelcomeEmail()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 375
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberGivenName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberSurname:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberExternalId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->memberPersistentId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->sendWelcomeEmail:Z

    .line 381
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddArg;->role:Lcom/dropbox/core/v2/team/AdminTier;

    aput-object v2, v0, v1

    .line 375
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 384
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

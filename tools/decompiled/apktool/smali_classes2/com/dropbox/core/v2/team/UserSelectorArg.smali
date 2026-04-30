.class public final Lcom/dropbox/core/v2/team/UserSelectorArg;
.super Ljava/lang/Object;
.source "UserSelectorArg.java"


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

.field private emailValue:Ljava/lang/String;

.field private externalIdValue:Ljava/lang/String;

.field private teamMemberIdValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public static email(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 2

    .prologue
    .line 258
    if-nez p0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->withTagAndEmail(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    return-object v0
.end method

.method public static externalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 2

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->withTagAndExternalId(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    return-object v0
.end method

.method public static teamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 2

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->withTagAndTeamMemberId(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    .line 60
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    .line 61
    return-object v0
.end method

.method private withTagAndEmail(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    .line 113
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    .line 114
    iput-object p2, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    .line 115
    return-object v0
.end method

.method private withTagAndExternalId(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    .line 94
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    .line 95
    iput-object p2, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    .line 96
    return-object v0
.end method

.method private withTagAndTeamMemberId(Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;-><init>()V

    .line 76
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    .line 77
    iput-object p2, v0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    .line 78
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 298
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    if-eqz p1, :cond_0

    .line 304
    instance-of v2, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v2, :cond_0

    .line 305
    check-cast p1, Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 306
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v2, v3, :cond_0

    .line 309
    sget-object v2, Lcom/dropbox/core/v2/team/UserSelectorArg$1;->$SwitchMap$com$dropbox$core$v2$team$UserSelectorArg$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 315
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEmailValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-eq v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.EMAIL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-eq v0, v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.EXTERNAL_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-eq v0, v1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEAM_MEMBER_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->emailValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 293
    return v0
.end method

.method public isEmail()Z
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EMAIL:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternalId()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->EXTERNAL_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamMemberId()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->TEAM_MEMBER_ID:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UserSelectorArg;->_tag:Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

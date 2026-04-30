.class public final Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
.super Ljava/lang/Object;
.source "ContextLogInfo.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

.field public static final TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

.field private nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

.field private teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->withTag(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    .line 71
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->withTag(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;)Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/teamlog/ContextLogInfo;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    return-object v0
.end method

.method public static nonTeamMember(Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 2

    .prologue
    .line 220
    if-nez p0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->withTagAndNonTeamMember(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public static teamMember(Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 2

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->withTagAndTeamMember(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 92
    return-object v0
.end method

.method private withTagAndNonTeamMember(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    .line 124
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 125
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    .line 126
    return-object v0
.end method

.method private withTagAndTeamMember(Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;)Lcom/dropbox/core/v2/teamlog/ContextLogInfo;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;-><init>()V

    .line 107
    iput-object p1, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    .line 108
    iput-object p2, v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    .line 109
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 278
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 303
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    if-eqz p1, :cond_0

    .line 284
    instance-of v2, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    if-eqz v2, :cond_0

    .line 285
    check-cast p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;

    .line 286
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v2, v3, :cond_0

    .line 289
    sget-object v2, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$ContextLogInfo$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 291
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 293
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 295
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 297
    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNonTeamMemberValue()Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.NON_TEAM_MEMBER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    return-object v0
.end method

.method public getTeamMemberValue()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEAM_MEMBER, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->teamMemberValue:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->nonTeamMemberValue:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 273
    return v0
.end method

.method public isNonTeamMember()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->NON_TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeam()Z
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamMember()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;->TEAM_MEMBER:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo;->_tag:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/ContextLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/dropbox/core/v2/users/SpaceAllocation;
.super Ljava/lang/Object;
.source "SpaceAllocation.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

.field private individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

.field private teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/users/SpaceAllocation;->withTag(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/users/SpaceAllocation;)Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/users/SpaceAllocation;)Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    return-object v0
.end method

.method public static individual(Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 2

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/users/SpaceAllocation;->withTagAndIndividual(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object v0

    return-object v0
.end method

.method public static team(Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 2

    .prologue
    .line 213
    if-nez p0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/users/SpaceAllocation;->withTagAndTeam(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    .line 83
    iput-object p1, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    .line 84
    return-object v0
.end method

.method private withTagAndIndividual(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    .line 99
    iput-object p1, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    .line 100
    iput-object p2, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    .line 101
    return-object v0
.end method

.method private withTagAndTeam(Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;Lcom/dropbox/core/v2/users/TeamSpaceAllocation;)Lcom/dropbox/core/v2/users/SpaceAllocation;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/users/SpaceAllocation;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/SpaceAllocation;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    .line 117
    iput-object p2, v0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    .line 118
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 259
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    if-eqz p1, :cond_0

    .line 265
    instance-of v2, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;

    if-eqz v2, :cond_0

    .line 266
    check-cast p1, Lcom/dropbox/core/v2/users/SpaceAllocation;

    .line 267
    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v2, v3, :cond_0

    .line 270
    sget-object v2, Lcom/dropbox/core/v2/users/SpaceAllocation$1;->$SwitchMap$com$dropbox$core$v2$users$SpaceAllocation$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/TeamSpaceAllocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 276
    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIndividualValue()Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-eq v0, v1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.INDIVIDUAL, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    return-object v0
.end method

.method public getTeamValue()Lcom/dropbox/core/v2/users/TeamSpaceAllocation;
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-eq v0, v1, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->individualValue:Lcom/dropbox/core/v2/users/IndividualSpaceAllocation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->teamValue:Lcom/dropbox/core/v2/users/TeamSpaceAllocation;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 254
    return v0
.end method

.method public isIndividual()Z
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->INDIVIDUAL:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

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
    .line 244
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->OTHER:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

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
    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    sget-object v1, Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;->TEAM:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dropbox/core/v2/users/SpaceAllocation;->_tag:Lcom/dropbox/core/v2/users/SpaceAllocation$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/SpaceAllocation$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

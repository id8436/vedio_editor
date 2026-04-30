.class public final Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
.super Ljava/lang/Object;
.source "GroupMembersRemoveError.java"


# static fields
.field public static final GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

.field public static final SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field private membersNotInTeamValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usersNotFoundValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 79
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 92
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    return-object v0
.end method

.method public static membersNotInTeam(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->withTagAndMembersNotInTeam(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    return-object v0
.end method

.method public static usersNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    if-nez v0, :cond_1

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->withTagAndUsersNotFound(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    .line 111
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 112
    return-object v0
.end method

.method private withTagAndMembersNotInTeam(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    .line 126
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 127
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    .line 128
    return-object v0
.end method

.method private withTagAndUsersNotFound(Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;-><init>()V

    .line 142
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 143
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    .line 144
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 340
    if-ne p1, p0, :cond_0

    .line 371
    :goto_0
    :pswitch_0
    return v1

    .line 343
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 344
    goto :goto_0

    .line 346
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    if-eqz v2, :cond_7

    .line 347
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 348
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 349
    goto :goto_0

    .line 351
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupMembersRemoveError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 367
    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 365
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    move v1, v0

    goto :goto_0

    :cond_7
    move v1, v0

    .line 371
    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMembersNotInTeamValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-eq v0, v1, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    return-object v0
.end method

.method public getUsersNotFoundValue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-eq v0, v1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 329
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeamValue:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFoundValue:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 334
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 335
    return v0
.end method

.method public isGroupNotFound()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupNotInTeam()Z
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberNotInGroup()Z
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMembersNotInTeam()Z
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

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
    .line 181
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemManagedGroupDisallowed()Z
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsersNotFound()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

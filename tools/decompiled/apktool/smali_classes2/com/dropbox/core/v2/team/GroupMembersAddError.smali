.class public final Lcom/dropbox/core/v2/team/GroupMembersAddError;
.super Ljava/lang/Object;
.source "GroupMembersAddError.java"


# static fields
.field public static final DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError;

.field public static final USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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

.field private userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;
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
    .line 85
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 93
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 97
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 102
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 107
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 112
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTag(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    return-object v0
.end method

.method public static membersNotInTeam(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .line 289
    if-nez p0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
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

    .line 293
    if-nez v0, :cond_1

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTagAndMembersNotInTeam(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    return-object v0
.end method

.method public static userCannotBeManagerOfCompanyManagedGroup(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .line 416
    if-nez p0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
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

    .line 420
    if-nez v0, :cond_1

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTagAndUserCannotBeManagerOfCompanyManagedGroup(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    return-object v0
.end method

.method public static usersNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .line 348
    if-nez p0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
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

    .line 352
    if-nez v0, :cond_1

    .line 353
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->withTagAndUsersNotFound(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    .line 132
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    .line 133
    return-object v0
.end method

.method private withTagAndMembersNotInTeam(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    .line 151
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    .line 152
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    .line 153
    return-object v0
.end method

.method private withTagAndUserCannotBeManagerOfCompanyManagedGroup(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    .line 184
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    .line 185
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    .line 186
    return-object v0
.end method

.method private withTagAndUsersNotFound(Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersAddError;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;-><init>()V

    .line 167
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    .line 168
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    .line 169
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 460
    if-ne p1, p0, :cond_0

    .line 495
    :goto_0
    :pswitch_0
    return v1

    .line 463
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 464
    goto :goto_0

    .line 466
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    if-eqz v2, :cond_9

    .line 467
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 468
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 469
    goto :goto_0

    .line 471
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersAddError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupMembersAddError$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 491
    goto :goto_0

    .line 483
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    .line 485
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    move v1, v0

    goto :goto_0

    .line 489
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    move v1, v0

    goto :goto_0

    :cond_9
    move v1, v0

    .line 495
    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
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
    .line 316
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v0, v1, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.MEMBERS_NOT_IN_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    return-object v0
.end method

.method public getUserCannotBeManagerOfCompanyManagedGroupValue()Ljava/util/List;
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
    .line 440
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v0, v1, :cond_0

    .line 441
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

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
    .line 371
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-eq v0, v1, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USERS_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 448
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeamValue:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFoundValue:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroupValue:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 454
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 455
    return v0
.end method

.method public isDuplicateUser()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupNotFound()Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 256
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 267
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserCannotBeManagerOfCompanyManagedGroup()Z
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserMustBeActiveToBeOwner()Z
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

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
    .line 330
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->_tag:Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 513
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

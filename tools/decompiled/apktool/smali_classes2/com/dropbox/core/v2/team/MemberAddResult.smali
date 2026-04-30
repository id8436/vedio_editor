.class public final Lcom/dropbox/core/v2/team/MemberAddResult;
.super Ljava/lang/Object;
.source "MemberAddResult.java"


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field private duplicateExternalMemberIdValue:Ljava/lang/String;

.field private duplicateMemberPersistentIdValue:Ljava/lang/String;

.field private freeTeamMemberLimitReachedValue:Ljava/lang/String;

.field private persistentIdDisabledValue:Ljava/lang/String;

.field private successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

.field private teamLicenseLimitValue:Ljava/lang/String;

.field private userAlreadyOnTeamValue:Ljava/lang/String;

.field private userAlreadyPairedValue:Ljava/lang/String;

.field private userCreationFailedValue:Ljava/lang/String;

.field private userMigrationFailedValue:Ljava/lang/String;

.field private userOnAnotherTeamValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/MemberAddResult;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dropbox/core/v2/team/MemberAddResult;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    return-object v0
.end method

.method public static duplicateExternalMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 827
    if-nez p0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 831
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 834
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndDuplicateExternalMemberId(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static duplicateMemberPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 888
    if-nez p0, :cond_0

    .line 889
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 892
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndDuplicateMemberPersistentId(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static freeTeamMemberLimitReached(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 525
    if-nez p0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndFreeTeamMemberLimitReached(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static persistentIdDisabled(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 949
    if-nez p0, :cond_0

    .line 950
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 956
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndPersistentIdDisabled(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 414
    if-nez p0, :cond_0

    .line 415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndSuccess(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static teamLicenseLimit(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 466
    if-nez p0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 473
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndTeamLicenseLimit(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static userAlreadyOnTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 586
    if-nez p0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 592
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndUserAlreadyOnTeam(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static userAlreadyPaired(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 709
    if-nez p0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 715
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndUserAlreadyPaired(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static userCreationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 1009
    if-nez p0, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 1013
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1016
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndUserCreationFailed(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static userMigrationFailed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 767
    if-nez p0, :cond_0

    .line 768
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 771
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 774
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndUserMigrationFailed(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method public static userOnAnotherTeam(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 2

    .prologue
    .line 649
    if-nez p0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 653
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String is longer than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_1
    const-string/jumbo v0, "^[\'&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*.[A-Za-z]{2,15}$"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_2
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/MemberAddResult;->withTagAndUserOnAnotherTeam(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 120
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 121
    return-object v0
.end method

.method private withTagAndDuplicateExternalMemberId(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 300
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 301
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    .line 302
    return-object v0
.end method

.method private withTagAndDuplicateMemberPersistentId(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 323
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 324
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    .line 325
    return-object v0
.end method

.method private withTagAndFreeTeamMemberLimitReached(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 185
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 186
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    .line 187
    return-object v0
.end method

.method private withTagAndPersistentIdDisabled(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 347
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 348
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    .line 349
    return-object v0
.end method

.method private withTagAndSuccess(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Lcom/dropbox/core/v2/team/TeamMemberInfo;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 139
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 140
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    .line 141
    return-object v0
.end method

.method private withTagAndTeamLicenseLimit(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 162
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 163
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    .line 164
    return-object v0
.end method

.method private withTagAndUserAlreadyOnTeam(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 209
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 210
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    .line 211
    return-object v0
.end method

.method private withTagAndUserAlreadyPaired(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 255
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 256
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    .line 257
    return-object v0
.end method

.method private withTagAndUserCreationFailed(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 369
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 370
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    .line 371
    return-object v0
.end method

.method private withTagAndUserMigrationFailed(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 277
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 278
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    .line 279
    return-object v0
.end method

.method private withTagAndUserOnAnotherTeam(Lcom/dropbox/core/v2/team/MemberAddResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAddResult;-><init>()V

    .line 233
    iput-object p1, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 234
    iput-object p2, v0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    .line 235
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1061
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 1100
    :cond_0
    :goto_0
    return v0

    .line 1064
    :cond_1
    if-eqz p1, :cond_0

    .line 1067
    instance-of v2, p1, Lcom/dropbox/core/v2/team/MemberAddResult;

    if-eqz v2, :cond_0

    .line 1068
    check-cast p1, Lcom/dropbox/core/v2/team/MemberAddResult;

    .line 1069
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v2, v3, :cond_0

    .line 1072
    sget-object v2, Lcom/dropbox/core/v2/team/MemberAddResult$1;->$SwitchMap$com$dropbox$core$v2$team$MemberAddResult$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1074
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1076
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 1078
    :pswitch_2
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 1080
    :pswitch_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 1082
    :pswitch_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    .line 1084
    :pswitch_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto/16 :goto_0

    .line 1086
    :pswitch_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    .line 1088
    :pswitch_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    .line 1090
    :pswitch_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    move v0, v1

    goto/16 :goto_0

    .line 1092
    :pswitch_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_b
    move v0, v1

    goto/16 :goto_0

    .line 1094
    :pswitch_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_c
    move v0, v1

    goto/16 :goto_0

    .line 1072
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public getDuplicateExternalMemberIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 853
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 854
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.DUPLICATE_EXTERNAL_MEMBER_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDuplicateMemberPersistentIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 914
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 915
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.DUPLICATE_MEMBER_PERSISTENT_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeTeamMemberLimitReachedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.FREE_TEAM_MEMBER_LIMIT_REACHED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistentIdDisabledValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 975
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.PERSISTENT_ID_DISABLED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 432
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    return-object v0
.end method

.method public getTeamLicenseLimitValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.TEAM_LICENSE_LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlreadyOnTeamValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ALREADY_ON_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlreadyPairedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 734
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ALREADY_PAIRED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCreationFailedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 1035
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_CREATION_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMigrationFailedValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 793
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_MIGRATION_FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUserOnAnotherTeamValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-eq v0, v1, :cond_0

    .line 676
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.USER_ON_ANOTHER_TEAM, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1042
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->successValue:Lcom/dropbox/core/v2/team/TeamMemberInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->teamLicenseLimitValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->freeTeamMemberLimitReachedValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyOnTeamValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userOnAnotherTeamValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userAlreadyPairedValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userMigrationFailedValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateExternalMemberIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->duplicateMemberPersistentIdValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->persistentIdDisabledValue:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->userCreationFailedValue:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 1056
    return v0
.end method

.method public isDuplicateExternalMemberId()Z
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDuplicateMemberPersistentId()Z
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFreeTeamMemberLimitReached()Z
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistentIdDisabled()Z
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeamLicenseLimit()Z
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAlreadyOnTeam()Z
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAlreadyPaired()Z
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserCreationFailed()Z
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserMigrationFailed()Z
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserOnAnotherTeam()Z
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MemberAddResult;->_tag:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1106
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1118
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

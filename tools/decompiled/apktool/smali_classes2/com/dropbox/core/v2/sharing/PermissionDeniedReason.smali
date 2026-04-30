.class public final Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
.super Ljava/lang/Object;
.source "PermissionDeniedReason.java"


# static fields
.field public static final FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

.field public static final USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

.field private insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 114
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 119
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 123
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 127
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 131
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 135
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 139
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 143
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 147
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 151
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 155
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 159
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 163
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 171
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;)Lcom/dropbox/core/v2/sharing/InsufficientPlan;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    return-object v0
.end method

.method public static insufficientPlan(Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 2

    .prologue
    .line 407
    if-nez p0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->withTagAndInsufficientPlan(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    .line 190
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    .line 191
    return-object v0
.end method

.method private withTagAndInsufficientPlan(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;-><init>()V

    .line 205
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    .line 206
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    .line 207
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 451
    if-ne p1, p0, :cond_0

    .line 500
    :goto_0
    :pswitch_0
    return v1

    .line 454
    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 455
    goto :goto_0

    .line 457
    :cond_1
    instance-of v2, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v2, :cond_5

    .line 458
    check-cast p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 459
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-eq v2, v3, :cond_2

    move v1, v0

    .line 460
    goto :goto_0

    .line 462
    :cond_2
    sget-object v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$1;->$SwitchMap$com$dropbox$core$v2$sharing$PermissionDeniedReason$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 496
    goto :goto_0

    .line 492
    :pswitch_1
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/InsufficientPlan;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    move v1, v0

    .line 500
    goto :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getInsufficientPlanValue()Lcom/dropbox/core/v2/sharing/InsufficientPlan;
    .locals 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-eq v0, v1, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.INSUFFICIENT_PLAN, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 442
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlanValue:Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 446
    return v0
.end method

.method public isFolderIsInsideSharedFolder()Z
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFolderIsLimitedTeamFolder()Z
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientPlan()Z
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

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
    .line 437
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOwnerNotOnTeam()Z
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermissionDenied()Z
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestrictedByParentFolder()Z
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRestrictedByTeam()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetIsIndirectMember()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetIsOwner()Z
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetIsSelf()Z
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTargetNotActive()Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAccountType()Z
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserNotAllowedByOwner()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserNotOnTeam()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserNotSameTeamAsOwner()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->_tag:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 518
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

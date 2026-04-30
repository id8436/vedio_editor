.class public final enum Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
.super Ljava/lang/Enum;
.source "MemberAddResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/MemberAddResult$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

.field public static final enum USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "TEAM_LICENSE_LIMIT"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "FREE_TEAM_MEMBER_LIMIT_REACHED"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "USER_ALREADY_ON_TEAM"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "USER_ON_ANOTHER_TEAM"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "USER_ALREADY_PAIRED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "USER_MIGRATION_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 73
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "DUPLICATE_EXTERNAL_MEMBER_ID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "DUPLICATE_MEMBER_PERSISTENT_ID"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "PERSISTENT_ID_DISABLED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 87
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    const-string/jumbo v1, "USER_CREATION_FAILED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    .line 36
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->SUCCESS:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->TEAM_LICENSE_LIMIT:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->FREE_TEAM_MEMBER_LIMIT_REACHED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_ON_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ON_ANOTHER_TEAM:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_ALREADY_PAIRED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_MIGRATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_EXTERNAL_MEMBER_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->DUPLICATE_MEMBER_PERSISTENT_ID:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->PERSISTENT_ID_DISABLED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->USER_CREATION_FAILED:Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/MemberAddResult$Tag;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/MemberAddResult$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/MemberAddResult$Tag;

    return-object v0
.end method

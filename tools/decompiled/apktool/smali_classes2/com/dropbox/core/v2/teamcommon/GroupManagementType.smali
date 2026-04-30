.class public final enum Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
.super Ljava/lang/Enum;
.source "GroupManagementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamcommon/GroupManagementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field public static final enum COMPANY_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field public static final enum SYSTEM_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field public static final enum USER_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const-string/jumbo v1, "USER_MANAGED"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->USER_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const-string/jumbo v1, "COMPANY_MANAGED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->COMPANY_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const-string/jumbo v1, "SYSTEM_MANAGED"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->SYSTEM_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->OTHER:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    sget-object v1, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->USER_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->COMPANY_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->SYSTEM_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->OTHER:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->$VALUES:[Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->$VALUES:[Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

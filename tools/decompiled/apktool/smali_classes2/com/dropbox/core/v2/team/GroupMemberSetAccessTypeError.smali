.class public final enum Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
.super Ljava/lang/Enum;
.source "GroupMemberSetAccessTypeError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

.field public static final enum GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

.field public static final enum MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

.field public static final enum SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

.field public static final enum USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    const-string/jumbo v1, "GROUP_NOT_FOUND"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->OTHER:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    const-string/jumbo v1, "SYSTEM_MANAGED_GROUP_DISALLOWED"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    const-string/jumbo v1, "MEMBER_NOT_IN_GROUP"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .line 43
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    const-string/jumbo v1, "USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->OTHER:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->USER_CANNOT_BE_MANAGER_OF_COMPANY_MANAGED_GROUP:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->$VALUES:[Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->$VALUES:[Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    return-object v0
.end method

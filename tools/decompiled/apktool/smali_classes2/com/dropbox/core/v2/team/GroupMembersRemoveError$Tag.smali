.class public final enum Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
.super Ljava/lang/Enum;
.source "GroupMembersRemoveError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field public static final enum GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field public static final enum GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field public static final enum MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field public static final enum MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field public static final enum SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

.field public static final enum USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const-string/jumbo v1, "GROUP_NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const-string/jumbo v1, "SYSTEM_MANAGED_GROUP_DISALLOWED"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const-string/jumbo v1, "MEMBER_NOT_IN_GROUP"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const-string/jumbo v1, "GROUP_NOT_IN_TEAM"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const-string/jumbo v1, "MEMBERS_NOT_IN_TEAM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    const-string/jumbo v1, "USERS_NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->MEMBERS_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->USERS_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    return-object v0
.end method

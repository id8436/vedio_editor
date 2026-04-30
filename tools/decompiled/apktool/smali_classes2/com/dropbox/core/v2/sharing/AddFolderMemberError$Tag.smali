.class public final enum Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;
.super Ljava/lang/Enum;
.source "AddFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

.field public static final enum TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "ACCESS_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "EMAIL_UNVERIFIED"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 47
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "BAD_MEMBER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 51
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "CANT_SHARE_OUTSIDE_TEAM"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "TOO_MANY_MEMBERS"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "TOO_MANY_PENDING_INVITES"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 64
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "RATE_LIMIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "TOO_MANY_INVITEES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "INSUFFICIENT_PLAN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "TEAM_FOLDER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 82
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "NO_PERMISSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    .line 34
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->BAD_MEMBER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_MEMBERS:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_PENDING_INVITES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    return-object v0
.end method

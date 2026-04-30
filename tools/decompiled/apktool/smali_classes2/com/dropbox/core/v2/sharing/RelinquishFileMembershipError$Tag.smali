.class public final enum Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;
.super Ljava/lang/Enum;
.source "RelinquishFileMembershipError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

.field public static final enum ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

.field public static final enum GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    const-string/jumbo v1, "ACCESS_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    const-string/jumbo v1, "GROUP_ACCESS"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    const-string/jumbo v1, "NO_PERMISSION"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Tag;

    return-object v0
.end method

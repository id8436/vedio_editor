.class public final enum Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
.super Ljava/lang/Enum;
.source "RemoveFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field public static final enum ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field public static final enum FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field public static final enum GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field public static final enum MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

.field public static final enum TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;


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
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const-string/jumbo v1, "ACCESS_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const-string/jumbo v1, "MEMBER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const-string/jumbo v1, "FOLDER_OWNER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const-string/jumbo v1, "GROUP_ACCESS"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const-string/jumbo v1, "TEAM_FOLDER"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const-string/jumbo v1, "NO_PERMISSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->MEMBER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    return-object v0
.end method

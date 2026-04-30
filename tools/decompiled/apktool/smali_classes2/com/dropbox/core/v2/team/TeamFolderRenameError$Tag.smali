.class public final enum Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
.super Ljava/lang/Enum;
.source "TeamFolderRenameError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field public static final enum ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field public static final enum FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field public static final enum FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field public static final enum INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field public static final enum STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

.field public static final enum TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const-string/jumbo v1, "ACCESS_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const-string/jumbo v1, "STATUS_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const-string/jumbo v1, "TEAM_SHARED_DROPBOX_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const-string/jumbo v1, "INVALID_FOLDER_NAME"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const-string/jumbo v1, "FOLDER_NAME_ALREADY_USED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    const-string/jumbo v1, "FOLDER_NAME_RESERVED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->STATUS_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->TEAM_SHARED_DROPBOX_ERROR:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->$VALUES:[Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    return-object v0
.end method

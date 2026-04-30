.class public final enum Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;
.super Ljava/lang/Enum;
.source "TransferFolderError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public static final enum ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public static final enum INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public static final enum NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public static final enum NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public static final enum NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public static final enum NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

.field public static final enum TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;


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
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const-string/jumbo v1, "ACCESS_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const-string/jumbo v1, "INVALID_DROPBOX_ID"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const-string/jumbo v1, "NEW_OWNER_NOT_A_MEMBER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const-string/jumbo v1, "NEW_OWNER_UNMOUNTED"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const-string/jumbo v1, "NEW_OWNER_EMAIL_UNVERIFIED"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const-string/jumbo v1, "TEAM_FOLDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const-string/jumbo v1, "NO_PERMISSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    return-object v0
.end method

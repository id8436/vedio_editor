.class public final enum Lcom/dropbox/core/v2/sharing/FileAction;
.super Ljava/lang/Enum;
.source "FileAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/FileAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum CREATE_LINK:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum SHARE_LINK:Lcom/dropbox/core/v2/sharing/FileAction;

.field public static final enum UNSHARE:Lcom/dropbox/core/v2/sharing/FileAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "DISABLE_VIEWER_INFO"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "EDIT_CONTENTS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "ENABLE_VIEWER_INFO"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "INVITE_VIEWER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "INVITE_VIEWER_NO_COMMENT"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "UNSHARE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->UNSHARE:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "RELINQUISH_MEMBERSHIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "SHARE_LINK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 58
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "CREATE_LINK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileAction;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/FileAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->OTHER:Lcom/dropbox/core/v2/sharing/FileAction;

    .line 21
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/FileAction;

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileAction;->DISABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileAction;->EDIT_CONTENTS:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileAction;->ENABLE_VIEWER_INFO:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileAction;->INVITE_VIEWER:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/FileAction;->INVITE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/FileAction;->UNSHARE:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/FileAction;->RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/sharing/FileAction;->SHARE_LINK:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/sharing/FileAction;->CREATE_LINK:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/core/v2/sharing/FileAction;->OTHER:Lcom/dropbox/core/v2/sharing/FileAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->$VALUES:[Lcom/dropbox/core/v2/sharing/FileAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/FileAction;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/sharing/FileAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileAction;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/FileAction;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileAction;->$VALUES:[Lcom/dropbox/core/v2/sharing/FileAction;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/FileAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/FileAction;

    return-object v0
.end method

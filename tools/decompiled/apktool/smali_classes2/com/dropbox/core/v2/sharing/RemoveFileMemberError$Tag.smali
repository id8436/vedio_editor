.class public final enum Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
.super Ljava/lang/Enum;
.source "RemoveFileMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

.field public static final enum ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

.field public static final enum NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

.field public static final enum USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    const-string/jumbo v1, "USER_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 39
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    const-string/jumbo v1, "ACCESS_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 45
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    const-string/jumbo v1, "NO_EXPLICIT_ACCESS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->USER_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->$VALUES:[Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Tag;

    return-object v0
.end method

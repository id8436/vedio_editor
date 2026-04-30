.class public final enum Lcom/dropbox/core/v2/files/WriteError$Tag;
.super Ljava/lang/Enum;
.source "WriteError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/WriteError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/WriteError$Tag;

.field public static final enum CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field public static final enum DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field public static final enum INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field public static final enum MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field public static final enum NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

.field public static final enum TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;


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
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    const-string/jumbo v1, "MALFORMED_PATH"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/WriteError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    const-string/jumbo v1, "CONFLICT"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/files/WriteError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    const-string/jumbo v1, "NO_WRITE_PERMISSION"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/files/WriteError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    const-string/jumbo v1, "INSUFFICIENT_SPACE"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/files/WriteError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    const-string/jumbo v1, "DISALLOWED_NAME"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/files/WriteError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 57
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    const-string/jumbo v1, "TEAM_FOLDER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/WriteError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/WriteError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/core/v2/files/WriteError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->MALFORMED_PATH:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->CONFLICT:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/files/WriteError$Tag;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/files/WriteError$Tag;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/files/WriteError$Tag;->OTHER:Lcom/dropbox/core/v2/files/WriteError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/WriteError$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError$Tag;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/WriteError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/WriteError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/WriteError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/WriteError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/WriteError$Tag;

    return-object v0
.end method

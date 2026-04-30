.class public final enum Lcom/dropbox/core/v2/sharing/AccessLevel;
.super Ljava/lang/Enum;
.source "AccessLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/AccessLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum EDITOR:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum OWNER:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field public static final enum VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/AccessLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string/jumbo v1, "OWNER"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->OWNER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string/jumbo v1, "EDITOR"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->EDITOR:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string/jumbo v1, "VIEWER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string/jumbo v1, "VIEWER_NO_COMMENT"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 49
    new-instance v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/AccessLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->OTHER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/AccessLevel;

    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessLevel;->OWNER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessLevel;->EDITOR:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessLevel;->VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessLevel;->OTHER:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->$VALUES:[Lcom/dropbox/core/v2/sharing/AccessLevel;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel;->$VALUES:[Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/AccessLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

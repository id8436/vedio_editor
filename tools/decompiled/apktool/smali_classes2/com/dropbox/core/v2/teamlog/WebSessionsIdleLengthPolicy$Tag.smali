.class public final enum Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;
.super Ljava/lang/Enum;
.source "WebSessionsIdleLengthPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

.field public static final enum DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

.field public static final enum UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    const-string/jumbo v1, "DEFINED"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    const-string/jumbo v1, "UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    .line 53
    new-instance v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->DEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->UNDEFINED:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->$VALUES:[Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->$VALUES:[Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/WebSessionsIdleLengthPolicy$Tag;

    return-object v0
.end method

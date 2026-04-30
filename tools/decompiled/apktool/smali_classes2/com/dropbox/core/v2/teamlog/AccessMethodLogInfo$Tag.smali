.class public final enum Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;
.super Ljava/lang/Enum;
.source "AccessMethodLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field public static final enum ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field public static final enum API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field public static final enum CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field public static final enum END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

.field public static final enum SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    const-string/jumbo v1, "END_USER"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 44
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    const-string/jumbo v1, "SIGN_IN_AS"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 48
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    const-string/jumbo v1, "CONTENT_MANAGER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 52
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    const-string/jumbo v1, "ADMIN_CONSOLE"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 56
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    const-string/jumbo v1, "API"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->END_USER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->SIGN_IN_AS:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->CONTENT_MANAGER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ADMIN_CONSOLE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->API:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->$VALUES:[Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->$VALUES:[Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    return-object v0
.end method

.class public final enum Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;
.super Ljava/lang/Enum;
.source "ExtendedVersionHistoryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

.field public static final enum EXPLICITLY_LIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

.field public static final enum EXPLICITLY_UNLIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

.field public static final enum IMPLICITLY_LIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    const-string/jumbo v1, "EXPLICITLY_LIMITED"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->EXPLICITLY_LIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    .line 21
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    const-string/jumbo v1, "EXPLICITLY_UNLIMITED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->EXPLICITLY_UNLIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    .line 22
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    const-string/jumbo v1, "IMPLICITLY_LIMITED"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->IMPLICITLY_LIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->EXPLICITLY_LIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->EXPLICITLY_UNLIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->IMPLICITLY_LIMITED:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryPolicy;

    return-object v0
.end method

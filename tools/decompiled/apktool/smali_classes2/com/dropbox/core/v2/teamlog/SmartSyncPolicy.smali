.class public final enum Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;
.super Ljava/lang/Enum;
.source "SmartSyncPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

.field public static final enum LOCAL_ONLY:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

.field public static final enum OTHER:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

.field public static final enum SYNCED:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    const-string/jumbo v1, "LOCAL_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->LOCAL_ONLY:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    .line 21
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    const-string/jumbo v1, "SYNCED"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->SYNCED:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    .line 29
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->LOCAL_ONLY:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->SYNCED:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->$VALUES:[Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/teamlog/SmartSyncPolicy;

    return-object v0
.end method

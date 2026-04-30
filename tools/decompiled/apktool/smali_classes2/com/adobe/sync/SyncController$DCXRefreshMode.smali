.class public final enum Lcom/adobe/sync/SyncController$DCXRefreshMode;
.super Ljava/lang/Enum;
.source "SyncController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/sync/SyncController$DCXRefreshMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/sync/SyncController$DCXRefreshMode;

.field public static final enum DCX_COMPOSITE_DELETED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

.field public static final enum DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

.field public static final enum DCX_PUSH_ACCEPTED:Lcom/adobe/sync/SyncController$DCXRefreshMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;

    const-string/jumbo v1, "DCX_PUSH_ACCEPTED"

    invoke-direct {v0, v1, v2}, Lcom/adobe/sync/SyncController$DCXRefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PUSH_ACCEPTED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    new-instance v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;

    const-string/jumbo v1, "DCX_PULL_RESOLVED"

    invoke-direct {v0, v1, v3}, Lcom/adobe/sync/SyncController$DCXRefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    new-instance v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;

    const-string/jumbo v1, "DCX_COMPOSITE_DELETED"

    invoke-direct {v0, v1, v4}, Lcom/adobe/sync/SyncController$DCXRefreshMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_COMPOSITE_DELETED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/sync/SyncController$DCXRefreshMode;

    sget-object v1, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PUSH_ACCEPTED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_PULL_RESOLVED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/sync/SyncController$DCXRefreshMode;->DCX_COMPOSITE_DELETED:Lcom/adobe/sync/SyncController$DCXRefreshMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;->$VALUES:[Lcom/adobe/sync/SyncController$DCXRefreshMode;

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
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/sync/SyncController$DCXRefreshMode;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/sync/SyncController$DCXRefreshMode;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/adobe/sync/SyncController$DCXRefreshMode;->$VALUES:[Lcom/adobe/sync/SyncController$DCXRefreshMode;

    invoke-virtual {v0}, [Lcom/adobe/sync/SyncController$DCXRefreshMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/sync/SyncController$DCXRefreshMode;

    return-object v0
.end method

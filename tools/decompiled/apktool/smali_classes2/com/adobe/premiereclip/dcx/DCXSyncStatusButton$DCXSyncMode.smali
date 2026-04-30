.class final enum Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;
.super Ljava/lang/Enum;
.source "DCXSyncStatusButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

.field public static final enum DCXSyncModeActive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

.field public static final enum DCXSyncModeError:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

.field public static final enum DCXSyncModeErrorWifiOff:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

.field public static final enum DCXSyncModeInactive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    const-string/jumbo v1, "DCXSyncModeInactive"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeInactive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    const-string/jumbo v1, "DCXSyncModeActive"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeActive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    const-string/jumbo v1, "DCXSyncModeError"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeError:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    new-instance v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    const-string/jumbo v1, "DCXSyncModeErrorWifiOff"

    invoke-direct {v0, v1, v5}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeErrorWifiOff:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeInactive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeActive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeError:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeErrorWifiOff:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->$VALUES:[Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->$VALUES:[Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    return-object v0
.end method

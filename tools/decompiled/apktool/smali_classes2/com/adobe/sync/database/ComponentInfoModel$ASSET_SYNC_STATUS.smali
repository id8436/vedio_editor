.class public final enum Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;
.super Ljava/lang/Enum;
.source "ComponentInfoModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

.field public static final enum DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

.field public static final enum PENDING:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->PENDING:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    .line 14
    new-instance v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    const-string/jumbo v1, "DONE"

    invoke-direct {v0, v1, v3}, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    sget-object v1, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->PENDING:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->DONE:Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->$VALUES:[Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->$VALUES:[Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    invoke-virtual {v0}, [Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/sync/database/ComponentInfoModel$ASSET_SYNC_STATUS;

    return-object v0
.end method

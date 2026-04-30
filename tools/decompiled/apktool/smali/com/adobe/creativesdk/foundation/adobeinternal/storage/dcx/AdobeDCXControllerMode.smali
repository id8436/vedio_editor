.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;
.super Ljava/lang/Enum;
.source "AdobeDCXControllerMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

.field public static final enum AdobeDCXControllerPaused:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

.field public static final enum AdobeDCXControllerStopped:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

.field public static final enum AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    const-string/jumbo v1, "AdobeDCXControllerSyncing"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    .line 12
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    const-string/jumbo v1, "AdobeDCXControllerPaused"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerPaused:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    .line 15
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    const-string/jumbo v1, "AdobeDCXControllerStopped"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerStopped:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerSyncing:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerPaused:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->AdobeDCXControllerStopped:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->_val:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXControllerMode;->_val:I

    return v0
.end method

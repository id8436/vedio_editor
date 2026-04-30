.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;
.super Ljava/lang/Enum;
.source "AdobeDCXSyncPhase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

.field public static final enum AdobeDCXSyncPhaseAccept:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

.field public static final enum AdobeDCXSyncPhaseDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

.field public static final enum AdobeDCXSyncPhaseError:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

.field public static final enum AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

.field public static final enum AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

.field public static final enum AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

.field public static final enum AdobeDCXSyncPhaseResolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    const-string/jumbo v1, "AdobeDCXSyncPhaseInSync"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    const-string/jumbo v1, "AdobeDCXSyncPhasePush"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 29
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    const-string/jumbo v1, "AdobeDCXSyncPhasePull"

    invoke-direct {v0, v1, v6, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 33
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    const-string/jumbo v1, "AdobeDCXSyncPhaseAccept"

    invoke-direct {v0, v1, v7, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseAccept:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 37
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    const-string/jumbo v1, "AdobeDCXSyncPhaseResolve"

    invoke-direct {v0, v1, v8, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseResolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 41
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    const-string/jumbo v1, "AdobeDCXSyncPhaseDelete"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 44
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    const-string/jumbo v1, "AdobeDCXSyncPhaseError"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseError:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseInSync:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePush:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhasePull:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseAccept:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseResolve:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseDelete:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->AdobeDCXSyncPhaseError:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->_val:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;->_val:I

    return v0
.end method

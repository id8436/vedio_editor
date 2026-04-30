.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;
.super Ljava/lang/Object;
.source "AdobeDCXController.java"


# instance fields
.field activeRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

.field bytesConsumedByComposite:J

.field compositeId:Ljava/lang/String;

.field hasPendingPull:Z

.field hasPendingPush:Z

.field href:Ljava/lang/String;

.field isPaused:Z

.field isPullingComponents:Z

.field lastError:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field phase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

.field syncDelayTimer:Ljava/util/Timer;

.field waitingForCancel:Z

.field waitingForDelegate:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;
.super Ljava/lang/Object;
.source "AdobeDCXSyncGroupMonitor.java"


# instance fields
.field public pendingEtagReset:Z

.field public pendingRequestCount:I

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 645
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;->pendingRequestCount:I

    .line 647
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$1ExternalWrapper;->pendingEtagReset:Z

    return-void
.end method

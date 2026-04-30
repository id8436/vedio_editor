.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$5;
.super Ljava/lang/Object;
.source "AdobeDCXSyncGroupMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor$5;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncGroupMonitor;Z)V

    .line 440
    return-void
.end method

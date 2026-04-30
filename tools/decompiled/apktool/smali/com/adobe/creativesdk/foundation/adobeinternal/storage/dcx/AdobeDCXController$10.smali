.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;
.super Ljava/lang/Object;
.source "AdobeDCXController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field final synthetic val$compositeID:Ljava/lang/String;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

.field final synthetic val$isPaused:Z

.field final synthetic val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

.field final synthetic val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

.field final synthetic val$syncPhase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;Z)V
    .locals 0

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$compositeID:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$syncPhase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iput-boolean p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$isPaused:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1589
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "CSDK::Release::DCX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calling controllerRequestsClientHandleError for compositeID= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$compositeID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$strongDelegate:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$self:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$error:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$compositeID:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$syncPhase:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;

    iget-boolean v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController$10;->val$isPaused:Z

    invoke-interface/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXControllerDelegate;->controllerRequestsClientHandleError(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXController;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXSyncPhase;Z)V

    .line 1591
    return-void
.end method

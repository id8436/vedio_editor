.class final Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;
.super Ljava/lang/Object;
.source "Adobe360Message.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x1

    const/4 v1, 0x0

    .line 1004
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v0, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateTotalUnitCount(J)V

    .line 1008
    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-direct {v0, v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/adobe360/Adobe360MessageInternal;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;ZLcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$progress:Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;

    invoke-virtual {v2, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->updateCompletedUnitCount(J)V

    .line 1016
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;)V

    .line 1028
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message$2;->val$handler:Landroid/os/Handler;

    invoke-static {v2, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/adobe360/Adobe360Message;->access$200(Ljava/lang/Runnable;Landroid/os/Handler;)V

    .line 1029
    return-void

    .line 1009
    :catch_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1010
    goto :goto_0
.end method

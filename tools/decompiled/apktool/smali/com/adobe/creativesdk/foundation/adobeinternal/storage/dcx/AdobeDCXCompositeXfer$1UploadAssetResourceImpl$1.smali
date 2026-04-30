.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$resourceContentLength:J

.field final synthetic val$savedComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;JLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iput-wide p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->val$resourceContentLength:J

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->val$savedComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 1075
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeDCXCompositeXfer"

    const-string/jumbo v2, "session.uploadComponent completed inside pushComponentsInManifest"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const/16 v0, 0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1078
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v2, "AdobeNetworkHTTPStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "AdobeNetworkHTTPStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1082
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x199

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x19c

    if-ne v0, v1, :cond_5

    .line 1088
    :cond_1
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->val$resourceContentLength:J

    const-wide/16 v2, 0xa

    add-long v8, v0, v2

    .line 1089
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 1090
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

    .line 1091
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v0, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setCompletedUnitCount(J)V

    .line 1095
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$session:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->val$savedComponent:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->val$filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-boolean v4, v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$componentIsNew:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1$1;

    invoke-direct {v5, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;)V

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeSessionProtocol;->uploadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXComponentRequestCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_2

    .line 1110
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1$2;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->addCancellationHandler(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;)V

    .line 1123
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1, v0, v8, v9}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->addComponentRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;J)V

    .line 1132
    :cond_2
    :goto_2
    return-void

    .line 1093
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$compRequest:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->getTotalUnitCount()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;->setTotalUnitCount(J)V

    goto :goto_0

    .line 1095
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 1127
    :cond_5
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-boolean v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$isUnmanagedComponent:Z

    if-eqz v0, :cond_6

    .line 1128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$fComponentManagerWrapper:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v2, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v3, v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$UCID:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->val$filePath:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/ComponentManagerWrapper;->didUploadComponent(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 1130
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$tracker:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl$1;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;

    iget-object v2, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$1UploadAssetResourceImpl;->val$composite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/PushComponentTracker;->componentWasAdded(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    goto :goto_2
.end method

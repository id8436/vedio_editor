.class Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;
.super Landroid/os/Handler;
.source "StreamingDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    .line 380
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 381
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 387
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 395
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :catch_0
    move-exception v0

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v1, v1, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->postResponseHandler:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 401
    return-void

    .line 389
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v1, v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v2, v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaDrm$ProvisionRequest;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Landroid/media/MediaDrm$ProvisionRequest;)[B

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v1, v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->callback:Lcom/google/android/exoplayer/drm/MediaDrmCallback;

    iget-object v0, p0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$PostRequestHandler;->this$0:Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;

    iget-object v2, v0, Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager;->uuid:Ljava/util/UUID;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaDrm$KeyRequest;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Landroid/media/MediaDrm$KeyRequest;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

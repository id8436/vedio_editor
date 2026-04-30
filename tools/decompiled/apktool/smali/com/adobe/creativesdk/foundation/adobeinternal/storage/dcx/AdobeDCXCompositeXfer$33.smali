.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;


# instance fields
.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$stageDirPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 4374
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;->val$stageDirPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 4380
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;->val$stageDirPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->removeCompositeFromCache(Ljava/lang/String;)V

    .line 4381
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 4388
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 4389
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$33;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4393
    :goto_0
    return-void

    .line 4391
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

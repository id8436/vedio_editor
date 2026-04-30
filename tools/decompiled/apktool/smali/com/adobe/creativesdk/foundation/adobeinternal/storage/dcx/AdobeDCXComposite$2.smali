.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;
.super Ljava/lang/Object;
.source "AdobeDCXComposite.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 2491
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2495
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->revertCurrentBranch()Z

    move-result v0

    .line 2496
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v1, :cond_0

    .line 2497
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2502
    :cond_0
    :goto_0
    return-void

    .line 2498
    :catch_0
    move-exception v0

    .line 2499
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v1, :cond_0

    .line 2500
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite$2;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

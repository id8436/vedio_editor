.class final Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$32;
.super Ljava/lang/Object;
.source "AdobeDCXCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;

.field final synthetic val$error:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V
    .locals 0

    .prologue
    .line 4351
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$32;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$32;->val$error:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$32;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;

    if-eqz v0, :cond_0

    .line 4355
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$32;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeXfer$32;->val$error:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXRemixCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 4356
    :cond_0
    return-void
.end method

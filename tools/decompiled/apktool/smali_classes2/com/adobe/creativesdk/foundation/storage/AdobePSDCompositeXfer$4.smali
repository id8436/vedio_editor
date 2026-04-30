.class final Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$4;
.super Ljava/lang/Object;
.source "AdobePSDCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;

.field final synthetic val$exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$4;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$4;->val$exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$4;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$4;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$4;->val$exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPushCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 314
    :cond_0
    return-void
.end method

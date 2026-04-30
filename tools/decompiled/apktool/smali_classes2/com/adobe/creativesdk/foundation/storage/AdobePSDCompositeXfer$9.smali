.class final Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$9;
.super Ljava/lang/Object;
.source "AdobePSDCompositeXfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

.field final synthetic val$exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$9;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$9;->val$exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$9;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$9;->val$completionHandler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePSDCompositeXfer$9;->val$exception:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/psd/IAdobePSDPullCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 708
    :cond_0
    return-void
.end method

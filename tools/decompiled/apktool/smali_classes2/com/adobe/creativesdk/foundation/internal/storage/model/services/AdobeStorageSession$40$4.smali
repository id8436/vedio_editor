.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40$4;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40;

.field final synthetic val$finalException:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 0

    .prologue
    .line 3446
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40$4;->val$finalException:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3449
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40$4;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40;->val$handler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeRequestCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$40$4;->val$finalException:Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXCompositeRequestCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3450
    return-void
.end method

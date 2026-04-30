.class Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$44;
.super Ljava/lang/Object;
.source "AdobeStorageSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field final synthetic val$dcxException:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

.field final synthetic val$handler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;)V
    .locals 0

    .prologue
    .line 3672
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$44;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$44;->val$handler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$44;->val$dcxException:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3675
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$44;->val$handler:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$44;->val$dcxException:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXException;

    invoke-interface {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXManifestRequestCompletionHandler;->onCompletion(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    .line 3676
    return-void
.end method

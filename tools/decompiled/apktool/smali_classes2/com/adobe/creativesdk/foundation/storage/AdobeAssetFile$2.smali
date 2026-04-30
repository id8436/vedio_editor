.class Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;
.super Ljava/lang/Object;
.source "AdobeAssetFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageResourceRequestCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$callBackRequiredForHandler:Landroid/os/Handler;

.field final synthetic val$localFileURL:Ljava/net/URL;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/net/URL;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$localFileURL:Ljava/net/URL;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$type:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 6

    .prologue
    .line 223
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$localFileURL:Ljava/net/URL;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$type:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/net/URL;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    .line 224
    return-void

    .line 223
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 6

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$localFileURL:Ljava/net/URL;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$type:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$callBackRequiredForHandler:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/net/URL;Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile$2;->val$updateDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 229
    return-void
.end method

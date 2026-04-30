.class final Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;
.super Ljava/lang/Object;
.source "AdobeAssetFileInternal.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/IAdobeStorageResourceRequestCompletionHandler;


# instance fields
.field final synthetic val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

.field final synthetic val$localFilePath:Ljava/lang/String;

.field final synthetic val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

.field final synthetic val$session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$validName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$localFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$validName:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;)V
    .locals 6

    .prologue
    .line 318
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    const-string/jumbo v1, "If-Match"

    const-string/jumbo v2, "*"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$localFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$validName:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->access$000(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 320
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V
    .locals 6

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;->getHttpStatusCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$localFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$validName:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$session:Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->access$000(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->val$createDelegate:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 315
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal$4;->onError(Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

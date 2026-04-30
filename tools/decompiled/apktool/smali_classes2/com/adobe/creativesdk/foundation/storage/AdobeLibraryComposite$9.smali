.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;
.super Ljava/lang/Object;
.source "AdobeLibraryComposite.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$elementRenditions:Lorg/json/JSONObject;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$representationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lorg/json/JSONObject;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$elementRenditions:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$representationId:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$callbackHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 5

    .prologue
    .line 1905
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getKeyForResponse()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 1907
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/library/AdobeLibraryXferUtils;->isUnrecoverableError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    const-string/jumbo v0, "ERROR"

    .line 1915
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$elementRenditions:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$representationId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1916
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->writeLibraryPlist()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1921
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_1

    .line 1922
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->val$callbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorDownloadingRepresentationAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-direct {v3, v4}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;-><init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;)V

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 1923
    :cond_1
    return-void

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1902
    check-cast p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$9;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    return-void
.end method

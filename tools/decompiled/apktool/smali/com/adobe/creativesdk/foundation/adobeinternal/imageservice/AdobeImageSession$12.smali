.class Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;
.super Ljava/lang/Object;
.source "AdobeImageSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

.field final synthetic val$bodyStreamFilePath:Ljava/lang/String;

.field final synthetic val$operation:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

.field final synthetic val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

.field final synthetic val$responseCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

.field final synthetic val$responseFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;)V
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$operation:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$bodyStreamFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    .line 1263
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$bodyStreamFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->deleteTempFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    .line 1266
    return-void
.end method

.method public onSuccess(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 5

    .prologue
    .line 1237
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 1238
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSuccess : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_1

    .line 1243
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$operation:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    invoke-static {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;->imageOperationWithImageServiceResponseFile(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;

    move-result-object v0

    .line 1246
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$bodyStreamFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->deleteTempFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$request:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageOperation;)V
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    :goto_0
    return-void

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    :goto_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$bodyStreamFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->deleteTempFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession;->errorFromResponse(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/AdobeImageSession$12;->val$responseCallback:Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeImageRequestCompletionHandler;->onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V

    goto :goto_0

    .line 1250
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

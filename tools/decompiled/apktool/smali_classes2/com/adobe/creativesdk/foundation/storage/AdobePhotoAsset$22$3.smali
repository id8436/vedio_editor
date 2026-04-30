.class Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;
.super Ljava/lang/Object;
.source "AdobePhotoAsset.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;)V
    .locals 0

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->handleCommonUploadCompletionBookKeeping()V

    .line 1057
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    if-eqz v0, :cond_1

    .line 1058
    check-cast p1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;

    .line 1059
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getErrorCode()Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;->AdobeNetworkErrorCancelled:Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException$AdobeNetworkErrorCode;

    if-ne v0, v1, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$downloadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    .line 1071
    :goto_0
    return-void

    .line 1062
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to download data for photo asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1065
    :cond_1
    instance-of v0, p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    if-eqz v0, :cond_2

    .line 1066
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->val$downloadRenditionCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoException;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0

    .line 1068
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to download data for photo asset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;

    iget-object v3, v3, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;

    invoke-static {v3}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1050
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoAsset$22$3;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.class final Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;
.super Ljava/lang/Object;
.source "AdobeAssetPSDFile.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

.field final synthetic val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;)V
    .locals 0

    .prologue
    .line 981
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCancellation()V

    .line 1000
    :cond_0
    return-void
.end method

.method public onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;)V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$file:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onCompletion(Ljava/lang/Object;)V

    .line 988
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 981
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->onCompletion(Lcom/adobe/creativesdk/foundation/storage/AdobePSDComposite;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onError(Ljava/lang/Object;)V

    .line 994
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 981
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetPSDFile$9;->val$psdFileCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;->onProgress(D)V

    .line 1006
    :cond_0
    return-void
.end method

.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;
.super Ljava/lang/Object;
.source "AdobeLibraryComposite.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<",
        "Ljava/lang/String;",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 0

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$callbackHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 0

    .prologue
    .line 1790
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1786
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->onCompletion(Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    if-eqz v0, :cond_0

    .line 1795
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$callbackHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->access$000(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Landroid/os/Handler;Ljava/lang/String;)V

    .line 1797
    :cond_0
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1801
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    if-eqz v0, :cond_0

    .line 1802
    sget-object v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;->AdobeLibraryErrorDownloadingRepresentationAsset:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;

    invoke-static {v0, p1, v1, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryUtils;->createLibraryError(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryErrorCode;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;

    move-result-object v0

    .line 1803
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->this$0:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->val$callbackHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->access$100(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryException;)V

    .line 1805
    :cond_0
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1786
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite$7;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 1810
    return-void
.end method

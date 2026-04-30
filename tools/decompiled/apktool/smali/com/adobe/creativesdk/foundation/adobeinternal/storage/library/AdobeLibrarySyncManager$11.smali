.class Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;
.super Ljava/lang/Object;
.source "AdobeLibrarySyncManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXResourceRequestCompletionHandler;


# instance fields
.field hasChanged:Z

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

.field final synthetic val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

.field final synthetic val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 1

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->this$0:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->hasChanged:Z

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 2

    .prologue
    .line 1242
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 1243
    iget-object v1, p1, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeStorageResourceItem;->etag:Ljava/lang/String;

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->val$library:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibraryCompositeInternal;->getDcxComposite()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComposite;->getCurrent()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXCompositeMutableBranch;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->hasChanged:Z

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->hasChanged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 1253
    :goto_0
    return-void

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeLibrarySyncManager$11;->val$errorCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;

    invoke-interface {v0, p2}, Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

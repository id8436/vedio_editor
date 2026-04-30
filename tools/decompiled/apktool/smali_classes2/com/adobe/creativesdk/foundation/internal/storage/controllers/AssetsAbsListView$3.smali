.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;
.super Ljava/lang/Object;
.source "AssetsAbsListView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<[B",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;

.field final synthetic val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->onCompletion([B)V

    return-void
.end method

.method public onCompletion([B)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;)V

    .line 230
    const/4 v1, 0x1

    new-array v1, v1, [[B

    .line 231
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 232
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 233
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Landroid/graphics/Bitmap;Z)V

    .line 192
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

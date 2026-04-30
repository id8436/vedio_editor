.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;
.super Ljava/lang/Object;
.source "AssetsRecyclerView.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

.field final synthetic val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;

.field final synthetic val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void
.end method

.method public onCompletion(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Landroid/graphics/Bitmap;Z)V

    .line 356
    return-void
.end method

.method public bridge synthetic onCompletion(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 306
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->onCompletion(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$IThumbnailLoadCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Landroid/graphics/Bitmap;Z)V

    .line 312
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 306
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsRecyclerView$4;->onError(Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V

    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

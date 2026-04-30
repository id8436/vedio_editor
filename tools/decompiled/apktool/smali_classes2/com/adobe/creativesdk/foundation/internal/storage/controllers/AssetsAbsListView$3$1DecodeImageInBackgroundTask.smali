.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "AssetsAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([[B)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    aget-object v0, p1, v2

    .line 211
    if-eqz v0, :cond_0

    .line 212
    array-length v1, v0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;->doInBackground([[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    invoke-interface {v0, v1, p1, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Landroid/graphics/Bitmap;Z)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$completionHandler:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3;->val$item:Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$IThumbnailLoadCompletionHandler;->onComplete(Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetData;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 206
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/AssetsAbsListView$3$1DecodeImageInBackgroundTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

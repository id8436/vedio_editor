.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;
.super Landroid/os/AsyncTask;
.source "AdobeUploadThumbnailMgr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field resultBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;

.field final synthetic val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 204
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->resultBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 209
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 212
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageAssetFileUtils;->THUMBNAIL_SIZED_RENDITION:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr;->decodeSampledBitmapFromStream(Ljava/net/URL;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->resultBitmap:Landroid/graphics/Bitmap;

    .line 214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->resultBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 219
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->resultBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->doInBackground([Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->val$completionCallback:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->resultBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 233
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 204
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadThumbnailMgr$2GetRenditionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

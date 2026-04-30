.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "ReusableImageBitmapWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final _dataKey:Ljava/lang/String;

.field private final _dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

.field private final _onCompleteCallBack:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 259
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_onCompleteCallBack:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    .line 260
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dataKey:Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    .line 262
    return-void
.end method

.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 265
    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_onCompleteCallBack:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    .line 266
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dataKey:Ljava/lang/String;

    .line 267
    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    .line 268
    return-void
.end method

.method private removeTaskFromMap()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dataKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;

    .line 272
    if-ne v0, p0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dataKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 279
    aget-object v0, p1, v4

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    .line 281
    aget-object v0, p1, v4

    check-cast v0, [B

    check-cast v0, [B

    .line 282
    if-eqz v0, :cond_6

    .line 284
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 344
    :goto_0
    return-object v0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    .line 303
    :goto_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 304
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 305
    array-length v3, v0

    invoke-static {v0, v4, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 307
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    div-float v1, v3, v1

    float-to-int v1, v1

    .line 308
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 309
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 311
    array-length v1, v0

    invoke-static {v0, v4, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    goto :goto_1

    .line 314
    :cond_2
    array-length v1, v0

    invoke-static {v0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_3
    aget-object v0, p1, v4

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 322
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    .line 325
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    if-eqz v1, :cond_5

    .line 327
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v2, v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    .line 328
    :goto_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 329
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 330
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 332
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    div-float v1, v3, v1

    float-to-int v1, v1

    .line 333
    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 334
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 336
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_4
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_dims:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;

    iget v1, v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    goto :goto_2

    .line 339
    :cond_5
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v1

    .line 344
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->removeTaskFromMap()V

    .line 356
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_onCompleteCallBack:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 357
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->onCancelled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->removeTaskFromMap()V

    .line 349
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->_onCompleteCallBack:Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 252
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

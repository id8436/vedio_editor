.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;
.super Ljava/lang/Object;
.source "ReusableImageBitmapWorker.java"


# instance fields
.field private _image2DecodeTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;",
            ">;"
        }
    .end annotation
.end field

.field private mImageByteArrayCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

.field private mImageCacheParams:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mResources:Landroid/content/res/Resources;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->_image2DecodeTaskMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageByteArrayCache:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->_image2DecodeTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static addInBitmapOptions(Landroid/graphics/BitmapFactory$Options;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 89
    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;->getBitmapFromReusableSet(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 97
    :cond_0
    return-void
.end method

.method private createReusableBitmapFromImageData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 227
    return-object v0
.end method

.method private createReusableBitmapFromImageData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    .line 234
    return-object v0
.end method


# virtual methods
.method public addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;)V
    .locals 1

    .prologue
    .line 42
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCacheParams:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    .line 43
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCacheParams:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;->getInstance(Landroid/support/v4/app/FragmentManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache$ImageCacheParams;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    .line 44
    return-void
.end method

.method public cancelImageLoad(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->_image2DecodeTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->_image2DecodeTaskMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;

    .line 246
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->_image2DecodeTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->cancel(Z)Z

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;->clearCache()V

    .line 239
    return-void
.end method

.method public getImageByteDataFromCache(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageByteArrayCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    if-eqz v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method public loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 142
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 170
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->cancelImageLoad(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$2;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->createReusableBitmapFromImageData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->_image2DecodeTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 168
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 169
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loadImageFromFile(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->cancelImageLoad(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$1;

    invoke-direct {v0, p0, p1, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-direct {p0, p1, p3, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->createReusableBitmapFromImageData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->_image2DecodeTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 132
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 133
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loadImageWithBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageCache:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapCache;->addBitmapToCache(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 174
    const/4 v0, 0x1

    return v0
.end method

.method public loadImageWithData(Ljava/lang/String;[BLcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;->onCompletion(Ljava/lang/Object;)V

    .line 221
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->cancelImageLoad(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$3;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;Lcom/adobe/creativesdk/foundation/IAdobeGenericErrorCallback;)V

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->createReusableBitmapFromImageData(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->_image2DecodeTaskMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/4 v1, 0x1

    new-array v1, v1, [[B

    .line 219
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 220
    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker$DecodeImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public saveImageByteDataIntoCache(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/common/ReusableImageBitmapWorker;->mImageByteArrayCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

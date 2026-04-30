.class Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;
.super Lcom/adobe/premiereclip/util/PriorityAsyncTask;
.source "ThumbnailHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adobe/premiereclip/util/PriorityAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

.field private cacheKey:Ljava/lang/String;

.field private clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

.field private frameTimeMs:J

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;JIILcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ">(",
            "Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;",
            "Ljava/lang/String;",
            "JIITT;J)V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p8, p9}, Lcom/adobe/premiereclip/util/PriorityAsyncTask;-><init>(J)V

    .line 102
    iput-object p1, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    .line 103
    iput-object p2, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    .line 104
    iput-wide p3, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->frameTimeMs:J

    .line 105
    iput p5, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->targetWidth:I

    .line 106
    iput p6, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->targetHeight:I

    .line 107
    iput-object p7, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->adapter:Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 119
    :try_start_0
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v1, "Worker thread for thumbnail generation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->clipType:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v2, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->targetWidth:I

    iget v3, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->targetHeight:I

    iget-wide v4, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->frameTimeMs:J

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/util/Utilities;->decodeBitmap(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 129
    :cond_1
    :try_start_1
    const-string/jumbo v0, "ThumbLog"

    const-string/jumbo v1, "Worker thread completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 139
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->access$100()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->access$200()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 141
    const-string/jumbo v0, "ThumbnailHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove cache key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->adapter:Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    iget-object v3, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;->getClipPosition(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->adapter:Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;->onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->adapter:Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;->onFailureImageLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 90
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/adobe/premiereclip/util/ThumbnailHelper;->access$100()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    const-string/jumbo v0, "ThumbnailHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add cache key for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->adapter:Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    iget-object v3, p0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;->getClipPosition(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

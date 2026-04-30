.class Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;
.super Landroid/os/AsyncTask;
.source "ProjectPosterView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private cache:Z

.field private cacheKey:Ljava/lang/String;

.field private posterViewListener:Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;

.field private vh:I

.field private vw:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIZLcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 72
    iput-object p5, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->posterViewListener:Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;

    .line 73
    iput-object p1, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->cacheKey:Ljava/lang/String;

    .line 74
    iput-boolean p4, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->cache:Z

    .line 75
    iput p2, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->vw:I

    .line 76
    iput p3, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->vh:I

    .line 77
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 82
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    iget v2, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->vw:I

    iget v3, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->vh:I

    invoke-static {v1, v2, v3}, Lcom/adobe/premiereclip/util/Utilities;->getScaledAdjustedBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :try_start_1
    const-string/jumbo v0, "ScaledDimensions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 94
    :goto_1
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 92
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    const-string/jumbo v0, "CACHE"

    const-string/jumbo v1, "Setting image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->posterViewListener:Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->posterViewListener:Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;

    iget-object v1, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/adobe/premiereclip/util/ProjectPosterView$PosterViewListener;->onSuccessImageLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 107
    iget-boolean v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->cache:Z

    if-eqz v0, :cond_0

    .line 108
    const-string/jumbo v0, "CACHE"

    const-string/jumbo v1, "Adding image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->cacheKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/ProjectPosterView$WorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

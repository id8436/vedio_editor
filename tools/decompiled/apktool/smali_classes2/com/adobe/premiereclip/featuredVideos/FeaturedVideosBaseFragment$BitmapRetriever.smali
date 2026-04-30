.class Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;
.super Landroid/os/AsyncTask;
.source "FeaturedVideosBaseFragment.java"


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
.field private cacheKey:Ljava/lang/String;

.field private filepath:Ljava/lang/String;

.field private posterFilePreExisted:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

.field private viewHolderRef:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 585
    iput-object p1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->this$0:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 586
    iput-object p2, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->viewHolderRef:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    .line 587
    iput-object p3, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->cacheKey:Ljava/lang/String;

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;->access$300(Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->filepath:Ljava/lang/String;

    .line 589
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->filepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->posterFilePreExisted:Ljava/lang/Boolean;

    .line 591
    return-void
.end method

.method private getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 594
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 595
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 639
    :cond_0
    :goto_0
    return-object v0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->posterFilePreExisted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->filepath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 636
    :goto_1
    if-eqz v0, :cond_0

    .line 637
    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->cacheKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 602
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 604
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 605
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 606
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 608
    const-string/jumbo v6, "Featured Video"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "url connection time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 610
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 612
    const-string/jumbo v0, "Featured Video"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bitmap decode time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 615
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 616
    iget-object v3, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->viewHolderRef:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    iget-object v3, v3, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 617
    iget-object v4, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->viewHolderRef:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 620
    mul-int v5, v0, v4

    mul-int v6, v2, v3

    if-gt v5, v6, :cond_4

    .line 622
    mul-int/2addr v0, v4

    div-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v1, v0, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 628
    :goto_2
    if-eq v1, v0, :cond_3

    .line 629
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    .line 625
    :cond_4
    mul-int/2addr v2, v3

    :try_start_1
    div-int v0, v2, v0

    const/4 v2, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 578
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 659
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->cacheKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 652
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->viewHolderRef:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->viewHolderRef:Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$VideoListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->posterFilePreExisted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->filepath:Ljava/lang/String;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-static {p1, v0, v1, v2}, Lcom/adobe/premiereclip/util/FileOps;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;I)V

    .line 658
    :cond_2
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->logStats()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 578
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/featuredVideos/FeaturedVideosBaseFragment$BitmapRetriever;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

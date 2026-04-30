.class public abstract Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;
.super Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;
.source "RemoteMediaSource.java"


# static fields
.field private static final initial_cores:I = 0x3

.field private static final keep_alive_time:J = 0x1L

.field private static final max_cores:I = 0x4


# instance fields
.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/adobe/premiereclip/mediabrowser/source/GallerySource;-><init>()V

    .line 33
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    .line 34
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    return-void
.end method

.method protected static getAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 131
    :sswitch_0
    const-string/jumbo v1, "google_photos"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "google_drive"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :pswitch_0
    const-string/jumbo v0, "com.google"

    goto :goto_1

    .line 135
    :pswitch_1
    const-string/jumbo v0, "com.google"

    goto :goto_1

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b54f3fc -> :sswitch_1
        0x14a66547 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public fetchAlbum(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method protected abstract fetchAlbumInternal(Lcom/adobe/premiereclip/mediabrowser/Bucket;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$BucketLoadListener;Landroid/os/Handler;)V
.end method

.method public fetchData(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method protected abstract fetchDataInternal(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/GallerySource$GalleryDataListener;Landroid/os/Handler;)V
.end method

.method public fetchFiles(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$4;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;->offer(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method protected abstract fetchFilesInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$MediaFileListener;)V
.end method

.method public fetchThumbnail(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            "J",
            "Landroid/widget/ImageView;",
            "IITT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getParentBucket()Lcom/adobe/premiereclip/mediabrowser/Bucket;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->isCancel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {p2}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    .line 74
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v12, p0, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;->stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    new-instance v2, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource;Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JIILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V

    invoke-virtual {v12, v2}, Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract fetchThumbnailInternal(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Lcom/adobe/premiereclip/mediabrowser/MediaModel;JIILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            "JIITT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract login(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$LoginListener;)V
.end method

.method public abstract logout(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/RemoteMediaSource$LogoutListener;)V
.end method

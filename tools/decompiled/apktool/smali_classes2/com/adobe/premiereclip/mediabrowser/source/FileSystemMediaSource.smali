.class public abstract Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;
.super Ljava/lang/Object;
.source "FileSystemMediaSource.java"


# static fields
.field private static final initial_cores:I = 0x3

.field private static final keep_alive_time:J = 0x1L

.field private static final max_cores:I = 0x4


# instance fields
.field protected cancel:Z

.field private mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    invoke-direct {v0}, Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;-><init>()V

    iput-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    .line 36
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->cancel:Z

    .line 43
    return-void
.end method

.method protected static getAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 111
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 107
    :pswitch_0
    const-string/jumbo v1, "google_drive"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :pswitch_1
    const-string/jumbo v0, "com.google"

    goto :goto_1

    .line 107
    :pswitch_data_0
    .packed-switch -0x6b54f3fc
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelDataFetch()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->cancel:Z

    .line 47
    return-void
.end method

.method public getAsset(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$2;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;->offer(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method protected abstract getAssetInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$AssetLoadListener;)V
.end method

.method public getChildren(Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V
    .locals 7

    .prologue
    .line 50
    iget-object v6, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$1;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method protected abstract getChildrenInternal(Landroid/app/Activity;Lcom/adobe/premiereclip/mediabrowser/Bucket;Landroid/os/Handler;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$FolderLoadListener;)V
.end method

.method public getThumbnail(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Landroid/widget/ImageView;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            "Landroid/widget/ImageView;",
            "TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;->stack:Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;

    new-instance v1, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$3;-><init>(Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource;Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediabrowser/LinkedBlockingStack;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected abstract getThumbnailInternal(Lcom/adobe/premiereclip/mediabrowser/MediaModel;Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            "TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract login(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$LoginListener;)V
.end method

.method public abstract logout(Landroid/content/Context;Lcom/adobe/premiereclip/mediabrowser/source/FileSystemMediaSource$LogoutListener;)V
.end method

.class public Lcom/adobe/premiereclip/util/ThumbnailHelper;
.super Ljava/lang/Object;
.source "ThumbnailHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailHelper"

.field private static currentTasksCacheKey:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static workerTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/ThumbnailHelper;->currentTasksCacheKey:Ljava/util/HashSet;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/ThumbnailHelper;->workerTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/adobe/premiereclip/util/ThumbnailHelper;->currentTasksCacheKey:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/adobe/premiereclip/util/ThumbnailHelper;->workerTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public static cancelAllUnexecutedTasks()V
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/adobe/premiereclip/util/ThumbnailHelper;->workerTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->cancel(Z)Z

    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    sget-object v2, Lcom/adobe/premiereclip/util/ThumbnailHelper;->workerTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 76
    sget-object v2, Lcom/adobe/premiereclip/util/ThumbnailHelper;->currentTasksCacheKey:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->access$000(Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/util/Utilities;->THUMBNAIL_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    .line 80
    return-void
.end method

.method public static load(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;Ljava/lang/String;JLandroid/widget/ImageView;IILcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;",
            ":",
            "Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;",
            ">(",
            "Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Landroid/widget/ImageView;",
            "IITT;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    invoke-virtual/range {p5 .. p5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 46
    const-string/jumbo v3, "ThumbnailHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bitmap drawable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v2, :cond_1

    .line 48
    :cond_0
    const-string/jumbo v1, "ThumbnailHelper"

    const-string/jumbo v3, "IGI"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/high16 v1, -0x1000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 50
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->logStats()V

    .line 69
    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    sget-object v1, Lcom/adobe/premiereclip/util/ThumbnailHelper;->currentTasksCacheKey:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    const-string/jumbo v1, "ThumbnailHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "return as cache key present in current tasks with path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p8, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    .line 57
    move-object/from16 v0, p8

    invoke-interface {v0, p1}, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;->getClipPosition(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_4
    const-string/jumbo v1, "ThumbnailHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Creating worker task for thumbnail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-interface/range {p8 .. p8}, Lcom/adobe/premiereclip/util/Utilities$IClipScrollAdapter;->isProcessing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    new-instance v1, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;

    move-object/from16 v8, p8

    check-cast v8, Lcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v10}, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;-><init>(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;JIILcom/adobe/premiereclip/util/Utilities$ThumbnailLoadListener;J)V

    .line 65
    sget-object v2, Lcom/adobe/premiereclip/util/ThumbnailHelper;->workerTasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v2, Lcom/adobe/premiereclip/util/Utilities;->THUMBNAIL_THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/adobe/premiereclip/util/ThumbnailHelper$WorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    goto/16 :goto_0
.end method

.method public static resetAllKeys()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/adobe/premiereclip/util/ThumbnailHelper;->currentTasksCacheKey:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 88
    return-void
.end method

.method public static resetKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/adobe/premiereclip/util/ThumbnailHelper;->currentTasksCacheKey:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

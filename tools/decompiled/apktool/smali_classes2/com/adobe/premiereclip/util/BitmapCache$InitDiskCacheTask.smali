.class Lcom/adobe/premiereclip/util/BitmapCache$InitDiskCacheTask;
.super Landroid/os/AsyncTask;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/BitmapCache$InitDiskCacheTask;->doInBackground([Ljava/io/File;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/Void;
    .locals 12

    .prologue
    const-wide/32 v10, 0x500000

    const/4 v8, 0x0

    .line 73
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x3200000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 76
    const-string/jumbo v4, "DISK_CACHE_SIZE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0x500000

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    cmp-long v4, v2, v10

    if-ltz v4, :cond_1

    .line 79
    const/16 v4, 0x524

    :try_start_1
    invoke-static {v0, v4, v2, v3}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->open(Ljava/io/File;IJ)Lcom/adobe/premiereclip/util/SimpleDiskCache;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->access$102(Lcom/adobe/premiereclip/util/SimpleDiskCache;)Lcom/adobe/premiereclip/util/SimpleDiskCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$100()Lcom/adobe/premiereclip/util/SimpleDiskCache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->access$202(Z)Z

    .line 91
    :cond_0
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->access$302(Z)Z

    .line 92
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit v1

    .line 94
    return-object v8

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/adobe/premiereclip/util/BitmapCache;->access$102(Lcom/adobe/premiereclip/util/SimpleDiskCache;)Lcom/adobe/premiereclip/util/SimpleDiskCache;

    .line 82
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 88
    :cond_1
    :try_start_3
    const-string/jumbo v0, "DISK_CACHE"

    const-string/jumbo v2, "Disk cache not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/BitmapCache;->access$202(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

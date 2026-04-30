.class Lcom/adobe/premiereclip/util/BitmapCache$ClearDiskCacheTask;
.super Landroid/os/AsyncTask;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/BitmapCache$ClearDiskCacheTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 181
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$300()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :try_start_1
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$000()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 188
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$100()Lcom/adobe/premiereclip/util/SimpleDiskCache;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    :try_start_4
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->access$100()Lcom/adobe/premiereclip/util/SimpleDiskCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->clear()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    :cond_1
    :goto_1
    :try_start_5
    monitor-exit v1

    .line 196
    const/4 v0, 0x0

    return-object v0

    .line 191
    :catch_1
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

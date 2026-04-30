.class public Lcom/adobe/premiereclip/util/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# static fields
.field private static final IMAGE_QUALITY:I = 0x55

.field private static final MAX_DISK_CACHE_SIZE:J = 0x3200000L

.field private static final MIN_DISK_CACHE_SIZE:J = 0x500000L

.field private static final TAG:Ljava/lang/String; = "BitmapCache"

.field private static final VERSION_CODE:I = 0x524

.field private static cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dirty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

.field private static diskHitCount:I

.field private static diskMissCount:I

.field private static isInit:Z

.field private static final mDiskCacheLock:Ljava/lang/Object;

.field private static mDiskCacheStarting:Z

.field private static mIsDiskCacheAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    sput-boolean v1, Lcom/adobe/premiereclip/util/BitmapCache;->isInit:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 53
    sput-boolean v2, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheStarting:Z

    .line 54
    sput-boolean v2, Lcom/adobe/premiereclip/util/BitmapCache;->mIsDiskCacheAvailable:Z

    .line 55
    sput v1, Lcom/adobe/premiereclip/util/BitmapCache;->diskHitCount:I

    sput v1, Lcom/adobe/premiereclip/util/BitmapCache;->diskMissCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/adobe/premiereclip/util/SimpleDiskCache;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    return-object v0
.end method

.method static synthetic access$102(Lcom/adobe/premiereclip/util/SimpleDiskCache;)Lcom/adobe/premiereclip/util/SimpleDiskCache;
    .locals 0

    .prologue
    .line 38
    sput-object p0, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mIsDiskCacheAvailable:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 38
    sput-boolean p0, Lcom/adobe/premiereclip/util/BitmapCache;->mIsDiskCacheAvailable:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheStarting:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .prologue
    .line 38
    sput-boolean p0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheStarting:Z

    return p0
.end method

.method public static addBitmapToDiskCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 142
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-object v2, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :goto_1
    :try_start_0
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 148
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 153
    :cond_2
    :try_start_3
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mIsDiskCacheAvailable:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_4

    .line 154
    const/4 v1, 0x0

    .line 156
    :try_start_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->openStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_3

    .line 159
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x55

    invoke-virtual {p1, v0, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 165
    :cond_3
    if-eqz v1, :cond_4

    .line 167
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 174
    :cond_4
    :goto_2
    :try_start_6
    monitor-exit v2

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 162
    :catch_2
    move-exception v0

    .line 163
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 165
    if-eqz v1, :cond_4

    .line 167
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 168
    :catch_3
    move-exception v0

    .line 169
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 165
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_5

    .line 167
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 172
    :cond_5
    :goto_3
    :try_start_b
    throw v0

    .line 168
    :catch_4
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3
.end method

.method public static addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 132
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {p0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static clearDiskCache()V
    .locals 2

    .prologue
    .line 201
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->isInit:Z

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->init()V

    .line 204
    :cond_0
    new-instance v0, Lcom/adobe/premiereclip/util/BitmapCache$ClearDiskCacheTask;

    invoke-direct {v0}, Lcom/adobe/premiereclip/util/BitmapCache$ClearDiskCacheTask;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/util/BitmapCache$ClearDiskCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 205
    return-void
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->isInit:Z

    if-nez v0, :cond_0

    .line 264
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->init()V

    .line 266
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 267
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    const/4 v0, 0x0

    .line 275
    :cond_1
    :goto_0
    return-object v0

    .line 271
    :cond_2
    invoke-static {p0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    if-nez v0, :cond_1

    .line 273
    invoke-static {p0}, Lcom/adobe/premiereclip/util/BitmapCache;->getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBitmapFromDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 220
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->isInit:Z

    if-nez v0, :cond_0

    .line 221
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->init()V

    .line 223
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 224
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 259
    :goto_0
    return-object v0

    .line 229
    :cond_1
    sget-object v2, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 231
    :goto_1
    :try_start_0
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 233
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 238
    :cond_2
    :try_start_3
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mIsDiskCacheAvailable:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    .line 240
    :try_start_4
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->getBitmap(Ljava/lang/String;)Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 245
    :goto_2
    if-eqz v0, :cond_4

    .line 246
    :try_start_5
    invoke-virtual {v0}, Lcom/adobe/premiereclip/util/SimpleDiskCache$BitmapEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_3

    .line 248
    sget-object v1, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {p0, v0}, Lcom/adobe/premiereclip/util/BitmapCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 251
    :cond_3
    sget v1, Lcom/adobe/premiereclip/util/BitmapCache;->diskHitCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/adobe/premiereclip/util/BitmapCache;->diskHitCount:I

    .line 256
    :goto_3
    monitor-exit v2

    goto :goto_0

    .line 241
    :catch_1
    move-exception v0

    .line 243
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    .line 254
    :cond_4
    sget v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskMissCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskMissCount:I

    move-object v0, v1

    goto :goto_3

    .line 258
    :cond_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    .line 259
    goto :goto_0
.end method

.method public static getBitmapFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->isInit:Z

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->init()V

    .line 212
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 213
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->isInit:Z

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->initializeDiskCache()V

    .line 59
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->initializeMemoryCache()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->isInit:Z

    .line 63
    :cond_0
    return-void
.end method

.method private static initializeDiskCache()V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->getDiskCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/adobe/premiereclip/util/BitmapCache$InitDiskCacheTask;

    invoke-direct {v1}, Lcom/adobe/premiereclip/util/BitmapCache$InitDiskCacheTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/File;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/util/BitmapCache$InitDiskCacheTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    return-void
.end method

.method private static initializeMemoryCache()V
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 104
    div-int/lit8 v0, v0, 0x6

    .line 106
    new-instance v1, Lcom/adobe/premiereclip/util/BitmapCache$1;

    invoke-direct {v1, v0}, Lcom/adobe/premiereclip/util/BitmapCache$1;-><init>(I)V

    sput-object v1, Lcom/adobe/premiereclip/util/BitmapCache;->cache:Landroid/util/LruCache;

    .line 124
    return-void
.end method

.method public static logStats()V
    .locals 4

    .prologue
    .line 321
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mIsDiskCacheAvailable:Z

    if-eqz v0, :cond_0

    .line 322
    const-string/jumbo v0, "BitmapCache Stats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Hit count/Miss count(Disk) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/adobe/premiereclip/util/BitmapCache;->diskHitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/adobe/premiereclip/util/BitmapCache;->diskMissCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string/jumbo v0, "BitmapCache Stats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Used size/Total size(Disk) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->getCache()Lcom/f/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/f/a/a;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->getCache()Lcom/f/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/f/a/a;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    const-string/jumbo v0, "BitmapCache Stats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Hit count/Miss count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/util/BitmapCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->hitCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/util/BitmapCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->missCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string/jumbo v0, "BitmapCache Stats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Used size/Total size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/util/BitmapCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/adobe/premiereclip/util/BitmapCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->maxSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method public static markBitmapDirty(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 279
    if-nez p0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->isInit:Z

    if-nez v0, :cond_2

    .line 283
    invoke-static {}, Lcom/adobe/premiereclip/util/BitmapCache;->init()V

    .line 285
    :cond_2
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->dirty:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-static {p0}, Lcom/adobe/premiereclip/util/BitmapCache;->removeBitmapFromDiskCache(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_3
    invoke-static {p0}, Lcom/adobe/premiereclip/util/BitmapCache;->removeBitmapFromDiskCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeBitmapFromDiskCache(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 299
    sget-object v1, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 302
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 308
    :cond_0
    :try_start_3
    sget-boolean v0, Lcom/adobe/premiereclip/util/BitmapCache;->mIsDiskCacheAvailable:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    sget-object v0, Lcom/adobe/premiereclip/util/BitmapCache;->diskCache:Lcom/adobe/premiereclip/util/SimpleDiskCache;

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/util/SimpleDiskCache;->removeBitmap(Ljava/lang/String;)Z

    move-result v0

    .line 310
    if-nez v0, :cond_1

    .line 311
    const-string/jumbo v0, "DISK_CACHE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to delete file with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v1

    .line 318
    return-void

    .line 314
    :catch_1
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

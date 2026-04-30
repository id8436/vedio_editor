.class public Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;
.super Ljava/lang/Object;
.source "AdobeDCXUtils.java"


# static fields
.field private static CACHE_NAME:Ljava/lang/String;

.field private static final CACHE_REPLACE_TIMER:Ljava/lang/Long;

.field private static cacheConfigured:Z

.field private static eventsCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

.field private static sharedLocalStorageCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageCopyOnWrite;

.field private static sharedLocalStorageDirectories:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageDirectories;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->sharedLocalStorageDirectories:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageDirectories;

    .line 68
    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->sharedLocalStorageCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageCopyOnWrite;

    .line 69
    const-wide/32 v0, 0xea60

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->CACHE_REPLACE_TIMER:Ljava/lang/Long;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->cacheConfigured:Z

    .line 80
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->eventsCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    .line 81
    const-string/jumbo v0, "DCX_ANALYTICS_CACHE"

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->CACHE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->CACHE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->eventsCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    return-object v0
.end method

.method public static areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 351
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 352
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    .line 353
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 354
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static asList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 294
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 295
    if-eqz v3, :cond_0

    .line 296
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    return-object v2
.end method

.method private static configureCache()V
    .locals 7

    .prologue
    .line 369
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLRU:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    .line 371
    :try_start_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->eventsCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->CACHE_NAME:Ljava/lang/String;

    const/16 v3, 0x64

    const-wide/high16 v4, 0x41a0000000000000L    # 1.34217728E8

    invoke-virtual/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->configureCache(Ljava/lang/String;IDLjava/util/EnumSet;)V

    .line 372
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->eventsCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->disableDiskCaching(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->cacheConfigured:Z
    :try_end_0
    .catch Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    const-string/jumbo v1, "cache"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->cacheConfigured:Z

    goto :goto_0
.end method

.method public static convertLocalStorageScheme(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public static convertToUTF8(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 280
    .line 282
    if-eqz p0, :cond_0

    .line 283
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v0

    .line 287
    :goto_1
    return-object v1

    .line 284
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static fRead(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    if-eqz p0, :cond_0

    .line 250
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->lock(Ljava/lang/String;)V

    .line 253
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 254
    invoke-static {v8}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v1

    .line 255
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->unlock(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-object v0

    .line 257
    :cond_1
    :try_start_1
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    :try_start_2
    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v1

    .line 261
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 263
    if-eqz p0, :cond_2

    :try_start_3
    const-string/jumbo v0, "pull.manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "push.manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "manifest.base"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "atomic file readFully fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    const-string/jumbo v0, "csdk_android_dcx"

    const-string/jumbo v1, "dcxutils-fread"

    sget-object v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->CACHE_REPLACE_TIMER:Ljava/lang/Long;

    move-object v3, p0

    move-object v5, p0

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalyticsWithCacheOn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->unlock(Ljava/lang/String;)V

    .line 272
    throw v0
.end method

.method public static fWrite(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    .line 190
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->lock(Ljava/lang/String;)V

    .line 194
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    const-string/jumbo v1, "csdk_android_dcx"

    const-string/jumbo v3, "dcxutils-fwrite"

    const-string/jumbo v4, "mkdirs failed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Directory \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' could not be created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Directory \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\' could not be created"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->unlock(Ljava/lang/String;)V

    .line 240
    throw v0

    .line 203
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_3

    .line 204
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File already exists at path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_2
    :goto_1
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_4

    .line 216
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 217
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 218
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 219
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 221
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 222
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 223
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    :goto_2
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/FileLockManager;->unlock(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 206
    :cond_3
    :try_start_3
    const-string/jumbo v0, "/manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const-string/jumbo v0, "csdk_android_dcx"

    const-string/jumbo v1, "dcxutils-fwrite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "manifest created "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    :try_start_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to create new file at path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    throw v0

    .line 225
    :cond_4
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 226
    const/4 v1, 0x0

    .line 228
    :try_start_5
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 230
    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 231
    :catch_1
    move-exception v0

    .line 232
    :try_start_6
    const-string/jumbo v4, "csdk_android_dcx"

    const-string/jumbo v5, "dcxutils-fwrite"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "atomic file fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Path is a directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 234
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method static find(Ljava/lang/Object;Lorg/json/JSONArray;)I
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 317
    if-eqz p0, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    :goto_1
    return v0

    .line 316
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static getAllKeys(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXComponent;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 326
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_0
    return-object v1
.end method

.method static getAllKeysForCompositeCtrlStateMap(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/CompositeControllerState;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_0
    return-object v1
.end method

.method public static getLongVal(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 346
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static guessLocalStorageSchemeOfCompositeAtPath(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeDirectories:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    return-object v0
.end method

.method static isValidAbsPath(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 135
    if-eqz p0, :cond_0

    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "/manifest"

    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/manifest/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/mimetype"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "/mimetype/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidPath(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v3, 0xffff

    if-le v0, v3, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 104
    array-length v0, v3

    if-lt v0, v2, :cond_0

    .line 108
    const-string/jumbo v0, "^[^\\x00-\\x1F\"\\\\:<>\\x7F]([^\\x00-\\x1F\"\\\\:<>\\x7F]*)"

    .line 109
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 110
    const-string/jumbo v0, "[^\\x00-\\x1F\"*:<>?\\.\\x7F]{1}$"

    .line 111
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    move v0, v1

    .line 114
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_2

    .line 115
    aget-object v6, v3, v0

    .line 116
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xff

    if-gt v7, v8, :cond_0

    .line 119
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 120
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v1, v8}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 121
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 122
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v8, v1, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 123
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 131
    goto :goto_0
.end method

.method public static localStorageClassObjForScheme(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/IAdobeDCXLocalStorageProtocol;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;->AdobeDCXLocalStorageSchemeDirectories:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageScheme;

    if-ne p0, v0, :cond_1

    .line 85
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->sharedLocalStorageDirectories:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageDirectories;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageDirectories;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageDirectories;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->sharedLocalStorageDirectories:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageDirectories;

    .line 88
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->sharedLocalStorageDirectories:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageDirectories;

    .line 94
    :goto_0
    return-object v0

    .line 91
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->sharedLocalStorageCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageCopyOnWrite;

    if-nez v0, :cond_2

    .line 92
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageCopyOnWrite;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageCopyOnWrite;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->sharedLocalStorageCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageCopyOnWrite;

    .line 94
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->sharedLocalStorageCopyOnWrite:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXLocalStorageCopyOnWrite;

    goto :goto_0
.end method

.method public static logAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 383
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.adobe.creativecloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsErrorLogEvent;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsErrorLogEvent;-><init>()V

    .line 390
    const-string/jumbo v1, "event.component"

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsErrorLogEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string/jumbo v1, "event.component.method"

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsErrorLogEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string/jumbo v1, "event.error.desc"

    invoke-virtual {v0, v1, p2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsErrorLogEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v1, "event.error.extra_desc"

    invoke-virtual {v0, v1, p3}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsErrorLogEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsErrorLogEvent;->endAndTrackEvent()V

    goto :goto_0
.end method

.method public static logAnalyticsWithCacheOn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 361
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->cacheConfigured:Z

    if-nez v0, :cond_0

    .line 362
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->configureCache()V

    .line 364
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->logAndCacheAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private static logAndCacheAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 419
    :try_start_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v4

    .line 424
    :goto_0
    new-instance v5, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v14, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->eventsCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-static {v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v15

    sget-object v16, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->CACHE_NAME:Ljava/lang/String;

    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils$1;

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v4 .. v12}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/DCXAnalyticsMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, v15

    move-object/from16 v9, v16

    move-object v10, v4

    move-object v11, v13

    invoke-virtual/range {v5 .. v11}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    .line 460
    return-void

    .line 420
    :catch_0
    move-exception v4

    .line 421
    const/4 v4, 0x0

    move-object v13, v4

    goto :goto_0
.end method

.method public static remove(Ljava/lang/Object;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 303
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->asList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 304
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 306
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 308
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 311
    :cond_0
    return-object v1
.end method

.method public static stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object p1

    .line 152
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static stringByAppendingLastPathComponentAndLastPathComponentIsDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXUtils;->stringByAppendingLastPathComponent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringByAppendingPathExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringByDeletingLastPathComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->getFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringByDeletingPathExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object p0

    .line 167
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 171
    :cond_2
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 172
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

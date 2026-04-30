.class public final Lcom/adobe/utility/AndroidMiscUtils;
.super Ljava/lang/Object;
.source "AndroidMiscUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmss"

.field public static final FILE_NAME:Ljava/lang/String; = "PSM_"

.field public static final IMAGE_TYPE:Ljava/lang/String; = ".jpg"

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static sDeviceCPUInfo:I

.field private static sDeviceMaxHeapMemory:I

.field private static sDeviceTotalMemoryGB:F

.field private static sScreenHeight:I

.field private static sScreenScale:F

.field private static sScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceTotalMemoryGB:F

    .line 81
    sput v1, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceCPUInfo:I

    .line 82
    sput v1, Lcom/adobe/utility/AndroidMiscUtils;->sScreenWidth:I

    .line 83
    sput v1, Lcom/adobe/utility/AndroidMiscUtils;->sScreenHeight:I

    .line 84
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/adobe/utility/AndroidMiscUtils;->sScreenScale:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private static availableBlocks18(Landroid/os/StatFs;)J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private static blockSize18(Landroid/os/StatFs;)J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static checkCameraHardware(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.front"

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static copyBitmapFromMediaStore(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 184
    .line 189
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 190
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/adobe/utility/AndroidMiscUtils;->supportedMime(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const-string/jumbo v2, "download.jpg"

    .line 194
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 195
    const-string/jumbo v5, "image/png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    const-string/jumbo v2, "download.png"

    .line 197
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v3, v0

    move-object v0, v2

    .line 199
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v5, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :try_start_1
    invoke-static {v4, v3, v2}, Lcom/adobe/utility/ImageUtils;->writeBitmapToStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 205
    :goto_1
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 210
    :cond_0
    return-object v0

    .line 205
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 208
    :cond_1
    throw v0

    .line 205
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_2
    move-object v3, v0

    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static copyFileViaStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 301
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 302
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 304
    :cond_0
    return-void
.end method

.method public static downloadImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 240
    .line 242
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 243
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 246
    :try_start_0
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 248
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    .line 249
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 250
    if-eqz v5, :cond_4

    .line 254
    :try_start_1
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 255
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v6, "download.jpg"

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    :try_start_3
    invoke-static {v3, v2}, Lcom/adobe/utility/AndroidMiscUtils;->copyFileViaStreams(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 263
    if-eqz v3, :cond_0

    .line 264
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_0
    if-eqz v2, :cond_1

    .line 267
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 269
    :cond_1
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :goto_0
    move-object v1, v0

    .line 284
    :goto_1
    return-object v1

    .line 263
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_2

    .line 264
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_2
    if-eqz v2, :cond_3

    .line 267
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 269
    :cond_3
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 270
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_1

    .line 276
    :catch_1
    move-exception v0

    .line 277
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_1

    .line 279
    :catch_2
    move-exception v0

    .line 280
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_1

    .line 263
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUFrequencyMax()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 462
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceCPUInfo:I

    if-eqz v0, :cond_0

    .line 463
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceCPUInfo:I

    .line 478
    :goto_0
    return v0

    .line 465
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    move v2, v1

    .line 466
    :goto_1
    if-ge v2, v3, :cond_1

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    :try_start_0
    invoke-static {v0}, Lcom/adobe/utility/AndroidMiscUtils;->readSystemFileAsInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 476
    :goto_2
    sget v4, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceCPUInfo:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceCPUInfo:I

    .line 466
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 472
    :catch_0
    move-exception v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_2

    .line 478
    :cond_1
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceCPUInfo:I

    goto :goto_0
.end method

.method public static getDeviceMaxHeapMemoryMB()I
    .locals 1

    .prologue
    .line 454
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceMaxHeapMemory:I

    return v0
.end method

.method public static getDeviceTotalMemoryGB()F
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 423
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceTotalMemoryGB:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 424
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceTotalMemoryGB:F

    .line 446
    :goto_0
    return v0

    .line 426
    :cond_0
    const/4 v2, 0x0

    .line 429
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "/proc/meminfo"

    const-string/jumbo v3, "r"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string/jumbo v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 432
    array-length v2, v0

    if-le v2, v4, :cond_1

    .line 433
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v0, v2

    sput v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceTotalMemoryGB:F
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 439
    :cond_1
    if-eqz v1, :cond_2

    .line 440
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 446
    :cond_2
    :goto_1
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceTotalMemoryGB:F

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 435
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 436
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 439
    if-eqz v1, :cond_2

    .line 440
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 442
    :catch_2
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 439
    :goto_3
    if-eqz v1, :cond_3

    .line 440
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 445
    :cond_3
    :goto_4
    throw v0

    .line 442
    :catch_3
    move-exception v1

    .line 443
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 438
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 435
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static getFreeDiskspace()J
    .locals 4

    .prologue
    .line 511
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 512
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 516
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 518
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 519
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 527
    :goto_0
    mul-long/2addr v0, v2

    .line 528
    return-wide v0

    .line 523
    :cond_0
    invoke-static {v1}, Lcom/adobe/utility/AndroidMiscUtils;->blockSize18(Landroid/os/StatFs;)J

    move-result-wide v2

    .line 524
    invoke-static {v1}, Lcom/adobe/utility/AndroidMiscUtils;->availableBlocks18(Landroid/os/StatFs;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getOutputMediaFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 379
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 380
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 382
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 383
    invoke-static {p0}, Lcom/adobe/utility/AndroidMiscUtils;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 397
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 399
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 400
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "PSM_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getOutputMediaFileUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 362
    invoke-static {p0, p1}, Lcom/adobe/utility/AndroidMiscUtils;->getOutputMediaFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_0

    .line 364
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPathToImageFromPicker(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-static {p1, p2}, Lcom/adobe/utility/AndroidMiscUtils;->getResolvedPathFromContentResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-nez v0, :cond_1

    .line 107
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/adobe/utility/AndroidMiscUtils;->copyBitmapFromMediaStore(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 114
    :cond_1
    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "https"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    :cond_2
    invoke-static {p0, v0}, Lcom/adobe/utility/AndroidMiscUtils;->downloadImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getResolvedPathFromContentResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 134
    .line 137
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v5

    .line 143
    :cond_1
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 144
    array-length v1, v0

    if-lez v1, :cond_0

    .line 148
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 150
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v6

    .line 155
    const-string/jumbo v3, "_id=?"

    .line 156
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    aget-object v1, v2, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getScreenHeightPixels()I
    .locals 1

    .prologue
    .line 560
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sScreenHeight:I

    return v0
.end method

.method public static getScreenScale()F
    .locals 1

    .prologue
    .line 564
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sScreenScale:F

    return v0
.end method

.method public static getScreenWidthPixels()I
    .locals 1

    .prologue
    .line 556
    sget v0, Lcom/adobe/utility/AndroidMiscUtils;->sScreenWidth:I

    return v0
.end method

.method public static isConnectedToInternet(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 572
    const-string/jumbo v0, "connectivity"

    .line 573
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 574
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    .line 576
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 339
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnWiFiNetwork(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 583
    const-string/jumbo v0, "connectivity"

    .line 584
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 585
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 588
    :goto_0
    return v0

    .line 586
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 415
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    return v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 499
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readSystemFileAsInt(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 482
    .line 484
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "/system/bin/cat"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 489
    invoke-static {v0}, Lcom/adobe/utility/AndroidMiscUtils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static runMediaScanner(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    return-void
.end method

.method public static setDeviceMaxHeapMemoryMB(I)V
    .locals 0

    .prologue
    .line 450
    sput p0, Lcom/adobe/utility/AndroidMiscUtils;->sDeviceMaxHeapMemory:I

    .line 451
    return-void
.end method

.method public static setScreenHeightPixels(I)V
    .locals 0

    .prologue
    .line 548
    sput p0, Lcom/adobe/utility/AndroidMiscUtils;->sScreenHeight:I

    .line 549
    return-void
.end method

.method public static setScreenScale(F)V
    .locals 0

    .prologue
    .line 552
    sput p0, Lcom/adobe/utility/AndroidMiscUtils;->sScreenScale:F

    .line 553
    return-void
.end method

.method public static setScreenWidthPixels(I)V
    .locals 0

    .prologue
    .line 544
    sput p0, Lcom/adobe/utility/AndroidMiscUtils;->sScreenWidth:I

    .line 545
    return-void
.end method

.method private static supportedMime(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 214
    if-eqz p0, :cond_1

    const-string/jumbo v1, "image/png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    if-eqz p0, :cond_2

    const-string/jumbo v1, "image/jpg"

    .line 217
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "image/jpeg"

    .line 218
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    :cond_2
    if-eqz p0, :cond_3

    const-string/jumbo v1, "image/gif"

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :cond_3
    if-eqz p0, :cond_4

    const-string/jumbo v1, "image/bmp"

    .line 224
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

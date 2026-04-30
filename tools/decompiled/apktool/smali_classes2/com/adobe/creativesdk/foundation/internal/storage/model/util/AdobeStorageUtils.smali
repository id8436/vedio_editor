.class public Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;
.super Ljava/lang/Object;
.source "AdobeStorageUtils.java"


# static fields
.field public static final BUFFER_LEN:I = 0x10000

.field private static final ESCAPE_CHARS:Ljava/lang/String; = "%/:;="

.field private static _queue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

.field private static _sDateFormats:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_queue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JSONObjectWithData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 163
    if-eqz p0, :cond_0

    .line 165
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized MD5HashFromStream(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    const-class v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 83
    const/16 v4, 0x1000

    :try_start_1
    new-array v4, v4, [B

    .line 84
    :goto_0
    invoke-virtual {p0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_0

    .line 85
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 124
    :goto_1
    monitor-exit v3

    return-object v0

    .line 92
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 96
    if-eqz p1, :cond_3

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 99
    :goto_2
    array-length v1, v4

    if-ge v2, v1, :cond_2

    .line 101
    aget-byte v1, v4, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 104
    :cond_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 112
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v4, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    :try_start_4
    const-string/jumbo v2, "\\s+$"

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 119
    :catch_1
    move-exception v1

    .line 121
    :try_start_5
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 113
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static declared-synchronized MD5HashFromStream(Ljava/io/InputStream;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V
    .locals 9

    .prologue
    .line 129
    const-class v8, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_queue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    if-nez v0, :cond_0

    .line 130
    const/4 v2, 0x4

    .line 131
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_queue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    .line 136
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_queue:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils$1;-><init>(Ljava/io/InputStream;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit v8

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static declared-synchronized MD5HashOfFile(Ljava/lang/String;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V
    .locals 2

    .prologue
    .line 154
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->MD5HashFromStream(Ljava/io/InputStream;ZLcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-exit v1

    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/IHashCompletionHandler;->onCompletion(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static cacheKeyForAsset(Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 326
    const-string/jumbo v0, "%s-%d_%d-%d-%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAsset;->getGUID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->getIntVal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertStringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 234
    const-class v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;

    monitor-enter v2

    .line 235
    :try_start_0
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_0

    .line 236
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/text/SimpleDateFormat;

    sput-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    .line 237
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x0

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v3, v4

    .line 238
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x1

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v3, v4

    .line 239
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x2

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v3, v4

    .line 240
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x3

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v3, v4

    .line 241
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x4

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v3, v4

    .line 242
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x5

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v5, v3, v4

    .line 244
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    if-eqz p0, :cond_1

    .line 249
    :goto_0
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 250
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v1, v1, v0

    const-string/jumbo v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 251
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->_sDateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->convertToDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 259
    :cond_1
    return-object v1
.end method

.method private static declared-synchronized convertToDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 217
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;

    monitor-enter v1

    const/4 v0, 0x0

    .line 219
    if-eqz p0, :cond_0

    .line 220
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 226
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 222
    :catch_0
    move-exception v2

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static currentMemoryUsage()J
    .locals 6

    .prologue
    .line 312
    const-wide v0, 0x7fffffffffffffffL

    .line 314
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    .line 316
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 317
    sub-long/2addr v0, v4

    .line 321
    :goto_0
    return-wide v0

    .line 318
    :catch_0
    move-exception v2

    .line 319
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 331
    .line 334
    :try_start_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 335
    const-string/jumbo v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 336
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%2F"

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 337
    const-string/jumbo v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 338
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p0

    .line 339
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method public static getFormattedLink(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 371
    if-nez p0, :cond_0

    .line 372
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    .line 374
    :cond_0
    invoke-static {p0}, Lcom/c/a/a/e;->a(Ljava/lang/String;)Lcom/c/a/a/e;

    move-result-object v1

    .line 375
    invoke-virtual {v1}, Lcom/c/a/a/e;->b()[Ljava/lang/String;

    move-result-object v2

    .line 377
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 378
    invoke-virtual {p1, v4}, Lcom/adobe/creativesdk/foundation/internal/storage/model/resources/AdobeRequestParameters;->getParamaterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 379
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 380
    invoke-virtual {v1, v4, v5}, Lcom/c/a/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/c/a/a/e;

    .line 377
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_2
    invoke-virtual {v1}, Lcom/c/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string/jumbo v1, "%/:;="

    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMD5HashOfString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 180
    const/4 v1, 0x0

    .line 184
    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 186
    sget-object v3, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 187
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    if-eqz p1, :cond_2

    move v2, v0

    .line 190
    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_1

    .line 191
    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 194
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 210
    :goto_2
    return-object v0

    .line 200
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v3, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    goto :goto_2

    .line 206
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-nez v0, :cond_0

    .line 356
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileExtensions;->getMimeTypeForExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    .line 362
    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMimeTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;
    .locals 6

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 266
    if-eqz p0, :cond_1

    .line 267
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->values()[Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    move-result-object v3

    .line 268
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 269
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    :goto_1
    return-object v0

    .line 268
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static isMimeTypeFilterPresent(Ljava/util/EnumSet;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 281
    .line 283
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->getMimeTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 292
    :goto_0
    return v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldFilterAssetMimeType(Ljava/util/EnumSet;Ljava/lang/String;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 298
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/EnumSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/model/util/AdobeStorageUtils;->isMimeTypeFilterPresent(Ljava/util/EnumSet;Ljava/lang/String;)Z

    move-result v1

    .line 302
    if-eqz p2, :cond_2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

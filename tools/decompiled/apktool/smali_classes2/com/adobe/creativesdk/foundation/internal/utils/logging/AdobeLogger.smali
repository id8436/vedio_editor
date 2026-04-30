.class public Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;
.super Ljava/lang/Object;
.source "AdobeLogger.java"


# static fields
.field private static MAX_LOG_FILE_SIZE:I

.field private static MB:I

.field private static TRUNCATED_FILE_SIZE:I

.field private static final _mutex:Ljava/lang/Object;

.field private static consoleLoggingEnabled:Z

.field private static fileLoggingEnabled:Z

.field private static volatile file_size:I

.field public static logFile:Ljava/io/File;

.field private static logLevel:I

.field private static volatile pr:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->fileLoggingEnabled:Z

    .line 48
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->consoleLoggingEnabled:Z

    .line 49
    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logLevel:I

    .line 50
    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->file_size:I

    .line 52
    const/high16 v0, 0x100000

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MB:I

    .line 53
    const/4 v0, 0x3

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MAX_LOG_FILE_SIZE:I

    .line 54
    const/4 v0, 0x2

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->_mutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AdobeLoggerInit(Z)V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-static {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->AdobeLoggerInit(ZZLcom/adobe/creativesdk/foundation/internal/utils/logging/Level;)V

    .line 94
    return-void
.end method

.method public static AdobeLoggerInit(ZZ)V
    .locals 0

    .prologue
    .line 81
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->setConsoleLoggingEnabled(Z)V

    .line 82
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->setFileLoggingEnabled(Z)V

    .line 83
    if-eqz p0, :cond_0

    .line 84
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->initializeLogFile()V

    .line 86
    :cond_0
    return-void
.end method

.method public static AdobeLoggerInit(ZZLcom/adobe/creativesdk/foundation/internal/utils/logging/Level;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->setConsoleLoggingEnabled(Z)V

    .line 67
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->setFileLoggingEnabled(Z)V

    .line 68
    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->setLogLevel(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;)V

    .line 69
    if-eqz p0, :cond_0

    .line 70
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->initializeLogFile()V

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->_mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->fRead(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    .prologue
    .line 44
    sput p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->file_size:I

    return p0
.end method

.method static synthetic access$300()Ljava/io/PrintWriter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->pr:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$302(Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0

    .prologue
    .line 44
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->pr:Ljava/io/PrintWriter;

    return-object p0
.end method

.method public static configureFileSize(I)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 103
    sput p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MAX_LOG_FILE_SIZE:I

    .line 105
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MAX_LOG_FILE_SIZE:I

    if-ge v0, v1, :cond_2

    .line 107
    const/4 v0, 0x2

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MAX_LOG_FILE_SIZE:I

    .line 114
    :cond_0
    :goto_0
    add-int/lit8 v0, p0, -0x1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    .line 116
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    if-gez v0, :cond_3

    .line 118
    sput v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    .line 125
    :cond_1
    :goto_1
    return-void

    .line 109
    :cond_2
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MAX_LOG_FILE_SIZE:I

    if-le v0, v3, :cond_0

    .line 111
    sput v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MAX_LOG_FILE_SIZE:I

    goto :goto_0

    .line 120
    :cond_3
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    if-le v0, v2, :cond_1

    .line 122
    sput v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    goto :goto_1
.end method

.method private static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 304
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->consoleLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->fileLoggingEnabled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logLevel:I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->DEBUG:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 308
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    :cond_1
    return-void
.end method

.method private static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 289
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->consoleLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->fileLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 292
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    :cond_1
    return-void
.end method

.method private static fRead(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v2

    .line 133
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MAX_LOG_FILE_SIZE:I

    sget v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MB:I

    mul-int/2addr v0, v3

    if-le p1, v0, :cond_0

    .line 134
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    sget v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MB:I

    mul-int/2addr v0, v3

    new-array v3, v0, [B

    .line 135
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    sget v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MB:I

    mul-int/2addr v0, v4

    sub-int v0, p1, v0

    const/4 v4, 0x0

    sget v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    sget v6, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MB:I

    mul-int/2addr v5, v6

    invoke-static {v2, v0, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 146
    :goto_0
    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string/jumbo v2, "AdobeDCXUtils.fRead"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public static getJSONArrayDump(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 340
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    const-string/jumbo v0, "Empty JSONArray"

    .line 364
    :goto_0
    return-object v0

    .line 343
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 344
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 346
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 348
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->getJSONObjectDump(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 344
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 349
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->getJSONArrayDump(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 352
    check-cast v0, Ljava/lang/String;

    .line 353
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v0, "Empty String"

    :goto_3
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Non-Empty String of length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 354
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 355
    const-string/jumbo v0, "Number"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 357
    :cond_6
    const-string/jumbo v0, "Object"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 364
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getJSONObjectDump(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 312
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    const-string/jumbo v0, "Empty JSONObject"

    .line 336
    :goto_0
    return-object v0

    .line 315
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 316
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 321
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->getJSONObjectDump(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lorg/json/JSONArray;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 323
    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->getJSONArrayDump(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 324
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 325
    check-cast v1, Ljava/lang/String;

    .line 326
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v1, "Empty String"

    :goto_2
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-Empty String of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 327
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/Number;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 328
    const-string/jumbo v1, "Number"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 330
    :cond_6
    const-string/jumbo v1, "Object"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 336
    :cond_7
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 296
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->consoleLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->fileLoggingEnabled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logLevel:I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 299
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    :cond_1
    return-void
.end method

.method private static initializeLogFile()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "csdklog.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logFile:Ljava/io/File;

    .line 196
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->readAndDumpFile(Z)V

    .line 197
    return-void
.end method

.method public static log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Exception;

    invoke-static {p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    return-void
.end method

.method public static log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/16 v2, 0x17

    .line 214
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->consoleLoggingEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->fileLoggingEnabled:Z

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 219
    :cond_0
    :try_start_0
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_1

    .line 222
    :goto_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger$2;->$SwitchMap$com$adobe$creativesdk$foundation$internal$utils$logging$Level:[I

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-static {v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x17

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 227
    :pswitch_1
    invoke-static {v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 230
    :pswitch_2
    invoke-static {v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 233
    :pswitch_3
    invoke-static {v0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static readAndDumpFile(Z)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger$1;-><init>(Z)V

    .line 188
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 189
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 191
    return-void
.end method

.method public static readFromFile()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 275
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    if-eqz v0, :cond_0

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 283
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 281
    return-object v0

    .line 283
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 284
    throw v0
.end method

.method private static setConsoleLoggingEnabled(Z)V
    .locals 0

    .prologue
    .line 156
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->consoleLoggingEnabled:Z

    .line 157
    return-void
.end method

.method private static setFileLoggingEnabled(Z)V
    .locals 0

    .prologue
    .line 152
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->fileLoggingEnabled:Z

    .line 153
    return-void
.end method

.method private static setLogLevel(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;)V
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->getValue()I

    move-result v0

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logLevel:I

    .line 161
    return-void
.end method

.method private static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 241
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->consoleLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    :cond_0
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->fileLoggingEnabled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->logLevel:I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 244
    invoke-static {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :cond_1
    return-void
.end method

.method private static writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 248
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->pr:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2

    .line 250
    :try_start_0
    sget v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->file_size:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    :cond_0
    add-int/2addr v0, v1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->file_size:I

    .line 252
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->file_size:I

    sget v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MAX_LOG_FILE_SIZE:I

    sget v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MB:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 253
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->pr:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->readAndDumpFile(Z)V

    .line 255
    sget v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->TRUNCATED_FILE_SIZE:I

    sget v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->MB:I

    mul-int/2addr v0, v1

    sput v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->file_size:I

    .line 257
    :cond_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->_mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->pr:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 259
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->pr:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 260
    monitor-exit v1

    .line 265
    :cond_2
    :goto_1
    return-void

    .line 258
    :cond_3
    const-string/jumbo p1, ""

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.class public Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;
.super Ljava/lang/Object;
.source "AdobeCommonCache.java"


# static fields
.field private static final AdobeCommonCacheClearDiskCacheNotification:Ljava/lang/String; = "AdobeCommonCacheClearDiskCacheNotification"

.field private static final AdobeCommonCacheClearMemCacheNotification:Ljava/lang/String; = "AdobeCommonCacheClearMemCacheNotification"

.field private static final AdobeCommonCacheDiskCacheEvictionNotification:Ljava/lang/String; = "AdobeCommonCacheDiskCacheEvictionNotification"

.field private static final AdobeCommonCacheMemCacheEvictionNotification:Ljava/lang/String; = "AdobeCommonCacheMemCacheEvictionNotification"

.field private static final CACHE_VERSION:Ljava/lang/Integer;

.field private static context:Landroid/content/Context;

.field private static volatile instance:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

.field private static isInitiated:Z


# instance fields
.field private cacheDirPattern:Ljava/util/regex/Pattern;

.field cacheInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;",
            ">;"
        }
    .end annotation
.end field

.field private currentCacheVerion:I

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final rootCacheDir:Ljava/lang/String;

.field private scrubAge:I

.field private scrubPeriod:I

.field private scrubbingFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private scrubbingTimer:Ljava/util/concurrent/ScheduledExecutorService;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private verboseLogging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 836
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->CACHE_VERSION:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string/jumbo v0, "^[a-zA-Z0-9]{33}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheDirPattern:Ljava/util/regex/Pattern;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    .line 182
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getSharedApplicationContextHolder()Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/common/AdobeCommonApplicationContextHolder;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->context:Landroid/content/Context;

    .line 183
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "csdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->rootCacheDir:Ljava/lang/String;

    .line 186
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->context:Landroid/content/Context;

    const-string/jumbo v1, "Foundation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 187
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "CCCache.version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->currentCacheVerion:I

    .line 188
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->currentCacheVerion:I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->CACHE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeAllCaches()V

    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "CCCache.version"

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->CACHE_VERSION:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    :cond_0
    const v0, 0x5265c00

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubAge:I

    .line 198
    const v0, 0x1b7740

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubPeriod:I

    .line 200
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubAge:I

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeDiskCachesOlderThan(I)V

    .line 201
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->startScrubbingTimer()V

    .line 202
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->rootCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 206
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 208
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$3;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 214
    return-void

    .line 184
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "csdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->verboseLogging:Z

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubAge:I

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->removeDiskCachesOlderThan(I)V

    return-void
.end method

.method private clearCache(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clear()V

    .line 329
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private freezeCache(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 374
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->freezeCache(Z)V

    .line 376
    const/4 v0, 0x1

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAvailabilityMode(Ljava/util/EnumSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 303
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheAllowOfflineUse:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getEvictionPolicy(Ljava/util/EnumSet;)Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;",
            ">;)",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLSF:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLSF:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    .line 176
    :goto_0
    return-object v0

    .line 172
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLRU:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLRU:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    goto :goto_0

    .line 174
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionFIFO:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionFIFO:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    goto :goto_0

    .line 176
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCachePolicyUnset:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    goto :goto_0
.end method

.method private getFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 713
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 714
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V

    .line 715
    const/4 v0, 0x1

    .line 717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->instance:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->instance:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->instance:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->instance:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeDiskCachesOlderThan(I)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 123
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->rootCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$2;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 132
    if-nez v3, :cond_1

    .line 133
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to access disk cache root directory at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->rootCacheDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    array-length v0, v3

    if-nez v0, :cond_2

    .line 138
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->verboseLogging:Z

    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "Cache is Empty. Nothing to scrub"

    invoke-static {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->freezeAllCaches(Z)V

    .line 142
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 143
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheDirPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x37

    if-ne v0, v6, :cond_3

    .line 148
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 150
    int-to-long v8, p1

    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 152
    :try_start_0
    invoke-static {v5}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 153
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->verboseLogging:Z

    if-eqz v0, :cond_3

    .line 154
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v6, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Deleting disk cache at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v7, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error delecting disk cache during scrubbing : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 162
    :cond_4
    invoke-virtual {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->freezeAllCaches(Z)V

    goto/16 :goto_0
.end method

.method private startScrubbingTimer()V
    .locals 7

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->stopScrubbingTimer()V

    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubbingTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubbingTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 98
    :cond_0
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;)V

    .line 106
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubbingTimer:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubPeriod:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubbingFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 107
    return-void
.end method

.method private stopScrubbingTimer()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->stopScrubbingTimer(Z)V

    .line 112
    return-void
.end method

.method private stopScrubbingTimer(Z)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubbingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubbingFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public addArray(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 478
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addData([BLjava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;[BLjava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/IAdobeGenericCompletionCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache$DataAdditionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 540
    return-void
.end method

.method public addDictionary(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 439
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->addImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 559
    instance-of v0, p1, Ljava/io/Serializable;

    if-nez v0, :cond_0

    .line 560
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Object is not serializable. Not adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to cache."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 569
    :goto_0
    return v0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 565
    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 567
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 569
    goto :goto_0
.end method

.method public clearAllCaches()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clear()V

    goto :goto_0

    .line 341
    :cond_0
    return-void
.end method

.method public configureCache(Ljava/lang/String;IDLjava/util/EnumSet;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ID",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;
        }
    .end annotation

    .prologue
    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    :cond_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;

    const-string/jumbo v3, "Invalid cache name."

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_1
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCachePolicyUnset:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/util/EnumSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 246
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;

    const-string/jumbo v3, "Invalid cache policy."

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_2
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getEvictionPolicy(Ljava/util/EnumSet;)Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    move-result-object v10

    .line 251
    move-object/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getAvailabilityMode(Ljava/util/EnumSet;)Z

    move-result v11

    .line 255
    if-nez v11, :cond_4

    .line 256
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v5

    .line 258
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 259
    :cond_3
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;

    const-string/jumbo v3, "Cannot configure cache before logging in"

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :cond_4
    const-string/jumbo v5, "000000000000000000000000@AdobeID"

    .line 267
    :cond_5
    if-gez p2, :cond_6

    .line 268
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal memCacheSize value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_6
    const/16 v2, 0xc8

    if-le p2, v2, :cond_b

    .line 272
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "memCacheSize: %"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/high16 v6, 0x100000

    div-int v6, p2, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " MB exceeds maximum value.  Setting to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " MB."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/16 v7, 0xc8

    .line 276
    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p3, v2

    if-gez v2, :cond_7

    .line 277
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal diskCacheSize value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    double-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_7
    const-wide/high16 v2, 0x41b0000000000000L    # 2.68435456E8

    cmpl-double v2, p3, v2

    if-lez v2, :cond_a

    .line 281
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "diskCacheSize: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double v8, p3, v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "MB exceeds maximum value.  Setting to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/high16 v8, 0x4070000000000000L    # 256.0

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "MB."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-wide/high16 v8, 0x41b0000000000000L    # 2.68435456E8

    .line 285
    :goto_1
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 287
    if-nez v2, :cond_8

    .line 288
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 289
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :goto_2
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->rootCacheDir:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->configureCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;Z)V

    .line 300
    return-void

    .line 293
    :cond_8
    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheAdobeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 294
    new-instance v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attempt to reconfigure cache "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " with different AdobeID: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheAdobeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeInvalidCacheSettingsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    move-object v3, v2

    goto :goto_2

    :cond_a
    move-wide/from16 v8, p3

    goto :goto_1

    :cond_b
    move v7, p2

    goto/16 :goto_0
.end method

.method public containsItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 586
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->containsItemWithGUID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 589
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableDiskCaching(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 419
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->disableDiskCaching()V

    .line 422
    :cond_0
    return-void
.end method

.method public doesCacheExist(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public enableCache(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    .line 407
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->freezeCache(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 407
    goto :goto_0

    .line 409
    :cond_1
    if-nez p2, :cond_2

    .line 410
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->clearCache(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public freezeAllCaches(Z)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 389
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 391
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->freezeCache(Z)V

    goto :goto_0

    .line 393
    :cond_0
    return-void
.end method

.method public getArrayFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<",
            "Ljava/util/ArrayList;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 756
    invoke-direct/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 734
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 735
    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {v0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/Object;

    move-result-object v0

    .line 738
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<[B>;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 776
    invoke-direct/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public getDictionaryFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 673
    invoke-direct/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public getImageFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 649
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 650
    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getImageFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V

    .line 651
    const/4 v0, 0x1

    .line 653
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 693
    invoke-direct/range {p0 .. p6}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->getFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method protected getRootDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->rootCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampForGUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .prologue
    .line 817
    const/4 v1, 0x0

    .line 819
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 820
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    monitor-enter v2

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 823
    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getTimestampForGUID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 826
    :goto_0
    monitor-exit v2

    .line 828
    :goto_1
    return-object v0

    .line 826
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public isVerboseLogging()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->verboseLogging:Z

    return v0
.end method

.method protected logCacheMiss(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 790
    return-void
.end method

.method public printStatistics(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 783
    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->printStatistics()V

    .line 786
    :cond_0
    return-void
.end method

.method public removeAllCaches()V
    .locals 4

    .prologue
    .line 795
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->rootCacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 806
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 807
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 808
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clear()V

    goto :goto_1

    .line 799
    :catch_0
    move-exception v0

    .line 800
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error removing cache"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 813
    :cond_1
    return-void
.end method

.method public removeCache(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 352
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clear()V

    .line 354
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const/4 v0, 0x1

    .line 357
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeItemWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 605
    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->removeItemWithGUID(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v0, 0x1

    .line 609
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSetWithGUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->cacheInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    .line 624
    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->removeSetWithGUID(Ljava/lang/String;)V

    .line 626
    const/4 v0, 0x1

    .line 628
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setScrubAge(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubAge:I

    .line 218
    return-void
.end method

.method protected setScrubPeriod(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->scrubPeriod:I

    .line 222
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->stopScrubbingTimer()V

    .line 223
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->startScrubbingTimer()V

    .line 224
    return-void
.end method

.method public setVerboseLogging(Z)V
    .locals 0

    .prologue
    .line 851
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCache;->verboseLogging:Z

    .line 852
    return-void
.end method

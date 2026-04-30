.class public Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;
.super Ljava/lang/Object;
.source "AdobeCommonCacheInstance.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final evictionTimePeriod:I = 0xea60


# instance fields
.field private final AdobeCommonCacheCriticalCount:I

.field private final AdobeCommonCacheNormalCount:I

.field private cacheAdobeId:Ljava/lang/String;

.field private cacheDir:Ljava/lang/String;

.field private cacheFrozen:Z

.field private cacheMisses:I

.field private cacheName:Ljava/lang/String;

.field private currentDiskCacheSize:J

.field private final dateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private final diskCacheAccessTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final diskCacheCreateTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheHits:I

.field private final diskCacheObjectSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private diskCacheSize:D

.field private final diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private evictionPolicy:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final lruComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

.field private memCacheHits:I

.field private memCacheSize:D

.field private final numberComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private repeatingTimer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private useDiskCaching:Z

.field private final verboseDebugging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x3

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->AdobeCommonCacheNormalCount:I

    .line 100
    const/16 v0, 0xa

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->AdobeCommonCacheCriticalCount:I

    .line 132
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->verboseDebugging:Z

    .line 140
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 145
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->useDiskCaching:Z

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    .line 150
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->lruComparator:Ljava/util/Comparator;

    .line 158
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$2;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->numberComparator:Ljava/util/Comparator;

    .line 166
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$3;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$3;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->dateComparator:Ljava/util/Comparator;

    .line 173
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheCreateTimes:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheAccessTimes:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    .line 176
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 177
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheDirectoryForGuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    return-void
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->stopRepeatingTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->callMissHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->logDiskCacheHit(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->addEntryToCacheMetadata(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->callHitHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheSize:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    return-object v0
.end method

.method static synthetic access$900(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    return-void
.end method

.method private addEntryToCacheMetadata(Ljava/io/File;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1006
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1007
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 1008
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1010
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1011
    iget-wide v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    .line 1014
    :cond_0
    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheAccessTimes:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheCreateTimes:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    return-void
.end method

.method private cacheEviction()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 870
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCriticalEvictionThreshold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 871
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;->AdobeCommonCacheCriticalEviction:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;

    .line 872
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCriticalEvictionThreshold()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 878
    :goto_0
    const-string/jumbo v2, "%s eviction: %d > %d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 880
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$11;->$SwitchMap$com$adobe$creativesdk$foundation$internal$cache$AdobeCommonCachePolicies:[I

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->evictionPolicy:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 891
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->lruEviction(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;)V

    .line 895
    :goto_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCurrentDiskCacheSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    .line 897
    const-string/jumbo v1, "After eviction: %d - %d are %s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v0, v2, v7

    iget-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    .line 898
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const-string/jumbo v0, "UNORDERED"

    :goto_2
    aput-object v0, v2, v8

    .line 897
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 900
    return-void

    .line 874
    :cond_0
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;->AdobeCommonCacheNormalEviction:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;

    .line 875
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 887
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->largeObjectFirstEviction(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;)V

    goto :goto_1

    .line 898
    :cond_1
    const-string/jumbo v0, "in order"

    goto :goto_2

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private cacheLog(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 367
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private callHitHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<TT;>;",
            "Landroid/os/Handler;",
            "TT;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1359
    if-eqz p2, :cond_0

    .line 1360
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$9;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$9;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1375
    :goto_0
    return-void

    .line 1367
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$10;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1372
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private callMissHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 1336
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheMisses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheMisses:I

    .line 1337
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$8;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;)V

    .line 1345
    if-eqz p2, :cond_0

    .line 1346
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1350
    :goto_0
    return-void

    .line 1348
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private clearMemCache()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->evictAll()V

    .line 191
    return-void
.end method

.method private getCacheDirectoryForGuid(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .prologue
    .line 1299
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 1302
    if-nez v1, :cond_0

    .line 1303
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Folder creation not successful for path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_0
    return-object v0
.end method

.method private getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1318
    if-nez p2, :cond_0

    .line 1324
    :goto_0
    return-object p1

    .line 1321
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getCriticalEvictionThreshold()I
    .locals 4

    .prologue
    .line 1399
    const-wide v0, 0x3fee666666666666L    # 0.95

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheSize:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getCurrentDiskCacheSize()J
    .locals 5

    .prologue
    .line 1110
    const-wide/16 v0, 0x0

    .line 1112
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    .line 1115
    :cond_0
    return-wide v2
.end method

.method private getEntrySetsSortedByValue(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 951
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 952
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 953
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 954
    return-object v1
.end method

.method private getImageFromDiskWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1197
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 1198
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->useDiskCaching:Z

    if-eqz v0, :cond_0

    .line 1200
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v5, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Ljava/util/Date;Ljava/util/EnumSet;)V

    .line 1239
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1244
    :goto_0
    return-void

    .line 1241
    :cond_0
    invoke-direct {p0, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->callMissHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private getNormalEvictionThreshold()I
    .locals 4

    .prologue
    .line 1391
    const-wide v0, 0x3feb333333333333L    # 0.85

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheSize:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getObjectFromDiskWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/Object;
    .locals 11
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
            ">;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 620
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 622
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->useDiskCaching:Z

    if-eqz v0, :cond_8

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 625
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got Read lock in getObjectFromDiskWithGUID.Current lock count "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    new-instance v5, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheDirectoryForGuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v5, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disk Miss for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 668
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Read lock released in getObjectFromDiskWithGUID.Holding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :goto_0
    return-object v1

    .line 635
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 636
    :try_start_2
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 637
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 639
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 640
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-direct {p0, p1, p2, v6, v7}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->logDiskCacheHit(Ljava/lang/String;Ljava/lang/String;J)V

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->addEntryToCacheMetadata(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 646
    :try_start_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-virtual {p3, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheSize:D

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 658
    :cond_1
    if-eqz v3, :cond_2

    .line 659
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 660
    :cond_2
    if-eqz v2, :cond_3

    .line 661
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 667
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 668
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Read lock released in getObjectFromDiskWithGUID.Holding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v1, v0

    .line 672
    goto :goto_0

    .line 662
    :catch_0
    move-exception v1

    .line 663
    :try_start_6
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 667
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 668
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Read lock released in getObjectFromDiskWithGUID.Holding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    throw v0

    .line 650
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 651
    :goto_3
    :try_start_7
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Unable to read map from cache"

    invoke-static {v4, v5, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 658
    if-eqz v3, :cond_4

    .line 659
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 660
    :cond_4
    if-eqz v2, :cond_3

    .line 661
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 662
    :catch_2
    move-exception v1

    .line 663
    :try_start_9
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 653
    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 654
    :goto_4
    :try_start_a
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v5, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Unable to read map from cache"

    invoke-static {v4, v5, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 658
    if-eqz v3, :cond_5

    .line 659
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 660
    :cond_5
    if-eqz v2, :cond_3

    .line 661
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 662
    :catch_4
    move-exception v1

    .line 663
    :try_start_c
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 657
    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 658
    :goto_5
    if-eqz v3, :cond_6

    .line 659
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 660
    :cond_6
    if-eqz v2, :cond_7

    .line 661
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 665
    :cond_7
    :goto_6
    :try_start_e
    throw v0

    .line 662
    :catch_5
    move-exception v1

    .line 663
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    .line 657
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 653
    :catch_6
    move-exception v0

    move-object v2, v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_8
    move-exception v1

    goto :goto_4

    .line 650
    :catch_9
    move-exception v0

    move-object v2, v1

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_3

    :catch_a
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto/16 :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :cond_8
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private getObjectFromDiskWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
    .locals 8
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
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 684
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 686
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->useDiskCaching:Z

    if-eqz v0, :cond_0

    .line 687
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$4;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/util/Date;Ljava/util/EnumSet;)V

    .line 740
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    invoke-direct {p0, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->callMissHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private initDiskCacheMetadata()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 964
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    :cond_0
    const-string/jumbo v0, "Cannot create the disk cache metadata.  Non-existent disk cache."

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 968
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    .line 970
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got Read lock in initDiskCacheMetadata.Current lock count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 973
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 974
    if-nez v1, :cond_2

    .line 975
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error creating disk cache. Folder creation not successful"

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    :cond_2
    :try_start_1
    sget-object v1, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    sget-object v2, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 980
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 982
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_3

    .line 983
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 984
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 985
    invoke-direct {p0, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->addEntryToCacheMetadata(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    .line 989
    :try_start_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error initializing disk cache"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 992
    :cond_4
    iput-boolean v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    .line 993
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 994
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Read lock released in initDiskCacheMetadata.Holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    return-void

    .line 992
    :catchall_0
    move-exception v0

    iput-boolean v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    .line 993
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 994
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Read lock released in initDiskCacheMetadata.Holding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    throw v0
.end method

.method private largeObjectFirstEviction(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;)V
    .locals 8

    .prologue
    .line 834
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;->AdobeCommonCacheCriticalEviction:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;

    if-ne p1, v0, :cond_1

    const/16 v0, 0xa

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 837
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 839
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->numberComparator:Ljava/util/Comparator;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getEntrySetsSortedByValue(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 843
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 844
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 847
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 849
    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 850
    const-string/jumbo v5, "LSF"

    invoke-direct {p0, v0, v5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->notifyDiskCacheEviction(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_0
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->removeEntryFromCacheMetadata(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 834
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 853
    :catch_0
    move-exception v0

    .line 854
    :try_start_2
    sget-object v5, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v6, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Could not remove cached file"

    invoke-static {v5, v6, v7, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 858
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 859
    throw v0

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 860
    return-void
.end method

.method private logDiskCacheHit(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 1179
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheHits:I

    .line 1180
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disk cache hit for key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with guid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and latency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method private logMemCacheHit(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 1382
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheHits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheHits:I

    .line 1383
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mem cache hit for key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with guid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and latency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    return-void
.end method

.method private lruEviction(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;)V
    .locals 10

    .prologue
    .line 752
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;->AdobeCommonCacheCriticalEviction:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheEvictionType;

    if-ne p1, v0, :cond_1

    const/16 v0, 0xa

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 755
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheAccessTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 757
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheAccessTimes:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->lruComparator:Ljava/util/Comparator;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getEntrySetsSortedByValue(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 763
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 764
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 766
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 770
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    .line 771
    const-string/jumbo v7, "LRU"

    invoke-direct {p0, v0, v7}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->notifyDiskCacheEviction(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    if-nez v6, :cond_0

    .line 773
    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v7, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not remove cached file in disk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_0
    :goto_2
    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->removeEntryFromCacheMetadata(Ljava/lang/String;)V

    .line 778
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v6, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Removing file in cache : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v6, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 752
    :cond_1
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 775
    :cond_2
    sget-object v6, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v7, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File doesn\'t exist in disk: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 782
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 783
    throw v0

    .line 782
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 784
    return-void
.end method

.method private notifyDiskCacheEviction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 940
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Disk cache eviction for key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method private printDiskCacheMetadata()V
    .locals 8

    .prologue
    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1056
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got Read lock in printDiskCacheMetadata.Current lock count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string/jumbo v0, "============================================"

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Disk Cache Size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Disk Cache Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1061
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->evictionPolicy:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLSF:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    if-ne v0, v1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->numberComparator:Ljava/util/Comparator;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getEntrySetsSortedByValue(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 1064
    const-string/jumbo v1, "============================================"

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1065
    const-string/jumbo v1, "Eviction Policy: Large Size First"

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1066
    const-string/jumbo v1, "Sorted Object Size Dictionary"

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1068
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1102
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Read lock released in printDiskCacheMetadata.Holding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    throw v0

    .line 1073
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->evictionPolicy:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;->AdobeCommonCacheEvictionLRU:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    if-ne v0, v1, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheAccessTimes:Ljava/util/Map;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->numberComparator:Ljava/util/Comparator;

    invoke-direct {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getEntrySetsSortedByValue(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 1077
    const-string/jumbo v1, "============================================"

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1078
    const-string/jumbo v1, "Eviction Policy: Least Recently Used"

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1079
    const-string/jumbo v1, "Sorted Access Times Dictionary"

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1081
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/text/DateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1099
    :cond_1
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1102
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Read lock released in printDiskCacheMetadata.Holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method private removeEntryFromCacheMetadata(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 910
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    .line 911
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheCreateTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheCreateTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v4, v0

    .line 912
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheAccessTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheAccessTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v6, v0

    .line 914
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 915
    iget-wide v8, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v8, v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    .line 917
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheAccessTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_2

    .line 920
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheCreateTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_3

    .line 922
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheObjectSizes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_4

    .line 925
    const-string/jumbo v0, "( %d ): Deleted metadata from %s: (AT: %s) (CT: %s) (Sz: %d)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-wide v10, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v1, v8

    const/4 v8, 0x1

    aput-object p1, v1, v8

    const/4 v8, 0x2

    .line 926
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v8

    const/4 v6, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v6

    const/4 v4, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 925
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 928
    :cond_4
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 930
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_5

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===== Sync stop timer at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 932
    const-string/jumbo v0, "Stopping eviction timer: %d < %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 933
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->stopRepeatingTimer()V

    .line 936
    :cond_5
    return-void

    .line 910
    :cond_6
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto/16 :goto_0

    .line 911
    :cond_7
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto/16 :goto_1

    .line 912
    :cond_8
    const-wide/16 v0, 0x0

    move-wide v6, v0

    goto/16 :goto_2
.end method

.method private setImageToDisk(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1258
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-eqz v0, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->useDiskCaching:Z

    if-eqz v0, :cond_0

    .line 1262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$7;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setObjectToDisk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1130
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/Serializable;

    if-nez v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1133
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->useDiskCaching:Z

    if-eqz v0, :cond_0

    .line 1137
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1138
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheDirectoryForGuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1139
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1140
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1141
    :try_start_2
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to disk cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1143
    invoke-direct {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->addEntryToCacheMetadata(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 1149
    if-eqz v1, :cond_2

    .line 1150
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 1151
    :cond_2
    if-eqz v3, :cond_3

    .line 1152
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1158
    :cond_3
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sync eviction event at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    goto/16 :goto_0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    :try_start_4
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error closing stream"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sync eviction event at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    goto/16 :goto_0

    .line 1158
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v1, :cond_4

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync eviction event at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_4

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    .line 1172
    :cond_4
    throw v0

    .line 1145
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1146
    :goto_1
    :try_start_5
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v4, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Error serializing map"

    invoke-static {v3, v4, v5, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1149
    if-eqz v1, :cond_5

    .line 1150
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 1151
    :cond_5
    if-eqz v2, :cond_6

    .line 1152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1158
    :cond_6
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sync eviction event at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    goto/16 :goto_0

    .line 1155
    :catch_2
    move-exception v0

    .line 1156
    :try_start_7
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error closing stream"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1158
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sync eviction event at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    goto/16 :goto_0

    .line 1158
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v1, :cond_7

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync eviction event at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_7

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    .line 1172
    :cond_7
    throw v0

    .line 1148
    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 1149
    :goto_2
    if-eqz v1, :cond_8

    .line 1150
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 1151
    :cond_8
    if-eqz v3, :cond_9

    .line 1152
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1158
    :cond_9
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v1, :cond_a

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_a

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync eviction event at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_a

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    .line 1173
    :cond_a
    :goto_3
    throw v0

    .line 1155
    :catch_3
    move-exception v1

    .line 1156
    :try_start_9
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v3, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Error closing stream"

    invoke-static {v2, v3, v4, v1}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1158
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v1, :cond_a

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_a

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync eviction event at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_a

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    goto :goto_3

    .line 1158
    :catchall_3
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1164
    iget-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-nez v1, :cond_b

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_b

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sync eviction event at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/text/SimpleDateFormat;->getInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 1166
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 1168
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_b

    .line 1169
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->startRepeatingTimer()V

    .line 1172
    :cond_b
    throw v0

    .line 1148
    :catchall_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    move-object v3, v2

    goto/16 :goto_2

    .line 1145
    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_1
.end method

.method private startRepeatingTimer()V
    .locals 7

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$5;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 1039
    return-void
.end method

.method private stopRepeatingTimer()V
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1047
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    .line 1048
    return-void
.end method


# virtual methods
.method public addImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 392
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheSize:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-direct {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheSize:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 400
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->setImageToDisk(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 417
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepInMemoryCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheSize:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-direct {p0, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;->AdobeCommonCacheKeepOnDiskCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;

    invoke-virtual {p4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheSize:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 425
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->setObjectToDisk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clearMemCache()V

    .line 200
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->repeatingTimer:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->stopRepeatingTimer()V

    .line 205
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 207
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cache with cache name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " deleted from location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 217
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_1
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error deleting cache directory"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unable to delete cache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from location "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 215
    throw v0
.end method

.method public configureCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;Z)V
    .locals 7

    .prologue
    const-wide/high16 v2, 0x41b0000000000000L    # 2.68435456E8

    .line 243
    if-nez p2, :cond_0

    .line 244
    const-string/jumbo v0, "Cannot configure a cache without an adobeID"

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 248
    :cond_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheName:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheAdobeId:Ljava/lang/String;

    .line 250
    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->evictionPolicy:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCachePolicies;

    .line 252
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-direct {v0, p4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;-><init>(I)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :try_start_0
    const-string/jumbo v1, "SHA-1"

    .line 261
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 263
    :try_start_1
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 270
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/utils/Util;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-eqz p8, :cond_1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    .line 280
    const/16 v0, 0xc8

    if-gt p4, v0, :cond_2

    int-to-double v0, p4

    :goto_3
    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheSize:D

    .line 282
    cmpg-double v0, p5, v2

    if-gtz v0, :cond_3

    :goto_4
    iput-wide p5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheSize:D

    .line 284
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clearMemCache()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 291
    :goto_5
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->initDiskCacheMetadata()V

    .line 292
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    :try_start_3
    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v5, "AdobeCommonCache::configureCache"

    const-string/jumbo v6, "ConfigureCache failed because of encoding exception"

    invoke-static {v4, v5, v6, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 286
    :catch_1
    move-exception v0

    .line 287
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->WARN:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MD5 Hash not available. Using unencrypted string"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 276
    :cond_1
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_2

    .line 280
    :cond_2
    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    goto :goto_3

    :cond_3
    move-wide p5, v2

    .line 282
    goto :goto_4

    .line 293
    :cond_4
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getNormalEvictionThreshold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 294
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheEviction()V

    .line 297
    :cond_5
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->printDiskCacheMetadata()V

    goto/16 :goto_0
.end method

.method public containsItemWithGUID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 441
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    .line 444
    const/4 v0, 0x1

    .line 458
    :goto_0
    return v0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 449
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got Read lock in containsItemWithGUID.Current lock count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 454
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Released read lock in containsItemWithGUID.Current lock count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 454
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Released read lock in containsItemWithGUID.Current lock count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadLockCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    throw v0
.end method

.method public disableDiskCaching()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->useDiskCaching:Z

    .line 221
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 182
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 183
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clearMemCache()V

    .line 184
    return-void
.end method

.method public freezeCache(Z)V
    .locals 1

    .prologue
    .line 1407
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    .line 1408
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->useDiskCaching:Z

    .line 1409
    return-void

    .line 1408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCacheAdobeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheAdobeId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheOptions;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 546
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 547
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;->AdobeCommonCacheHitLocationMemory:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;

    invoke-direct {p0, p4, p5, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->callHitHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getImageFromDiskWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/Object;
    .locals 2
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
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 601
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 602
    :cond_0
    const/4 v0, 0x0

    .line 608
    :cond_1
    :goto_0
    return-object v0

    .line 604
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 605
    if-nez v0, :cond_1

    .line 606
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getObjectFromDiskWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getObjectFromGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V
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
            "Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 570
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;->AdobeCommonCacheHitLocationMemory:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;

    invoke-direct {p0, p4, p5, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->callHitHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    .line 584
    :goto_0
    return-void

    .line 574
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 575
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_2

    .line 578
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 579
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->logMemCacheHit(Ljava/lang/String;Ljava/lang/String;J)V

    .line 580
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;->AdobeCommonCacheHitLocationMemory:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;

    invoke-direct {p0, p4, p5, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->callHitHandler(Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;Ljava/lang/Object;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHitLocation;)V

    goto :goto_0

    .line 582
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getObjectFromDiskWithGUID(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheHandler;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public getTimestampForGUID(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .prologue
    .line 1412
    const/4 v0, 0x0

    .line 1414
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheDirectoryForGuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1418
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1421
    :cond_0
    return-object v0
.end method

.method protected logCacheMiss(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 377
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cache miss for path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with latency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method protected printStatistics()V
    .locals 13

    .prologue
    .line 307
    const-string/jumbo v0, "====================================================="

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "Cache Stats:"

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 311
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheHits:I

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheHits:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheMisses:I

    add-int v6, v0, v1

    .line 313
    const-wide/16 v4, 0x0

    .line 314
    const-wide/16 v2, 0x0

    .line 315
    const-wide/16 v0, 0x0

    .line 318
    if-eqz v6, :cond_0

    .line 319
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheHits:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    int-to-double v2, v6

    div-double v4, v0, v2

    .line 320
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget v2, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheHits:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    int-to-double v2, v6

    div-double v2, v0, v2

    .line 321
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget v7, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheMisses:I

    int-to-double v8, v7

    mul-double/2addr v0, v8

    int-to-double v8, v6

    div-double/2addr v0, v8

    .line 323
    :cond_0
    add-double v8, v4, v2

    add-double/2addr v8, v0

    .line 325
    const-string/jumbo v7, "%s %6.2f%% %6d"

    .line 326
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "Memory cache hit rate:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v10, v11

    const/4 v4, 0x2

    iget v5, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCacheHits:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v4

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 327
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v10, "Disk cache hit rate:"

    aput-object v10, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    iget v3, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheHits:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 328
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Cache miss rate:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheMisses:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Total:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 352
    const-string/jumbo v0, "Disk Cache Usage: %6.2f%% %d bytes"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-wide v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskCacheSize:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->currentDiskCacheSize:J

    .line 353
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 352
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v0, "====================================================="

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheLog(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public removeItemWithGUID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 469
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-eqz v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 472
    :cond_0
    const/4 v0, 0x0

    .line 474
    if-eqz p2, :cond_3

    .line 476
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->memCache:Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;

    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeMemCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheDirectoryForGuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 485
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from disk cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 488
    if-nez v1, :cond_1

    .line 489
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->removeEntryFromCacheMetadata(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 480
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clearMemCache()V

    goto :goto_1

    .line 493
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 494
    throw v0
.end method

.method public removeSetWithGUID(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->cacheFrozen:Z

    if-eqz v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 507
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 508
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheDirectoryForGuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 511
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->clearMemCache()V

    .line 513
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    sget-object v2, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v1, v0, v2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 515
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 516
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "modified-data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    invoke-direct {p0, p1, v3}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->getCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->removeEntryFromCacheMetadata(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 528
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 529
    throw v0

    .line 522
    :cond_2
    :try_start_1
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;->diskReadWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    :try_start_2
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-class v2, Lcom/adobe/creativesdk/foundation/internal/cache/AdobeCommonCacheInstance;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Error deleting directory from cache"

    invoke-static {v1, v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

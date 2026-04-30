.class public Lcom/adobe/cliputils/ClipProfiler;
.super Ljava/lang/Object;
.source "ClipProfiler.java"


# static fields
.field public static profileAll:I

.field public static profileMemory:I

.field public static profileNetworkData:I

.field public static profileNetworkDownloadData:I

.field public static profileNetworkUploadData:I

.field public static profileStorage:I

.field public static profileTime:I


# instance fields
.field private context:Landroid/content/Context;

.field private currentRunStarted:Z

.field private maxRunTime:D

.field private maxRunTimeRun:I

.field private memoryStateAtBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

.field private memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

.field private memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

.field private networkReceivedBytesTillTheBeginingOfCurrentRun:J

.field private networkReceivedBytesTillTheBeginingOfFirstRun:J

.field private networkReceivedBytesTillTheEnd:J

.field private networkTransferedBytesTillTheBeginingOfCurrentRun:J

.field private networkTransferedBytesTillTheBeginingOfFirstRun:J

.field private networkTransferedBytesTillTheEnd:J

.field private processId:I

.field private profilerName:Ljava/lang/String;

.field private profilers:I

.field private runStartTime:J

.field private runTime:D

.field private runs:I

.field private storageUsageAtTheBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

.field private storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

.field private storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/adobe/cliputils/ClipProfiler;->profileTime:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/adobe/cliputils/ClipProfiler;->profileMemory:I

    .line 46
    const/4 v0, 0x4

    sput v0, Lcom/adobe/cliputils/ClipProfiler;->profileStorage:I

    .line 47
    const/16 v0, 0x8

    sput v0, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkDownloadData:I

    .line 48
    const/16 v0, 0x10

    sput v0, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkUploadData:I

    .line 49
    sget v0, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkDownloadData:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkUploadData:I

    or-int/2addr v0, v1

    sput v0, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkData:I

    .line 51
    sget v0, Lcom/adobe/cliputils/ClipProfiler;->profileTime:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileMemory:I

    or-int/2addr v0, v1

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileStorage:I

    or-int/2addr v0, v1

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkData:I

    or-int/2addr v0, v1

    sput v0, Lcom/adobe/cliputils/ClipProfiler;->profileAll:I

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/lang/String;[I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/adobe/cliputils/ClipProfiler;->context:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    move v0, v1

    .line 85
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 86
    iget v2, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    aget v3, p3, v0

    or-int/2addr v2, v3

    iput v2, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iput v1, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    .line 90
    iput-boolean v1, p0, Lcom/adobe/cliputils/ClipProfiler;->currentRunStarted:Z

    .line 91
    iput-wide v8, p0, Lcom/adobe/cliputils/ClipProfiler;->runTime:D

    .line 92
    iput-wide v8, p0, Lcom/adobe/cliputils/ClipProfiler;->maxRunTime:D

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/cliputils/ClipProfiler;->maxRunTimeRun:I

    .line 94
    iput-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->runStartTime:J

    .line 96
    iput-object v6, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    .line 97
    iput-object v6, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    .line 98
    iput-object v6, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    .line 100
    iput-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfFirstRun:J

    .line 101
    iput-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfCurrentRun:J

    .line 102
    iput-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheEnd:J

    .line 103
    iput-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfFirstRun:J

    .line 104
    iput-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfCurrentRun:J

    .line 105
    iput-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheEnd:J

    .line 107
    iput-object v6, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    .line 108
    iput-object v6, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    .line 109
    iput-object v6, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    .line 111
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/adobe/cliputils/ClipProfiler;->processId:I

    .line 112
    return-void
.end method

.method private bytesToString(J)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/32 v4, 0x100000

    const/high16 v2, 0x49800000    # 1048576.0f

    .line 339
    .line 343
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_0
    return-object v0

    .line 346
    :cond_0
    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v1, p1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 349
    :cond_1
    cmp-long v0, p1, v4

    if-gez v0, :cond_2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v1, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-float v1, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentMemoryState()Lcom/adobe/cliputils/ClipProfiler$MemoryState;
    .locals 10

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->context:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 318
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 319
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 320
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 322
    new-instance v0, Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    invoke-virtual {v4}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 323
    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    iget-wide v6, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iget-wide v8, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/adobe/cliputils/ClipProfiler$MemoryState;-><init>(Lcom/adobe/cliputils/ClipProfiler;JJJJ)V

    .line 322
    return-object v0
.end method

.method private getCurrentStorageUsage()Lcom/adobe/cliputils/ClipProfiler$StorageUsage;
    .locals 6

    .prologue
    .line 329
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 330
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 332
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    mul-long/2addr v4, v0

    .line 334
    new-instance v0, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;-><init>(Lcom/adobe/cliputils/ClipProfiler;JJ)V

    return-object v0
.end method

.method private timeMSToString(D)Ljava/lang/String;
    .locals 9

    .prologue
    const-wide v6, 0x418c9c3800000000L    # 6.0E7

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 356
    .line 360
    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    .line 363
    :cond_0
    cmpg-double v0, p1, v4

    if-gez v0, :cond_1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 366
    :cond_1
    cmpg-double v0, p1, v6

    if-gez v0, :cond_2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-double v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 369
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-double v2, p1, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " min"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public printInfo()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 207
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileTime:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 208
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_5

    .line 209
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Time profiler never used. No run!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    :goto_0
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileMemory:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 223
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Memory profiler never used. No run!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_1
    :goto_1
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkDownloadData:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 257
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_d

    .line 258
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Network download data profiler never used. No run!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_2
    :goto_2
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkUploadData:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 272
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_f

    .line 273
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Network upload data profiles never used. No run!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_3
    :goto_3
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileStorage:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 287
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_11

    .line 288
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Storage profiler never used. No run!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_4
    :goto_4
    return-void

    .line 210
    :cond_5
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-ne v0, v6, :cond_6

    .line 211
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Total time taken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->runTime:D

    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->timeMSToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_6
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Total time taken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->runTime:D

    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->timeMSToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " runs, avg. perf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->runTime:D

    iget v4, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 216
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->timeMSToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", max time in a run("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adobe/cliputils/ClipProfiler;->maxRunTimeRun:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->maxRunTime:D

    .line 218
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->timeMSToString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_7
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-ne v0, v6, :cond_a

    .line 226
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    if-nez v0, :cond_9

    .line 228
    :cond_8
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Something is wrong, needs attention!!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 230
    :cond_9
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Memory usage: Total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->totalSystemMemorySize:J

    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Free at begining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->freeSystemMemorySize:J

    .line 231
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->freeSystemMemorySize:J

    .line 232
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Used by process at begining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    .line 233
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    .line 234
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    iget-object v4, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v4, v4, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    sub-long/2addr v2, v4

    .line 235
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    if-nez v0, :cond_c

    .line 242
    :cond_b
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Something is very very wrong, needs attention!!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 244
    :cond_c
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Memory usage: Total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->totalSystemMemorySize:J

    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Free at begining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->freeSystemMemorySize:J

    .line 245
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", - last run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->freeSystemMemorySize:J

    .line 246
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->freeSystemMemorySize:J

    .line 247
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Used by process at begining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    .line 248
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", - last run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    .line 249
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    .line 250
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    iget-object v4, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iget-wide v4, v4, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    sub-long/2addr v2, v4

    .line 251
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    :cond_d
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-ne v0, v6, :cond_e

    .line 260
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Total downloaded data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheEnd:J

    iget-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfFirstRun:J

    sub-long/2addr v2, v4

    .line 261
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 264
    :cond_e
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Total downloaded data from first run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheEnd:J

    iget-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfFirstRun:J

    sub-long/2addr v2, v4

    .line 265
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Total downloaded data from last run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheEnd:J

    iget-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfCurrentRun:J

    sub-long/2addr v2, v4

    .line 267
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 274
    :cond_f
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-ne v0, v6, :cond_10

    .line 275
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Total uploaded data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheEnd:J

    iget-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfFirstRun:J

    sub-long/2addr v2, v4

    .line 276
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 279
    :cond_10
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Total uploaded data from first run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheEnd:J

    iget-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfFirstRun:J

    sub-long/2addr v2, v4

    .line 280
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Total uploaded data from last run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheEnd:J

    iget-wide v4, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfCurrentRun:J

    sub-long/2addr v2, v4

    .line 282
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 289
    :cond_11
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-ne v0, v6, :cond_14

    .line 290
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    if-nez v0, :cond_13

    .line 292
    :cond_12
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Something is wrong, needs some attention!!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 294
    :cond_13
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Storage usage: Total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->totalStorageSpace:J

    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Free at begining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    .line 295
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    .line 296
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    iget-object v4, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v4, v4, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    sub-long/2addr v2, v4

    .line 297
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 301
    :cond_14
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    if-nez v0, :cond_16

    .line 304
    :cond_15
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Something is very very wrong, needs some attention!!!!!"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 306
    :cond_16
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Storage usage: Total: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->totalStorageSpace:J

    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Free at begining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    .line 307
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - last run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    .line 308
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - end: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    .line 309
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v2, v2, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    iget-object v4, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iget-wide v4, v4, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    sub-long/2addr v2, v4

    .line 310
    invoke-direct {p0, v2, v3}, Lcom/adobe/cliputils/ClipProfiler;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-boolean v0, p0, Lcom/adobe/cliputils/ClipProfiler;->currentRunStarted:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Invalid state. Looks like stop was NOT called"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/cliputils/ClipProfiler;->currentRunStarted:Z

    .line 119
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileTime:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runStartTime:J

    .line 123
    :cond_2
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileMemory:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 124
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_6

    .line 126
    invoke-direct {p0}, Lcom/adobe/cliputils/ClipProfiler;->getCurrentMemoryState()Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    .line 127
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    iput-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    .line 131
    :goto_1
    iput-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    .line 134
    :cond_3
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkDownloadData:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 135
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_7

    .line 137
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->processId:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfFirstRun:J

    .line 138
    iget-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfFirstRun:J

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfCurrentRun:J

    .line 142
    :goto_2
    iget-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfCurrentRun:J

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheEnd:J

    .line 145
    :cond_4
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkUploadData:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 146
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_8

    .line 148
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->processId:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfFirstRun:J

    .line 149
    iget-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfFirstRun:J

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfCurrentRun:J

    .line 153
    :goto_3
    iget-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfCurrentRun:J

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheEnd:J

    .line 156
    :cond_5
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileStorage:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 157
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    if-nez v0, :cond_9

    .line 159
    invoke-direct {p0}, Lcom/adobe/cliputils/ClipProfiler;->getCurrentStorageUsage()Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    .line 160
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfFirstRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    iput-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    .line 164
    :goto_4
    iput-object v2, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    goto :goto_0

    .line 129
    :cond_6
    invoke-direct {p0}, Lcom/adobe/cliputils/ClipProfiler;->getCurrentMemoryState()Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    goto :goto_1

    .line 140
    :cond_7
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->processId:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheBeginingOfCurrentRun:J

    goto :goto_2

    .line 151
    :cond_8
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->processId:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheBeginingOfCurrentRun:J

    goto :goto_3

    .line 162
    :cond_9
    invoke-direct {p0}, Lcom/adobe/cliputils/ClipProfiler;->getCurrentStorageUsage()Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheBeginingOfCurrentRun:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    goto :goto_4
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/adobe/cliputils/ClipProfiler;->currentRunStarted:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilerName:Ljava/lang/String;

    const-string/jumbo v1, "Invalid state. Looks like start was NOT called"

    invoke-static {v0, v1}, Lcom/adobe/cliputils/ClipLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileTime:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 176
    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->runStartTime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 177
    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->runTime:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->runTime:D

    .line 178
    iget-wide v2, p0, Lcom/adobe/cliputils/ClipProfiler;->maxRunTime:D

    cmpg-double v2, v2, v0

    if-gez v2, :cond_1

    .line 179
    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->maxRunTime:D

    .line 180
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    iput v0, p0, Lcom/adobe/cliputils/ClipProfiler;->maxRunTimeRun:I

    .line 182
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runStartTime:J

    .line 185
    :cond_2
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileMemory:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 186
    invoke-direct {p0}, Lcom/adobe/cliputils/ClipProfiler;->getCurrentMemoryState()Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->memoryStateAtEnd:Lcom/adobe/cliputils/ClipProfiler$MemoryState;

    .line 189
    :cond_3
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkDownloadData:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 190
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->processId:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkReceivedBytesTillTheEnd:J

    .line 193
    :cond_4
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileNetworkUploadData:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 194
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->processId:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/cliputils/ClipProfiler;->networkTransferedBytesTillTheEnd:J

    .line 197
    :cond_5
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->profilers:I

    sget v1, Lcom/adobe/cliputils/ClipProfiler;->profileStorage:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 198
    invoke-direct {p0}, Lcom/adobe/cliputils/ClipProfiler;->getCurrentStorageUsage()Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/cliputils/ClipProfiler;->storageUsageAtTheEnd:Lcom/adobe/cliputils/ClipProfiler$StorageUsage;

    .line 201
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/cliputils/ClipProfiler;->currentRunStarted:Z

    .line 202
    iget v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/cliputils/ClipProfiler;->runs:I

    goto :goto_0
.end method

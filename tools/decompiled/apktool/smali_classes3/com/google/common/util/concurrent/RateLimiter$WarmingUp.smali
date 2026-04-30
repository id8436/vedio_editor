.class Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "RateLimiter.java"


# instance fields
.field private halfPermits:D

.field private slope:D

.field final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 638
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;Lcom/google/common/util/concurrent/RateLimiter$1;)V

    .line 639
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->warmupPeriodMicros:J

    .line 640
    return-void
.end method

.method private permitsToTime(D)D
    .locals 5

    .prologue
    .line 677
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->stableIntervalMicros:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->slope:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 644
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    .line 645
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->warmupPeriodMicros:J

    long-to-double v2, v2

    div-double/2addr v2, p3

    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    .line 646
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    .line 648
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, p3

    .line 649
    sub-double/2addr v2, p3

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->slope:D

    .line 650
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 652
    iput-wide v6, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    .line 658
    :goto_0
    return-void

    .line 654
    :cond_0
    cmpl-double v2, v0, v6

    if-nez v2, :cond_1

    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    :goto_1
    iput-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->maxPermits:D

    mul-double/2addr v2, v4

    div-double v0, v2, v0

    goto :goto_1
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 7

    .prologue
    .line 662
    iget-wide v0, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->halfPermits:D

    sub-double v2, p1, v0

    .line 663
    const-wide/16 v0, 0x0

    .line 665
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 666
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 667
    invoke-direct {p0, v2, v3}, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->permitsToTime(D)D

    move-result-wide v0

    sub-double/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->permitsToTime(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 669
    sub-double/2addr p3, v4

    .line 672
    :cond_0
    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/RateLimiter$WarmingUp;->stableIntervalMicros:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 673
    return-wide v0
.end method

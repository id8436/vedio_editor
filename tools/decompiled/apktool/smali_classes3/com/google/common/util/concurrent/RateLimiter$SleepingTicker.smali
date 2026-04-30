.class abstract Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;
.super Lcom/google/common/base/Ticker;
.source "RateLimiter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# static fields
.field static final SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 715
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker$1;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;->SYSTEM_TICKER:Lcom/google/common/util/concurrent/RateLimiter$SleepingTicker;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0}, Lcom/google/common/base/Ticker;-><init>()V

    return-void
.end method


# virtual methods
.method abstract sleepMicrosUninterruptibly(J)V
.end method

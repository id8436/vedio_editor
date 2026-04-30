.class final Lcom/google/gdata/client/uploader/BackoffPolicy$1;
.super Ljava/lang/Object;
.source "BackoffPolicy.java"

# interfaces
.implements Lcom/google/gdata/client/uploader/BackoffPolicy;


# static fields
.field private static final BACKOFF_DELAY_LIMIT_MS:J = 0xfa00L

.field private static final BACKOFF_FACTOR:J = 0x2L

.field private static final INITIAL_BACKOFF_MS:J = 0x1f4L


# instance fields
.field private backoffMs:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    return-void
.end method


# virtual methods
.method public getNextBackoffMs()J
    .locals 8

    .prologue
    const-wide/32 v0, 0xfa00

    .line 61
    iget-wide v4, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    .line 64
    iget-wide v2, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    const-wide/16 v6, 0x2

    mul-long/2addr v2, v6

    .line 65
    cmp-long v6, v2, v0

    if-lez v6, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    .line 68
    return-wide v4

    :cond_0
    move-wide v0, v2

    .line 65
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/gdata/client/uploader/BackoffPolicy$1;->backoffMs:J

    .line 73
    return-void
.end method

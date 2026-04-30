.class public Lcom/adobe/premiereclip/util/PriorityFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "PriorityFutureTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/adobe/premiereclip/util/PriorityFutureTask",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field private mPriority:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;J)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 37
    iput-wide p3, p0, Lcom/adobe/premiereclip/util/PriorityFutureTask;->mPriority:J

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 32
    iput-wide p2, p0, Lcom/adobe/premiereclip/util/PriorityFutureTask;->mPriority:J

    .line 33
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/adobe/premiereclip/util/PriorityFutureTask;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/util/PriorityFutureTask",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/adobe/premiereclip/util/PriorityFutureTask;->getPriority()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/util/PriorityFutureTask;->getPriority()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 47
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 48
    const/4 v0, -0x1

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_0
    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/adobe/premiereclip/util/PriorityFutureTask;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/util/PriorityFutureTask;->compareTo(Lcom/adobe/premiereclip/util/PriorityFutureTask;)I

    move-result v0

    return v0
.end method

.method public getPriority()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/adobe/premiereclip/util/PriorityFutureTask;->mPriority:J

    return-wide v0
.end method

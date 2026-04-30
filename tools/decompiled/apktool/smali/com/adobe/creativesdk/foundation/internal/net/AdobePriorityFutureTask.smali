.class public Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "AdobePriorityFutureTask.java"

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
        "Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;",
        ">;"
    }
.end annotation


# instance fields
.field taskPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

.field taskSubmittedTime:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 12
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskSubmittedTime:J

    .line 18
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 19
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskSubmittedTime:J

    .line 20
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 37
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->getPriority()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    .line 39
    if-eqz v0, :cond_0

    .line 49
    :goto_0
    return v0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->getTaskSubmittedTime()J

    move-result-wide v0

    .line 43
    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskSubmittedTime:J

    sub-long v0, v2, v0

    .line 44
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 45
    const/4 v0, -0x1

    goto :goto_0

    .line 46
    :cond_1
    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;

    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->compareTo(Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;)I

    move-result v0

    return v0
.end method

.method public getPriority()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    return-object v0
.end method

.method public getTaskSubmittedTime()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskSubmittedTime:J

    return-wide v0
.end method

.method public setPriority(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobePriorityFutureTask;->taskPriority:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    .line 24
    return-void
.end method

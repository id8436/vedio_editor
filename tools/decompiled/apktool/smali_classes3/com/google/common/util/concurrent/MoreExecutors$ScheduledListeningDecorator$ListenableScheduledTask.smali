.class final Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.source "MoreExecutors.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture",
        "<TV;>;",
        "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 545
    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;

    .line 546
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    .prologue
    .line 550
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->cancel(Z)Z

    move-result v0

    .line 551
    if-eqz v0, :cond_0

    .line 553
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 557
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 535
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$ScheduledListeningDecorator$ListenableScheduledTask;->scheduledDelegate:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

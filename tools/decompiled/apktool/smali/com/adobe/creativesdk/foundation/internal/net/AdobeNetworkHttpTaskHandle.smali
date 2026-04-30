.class public Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
.super Ljava/lang/Object;
.source "AdobeNetworkHttpTaskHandle.java"


# static fields
.field public static T:Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field protected cancellationHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private hasFinished:Z

.field protected isCancelled:Z

.field private isScheduled:Z

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private netTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private notifyHandler:Landroid/os/Handler;

.field private progressPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->netTaskFuture:Ljava/util/concurrent/Future;

    .line 33
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->progressPercent:I

    .line 34
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->accessToken:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->listeners:Ljava/util/ArrayList;

    .line 36
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled:Z

    .line 37
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->hasFinished:Z

    .line 38
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->notifyHandler:Landroid/os/Handler;

    .line 39
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->listeners:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancellationHandlers:Ljava/util/List;

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->progressPercent:I

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->listeners:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addCancellationHandler(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancellationHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 3

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->netTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->netTaskFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->netTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->netTaskFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled:Z

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle;

    if-ne v0, v1, :cond_4

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancellationHandlers:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->cancellationHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;

    .line 82
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkCompositeHttpTaskHandle$ICancellationHandler;->perform()V

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 84
    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    :cond_4
    monitor-exit p0

    return-void
.end method

.method getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->netTaskFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->progressPercent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasFinished()Z
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->hasFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScheduled()Z
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markFinished()V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->hasFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyProgress(I)V
    .locals 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;I)V

    .line 116
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->notifyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->notifyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method setAccessTokenForRequest(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->accessToken:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public declared-synchronized setFuture(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->netTaskFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotifyHandler(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->notifyHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScheduled(Z)V
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->isScheduled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterListener(Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkHttpTaskHandleListener;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

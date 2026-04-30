.class public Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;
.super Ljava/lang/Object;
.source "AdobeCSDKProgress.java"


# instance fields
.field protected _completedUnitCount:J

.field protected _hasFinished:Z

.field protected _isCancelled:Z

.field protected _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeProgressCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected _notifyHandler:Landroid/os/Handler;

.field protected _progressPercent:I

.field protected _totalUnitCount:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_listeners:Ljava/util/List;

    .line 33
    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_progressPercent:I

    .line 34
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_isCancelled:Z

    .line 35
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_notifyHandler:Landroid/os/Handler;

    .line 36
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_hasFinished:Z

    .line 37
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    .line 38
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_listeners:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 85
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_isCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCompletedUnitCount()J
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_progressPercent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotalUnitCount()J
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasFinished()Z
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_hasFinished:Z
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
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_isCancelled:Z
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
    .line 95
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_hasFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyProgress(I)V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;

    invoke-direct {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;I)V

    .line 71
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_notifyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_notifyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerListener(Lcom/adobe/creativesdk/foundation/storage/IAdobeProgressCallback;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public declared-synchronized setCompletedUnitCount(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 112
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    .line 113
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 114
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 115
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->notifyProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNotifyHandler(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_notifyHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTotalUnitCount(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 104
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    .line 105
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 107
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->notifyProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterListener(Lcom/adobe/creativesdk/foundation/storage/IAdobeProgressCallback;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public declared-synchronized updateCompletedUnitCount(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 128
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    .line 129
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 130
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 131
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->notifyProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateTotalUnitCount(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 120
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    .line 121
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_completedUnitCount:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->_totalUnitCount:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 123
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/util/AdobeCSDKProgress;->notifyProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class Lcom/facebook/c/b/v;
.super Ljava/lang/Object;
.source "DiskStorageCache.java"


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/c/b/v;->a:Z

    .line 104
    iput-wide v2, p0, Lcom/facebook/c/b/v;->b:J

    .line 105
    iput-wide v2, p0, Lcom/facebook/c/b/v;->c:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(JJ)V
    .locals 1

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iput-wide p3, p0, Lcom/facebook/c/b/v;->c:J

    .line 119
    iput-wide p1, p0, Lcom/facebook/c/b/v;->b:J

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/c/b/v;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 1

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/c/b/v;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 112
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/c/b/v;->a:Z

    .line 113
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/c/b/v;->c:J

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/c/b/v;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(JJ)V
    .locals 3

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/c/b/v;->a:Z

    if-eqz v0, :cond_0

    .line 125
    iget-wide v0, p0, Lcom/facebook/c/b/v;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/c/b/v;->b:J

    .line 126
    iget-wide v0, p0, Lcom/facebook/c/b/v;->c:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/facebook/c/b/v;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()J
    .locals 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/c/b/v;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()J
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/c/b/v;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

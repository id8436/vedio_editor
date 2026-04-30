.class Lcom/facebook/e/l;
.super Lcom/facebook/e/a;
.source "FirstAvailableDataSourceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/e/a",
        "<TT;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/e/j;

.field private b:I

.field private c:Lcom/facebook/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/e/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/facebook/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/e/f",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/e/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iput-object p1, p0, Lcom/facebook/e/l;->a:Lcom/facebook/e/j;

    invoke-direct {p0}, Lcom/facebook/e/a;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/e/l;->b:I

    .line 77
    iput-object v1, p0, Lcom/facebook/e/l;->c:Lcom/facebook/e/f;

    .line 78
    iput-object v1, p0, Lcom/facebook/e/l;->d:Lcom/facebook/e/f;

    .line 81
    invoke-direct {p0}, Lcom/facebook/e/l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "No data source supplier or supplier returned null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/e/l;->a(Ljava/lang/Throwable;)Z

    .line 84
    :cond_0
    return-void
.end method

.method private a(Lcom/facebook/e/f;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/facebook/e/l;->c:Lcom/facebook/e/f;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/facebook/e/l;->d:Lcom/facebook/e/f;

    if-ne p1, v1, :cond_1

    .line 166
    :cond_0
    monitor-exit p0

    .line 179
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/facebook/e/l;->d:Lcom/facebook/e/f;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_3

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/facebook/e/l;->d:Lcom/facebook/e/f;

    .line 175
    iput-object p1, p0, Lcom/facebook/e/l;->d:Lcom/facebook/e/f;

    .line 177
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-direct {p0, v0}, Lcom/facebook/e/l;->e(Lcom/facebook/e/f;)V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/e/l;Lcom/facebook/e/f;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/facebook/e/l;->c(Lcom/facebook/e/f;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/facebook/e/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/e/l;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 144
    :goto_0
    monitor-exit p0

    return v0

    .line 143
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/e/l;->c:Lcom/facebook/e/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/facebook/e/l;Lcom/facebook/e/f;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/facebook/e/l;->d(Lcom/facebook/e/f;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/facebook/e/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/e/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/e/l;->c:Lcom/facebook/e/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    monitor-exit p0

    return v0

    .line 151
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/facebook/e/l;->c:Lcom/facebook/e/f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/facebook/e/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/facebook/e/l;->b(Lcom/facebook/e/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/facebook/e/l;->l()Lcom/facebook/e/f;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 186
    invoke-direct {p0, p1}, Lcom/facebook/e/l;->e(Lcom/facebook/e/f;)V

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/facebook/e/l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-interface {p1}, Lcom/facebook/e/f;->f()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/e/l;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private d(Lcom/facebook/e/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-interface {p1}, Lcom/facebook/e/f;->b()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/e/l;->a(Lcom/facebook/e/f;Z)V

    .line 197
    invoke-direct {p0}, Lcom/facebook/e/l;->l()Lcom/facebook/e/f;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 198
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/facebook/e/f;->b()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/e/l;->a(Ljava/lang/Object;Z)Z

    .line 200
    :cond_0
    return-void
.end method

.method private e(Lcom/facebook/e/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/e/f",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p1, :cond_0

    .line 204
    invoke-interface {p1}, Lcom/facebook/e/f;->h()Z

    .line 206
    :cond_0
    return-void
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0}, Lcom/facebook/e/l;->k()Lcom/facebook/d/d/m;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/d/d/m;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/f;

    .line 122
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/e/l;->a(Lcom/facebook/e/f;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 123
    new-instance v2, Lcom/facebook/e/m;

    invoke-direct {v2, p0, v1}, Lcom/facebook/e/m;-><init>(Lcom/facebook/e/l;Lcom/facebook/e/k;)V

    invoke-static {}, Lcom/facebook/d/b/a;->a()Lcom/facebook/d/b/a;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/facebook/e/f;->a(Lcom/facebook/e/i;Ljava/util/concurrent/Executor;)V

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_1
    return v0

    :cond_0
    move-object v0, v1

    .line 121
    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/e/l;->e(Lcom/facebook/e/f;)V

    .line 127
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized k()Lcom/facebook/d/d/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/d/d/m",
            "<",
            "Lcom/facebook/e/f",
            "<TT;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/e/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/e/l;->b:I

    iget-object v1, p0, Lcom/facebook/e/l;->a:Lcom/facebook/e/j;

    invoke-static {v1}, Lcom/facebook/e/j;->a(Lcom/facebook/e/j;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/facebook/e/l;->a:Lcom/facebook/e/j;

    invoke-static {v0}, Lcom/facebook/e/j;->a(Lcom/facebook/e/j;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/facebook/e/l;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/e/l;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/d/d/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized l()Lcom/facebook/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/e/f",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/e/l;->d:Lcom/facebook/e/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized c()Z
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/e/l;->l()Lcom/facebook/e/f;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/e/f;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/e/l;->l()Lcom/facebook/e/f;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/e/f;->d()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .locals 3

    .prologue
    .line 103
    monitor-enter p0

    .line 106
    :try_start_0
    invoke-super {p0}, Lcom/facebook/e/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    monitor-exit p0

    .line 116
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/facebook/e/l;->c:Lcom/facebook/e/f;

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/e/l;->c:Lcom/facebook/e/f;

    .line 111
    iget-object v1, p0, Lcom/facebook/e/l;->d:Lcom/facebook/e/f;

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/e/l;->d:Lcom/facebook/e/f;

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-direct {p0, v1}, Lcom/facebook/e/l;->e(Lcom/facebook/e/f;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/facebook/e/l;->e(Lcom/facebook/e/f;)V

    .line 116
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

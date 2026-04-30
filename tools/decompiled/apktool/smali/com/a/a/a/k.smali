.class Lcom/a/a/a/k;
.super Ljava/lang/Object;
.source "ConsumerManager.java"


# instance fields
.field final a:Lcom/a/a/a/ag;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:J

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/ThreadGroup;

.field private final j:Lcom/a/a/a/x;

.field private final k:Lcom/a/a/a/k/b;

.field private final l:Lcom/a/a/a/g/c;

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/concurrent/ThreadFactory;

.field private final o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/a/x;Lcom/a/a/a/k/b;Lcom/a/a/a/g/c;Lcom/a/a/a/c/a;)V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/k;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    iput-object p1, p0, Lcom/a/a/a/k;->j:Lcom/a/a/a/x;

    .line 72
    iput-object p2, p0, Lcom/a/a/a/k;->k:Lcom/a/a/a/k/b;

    .line 73
    iput-object p3, p0, Lcom/a/a/a/k;->l:Lcom/a/a/a/g/c;

    .line 74
    invoke-virtual {p4}, Lcom/a/a/a/c/a;->k()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/k;->h:I

    .line 75
    invoke-virtual {p4}, Lcom/a/a/a/c/a;->i()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/k;->e:I

    .line 76
    invoke-virtual {p4}, Lcom/a/a/a/c/a;->h()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/k;->d:I

    .line 77
    invoke-virtual {p4}, Lcom/a/a/a/c/a;->f()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/a/a/a/k;->f:J

    .line 79
    invoke-virtual {p4}, Lcom/a/a/a/c/a;->p()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/k;->g:I

    .line 80
    invoke-virtual {p4}, Lcom/a/a/a/c/a;->q()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/k;->n:Ljava/util/concurrent/ThreadFactory;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/k;->m:Ljava/util/Map;

    .line 82
    new-instance v0, Lcom/a/a/a/ag;

    invoke-direct {v0, p2}, Lcom/a/a/a/ag;-><init>(Lcom/a/a/a/k/b;)V

    iput-object v0, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    .line 83
    new-instance v0, Ljava/lang/ThreadGroup;

    const-string/jumbo v1, "JobConsumers"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/a/k;->i:Ljava/lang/ThreadGroup;

    .line 84
    return-void
.end method

.method private a(Lcom/a/a/a/ah;[Ljava/lang/String;Z)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/ah;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 261
    iget-object v0, p0, Lcom/a/a/a/k;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 262
    const-string/jumbo v3, "checking job tag %s. tags of job: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 263
    invoke-virtual {v0}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/a/a/r;->getTags()Ljava/util/Set;

    move-result-object v6

    aput-object v6, v4, v5

    .line 262
    invoke-static {v3, v4}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v0}, Lcom/a/a/a/s;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {v0}, Lcom/a/a/a/s;->n()Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    invoke-virtual {v0}, Lcom/a/a/a/s;->l()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/a/a/a/ah;->a([Ljava/lang/String;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/a/a/a/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    if-eqz p3, :cond_1

    .line 274
    invoke-virtual {v0}, Lcom/a/a/a/s;->o()V

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v0}, Lcom/a/a/a/s;->m()V

    goto :goto_0

    .line 280
    :cond_2
    return-object v1
.end method

.method private a(Z)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    const-string/jumbo v0, "considering adding a new consumer. Should poke all waiting? %s isRunning? %s waiting workers? %d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/a/a/a/k;->j:Lcom/a/a/a/x;

    invoke-virtual {v4}, Lcom/a/a/a/x;->c()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v4, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    .line 125
    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/a/a/a/k;->j:Lcom/a/a/a/x;

    invoke-virtual {v0}, Lcom/a/a/a/x;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string/jumbo v0, "jobqueue is not running, no consumers will be added"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 152
    :goto_0
    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 133
    const-string/jumbo v0, "there are waiting workers, will poke them instead"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_1

    .line 135
    iget-object v0, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 136
    iget-object v1, p0, Lcom/a/a/a/k;->l:Lcom/a/a/a/g/c;

    const-class v5, Lcom/a/a/a/g/a/e;

    invoke-virtual {v1, v5}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/g/a/e;

    .line 137
    invoke-virtual {v1, v6}, Lcom/a/a/a/g/a/e;->a(I)V

    .line 138
    iget-object v0, v0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    .line 139
    if-nez p1, :cond_2

    .line 143
    :cond_1
    const-string/jumbo v0, "there were waiting workers, poked them and I\'m done"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 144
    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    .line 146
    :cond_3
    invoke-direct {p0}, Lcom/a/a/a/k;->g()Z

    move-result v0

    .line 147
    const-string/jumbo v1, "nothing has been poked. are we above load factor? %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    if-eqz v0, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/a/a/a/k;->f()V

    move v0, v3

    .line 150
    goto :goto_0

    :cond_4
    move v0, v2

    .line 152
    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 156
    const-string/jumbo v0, "adding another consumer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v1, Lcom/a/a/a/m;

    iget-object v0, p0, Lcom/a/a/a/k;->j:Lcom/a/a/a/x;

    iget-object v0, v0, Lcom/a/a/a/x;->g:Lcom/a/a/a/g/g;

    new-instance v2, Lcom/a/a/a/g/h;

    iget-object v3, p0, Lcom/a/a/a/k;->k:Lcom/a/a/a/k/b;

    iget-object v4, p0, Lcom/a/a/a/k;->l:Lcom/a/a/a/g/c;

    const-string/jumbo v5, "consumer"

    invoke-direct {v2, v3, v4, v5}, Lcom/a/a/a/g/h;-><init>(Lcom/a/a/a/k/b;Lcom/a/a/a/g/c;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/a/a/k;->l:Lcom/a/a/a/g/c;

    iget-object v4, p0, Lcom/a/a/a/k;->k:Lcom/a/a/a/k/b;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/g/e;Lcom/a/a/a/g/h;Lcom/a/a/a/g/c;Lcom/a/a/a/k/b;)V

    .line 160
    iget-object v0, p0, Lcom/a/a/a/k;->n:Ljava/util/concurrent/ThreadFactory;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/a/a/a/k;->n:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 166
    :goto_0
    iget-object v2, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 168
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/a/a/a/k;->i:Ljava/lang/ThreadGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "job-queue-worker-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 164
    iget v2, p0, Lcom/a/a/a/k;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    goto :goto_0
.end method

.method private g()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 172
    iget v0, p0, Lcom/a/a/a/k;->d:I

    if-lt v3, v0, :cond_0

    .line 173
    const-string/jumbo v0, "too many consumers, clearly above load factor %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :goto_0
    return v1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/k;->j:Lcom/a/a/a/x;

    invoke-virtual {v0}, Lcom/a/a/a/x;->d()I

    move-result v4

    .line 177
    iget-object v0, p0, Lcom/a/a/a/k;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    .line 179
    iget v0, p0, Lcom/a/a/a/k;->h:I

    mul-int/2addr v0, v3

    add-int v6, v4, v5

    if-lt v0, v6, :cond_1

    iget v0, p0, Lcom/a/a/a/k;->e:I

    if-ge v3, v0, :cond_2

    add-int v0, v4, v5

    if-ge v3, v0, :cond_2

    :cond_1
    move v0, v2

    .line 181
    :goto_1
    const-string/jumbo v6, "check above load factor: totalCons:%s minCons:%s maxConsCount: %s, loadFactor %s remainingJobs: %s running holders: %s. isAbove:%s"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    .line 182
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    iget v1, p0, Lcom/a/a/a/k;->e:I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    iget v2, p0, Lcom/a/a/a/k;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/a/a/a/k;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x6

    .line 184
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    .line 181
    invoke-static {v6, v7}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 185
    goto :goto_0

    :cond_2
    move v0, v1

    .line 179
    goto :goto_1
.end method


# virtual methods
.method a(Lcom/a/a/a/ah;[Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/ah;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/k;->a(Lcom/a/a/a/ah;[Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->a(Z)Z

    .line 96
    return-void
.end method

.method a(Lcom/a/a/a/g/a/j;Lcom/a/a/a/s;Lcom/a/a/a/ae;)V
    .locals 8

    .prologue
    .line 285
    invoke-virtual {p1}, Lcom/a/a/a/g/a/j;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 286
    iget-boolean v1, v0, Lcom/a/a/a/m;->e:Z

    if-nez v1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this worker should not have a job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/a/a/a/m;->e:Z

    .line 290
    iget-object v0, p0, Lcom/a/a/a/k;->m:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/r;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {p2}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    invoke-virtual {p2}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/ag;->b(Ljava/lang/String;)V

    .line 293
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/a/a/a/ae;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {p3}, Lcom/a/a/a/ae;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    invoke-virtual {p2}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/k;->k:Lcom/a/a/a/k/b;

    .line 296
    invoke-interface {v2}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v2

    .line 297
    invoke-virtual {p3}, Lcom/a/a/a/ae;->b()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 295
    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/a/ag;->a(Ljava/lang/String;J)V

    .line 300
    :cond_1
    return-void
.end method

.method a(Lcom/a/a/a/g/a/g;)Z
    .locals 12
    .param p1    # Lcom/a/a/a/g/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 192
    invoke-virtual {p1}, Lcom/a/a/a/g/a/g;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 193
    iget-boolean v1, v0, Lcom/a/a/a/m;->e:Z

    if-eqz v1, :cond_0

    .line 244
    :goto_0
    return v3

    .line 196
    :cond_0
    const/4 v1, 0x0

    .line 197
    iget-object v4, p0, Lcom/a/a/a/k;->j:Lcom/a/a/a/x;

    invoke-virtual {v4}, Lcom/a/a/a/x;->c()Z

    move-result v7

    .line 198
    if-eqz v7, :cond_b

    .line 199
    iget-object v1, p0, Lcom/a/a/a/k;->j:Lcom/a/a/a/x;

    iget-object v4, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    invoke-virtual {v4}, Lcom/a/a/a/ag;->a()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/a/a/a/x;->a(Ljava/util/Collection;)Lcom/a/a/a/s;

    move-result-object v1

    move-object v4, v1

    .line 201
    :goto_1
    if-eqz v4, :cond_2

    .line 202
    iput-boolean v3, v0, Lcom/a/a/a/m;->e:Z

    .line 203
    iget-object v1, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    invoke-virtual {v4}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/ag;->a(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/a/a/a/k;->l:Lcom/a/a/a/g/c;

    const-class v2, Lcom/a/a/a/g/a/i;

    invoke-virtual {v1, v2}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/g/a/i;

    .line 205
    invoke-virtual {v1, v4}, Lcom/a/a/a/g/a/i;->a(Lcom/a/a/a/s;)V

    .line 206
    iget-object v2, p0, Lcom/a/a/a/k;->m:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/a/a/r;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {v4}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/a/a/a/k;->a:Lcom/a/a/a/ag;

    invoke-virtual {v4}, Lcom/a/a/a/s;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/a/a/a/ag;->a(Ljava/lang/String;)V

    .line 210
    :cond_1
    iget-object v0, v0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v0, v1}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Lcom/a/a/a/g/a/g;->c()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/a/a/a/k;->f:J

    add-long/2addr v4, v8

    .line 214
    const-string/jumbo v1, "keep alive: %s"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {v1, v6}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v6, p0, Lcom/a/a/a/k;->e:I

    if-le v1, v6, :cond_4

    move v6, v3

    .line 216
    :goto_2
    if-eqz v7, :cond_3

    if-eqz v6, :cond_5

    iget-object v1, p0, Lcom/a/a/a/k;->k:Lcom/a/a/a/k/b;

    invoke-interface {v1}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-gez v1, :cond_5

    :cond_3
    move v1, v3

    .line 217
    :goto_3
    const-string/jumbo v8, "Consumer idle, will kill? %s . isRunning: %s"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v3

    invoke-static {v8, v9}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    if-eqz v1, :cond_6

    .line 219
    iget-object v1, p0, Lcom/a/a/a/k;->l:Lcom/a/a/a/g/c;

    const-class v4, Lcom/a/a/a/g/a/e;

    invoke-virtual {v1, v4}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/g/a/e;

    .line 220
    invoke-virtual {v1, v3}, Lcom/a/a/a/g/a/e;->a(I)V

    .line 221
    iget-object v4, v0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v4, v1}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    .line 222
    iget-object v1, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    const-string/jumbo v0, "killed consumers. remaining consumers %d"

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/a/a/a/k;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_a

    .line 226
    iget-object v0, p0, Lcom/a/a/a/k;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 227
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    :cond_4
    move v6, v2

    .line 215
    goto :goto_2

    :cond_5
    move v1, v2

    .line 216
    goto :goto_3

    .line 231
    :cond_6
    iget-object v1, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 232
    iget-object v1, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_7
    if-nez v6, :cond_8

    iget-object v1, p0, Lcom/a/a/a/k;->j:Lcom/a/a/a/x;

    invoke-virtual {v1}, Lcom/a/a/a/x;->a()Z

    move-result v1

    if-nez v1, :cond_a

    .line 235
    :cond_8
    iget-object v1, p0, Lcom/a/a/a/k;->l:Lcom/a/a/a/g/c;

    const-class v7, Lcom/a/a/a/g/a/e;

    invoke-virtual {v1, v7}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/g/a/e;

    .line 236
    invoke-virtual {v1, v11}, Lcom/a/a/a/g/a/e;->a(I)V

    .line 237
    if-nez v6, :cond_9

    .line 238
    iget-object v4, p0, Lcom/a/a/a/k;->k:Lcom/a/a/a/k/b;

    invoke-interface {v4}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/a/a/a/k;->f:J

    add-long/2addr v4, v6

    .line 240
    :cond_9
    iget-object v0, v0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    invoke-virtual {v0, v1, v4, v5}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;J)V

    .line 241
    const-string/jumbo v0, "poke consumer manager at %s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/a/a/a/f/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    move v3, v2

    .line 244
    goto/16 :goto_0

    :cond_b
    move-object v4, v1

    goto/16 :goto_1
.end method

.method public a(Lcom/a/a/a/j/c;)Z
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/a/a/a/k;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/s;

    .line 312
    invoke-virtual {v0}, Lcom/a/a/a/s;->j()Lcom/a/a/a/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/r;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/a/a/a/j/c;->c()I

    move-result v2

    iget v0, v0, Lcom/a/a/a/s;->d:I

    if-lt v2, v0, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/a/a/a/k;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lcom/a/a/a/ah;[Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/ah;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/a/a/a/k;->a(Lcom/a/a/a/ah;[Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/a/a/a/k;->a(Z)Z

    move-result v0

    return v0
.end method

.method c()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 108
    iget-object v2, v0, Lcom/a/a/a/m;->a:Lcom/a/a/a/g/h;

    .line 109
    iget-object v0, p0, Lcom/a/a/a/k;->l:Lcom/a/a/a/g/c;

    const-class v3, Lcom/a/a/a/g/a/e;

    invoke-virtual {v0, v3}, Lcom/a/a/a/g/c;->a(Ljava/lang/Class;)Lcom/a/a/a/g/b;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/g/a/e;

    .line 110
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/a/a/a/g/a/e;->a(I)V

    .line 111
    invoke-virtual {v2, v0}, Lcom/a/a/a/g/h;->a(Lcom/a/a/a/g/b;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/a/a/a/k;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 115
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 118
    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/a/a/a/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/a/k;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/twitter/sdk/android/core/k;
.super Ljava/lang/Object;
.source "PersistedSessionManager.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/t;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/u",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/b/b;

.field private final b:Lcom/twitter/sdk/android/core/internal/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/b/e",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/internal/b/d",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/sdk/android/core/internal/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/b/d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/b/b;Lcom/twitter/sdk/android/core/internal/b/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/b/b;",
            "Lcom/twitter/sdk/android/core/internal/b/e",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 48
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v5, Lcom/twitter/sdk/android/core/internal/b/d;

    invoke-direct {v5, p1, p2, p3}, Lcom/twitter/sdk/android/core/internal/b/d;-><init>(Lcom/twitter/sdk/android/core/internal/b/b;Lcom/twitter/sdk/android/core/internal/b/e;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/k;-><init>(Lcom/twitter/sdk/android/core/internal/b/b;Lcom/twitter/sdk/android/core/internal/b/e;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/internal/b/b;Lcom/twitter/sdk/android/core/internal/b/e;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/b/b;",
            "Lcom/twitter/sdk/android/core/internal/b/e",
            "<TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/internal/b/d",
            "<TT;>;>;",
            "Lcom/twitter/sdk/android/core/internal/b/d",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/k;->h:Z

    .line 59
    iput-object p1, p0, Lcom/twitter/sdk/android/core/k;->a:Lcom/twitter/sdk/android/core/internal/b/b;

    .line 60
    iput-object p2, p0, Lcom/twitter/sdk/android/core/k;->b:Lcom/twitter/sdk/android/core/internal/b/e;

    .line 61
    iput-object p3, p0, Lcom/twitter/sdk/android/core/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    iput-object p4, p0, Lcom/twitter/sdk/android/core/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    iput-object p5, p0, Lcom/twitter/sdk/android/core/k;->e:Lcom/twitter/sdk/android/core/internal/b/d;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    iput-object p6, p0, Lcom/twitter/sdk/android/core/k;->g:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private a(JLcom/twitter/sdk/android/core/t;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;Z)V"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/b/d;

    .line 172
    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/twitter/sdk/android/core/internal/b/d;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/k;->a:Lcom/twitter/sdk/android/core/internal/b/b;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/k;->b:Lcom/twitter/sdk/android/core/internal/b/e;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/k;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/b/d;-><init>(Lcom/twitter/sdk/android/core/internal/b/b;Lcom/twitter/sdk/android/core/internal/b/e;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/twitter/sdk/android/core/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    invoke-virtual {v0, p3}, Lcom/twitter/sdk/android/core/internal/b/d;->a(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    .line 179
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/t;->b()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_2

    .line 180
    :cond_1
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->e:Lcom/twitter/sdk/android/core/internal/b/d;

    invoke-virtual {v0, p3}, Lcom/twitter/sdk/android/core/internal/b/d;->a(Ljava/lang/Object;)V

    .line 183
    monitor-exit p0

    .line 185
    :cond_2
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/k;->h:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/k;->g()V

    .line 78
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/k;->f()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/k;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->a:Lcom/twitter/sdk/android/core/internal/b/b;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/b/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/twitter/sdk/android/core/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/twitter/sdk/android/core/k;->b:Lcom/twitter/sdk/android/core/internal/b/e;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/twitter/sdk/android/core/internal/b/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/t;->b()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/twitter/sdk/android/core/k;->a(JLcom/twitter/sdk/android/core/t;Z)V

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->e:Lcom/twitter/sdk/android/core/internal/b/d;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/b/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/t;->b()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/twitter/sdk/android/core/k;->a(JLcom/twitter/sdk/android/core/t;Z)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/twitter/sdk/android/core/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/k;->a()V

    .line 147
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/k;->h:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/k;->e()V

    .line 73
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/sdk/android/core/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Session must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/k;->a()V

    .line 127
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/t;->b()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/k;->a(JLcom/twitter/sdk/android/core/t;Z)V

    .line 128
    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/twitter/sdk/android/core/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/k;->a()V

    .line 115
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    return-object v0
.end method

.method b(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/k;->a()V

    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/t;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/core/k;->c(J)V

    .line 139
    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/k;->a()V

    .line 197
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/t;->b()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->e:Lcom/twitter/sdk/android/core/internal/b/d;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/b/d;->b()V

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/b/d;

    .line 206
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/b/d;->b()V

    .line 209
    :cond_1
    return-void

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/k;->a()V

    .line 166
    iget-object v0, p0, Lcom/twitter/sdk/android/core/k;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

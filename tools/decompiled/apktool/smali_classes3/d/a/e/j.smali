.class public final Ld/a/e/j;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/concurrent/ExecutorService;

.field static final synthetic s:Z


# instance fields
.field final b:Z

.field final c:Ld/a/e/s;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ld/a/e/ab;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/String;

.field f:I

.field g:I

.field h:Z

.field final i:Ld/a/e/aj;

.field j:J

.field k:J

.field l:Ld/a/e/al;

.field final m:Ld/a/e/al;

.field n:Z

.field final o:Ljava/net/Socket;

.field final p:Ld/a/e/af;

.field final q:Ld/a/e/u;

.field final r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ld/a/e/ai;",
            ">;"
        }
    .end annotation
.end field

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 55
    const-class v0, Ld/a/e/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Ld/a/e/j;->s:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp Http2Connection"

    .line 71
    invoke-static {v0, v8}, Ld/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Ld/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0
.end method

.method constructor <init>(Ld/a/e/r;)V
    .locals 11

    .prologue
    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ld/a/e/j;->d:Ljava/util/Map;

    .line 101
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Ld/a/e/j;->j:J

    .line 110
    new-instance v0, Ld/a/e/al;

    invoke-direct {v0}, Ld/a/e/al;-><init>()V

    iput-object v0, p0, Ld/a/e/j;->l:Ld/a/e/al;

    .line 116
    new-instance v0, Ld/a/e/al;

    invoke-direct {v0}, Ld/a/e/al;-><init>()V

    iput-object v0, p0, Ld/a/e/j;->m:Ld/a/e/al;

    .line 118
    iput-boolean v2, p0, Ld/a/e/j;->n:Z

    .line 777
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ld/a/e/j;->r:Ljava/util/Set;

    .line 126
    iget-object v0, p1, Ld/a/e/r;->f:Ld/a/e/aj;

    iput-object v0, p0, Ld/a/e/j;->i:Ld/a/e/aj;

    .line 127
    iget-boolean v0, p1, Ld/a/e/r;->g:Z

    iput-boolean v0, p0, Ld/a/e/j;->b:Z

    .line 128
    iget-object v0, p1, Ld/a/e/r;->e:Ld/a/e/s;

    iput-object v0, p0, Ld/a/e/j;->c:Ld/a/e/s;

    .line 130
    iget-boolean v0, p1, Ld/a/e/r;->g:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Ld/a/e/j;->g:I

    .line 131
    iget-boolean v0, p1, Ld/a/e/r;->g:Z

    if-eqz v0, :cond_0

    .line 132
    iget v0, p0, Ld/a/e/j;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld/a/e/j;->g:I

    .line 135
    :cond_0
    iget-boolean v0, p1, Ld/a/e/r;->g:Z

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Ld/a/e/j;->v:I

    .line 141
    iget-boolean v0, p1, Ld/a/e/r;->g:Z

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Ld/a/e/j;->l:Ld/a/e/al;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v1}, Ld/a/e/al;->a(II)Ld/a/e/al;

    .line 145
    :cond_2
    iget-object v0, p1, Ld/a/e/r;->b:Ljava/lang/String;

    iput-object v0, p0, Ld/a/e/j;->e:Ljava/lang/String;

    .line 148
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Ld/a/e/j;->e:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 150
    invoke-static {v0, v8}, Ld/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ld/a/c;->a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Ld/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    .line 151
    iget-object v0, p0, Ld/a/e/j;->m:Ld/a/e/al;

    const v1, 0xffff

    invoke-virtual {v0, v10, v1}, Ld/a/e/al;->a(II)Ld/a/e/al;

    .line 152
    iget-object v0, p0, Ld/a/e/j;->m:Ld/a/e/al;

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Ld/a/e/al;->a(II)Ld/a/e/al;

    .line 153
    iget-object v0, p0, Ld/a/e/j;->m:Ld/a/e/al;

    invoke-virtual {v0}, Ld/a/e/al;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Ld/a/e/j;->k:J

    .line 154
    iget-object v0, p1, Ld/a/e/r;->a:Ljava/net/Socket;

    iput-object v0, p0, Ld/a/e/j;->o:Ljava/net/Socket;

    .line 155
    new-instance v0, Ld/a/e/af;

    iget-object v1, p1, Ld/a/e/r;->d:Le/i;

    iget-boolean v2, p0, Ld/a/e/j;->b:Z

    invoke-direct {v0, v1, v2}, Ld/a/e/af;-><init>(Le/i;Z)V

    iput-object v0, p0, Ld/a/e/j;->p:Ld/a/e/af;

    .line 157
    new-instance v0, Ld/a/e/u;

    new-instance v1, Ld/a/e/y;

    iget-object v2, p1, Ld/a/e/r;->c:Le/j;

    iget-boolean v3, p0, Ld/a/e/j;->b:Z

    invoke-direct {v1, v2, v3}, Ld/a/e/y;-><init>(Le/j;Z)V

    invoke-direct {v0, p0, v1}, Ld/a/e/u;-><init>(Ld/a/e/j;Ld/a/e/y;)V

    iput-object v0, p0, Ld/a/e/j;->q:Ld/a/e/u;

    .line 158
    return-void

    :cond_3
    move v0, v1

    .line 130
    goto :goto_0
.end method

.method private b(ILjava/util/List;Z)Ld/a/e/ab;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;Z)",
            "Ld/a/e/ab;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 210
    if-nez p3, :cond_0

    move v3, v6

    .line 211
    :goto_0
    const/4 v4, 0x0

    .line 216
    iget-object v8, p0, Ld/a/e/j;->p:Ld/a/e/af;

    monitor-enter v8

    .line 217
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :try_start_1
    iget-boolean v0, p0, Ld/a/e/j;->h:Z

    if-eqz v0, :cond_1

    .line 219
    new-instance v0, Ld/a/e/a;

    invoke-direct {v0}, Ld/a/e/a;-><init>()V

    throw v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 236
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_0
    move v3, v7

    .line 210
    goto :goto_0

    .line 221
    :cond_1
    :try_start_3
    iget v1, p0, Ld/a/e/j;->g:I

    .line 222
    iget v0, p0, Ld/a/e/j;->g:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ld/a/e/j;->g:I

    .line 223
    new-instance v0, Ld/a/e/ab;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ld/a/e/ab;-><init>(ILd/a/e/j;ZZLjava/util/List;)V

    .line 224
    if-eqz p3, :cond_2

    iget-wide v4, p0, Ld/a/e/j;->k:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_2

    iget-wide v4, v0, Ld/a/e/ab;->b:J

    cmp-long v2, v4, v10

    if-nez v2, :cond_3

    :cond_2
    move v7, v6

    .line 225
    :cond_3
    invoke-virtual {v0}, Ld/a/e/ab;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    iget-object v2, p0, Ld/a/e/j;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    if-nez p1, :cond_6

    .line 230
    :try_start_4
    iget-object v2, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v2, v3, v1, p1, p2}, Ld/a/e/af;->a(ZIILjava/util/List;)V

    .line 236
    :goto_1
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 238
    if-eqz v7, :cond_5

    .line 239
    iget-object v1, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v1}, Ld/a/e/af;->b()V

    .line 242
    :cond_5
    return-object v0

    .line 231
    :cond_6
    :try_start_5
    iget-boolean v2, p0, Ld/a/e/j;->b:Z

    if-eqz v2, :cond_7

    .line 232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_7
    iget-object v2, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v2, p1, v1, p2}, Ld/a/e/af;->a(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/a/e/j;->m:Ld/a/e/al;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ld/a/e/al;->c(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)Ld/a/e/ab;
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/e/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/List;Z)Ld/a/e/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;Z)",
            "Ld/a/e/ab;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ld/a/e/j;->b(ILjava/util/List;Z)Ld/a/e/ab;

    move-result-object v0

    return-object v0
.end method

.method a(IJ)V
    .locals 8

    .prologue
    .line 319
    sget-object v0, Ld/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ld/a/e/l;

    const-string/jumbo v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Ld/a/e/j;->e:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Ld/a/e/l;-><init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method a(ILd/a/e/b;)V
    .locals 7

    .prologue
    .line 304
    sget-object v6, Ld/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ld/a/e/k;

    const-string/jumbo v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Ld/a/e/j;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ld/a/e/k;-><init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILd/a/e/b;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method

.method a(ILe/j;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    new-instance v5, Le/f;

    invoke-direct {v5}, Le/f;-><init>()V

    .line 828
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Le/j;->a(J)V

    .line 829
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Le/j;->a(Le/f;J)J

    .line 830
    invoke-virtual {v5}, Le/f;->b()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Le/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_0
    iget-object v8, p0, Ld/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ld/a/e/p;

    const-string/jumbo v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Ld/a/e/j;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Ld/a/e/p;-><init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILe/f;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 845
    return-void
.end method

.method a(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 780
    monitor-enter p0

    .line 781
    :try_start_0
    iget-object v0, p0, Ld/a/e/j;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    sget-object v0, Ld/a/e/b;->b:Ld/a/e/b;

    invoke-virtual {p0, p1, v0}, Ld/a/e/j;->a(ILd/a/e/b;)V

    .line 783
    monitor-exit p0

    .line 801
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Ld/a/e/j;->r:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 786
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    iget-object v6, p0, Ld/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ld/a/e/n;

    const-string/jumbo v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Ld/a/e/j;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ld/a/e/n;-><init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 786
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(ILjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ld/a/e/c;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 805
    iget-object v7, p0, Ld/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ld/a/e/o;

    const-string/jumbo v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Ld/a/e/j;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ld/a/e/o;-><init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 819
    return-void
.end method

.method public a(IZLe/f;J)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 264
    cmp-long v0, p4, v8

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v0, p2, p1, p3, v1}, Ld/a/e/af;->a(ZILe/f;I)V

    .line 293
    :cond_0
    return-void

    .line 285
    :cond_1
    :try_start_0
    iget-wide v2, p0, Ld/a/e/j;->k:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 286
    iget-object v2, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v2}, Ld/a/e/af;->c()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 287
    iget-wide v4, p0, Ld/a/e/j;->k:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Ld/a/e/j;->k:J

    .line 288
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    int-to-long v4, v2

    sub-long/2addr p4, v4

    .line 291
    iget-object v3, p0, Ld/a/e/j;->p:Ld/a/e/af;

    if-eqz p2, :cond_4

    cmp-long v0, p4, v8

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0, p1, p3, v2}, Ld/a/e/af;->a(ZILe/f;I)V

    .line 269
    :cond_2
    cmp-long v0, p4, v8

    if-lez v0, :cond_0

    .line 271
    monitor-enter p0

    .line 273
    :goto_1
    :try_start_1
    iget-wide v2, p0, Ld/a/e/j;->k:J

    cmp-long v0, v2, v8

    if-gtz v0, :cond_1

    .line 276
    iget-object v0, p0, Ld/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 277
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    :try_start_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 279
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 291
    goto :goto_0
.end method

.method a(J)V
    .locals 3

    .prologue
    .line 299
    iget-wide v0, p0, Ld/a/e/j;->k:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Ld/a/e/j;->k:J

    .line 300
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 301
    :cond_0
    return-void
.end method

.method public a(Ld/a/e/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v1, p0, Ld/a/e/j;->p:Ld/a/e/af;

    monitor-enter v1

    .line 386
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :try_start_1
    iget-boolean v0, p0, Ld/a/e/j;->h:Z

    if-eqz v0, :cond_0

    .line 388
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    :goto_0
    return-void

    .line 390
    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Ld/a/e/j;->h:Z

    .line 391
    iget v0, p0, Ld/a/e/j;->f:I

    .line 392
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 395
    :try_start_4
    iget-object v2, p0, Ld/a/e/j;->p:Ld/a/e/af;

    sget-object v3, Ld/a/c;->a:[B

    invoke-virtual {v2, v0, p1, v3}, Ld/a/e/af;->a(ILd/a/e/b;[B)V

    .line 396
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 392
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method a(Ld/a/e/b;Ld/a/e/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 408
    sget-boolean v0, Ld/a/e/j;->s:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 411
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ld/a/e/j;->a(Ld/a/e/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 418
    :goto_0
    monitor-enter p0

    .line 419
    :try_start_1
    iget-object v0, p0, Ld/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 420
    iget-object v0, p0, Ld/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Ld/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ld/a/e/ab;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/a/e/ab;

    .line 421
    iget-object v4, p0, Ld/a/e/j;->d:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object v5, v0

    .line 423
    :goto_1
    iget-object v0, p0, Ld/a/e/j;->u:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 424
    iget-object v0, p0, Ld/a/e/j;->u:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Ld/a/e/j;->u:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ld/a/e/ai;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/a/e/ai;

    .line 425
    const/4 v2, 0x0

    iput-object v2, p0, Ld/a/e/j;->u:Ljava/util/Map;

    move-object v4, v0

    .line 427
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    if-eqz v5, :cond_3

    .line 430
    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    .line 432
    :try_start_2
    invoke-virtual {v1, p2}, Ld/a/e/ab;->a(Ld/a/e/b;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 430
    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 412
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 413
    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 433
    :catch_1
    move-exception v1

    .line 434
    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_2
    move-object v1, v0

    .line 439
    :cond_3
    if-eqz v4, :cond_4

    .line 440
    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v3, v4, v0

    .line 441
    invoke-virtual {v3}, Ld/a/e/ai;->c()V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 447
    :cond_4
    :try_start_4
    iget-object v0, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v0}, Ld/a/e/af;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 454
    :cond_5
    :goto_6
    :try_start_5
    iget-object v1, p0, Ld/a/e/j;->o:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 459
    :goto_7
    if-eqz v0, :cond_6

    throw v0

    .line 448
    :catch_2
    move-exception v0

    .line 449
    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_6

    .line 460
    :cond_6
    return-void

    .line 455
    :catch_3
    move-exception v0

    goto :goto_7

    :cond_7
    move-object v4, v2

    goto :goto_2

    :cond_8
    move-object v5, v2

    goto :goto_1
.end method

.method a(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0xffff

    .line 475
    if-eqz p1, :cond_0

    .line 476
    iget-object v0, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v0}, Ld/a/e/af;->a()V

    .line 477
    iget-object v0, p0, Ld/a/e/j;->p:Ld/a/e/af;

    iget-object v1, p0, Ld/a/e/j;->l:Ld/a/e/al;

    invoke-virtual {v0, v1}, Ld/a/e/af;->b(Ld/a/e/al;)V

    .line 478
    iget-object v0, p0, Ld/a/e/j;->l:Ld/a/e/al;

    invoke-virtual {v0}, Ld/a/e/al;->d()I

    move-result v0

    .line 479
    if-eq v0, v3, :cond_0

    .line 480
    iget-object v1, p0, Ld/a/e/j;->p:Ld/a/e/af;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Ld/a/e/af;->a(IJ)V

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Ld/a/e/j;->q:Ld/a/e/u;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 484
    return-void
.end method

.method a(ZIILd/a/e/ai;)V
    .locals 9

    .prologue
    .line 351
    sget-object v8, Ld/a/e/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ld/a/e/m;

    const-string/jumbo v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Ld/a/e/j;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 352
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ld/a/e/m;-><init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ZIILd/a/e/ai;)V

    .line 351
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method declared-synchronized b(I)Ld/a/e/ab;
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/a/e/j;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/e/ab;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v0}, Ld/a/e/af;->b()V

    .line 376
    return-void
.end method

.method b(ILd/a/e/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v0, p1, p2}, Ld/a/e/af;->a(ILd/a/e/b;)V

    .line 316
    return-void
.end method

.method b(ZIILd/a/e/ai;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v1, p0, Ld/a/e/j;->p:Ld/a/e/af;

    monitor-enter v1

    .line 365
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Ld/a/e/ai;->a()V

    .line 366
    :cond_0
    iget-object v0, p0, Ld/a/e/j;->p:Ld/a/e/af;

    invoke-virtual {v0, p1, p2, p3}, Ld/a/e/af;->a(ZII)V

    .line 367
    monitor-exit v1

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method declared-synchronized c(I)Ld/a/e/ai;
    .locals 2

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld/a/e/j;->u:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/a/e/j;->u:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/a/e/ai;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld/a/e/j;->a(Z)V

    .line 468
    return-void
.end method

.method c(ILd/a/e/b;)V
    .locals 7

    .prologue
    .line 848
    iget-object v6, p0, Ld/a/e/j;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ld/a/e/q;

    const-string/jumbo v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Ld/a/e/j;->e:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Ld/a/e/q;-><init>(Ld/a/e/j;Ljava/lang/String;[Ljava/lang/Object;ILd/a/e/b;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 856
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Ld/a/e/b;->a:Ld/a/e/b;

    sget-object v1, Ld/a/e/b;->f:Ld/a/e/b;

    invoke-virtual {p0, v0, v1}, Ld/a/e/j;->a(Ld/a/e/b;Ld/a/e/b;)V

    .line 405
    return-void
.end method

.method public declared-synchronized d()Z
    .locals 1

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ld/a/e/j;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(I)Z
    .locals 1

    .prologue
    .line 773
    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

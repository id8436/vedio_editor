.class public Lcom/a/a/a/a;
.super Lcom/a/a/a/j/a;
.source "BatchingScheduler.java"


# static fields
.field public static final a:J


# instance fields
.field final b:J

.field final c:J

.field private final d:Lcom/a/a/a/j/a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/a/a/a/k/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/a/a/a/a;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/j/a;Lcom/a/a/a/k/b;)V
    .locals 2

    .prologue
    .line 43
    sget-wide v0, Lcom/a/a/a/a;->a:J

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/a/a/a/a;-><init>(Lcom/a/a/a/j/a;Lcom/a/a/a/k/b;J)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/a/a/a/j/a;Lcom/a/a/a/k/b;J)V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/a/a/a/j/a;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/j/a;

    .line 57
    iput-object p2, p0, Lcom/a/a/a/a;->f:Lcom/a/a/a/k/b;

    .line 58
    iput-wide p3, p0, Lcom/a/a/a/a;->b:J

    .line 59
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/a/a/a;->c:J

    .line 60
    return-void
.end method

.method private a(Lcom/a/a/a/c;Lcom/a/a/a/j/c;JLjava/lang/Long;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p1, Lcom/a/a/a/c;->c:Lcom/a/a/a/j/c;

    invoke-virtual {v1}, Lcom/a/a/a/j/c;->c()I

    move-result v1

    invoke-virtual {p2}, Lcom/a/a/a/j/c;->c()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    if-eqz p5, :cond_3

    .line 124
    iget-object v1, p1, Lcom/a/a/a/c;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p1, Lcom/a/a/a/c;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 128
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v4, p0, Lcom/a/a/a/a;->c:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 135
    :cond_2
    iget-wide v2, p1, Lcom/a/a/a/c;->a:J

    sub-long/2addr v2, p3

    .line 136
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v4, p0, Lcom/a/a/a/a;->c:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_3
    iget-object v1, p1, Lcom/a/a/a/c;->b:Ljava/lang/Long;

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method private b(Lcom/a/a/a/j/c;)V
    .locals 4

    .prologue
    .line 80
    iget-object v2, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/c;

    .line 83
    iget-object v0, v0, Lcom/a/a/a/c;->c:Lcom/a/a/a/j/c;

    invoke-virtual {v0}, Lcom/a/a/a/j/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/j/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 81
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_1
    monitor-exit v2

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c(Lcom/a/a/a/j/c;)Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/a/a/a/a;->f:Lcom/a/a/a/k/b;

    invoke-interface {v1}, Lcom/a/a/a/k/b;->a()J

    move-result-wide v8

    .line 92
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/a/a/a/j/c;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long v4, v2, v8

    .line 93
    invoke-virtual {p1}, Lcom/a/a/a/j/c;->d()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v6, v0

    .line 96
    :goto_0
    iget-object v7, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    monitor-enter v7

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/c;

    move-object v1, p0

    move-object v3, p1

    .line 98
    invoke-direct/range {v1 .. v6}, Lcom/a/a/a/a;->a(Lcom/a/a/a/c;Lcom/a/a/a/j/c;JLjava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v0, 0x0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_1
    return v0

    .line 93
    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 95
    invoke-virtual {p1}, Lcom/a/a/a/j/c;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .line 103
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/a/a/a/j/c;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/a/a/a/a;->b:J

    div-long/2addr v2, v4

    .line 104
    add-long/2addr v2, v12

    iget-wide v4, p0, Lcom/a/a/a/a;->b:J

    mul-long/2addr v2, v4

    .line 105
    invoke-virtual {p1, v2, v3}, Lcom/a/a/a/j/c;->a(J)V

    .line 107
    invoke-virtual {p1}, Lcom/a/a/a/j/c;->d()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {p1}, Lcom/a/a/a/j/c;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/a/a/a/a;->b:J

    div-long/2addr v4, v10

    .line 109
    add-long/2addr v4, v12

    iget-wide v10, p0, Lcom/a/a/a/a;->b:J

    mul-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Lcom/a/a/a/j/c;->a(Ljava/lang/Long;)V

    .line 112
    :goto_2
    iget-object v4, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    new-instance v5, Lcom/a/a/a/c;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v8

    if-nez v1, :cond_3

    .line 113
    :goto_3
    invoke-direct {v5, v2, v3, v0, p1}, Lcom/a/a/a/c;-><init>(JLjava/lang/Long;Lcom/a/a/a/j/c;)V

    .line 112
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v0, 0x1

    monitor-exit v7

    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 112
    :cond_3
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    add-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/a/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/j/a;

    invoke-virtual {v0}, Lcom/a/a/a/j/a;->a()V

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;Lcom/a/a/a/j/b;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/a/a/a/j/a;->a(Landroid/content/Context;Lcom/a/a/a/j/b;)V

    .line 65
    iget-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/j/a;

    new-instance v1, Lcom/a/a/a/b;

    invoke-direct {v1, p0}, Lcom/a/a/a/b;-><init>(Lcom/a/a/a/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/j/a;->a(Landroid/content/Context;Lcom/a/a/a/j/b;)V

    .line 77
    return-void
.end method

.method public a(Lcom/a/a/a/j/c;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/a/a/a/a;->c(Lcom/a/a/a/j/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/j/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a/j/a;->a(Lcom/a/a/a/j/c;)V

    .line 144
    :cond_0
    return-void
.end method

.method public a(Lcom/a/a/a/j/c;Z)V
    .locals 2

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/a/a/a/a;->b(Lcom/a/a/a/j/c;)V

    .line 149
    iget-object v0, p0, Lcom/a/a/a/a;->d:Lcom/a/a/a/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/a/a/a/j/a;->a(Lcom/a/a/a/j/c;Z)V

    .line 150
    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p0, p1}, Lcom/a/a/a/a;->a(Lcom/a/a/a/j/c;)V

    .line 153
    :cond_0
    return-void
.end method

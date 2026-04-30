.class public Lcom/twitter/sdk/android/core/internal/scribe/z;
.super Ljava/lang/Object;
.source "ScribeClient.java"


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/internal/scribe/ah;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lcom/twitter/sdk/android/core/internal/scribe/aa;

.field private final e:Lcom/twitter/sdk/android/core/internal/scribe/ac;

.field private final f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final g:Lcom/twitter/sdk/android/core/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/u",
            "<+",
            "Lcom/twitter/sdk/android/core/t",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/twitter/sdk/android/core/g;

.field private final i:Lcom/twitter/sdk/android/core/internal/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/aa;Lcom/twitter/sdk/android/core/internal/scribe/ac;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/scribe/aa;",
            "Lcom/twitter/sdk/android/core/internal/scribe/ac;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/u",
            "<+",
            "Lcom/twitter/sdk/android/core/t",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/g;",
            "Lcom/twitter/sdk/android/core/internal/s;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 98
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->d:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    .line 99
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->e:Lcom/twitter/sdk/android/core/internal/scribe/ac;

    .line 100
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 101
    iput-object p6, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->g:Lcom/twitter/sdk/android/core/u;

    .line 102
    iput-object p7, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->h:Lcom/twitter/sdk/android/core/g;

    .line 103
    iput-object p8, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->i:Lcom/twitter/sdk/android/core/internal/s;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    return-void
.end method

.method private d(J)Lcom/twitter/sdk/android/core/internal/scribe/ah;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v4, Lcom/twitter/sdk/android/core/internal/scribe/y;

    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/b/a;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/internal/b/a;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/internal/b/a;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/z;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/z;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/scribe/y;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/ae;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->e:Lcom/twitter/sdk/android/core/internal/scribe/ac;

    new-instance v3, Lcom/twitter/sdk/android/core/internal/y;

    invoke-direct {v3}, Lcom/twitter/sdk/android/core/internal/y;-><init>()V

    iget-object v5, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->d:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget v5, v5, Lcom/twitter/sdk/android/core/internal/scribe/aa;->g:I

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/ae;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/g;Lcom/twitter/sdk/android/core/internal/o;Lcom/twitter/sdk/android/core/internal/scribe/y;I)V

    .line 148
    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/ah;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/sdk/android/core/internal/scribe/z;->a(JLcom/twitter/sdk/android/core/internal/scribe/ae;)Lcom/twitter/sdk/android/core/internal/scribe/q;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/twitter/sdk/android/core/internal/scribe/ah;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/q;Lcom/twitter/sdk/android/core/internal/scribe/h;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v1
.end method


# virtual methods
.method a(J)Lcom/twitter/sdk/android/core/internal/scribe/ah;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/internal/scribe/z;->d(J)Lcom/twitter/sdk/android/core/internal/scribe/ah;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/scribe/ah;

    return-object v0
.end method

.method a(JLcom/twitter/sdk/android/core/internal/scribe/ae;)Lcom/twitter/sdk/android/core/internal/scribe/q;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/twitter/sdk/android/core/internal/scribe/ae;",
            ")",
            "Lcom/twitter/sdk/android/core/internal/scribe/q",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->d:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/internal/scribe/aa;->a:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    const-string/jumbo v1, "Scribe enabled"

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/d;

    iget-object v11, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    iget-object v12, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v13, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->d:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->d:Lcom/twitter/sdk/android/core/internal/scribe/aa;

    iget-object v6, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iget-object v7, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->g:Lcom/twitter/sdk/android/core/u;

    iget-object v8, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->h:Lcom/twitter/sdk/android/core/g;

    iget-object v9, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v10, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->i:Lcom/twitter/sdk/android/core/internal/s;

    move-wide/from16 v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/internal/scribe/aa;JLcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/s;)V

    move-object v2, v0

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p3

    move-object v6, v13

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/twitter/sdk/android/core/internal/scribe/d;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/twitter/sdk/android/core/internal/scribe/ae;Lcom/twitter/sdk/android/core/internal/scribe/aa;Lcom/twitter/sdk/android/core/internal/scribe/ScribeFilesSender;)V

    .line 160
    :goto_0
    return-object v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    const-string/jumbo v1, "Scribe disabled"

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/b;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/scribe/b;-><init>()V

    goto :goto_0
.end method

.method public a(Lcom/twitter/sdk/android/core/internal/scribe/ab;J)Z
    .locals 4

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/twitter/sdk/android/core/internal/scribe/z;->a(J)Lcom/twitter/sdk/android/core/internal/scribe/ah;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/internal/scribe/ah;->a(Lcom/twitter/sdk/android/core/internal/scribe/ab;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/z;->b:Landroid/content/Context;

    const-string/jumbo v2, "Failed to scribe event"

    invoke-static {v1, v2, v0}, Lcom/twitter/sdk/android/core/internal/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_se.tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_se_to_send"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

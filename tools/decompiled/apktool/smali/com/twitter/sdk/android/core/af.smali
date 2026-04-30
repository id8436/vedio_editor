.class public Lcom/twitter/sdk/android/core/af;
.super Ljava/lang/Object;
.source "TwitterCore.java"


# static fields
.field static volatile a:Lcom/twitter/sdk/android/core/af;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field b:Lcom/twitter/sdk/android/core/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/u",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/twitter/sdk/android/core/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/u",
            "<",
            "Lcom/twitter/sdk/android/core/e;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/twitter/sdk/android/core/internal/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/t",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/twitter/sdk/android/core/t;",
            "Lcom/twitter/sdk/android/core/w;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private volatile h:Lcom/twitter/sdk/android/core/w;

.field private volatile i:Lcom/twitter/sdk/android/core/g;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/af;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/w;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/w;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/twitter/sdk/android/core/t;",
            "Lcom/twitter/sdk/android/core/w;",
            ">;",
            "Lcom/twitter/sdk/android/core/w;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/twitter/sdk/android/core/af;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 66
    iput-object p2, p0, Lcom/twitter/sdk/android/core/af;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    iput-object p3, p0, Lcom/twitter/sdk/android/core/af;->h:Lcom/twitter/sdk/android/core/w;

    .line 68
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->b()Lcom/twitter/sdk/android/core/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/af;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/v;->a(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/af;->g:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/twitter/sdk/android/core/k;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/b/c;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/af;->g:Landroid/content/Context;

    const-string/jumbo v3, "session_store"

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/twitter/sdk/android/core/ak;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/ak;-><init>()V

    const-string/jumbo v3, "active_twittersession"

    const-string/jumbo v4, "twittersession"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/k;-><init>(Lcom/twitter/sdk/android/core/internal/b/b;Lcom/twitter/sdk/android/core/internal/b/e;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/af;->b:Lcom/twitter/sdk/android/core/u;

    .line 75
    new-instance v0, Lcom/twitter/sdk/android/core/k;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/b/c;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/af;->g:Landroid/content/Context;

    const-string/jumbo v3, "session_store"

    invoke-direct {v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/twitter/sdk/android/core/f;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/f;-><init>()V

    const-string/jumbo v3, "active_guestsession"

    const-string/jumbo v4, "guestsession"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/k;-><init>(Lcom/twitter/sdk/android/core/internal/b/b;Lcom/twitter/sdk/android/core/internal/b/e;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/af;->c:Lcom/twitter/sdk/android/core/u;

    .line 80
    new-instance v0, Lcom/twitter/sdk/android/core/internal/t;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/af;->b:Lcom/twitter/sdk/android/core/u;

    .line 81
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->b()Lcom/twitter/sdk/android/core/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/v;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/twitter/sdk/android/core/internal/aa;

    invoke-direct {v3}, Lcom/twitter/sdk/android/core/internal/aa;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/t;-><init>(Lcom/twitter/sdk/android/core/u;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/x;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/af;->d:Lcom/twitter/sdk/android/core/internal/t;

    .line 82
    return-void
.end method

.method public static a()Lcom/twitter/sdk/android/core/af;
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lcom/twitter/sdk/android/core/af;->a:Lcom/twitter/sdk/android/core/af;

    if-nez v0, :cond_1

    .line 86
    const-class v1, Lcom/twitter/sdk/android/core/af;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/core/af;->a:Lcom/twitter/sdk/android/core/af;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/twitter/sdk/android/core/af;

    invoke-static {}, Lcom/twitter/sdk/android/core/v;->b()Lcom/twitter/sdk/android/core/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/v;->d()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/af;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    sput-object v0, Lcom/twitter/sdk/android/core/af;->a:Lcom/twitter/sdk/android/core/af;

    .line 89
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->b()Lcom/twitter/sdk/android/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/v;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/twitter/sdk/android/core/ag;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/ag;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    sget-object v0, Lcom/twitter/sdk/android/core/af;->a:Lcom/twitter/sdk/android/core/af;

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private h()V
    .locals 6

    .prologue
    .line 127
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/af;->f()Lcom/twitter/sdk/android/core/u;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/af;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v2

    invoke-static {}, Lcom/twitter/sdk/android/core/v;->b()Lcom/twitter/sdk/android/core/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/v;->c()Lcom/twitter/sdk/android/core/internal/s;

    move-result-object v3

    const-string/jumbo v4, "TwitterCore"

    .line 129
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/af;->b()Ljava/lang/String;

    move-result-object v5

    .line 127
    invoke-static/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/an;->a(Landroid/content/Context;Lcom/twitter/sdk/android/core/u;Lcom/twitter/sdk/android/core/g;Lcom/twitter/sdk/android/core/internal/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private declared-synchronized i()V
    .locals 3

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->i:Lcom/twitter/sdk/android/core/g;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/z;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/z;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;-><init>(Lcom/twitter/sdk/android/core/af;Lcom/twitter/sdk/android/core/internal/z;)V

    .line 154
    new-instance v1, Lcom/twitter/sdk/android/core/g;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/af;->c:Lcom/twitter/sdk/android/core/u;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/g;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/u;)V

    iput-object v1, p0, Lcom/twitter/sdk/android/core/af;->i:Lcom/twitter/sdk/android/core/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/aj;)Lcom/twitter/sdk/android/core/w;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/twitter/sdk/android/core/w;

    invoke-direct {v1, p1}, Lcom/twitter/sdk/android/core/w;-><init>(Lcom/twitter/sdk/android/core/aj;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/w;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string/jumbo v0, "3.1.1.9"

    return-object v0
.end method

.method public c()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method d()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->b:Lcom/twitter/sdk/android/core/u;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/u;->b()Lcom/twitter/sdk/android/core/t;

    .line 112
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->c:Lcom/twitter/sdk/android/core/u;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/u;->b()Lcom/twitter/sdk/android/core/t;

    .line 113
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/af;->g()Lcom/twitter/sdk/android/core/g;

    .line 114
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/af;->h()V

    .line 118
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->d:Lcom/twitter/sdk/android/core/internal/t;

    .line 119
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->b()Lcom/twitter/sdk/android/core/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/v;->f()Lcom/twitter/sdk/android/core/internal/a;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/t;->a(Lcom/twitter/sdk/android/core/internal/a;)V

    .line 120
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "com.twitter.sdk.android:twitter-core"

    return-object v0
.end method

.method public f()Lcom/twitter/sdk/android/core/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/u",
            "<",
            "Lcom/twitter/sdk/android/core/aj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->b:Lcom/twitter/sdk/android/core/u;

    return-object v0
.end method

.method public g()Lcom/twitter/sdk/android/core/g;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->i:Lcom/twitter/sdk/android/core/g;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/af;->i()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/af;->i:Lcom/twitter/sdk/android/core/g;

    return-object v0
.end method

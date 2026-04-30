.class public Lcom/twitter/sdk/android/core/v;
.super Ljava/lang/Object;
.source "Twitter.java"


# static fields
.field static final a:Lcom/twitter/sdk/android/core/j;

.field static volatile b:Lcom/twitter/sdk/android/core/v;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/twitter/sdk/android/core/internal/s;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final g:Lcom/twitter/sdk/android/core/internal/a;

.field private final h:Lcom/twitter/sdk/android/core/j;

.field private final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/twitter/sdk/android/core/d;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/d;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/v;->a:Lcom/twitter/sdk/android/core/j;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/sdk/android/core/ab;)V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->c:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/twitter/sdk/android/core/internal/s;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/v;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->d:Lcom/twitter/sdk/android/core/internal/s;

    .line 55
    new-instance v0, Lcom/twitter/sdk/android/core/internal/a;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/v;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/twitter/sdk/android/core/internal/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->g:Lcom/twitter/sdk/android/core/internal/a;

    .line 57
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/twitter/sdk/android/core/v;->c:Landroid/content/Context;

    const-string/jumbo v1, "com.twitter.sdk.android.CONSUMER_KEY"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/twitter/sdk/android/core/v;->c:Landroid/content/Context;

    const-string/jumbo v2, "com.twitter.sdk.android.CONSUMER_SECRET"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    invoke-direct {v2, v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/twitter/sdk/android/core/v;->f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 65
    :goto_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 66
    const-string/jumbo v0, "twitter-worker"

    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/p;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->e:Ljava/util/concurrent/ExecutorService;

    .line 71
    :goto_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->b:Lcom/twitter/sdk/android/core/j;

    if-nez v0, :cond_2

    .line 72
    sget-object v0, Lcom/twitter/sdk/android/core/v;->a:Lcom/twitter/sdk/android/core/j;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->h:Lcom/twitter/sdk/android/core/j;

    .line 77
    :goto_2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/v;->i:Z

    .line 82
    :goto_3
    return-void

    .line 62
    :cond_0
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->c:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->d:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->e:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->b:Lcom/twitter/sdk/android/core/j;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/v;->h:Lcom/twitter/sdk/android/core/j;

    goto :goto_2

    .line 80
    :cond_3
    iget-object v0, p1, Lcom/twitter/sdk/android/core/ab;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/v;->i:Z

    goto :goto_3
.end method

.method static a()V
    .locals 2

    .prologue
    .line 142
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must initialize Twitter before using getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method public static a(Lcom/twitter/sdk/android/core/ab;)V
    .locals 0

    .prologue
    .line 129
    invoke-static {p0}, Lcom/twitter/sdk/android/core/v;->b(Lcom/twitter/sdk/android/core/ab;)Lcom/twitter/sdk/android/core/v;

    .line 130
    return-void
.end method

.method public static b()Lcom/twitter/sdk/android/core/v;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->a()V

    .line 152
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;

    return-object v0
.end method

.method static declared-synchronized b(Lcom/twitter/sdk/android/core/ab;)Lcom/twitter/sdk/android/core/v;
    .locals 2

    .prologue
    .line 133
    const-class v1, Lcom/twitter/sdk/android/core/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/twitter/sdk/android/core/v;

    invoke-direct {v0, p0}, Lcom/twitter/sdk/android/core/v;-><init>(Lcom/twitter/sdk/android/core/ab;)V

    sput-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;

    .line 135
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;

    iget-boolean v0, v0, Lcom/twitter/sdk/android/core/v;->i:Z

    goto :goto_0
.end method

.method public static h()Lcom/twitter/sdk/android/core/j;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;

    if-nez v0, :cond_0

    .line 207
    sget-object v0, Lcom/twitter/sdk/android/core/v;->a:Lcom/twitter/sdk/android/core/j;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/twitter/sdk/android/core/v;->b:Lcom/twitter/sdk/android/core/v;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/v;->h:Lcom/twitter/sdk/android/core/j;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/content/Context;
    .locals 4

    .prologue
    .line 160
    new-instance v0, Lcom/twitter/sdk/android/core/ae;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/v;->c:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ".TwitterKit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/ae;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public c()Lcom/twitter/sdk/android/core/internal/s;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/twitter/sdk/android/core/v;->d:Lcom/twitter/sdk/android/core/internal/s;

    return-object v0
.end method

.method public d()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/twitter/sdk/android/core/v;->f:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method public e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/sdk/android/core/v;->e:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public f()Lcom/twitter/sdk/android/core/internal/a;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/twitter/sdk/android/core/v;->g:Lcom/twitter/sdk/android/core/internal/a;

    return-object v0
.end method

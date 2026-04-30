.class Lcom/facebook/login/w;
.super Ljava/lang/Object;
.source "LoginManager.java"


# static fields
.field private static volatile a:Lcom/facebook/login/q;


# direct methods
.method static synthetic a(Landroid/content/Context;)Lcom/facebook/login/q;
    .locals 1

    .prologue
    .line 553
    invoke-static {p0}, Lcom/facebook/login/w;->b(Landroid/content/Context;)Lcom/facebook/login/q;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lcom/facebook/login/q;
    .locals 3

    .prologue
    .line 557
    const-class v1, Lcom/facebook/login/w;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 558
    :goto_0
    if-nez p0, :cond_1

    .line 559
    const/4 v0, 0x0

    .line 564
    :goto_1
    monitor-exit v1

    return-object v0

    .line 557
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/w;->f()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 561
    :cond_1
    sget-object v0, Lcom/facebook/login/w;->a:Lcom/facebook/login/q;

    if-nez v0, :cond_2

    .line 562
    new-instance v0, Lcom/facebook/login/q;

    invoke-static {}, Lcom/facebook/w;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/facebook/login/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/login/w;->a:Lcom/facebook/login/q;

    .line 564
    :cond_2
    sget-object v0, Lcom/facebook/login/w;->a:Lcom/facebook/login/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

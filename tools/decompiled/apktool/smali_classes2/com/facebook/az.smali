.class final Lcom/facebook/az;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# static fields
.field private static volatile a:Lcom/facebook/az;


# instance fields
.field private final b:Landroid/support/v4/content/LocalBroadcastManager;

.field private final c:Lcom/facebook/ay;

.field private d:Lcom/facebook/Profile;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/ay;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lcom/facebook/i/az;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "profileCache"

    invoke-static {p2, v0}, Lcom/facebook/i/az;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/facebook/az;->b:Landroid/support/v4/content/LocalBroadcastManager;

    .line 51
    iput-object p2, p0, Lcom/facebook/az;->c:Lcom/facebook/ay;

    .line 52
    return-void
.end method

.method static a()Lcom/facebook/az;
    .locals 4

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/az;->a:Lcom/facebook/az;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/facebook/az;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/facebook/az;->a:Lcom/facebook/az;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/facebook/w;->f()Landroid/content/Context;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 62
    new-instance v2, Lcom/facebook/az;

    new-instance v3, Lcom/facebook/ay;

    invoke-direct {v3}, Lcom/facebook/ay;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/facebook/az;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/ay;)V

    sput-object v2, Lcom/facebook/az;->a:Lcom/facebook/az;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lcom/facebook/az;->a:Lcom/facebook/az;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_OLD_PROFILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_NEW_PROFILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/facebook/az;->b:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 114
    return-void
.end method

.method private a(Lcom/facebook/Profile;Z)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/az;->d:Lcom/facebook/Profile;

    .line 90
    iput-object p1, p0, Lcom/facebook/az;->d:Lcom/facebook/Profile;

    .line 92
    if-eqz p2, :cond_0

    .line 93
    if-eqz p1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/facebook/az;->c:Lcom/facebook/ay;

    invoke-virtual {v1, p1}, Lcom/facebook/ay;->a(Lcom/facebook/Profile;)V

    .line 100
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/facebook/i/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    invoke-direct {p0, v0, p1}, Lcom/facebook/az;->a(Lcom/facebook/Profile;Lcom/facebook/Profile;)V

    .line 103
    :cond_1
    return-void

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/facebook/az;->c:Lcom/facebook/ay;

    invoke-virtual {v1}, Lcom/facebook/ay;->b()V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/facebook/Profile;)V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/az;->a(Lcom/facebook/Profile;Z)V

    .line 86
    return-void
.end method

.method b()Lcom/facebook/Profile;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/az;->d:Lcom/facebook/Profile;

    return-object v0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/facebook/az;->c:Lcom/facebook/ay;

    invoke-virtual {v1}, Lcom/facebook/ay;->a()Lcom/facebook/Profile;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0, v1, v0}, Lcom/facebook/az;->a(Lcom/facebook/Profile;Z)V

    .line 78
    const/4 v0, 0x1

    .line 81
    :cond_0
    return v0
.end method

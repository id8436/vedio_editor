.class public Lcom/a/a/a/h/d;
.super Ljava/lang/Object;
.source "NetworkUtilImpl.java"

# interfaces
.implements Lcom/a/a/a/h/a;
.implements Lcom/a/a/a/h/c;


# instance fields
.field private a:Lcom/a/a/a/h/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 26
    invoke-direct {p0, v0}, Lcom/a/a/a/h/d;->d(Landroid/content/Context;)V

    .line 28
    :cond_0
    invoke-direct {p0, v0}, Lcom/a/a/a/h/d;->c(Landroid/content/Context;)V

    .line 37
    :goto_0
    return-void

    .line 30
    :cond_1
    new-instance v1, Lcom/a/a/a/h/e;

    invoke-direct {v1, p0}, Lcom/a/a/a/h/e;-><init>(Lcom/a/a/a/h/d;)V

    .line 35
    invoke-static {}, Lcom/a/a/a/h/d;->a()Landroid/content/IntentFilter;

    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static a()Landroid/content/IntentFilter;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 96
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    :cond_0
    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 41
    const-string/jumbo v0, "connectivity"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 43
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 44
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xd

    .line 45
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/a/a/a/h/f;

    invoke-direct {v2, p0, p1}, Lcom/a/a/a/h/f;-><init>(Lcom/a/a/a/h/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 53
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/a/a/a/h/g;

    invoke-direct {v0, p0}, Lcom/a/a/a/h/g;-><init>(Lcom/a/a/a/h/d;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 108
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 109
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 110
    goto :goto_0

    :cond_1
    move v0, v1

    .line 112
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-static {p1}, Lcom/a/a/a/h/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 80
    :cond_0
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 86
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 87
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 89
    goto :goto_0
.end method

.method public a(Lcom/a/a/a/h/b;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/a/a/a/h/d;->a:Lcom/a/a/a/h/b;

    .line 119
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/a/a/a/h/d;->a:Lcom/a/a/a/h/b;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/h/d;->a:Lcom/a/a/a/h/b;

    invoke-virtual {p0, p1}, Lcom/a/a/a/h/d;->a(Landroid/content/Context;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/a/a/h/b;->a(I)V

    goto :goto_0
.end method

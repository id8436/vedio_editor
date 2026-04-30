.class Lcom/twitter/sdk/android/core/internal/i;
.super Ljava/lang/Object;
.source "AdvertisingInfoServiceStrategy.java"

# interfaces
.implements Lcom/twitter/sdk/android/core/internal/m;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/i;->a:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/sdk/android/core/internal/e;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 50
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "AdvertisingInfoServiceStrategy cannot be called on the main thread"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-object v0

    .line 56
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/i;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 57
    const-string/jumbo v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    new-instance v2, Lcom/twitter/sdk/android/core/internal/k;

    invoke-direct {v2, v0}, Lcom/twitter/sdk/android/core/internal/k;-><init>(Lcom/twitter/sdk/android/core/internal/j;)V

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    :try_start_1
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/i;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :try_start_2
    new-instance v3, Lcom/twitter/sdk/android/core/internal/l;

    .line 78
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/internal/k;->a()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/twitter/sdk/android/core/internal/l;-><init>(Landroid/os/IBinder;Lcom/twitter/sdk/android/core/internal/j;)V

    .line 79
    new-instance v1, Lcom/twitter/sdk/android/core/internal/e;

    invoke-virtual {v3}, Lcom/twitter/sdk/android/core/internal/l;->a()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v3}, Lcom/twitter/sdk/android/core/internal/l;->a(Lcom/twitter/sdk/android/core/internal/l;)Z

    move-result v3

    invoke-direct {v1, v4, v3}, Lcom/twitter/sdk/android/core/internal/e;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :try_start_3
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/i;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v1

    .line 79
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 60
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Unable to find Google Play Services package name"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    .line 66
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v2

    const-string/jumbo v3, "Twitter"

    const-string/jumbo v4, "Unable to determine if Google Play Services is available"

    invoke-interface {v2, v3, v4, v1}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    .line 82
    :try_start_4
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v3

    const-string/jumbo v4, "Twitter"

    const-string/jumbo v5, "Exception in binding to Google Play Service to capture AdvertisingId"

    invoke-interface {v3, v4, v5, v1}, Lcom/twitter/sdk/android/core/j;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    :try_start_5
    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 92
    :catch_3
    move-exception v1

    .line 93
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v2

    const-string/jumbo v3, "Twitter"

    const-string/jumbo v4, "Could not bind to Google Play Service to capture AdvertisingId"

    invoke-interface {v2, v3, v4, v1}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 86
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v3, p0, Lcom/twitter/sdk/android/core/internal/i;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    .line 89
    :cond_1
    invoke-static {}, Lcom/twitter/sdk/android/core/v;->h()Lcom/twitter/sdk/android/core/j;

    move-result-object v1

    const-string/jumbo v2, "Twitter"

    const-string/jumbo v3, "Could not bind to Google Play Service to capture AdvertisingId"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0
.end method

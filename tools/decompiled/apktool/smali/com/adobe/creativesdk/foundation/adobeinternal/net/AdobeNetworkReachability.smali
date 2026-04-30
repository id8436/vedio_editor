.class public Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;
.super Ljava/lang/Object;
.source "AdobeNetworkReachability.java"


# static fields
.field public static final AdobeNetworkReachabilityStatusKey:Ljava/lang/String; = "AdobeNetworkReachabilityStatusKey"

.field private static _networkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;


# instance fields
.field private _adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

.field private _applicationContext:Landroid/content/Context;

.field private _networkReceiver:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkNotReachable:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    .line 70
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_applicationContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReceiver:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;)Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    return-object v0
.end method

.method private static createAndGetNetworkReachability()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReachability:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method decideNetworkConnectivity(Landroid/net/NetworkInfo;Landroid/net/ConnectivityManager;)V
    .locals 1

    .prologue
    .line 158
    if-eqz p1, :cond_1

    .line 159
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableNonMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkReachableMetered:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    goto :goto_0

    .line 166
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkNotReachable:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    goto :goto_0
.end method

.method public getNetworkStatus()Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    return-object v0
.end method

.method public isOnline()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;->AdobeNetworkNotReachable:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyNetworkChange()V
    .locals 4

    .prologue
    .line 148
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 150
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatus;

    invoke-direct {v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatus;-><init>()V

    .line 151
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_adobeNetworkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    iput-object v3, v2, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatus;->networkStatusCode:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$AdobeNetworkStatusCode;

    .line 152
    const-string/jumbo v3, "AdobeNetworkReachabilityStatusKey"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v2, v3, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 154
    invoke-virtual {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 155
    return-void
.end method

.method public declared-synchronized startNotification(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 132
    :goto_0
    monitor-exit p0

    return v0

    .line 123
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_applicationContext:Landroid/content/Context;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;)V

    iput-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReceiver:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;

    .line 126
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_applicationContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReceiver:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    const-string/jumbo v0, "connectivity"

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 130
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->decideNetworkConnectivity(Landroid/net/NetworkInfo;Landroid/net/ConnectivityManager;)V

    .line 132
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->isOnline()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopNotification()V
    .locals 2

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReceiver:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReceiver:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_applicationContext:Landroid/content/Context;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability;->_networkReceiver:Lcom/adobe/creativesdk/foundation/adobeinternal/net/AdobeNetworkReachability$NetworkReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

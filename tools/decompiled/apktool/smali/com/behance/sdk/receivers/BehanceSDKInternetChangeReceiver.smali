.class public Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BehanceSDKInternetChangeReceiver.java"


# instance fields
.field private callbacks:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver$Callbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public isConnected(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;->callbacks:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver$Callbacks;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;->callbacks:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver$Callbacks;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;->isConnected(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver$Callbacks;->onInternetConnectionChanged(Z)V

    .line 24
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver$Callbacks;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;->callbacks:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver$Callbacks;

    .line 33
    return-void
.end method

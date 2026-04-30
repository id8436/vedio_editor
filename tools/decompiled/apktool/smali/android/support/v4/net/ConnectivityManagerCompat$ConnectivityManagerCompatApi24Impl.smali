.class Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatApi24Impl;
.super Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatApi16Impl;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatApi16Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    return v0
.end method

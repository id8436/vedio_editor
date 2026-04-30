.class public Lcom/behance/sdk/services/serviceconnections/BSDKCancelPublishProjectServiceConnection;
.super Ljava/lang/Object;
.source "BSDKCancelPublishProjectServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private binder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

.field private final publishRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/behance/sdk/services/serviceconnections/BSDKCancelPublishProjectServiceConnection;->publishRequestId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 44
    instance-of v0, p2, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    if-eqz v0, :cond_0

    .line 45
    check-cast p2, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    iput-object p2, p0, Lcom/behance/sdk/services/serviceconnections/BSDKCancelPublishProjectServiceConnection;->binder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    .line 46
    iget-object v0, p0, Lcom/behance/sdk/services/serviceconnections/BSDKCancelPublishProjectServiceConnection;->binder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    iget-object v1, p0, Lcom/behance/sdk/services/serviceconnections/BSDKCancelPublishProjectServiceConnection;->publishRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;->cancelUpload(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/services/serviceconnections/BSDKCancelPublishProjectServiceConnection;->binder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    .line 53
    return-void
.end method

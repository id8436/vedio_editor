.class public Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;
.super Ljava/lang/Object;
.source "DCXSyncStatusButton.java"

# interfaces
.implements Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;
.implements Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$ProjectSyncUpdateCallback;


# instance fields
.field private listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

.field private restrictedCompositeId:Ljava/lang/String;

.field private syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    .line 56
    iput-object p2, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->restrictedCompositeId:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->setProjectsSyncStatusListenerForSyncIcon(Lcom/adobe/premiereclip/dcx/DCXModelController$ISyncControllerSyncStatusReceiver;)V

    .line 59
    invoke-static {}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->setProjectSyncUpdateListener(Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager$ProjectSyncUpdateCallback;)V

    .line 60
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->refreshSyncState()V

    .line 61
    return-void
.end method

.method private refreshSyncState()V
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    .line 119
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/util/Utilities;->isConnectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 121
    :goto_0
    invoke-static {}, Lcom/adobe/premiereclip/PremiereClipApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/premiereclip/util/Utilities;->isOnWiFiNetwork(Landroid/content/Context;)Z

    move-result v2

    .line 122
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    .line 124
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeErrorWifiOff:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    if-eq v1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeError:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeErrorWifiOff:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    if-ne v0, v1, :cond_6

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->showConnectionFailureIcon()V

    .line 154
    :cond_1
    :goto_2
    return-void

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :cond_3
    if-eqz v0, :cond_4

    .line 128
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeError:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    goto :goto_1

    .line 132
    :cond_4
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->isSyncInitialized()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->relevantCompositeIdsAreSyncing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeActive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    goto :goto_1

    .line 138
    :cond_5
    sget-object v0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeInactive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    goto :goto_1

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeInactive:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    if-ne v0, v1, :cond_7

    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->stopAnimation()V

    goto :goto_2

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->startAnimation()V

    goto :goto_2
.end method

.method private relevantCompositeIdsAreSyncing()Z
    .locals 2

    .prologue
    .line 84
    .line 85
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXModelController;->getInstance()Lcom/adobe/premiereclip/dcx/DCXModelController;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->restrictedCompositeId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->restrictedCompositeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushesOrPullsContainsCompositeId(Ljava/lang/String;)Z

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXModelController;->pushesOrPullsExist()Z

    move-result v0

    goto :goto_0
.end method

.method private relevantCompositeIdsAssetsFromCCDownloading()Z
    .locals 2

    .prologue
    .line 100
    .line 101
    invoke-static {}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->getInstance()Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->restrictedCompositeId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->restrictedCompositeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->assetsDownloadingForProjectKey(Ljava/lang/String;)Z

    move-result v0

    .line 110
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/premiereclip/downloadmanager/CCDownloadManager;->assetsDownloading()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public ccAssetDownloadStarted(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->refreshSyncState()V

    .line 203
    return-void
.end method

.method public ccAssetDownloadStopped(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->refreshSyncState()V

    .line 208
    return-void
.end method

.method public compositeRefreshed(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->restrictedCompositeId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->restrictedCompositeId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->retryPendingPPro()V

    .line 193
    :cond_0
    return-void
.end method

.method public handleMediaSyncIndicatorButtonTapped()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->refreshSyncState()V

    .line 67
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeError:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->showConnectionFailureDialog(Z)V

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->syncMode:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    sget-object v1, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;->DCXSyncModeErrorWifiOff:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$DCXSyncMode;

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->showConnectionFailureDialog(Z)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/metrics/Metrics;->didTapSyncCloudInProjectEditor()V

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->openSyncTableView()V

    goto :goto_0
.end method

.method public pullStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->refreshSyncState()V

    .line 159
    const-string/jumbo v0, "preferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->showProjectSyncingText()V

    .line 162
    :cond_0
    return-void
.end method

.method public pullStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->refreshSyncState()V

    .line 175
    const-string/jumbo v0, "preferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->removeProjectSyncingText()V

    .line 178
    :cond_0
    return-void
.end method

.method public pushStarted(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->refreshSyncState()V

    .line 167
    const-string/jumbo v0, "preferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->showProjectSyncingText()V

    .line 170
    :cond_0
    return-void
.end method

.method public pushStopped(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/utils/AdobeCSDKException;)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->refreshSyncState()V

    .line 183
    const-string/jumbo v0, "preferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton;->listener:Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;

    invoke-interface {v0}, Lcom/adobe/premiereclip/dcx/DCXSyncStatusButton$Listener;->removeProjectSyncingText()V

    .line 186
    :cond_0
    return-void
.end method

.method public updateSyncStatus(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    return-void
.end method

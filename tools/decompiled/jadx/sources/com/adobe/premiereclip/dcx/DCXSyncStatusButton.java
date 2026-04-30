package com.adobe.premiereclip.dcx;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.downloadmanager.CCDownloadManager;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.util.Utilities;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class DCXSyncStatusButton implements DCXModelController.ISyncControllerSyncStatusReceiver, CCDownloadManager.ProjectSyncUpdateCallback {
    private Listener listener;
    private String restrictedCompositeId;
    private DCXSyncMode syncMode;

    enum DCXSyncMode {
        DCXSyncModeInactive,
        DCXSyncModeActive,
        DCXSyncModeError,
        DCXSyncModeErrorWifiOff
    }

    public interface Listener {
        void openSyncTableView();

        void removeProjectSyncingText();

        void retryPendingPPro();

        void showConnectionFailureDialog(boolean z);

        void showConnectionFailureIcon();

        void showProjectSyncingText();

        void startAnimation();

        void stopAnimation();
    }

    public DCXSyncStatusButton(Listener listener, String str) {
        this.listener = listener;
        this.restrictedCompositeId = str;
        DCXModelController.getInstance().setProjectsSyncStatusListenerForSyncIcon(this);
        CCDownloadManager.getInstance().setProjectSyncUpdateListener(this);
        refreshSyncState();
    }

    public void handleMediaSyncIndicatorButtonTapped() {
        refreshSyncState();
        if (this.syncMode == DCXSyncMode.DCXSyncModeError) {
            this.listener.showConnectionFailureDialog(false);
        } else if (this.syncMode == DCXSyncMode.DCXSyncModeErrorWifiOff) {
            this.listener.showConnectionFailureDialog(true);
        } else {
            Metrics.sharedInstance().didTapSyncCloudInProjectEditor();
            this.listener.openSyncTableView();
        }
    }

    private boolean relevantCompositeIdsAreSyncing() {
        DCXModelController dCXModelController = DCXModelController.getInstance();
        if (this.restrictedCompositeId != null) {
            return dCXModelController.pushesOrPullsContainsCompositeId(this.restrictedCompositeId);
        }
        return dCXModelController.pushesOrPullsExist();
    }

    private boolean relevantCompositeIdsAssetsFromCCDownloading() {
        CCDownloadManager cCDownloadManager = CCDownloadManager.getInstance();
        if (this.restrictedCompositeId != null) {
            return cCDownloadManager.assetsDownloadingForProjectKey(this.restrictedCompositeId);
        }
        return cCDownloadManager.assetsDownloading();
    }

    private void refreshSyncState() {
        DCXSyncMode dCXSyncMode = this.syncMode;
        boolean z = !Utilities.isConnectedToInternet(PremiereClipApplication.getContext());
        boolean zIsOnWiFiNetwork = Utilities.isOnWiFiNetwork(PremiereClipApplication.getContext());
        if (DCXModelController.getInstance().isSyncEnabled() && !zIsOnWiFiNetwork) {
            this.syncMode = DCXSyncMode.DCXSyncModeErrorWifiOff;
        } else if (z) {
            this.syncMode = DCXSyncMode.DCXSyncModeError;
        } else if (DCXModelController.getInstance().isSyncInitialized() && relevantCompositeIdsAreSyncing()) {
            this.syncMode = DCXSyncMode.DCXSyncModeActive;
        } else {
            this.syncMode = DCXSyncMode.DCXSyncModeInactive;
        }
        if (dCXSyncMode != this.syncMode) {
            if (this.syncMode == DCXSyncMode.DCXSyncModeError || this.syncMode == DCXSyncMode.DCXSyncModeErrorWifiOff) {
                this.listener.showConnectionFailureIcon();
            } else if (this.syncMode == DCXSyncMode.DCXSyncModeInactive) {
                this.listener.stopAnimation();
            } else {
                this.listener.startAnimation();
            }
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void pullStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        refreshSyncState();
        if (!str.equals("preferences")) {
            this.listener.showProjectSyncingText();
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void pushStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        refreshSyncState();
        if (!str.equals("preferences")) {
            this.listener.showProjectSyncingText();
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void pullStopped(String str, AdobeCSDKException adobeCSDKException) {
        refreshSyncState();
        if (!str.equals("preferences")) {
            this.listener.removeProjectSyncingText();
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void pushStopped(String str, AdobeCSDKException adobeCSDKException) {
        refreshSyncState();
        if (!str.equals("preferences")) {
            this.listener.removeProjectSyncingText();
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void compositeRefreshed(String str) {
        if (this.listener != null && this.restrictedCompositeId != null && this.restrictedCompositeId.equals(str)) {
            this.listener.retryPendingPPro();
        }
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.ProjectSyncUpdateCallback
    public void updateSyncStatus(Set<String> set) {
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.ProjectSyncUpdateCallback
    public void ccAssetDownloadStarted(String str) {
        refreshSyncState();
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.ProjectSyncUpdateCallback
    public void ccAssetDownloadStopped(String str) {
        refreshSyncState();
    }
}

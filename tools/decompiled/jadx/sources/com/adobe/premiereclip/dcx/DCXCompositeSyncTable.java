package com.adobe.premiereclip.dcx;

import android.os.Handler;
import android.util.Log;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXModelController;
import com.adobe.premiereclip.downloadmanager.CCDownloadManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class DCXCompositeSyncTable implements DCXModelController.ISyncControllerSyncStatusReceiver, CCDownloadManager.ProjectSyncUpdateCallback {
    private static final String ccAssetDownloadKey = "ccAssetDownload";
    private static final String kPullRequestKey = "pullRequest";
    private static final String kPushRequestKey = "pushRequest";
    private Listener listener;
    private String restrictToShowCompositeId;
    private Timer timer;
    private TimerTask timerTask;
    private static final String downloadTextPrefix = PremiereClipApplication.getContext().getResources().getString(R.string.dcx_downloadTextPrefix);
    private static final String uploadTextPrefix = PremiereClipApplication.getContext().getResources().getString(R.string.dcx_uploadTextPrefix);
    private static final String ccAssetDownloadPrefix = PremiereClipApplication.getContext().getResources().getString(R.string.cc_downloadPrefix);
    private static final String syncedText = PremiereClipApplication.getContext().getResources().getString(R.string.dcx_sync_completed);
    private static final String syncErrorText = PremiereClipApplication.getContext().getResources().getString(R.string.dcx_sync_error);
    private static final String preferenceCompositeDisplayName = PremiereClipApplication.getContext().getResources().getString(R.string.dcx_brandingProjectText);
    private HashMap<String, HashMap<String, AdobeNetworkHttpTaskHandle>> compositeRequests = new HashMap<>();
    private final List<DCXCompositeSyncTableItem> tableItems = Collections.synchronizedList(new ArrayList());
    private Handler mUIHandler = new Handler();

    public interface Listener {
        void projectAdded(int i);

        void projectStatusChanged(int i);

        void updateProjectsStatus();
    }

    public DCXCompositeSyncTable(Listener listener, String str) {
        this.restrictToShowCompositeId = null;
        this.listener = listener;
        this.restrictToShowCompositeId = str;
        setProjectsSyncStatusListener();
        getInitialPushesAndPulls();
        startTimer();
    }

    public void setProjectsSyncStatusListener() {
        DCXModelController.getInstance().setProjectsSyncStatusListener(this);
    }

    public void unSetProjectsSyncStatusListener() {
        DCXModelController.getInstance().setProjectsSyncStatusListener(null);
    }

    public void startTimer() {
        this.timer = new Timer();
        initializeTimerTask();
        this.timer.schedule(this.timerTask, 500L, 1000L);
    }

    public List<DCXCompositeSyncTableItem> getTableItems() {
        return this.tableItems;
    }

    public void stopTimer() {
        if (this.timer != null) {
            this.timer.cancel();
            this.timer = null;
        }
    }

    private void initializeTimerTask() {
        this.timerTask = new TimerTask() { // from class: com.adobe.premiereclip.dcx.DCXCompositeSyncTable.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                DCXCompositeSyncTable.this.updateContentFromRequestsAnimated(true);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContentFromRequestsAnimated(boolean z) {
        updateTableCells();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUpdatedText(AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, String str) {
        int progress = 0;
        if (adobeNetworkHttpTaskHandle != null) {
            if (adobeNetworkHttpTaskHandle.hasFinished()) {
                progress = 100;
            } else if (!adobeNetworkHttpTaskHandle.isCancelled()) {
                progress = adobeNetworkHttpTaskHandle.getProgress();
            }
        }
        return str + "(" + Integer.toString(progress) + "%)";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCCAssetDownloadText(String str) {
        return ccAssetDownloadPrefix + "(" + CCDownloadManager.getInstance().getProjectDownloadProgress(str) + ")";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContentFromComposite(DCXCompositeSyncTableItem dCXCompositeSyncTableItem) {
        String compositeId = dCXCompositeSyncTableItem.getCompositeId();
        if (compositeId != null) {
            if (compositeId.equals("preferences")) {
                dCXCompositeSyncTableItem.setProjectName(preferenceCompositeDisplayName);
                return;
            }
            BasicDCXModel basicDCXModel = (BasicDCXModel) DCXModelController.getInstance().getModelAtPath(compositeId);
            if (basicDCXModel != null) {
                String documentTitle = basicDCXModel.getDocumentTitle();
                String renditionPath = basicDCXModel.getRenditionPath();
                dCXCompositeSyncTableItem.setProjectName(documentTitle);
                dCXCompositeSyncTableItem.setProjectPosterPath(renditionPath);
            }
        }
    }

    private void getInitialPushesAndPulls() {
        if (DCXModelController.getInstance().isSyncInitialized()) {
            HashMap<String, AdobeNetworkHttpTaskHandle> compositePulls = DCXModelController.getInstance().getCompositePulls();
            for (Map.Entry<String, AdobeNetworkHttpTaskHandle> entry : compositePulls.entrySet()) {
                addTableCell(compositePulls.get(entry.getKey()), kPullRequestKey, entry.getKey(), true);
            }
            HashMap<String, AdobeNetworkHttpTaskHandle> compositePushes = DCXModelController.getInstance().getCompositePushes();
            for (Map.Entry<String, AdobeNetworkHttpTaskHandle> entry2 : compositePushes.entrySet()) {
                addTableCell(compositePushes.get(entry2.getKey()), kPushRequestKey, entry2.getKey(), true);
            }
        }
    }

    private void getInitialCCAssetDownloads() {
        Iterator<String> it = CCDownloadManager.getInstance().getDownloadProjectKeys().iterator();
        while (it.hasNext()) {
            addTableCell(null, ccAssetDownloadKey, it.next(), true);
        }
    }

    private void updateTableCells() {
        synchronized (this.tableItems) {
            this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.dcx.DCXCompositeSyncTable.2
                @Override // java.lang.Runnable
                public void run() {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= DCXCompositeSyncTable.this.tableItems.size()) {
                            break;
                        }
                        DCXCompositeSyncTableItem dCXCompositeSyncTableItem = (DCXCompositeSyncTableItem) DCXCompositeSyncTable.this.tableItems.get(i2);
                        if (dCXCompositeSyncTableItem.getPullRequest() != null) {
                            dCXCompositeSyncTableItem.setDownloadStatusText(DCXCompositeSyncTable.this.getUpdatedText(dCXCompositeSyncTableItem.getPullRequest(), DCXCompositeSyncTable.downloadTextPrefix));
                        }
                        if (dCXCompositeSyncTableItem.getPushRequest() != null) {
                            dCXCompositeSyncTableItem.setUploadStatusText(DCXCompositeSyncTable.this.getUpdatedText(dCXCompositeSyncTableItem.getPushRequest(), DCXCompositeSyncTable.uploadTextPrefix));
                        }
                        if (dCXCompositeSyncTableItem.getCcAssetDownloadText() != null) {
                            dCXCompositeSyncTableItem.setCcAssetDownloadText(DCXCompositeSyncTable.this.getCCAssetDownloadText(dCXCompositeSyncTableItem.getCompositeId()));
                        }
                        i = i2 + 1;
                    }
                    if (DCXCompositeSyncTable.this.tableItems.size() > 0) {
                        DCXCompositeSyncTable.this.listener.updateProjectsStatus();
                    }
                }
            });
        }
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void pushStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        addTableCell(adobeNetworkHttpTaskHandle, kPushRequestKey, str, false);
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void pushStopped(String str, AdobeCSDKException adobeCSDKException) {
        removeTableCell(kPushRequestKey, str, adobeCSDKException);
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void pullStarted(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        addTableCell(adobeNetworkHttpTaskHandle, kPullRequestKey, str, false);
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void pullStopped(String str, AdobeCSDKException adobeCSDKException) {
        removeTableCell(kPullRequestKey, str, adobeCSDKException);
    }

    @Override // com.adobe.premiereclip.dcx.DCXModelController.ISyncControllerSyncStatusReceiver
    public void compositeRefreshed(String str) {
    }

    private AdobeNetworkHttpTaskHandle requestForCompositeId(String str, String str2) {
        HashMap<String, AdobeNetworkHttpTaskHandle> mapRequestsForCompositeId = requestsForCompositeId(str);
        if (mapRequestsForCompositeId == null) {
            return null;
        }
        return mapRequestsForCompositeId.get(str2);
    }

    private HashMap<String, AdobeNetworkHttpTaskHandle> requestsForCompositeId(String str) {
        HashMap<String, AdobeNetworkHttpTaskHandle> map = this.compositeRequests.get(str);
        if (map == null) {
            HashMap<String, AdobeNetworkHttpTaskHandle> map2 = new HashMap<>();
            this.compositeRequests.put(str, map2);
            return map2;
        }
        return map;
    }

    private void removeTableCell(final String str, String str2, final AdobeCSDKException adobeCSDKException) {
        synchronized (this.tableItems) {
            final int i = 0;
            while (true) {
                if (i >= this.tableItems.size()) {
                    break;
                }
                if (!this.tableItems.get(i).getCompositeId().equals(str2)) {
                    i++;
                } else {
                    final DCXCompositeSyncTableItem dCXCompositeSyncTableItem = this.tableItems.get(i);
                    this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.dcx.DCXCompositeSyncTable.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (str.equals(DCXCompositeSyncTable.ccAssetDownloadKey)) {
                                dCXCompositeSyncTableItem.setCcAssetDownloadText(null);
                            } else {
                                if (str.equals(DCXCompositeSyncTable.kPullRequestKey)) {
                                    dCXCompositeSyncTableItem.setDownloadStatusText(null);
                                } else {
                                    dCXCompositeSyncTableItem.setUploadStatusText(null);
                                }
                                dCXCompositeSyncTableItem.removeRequest(str);
                            }
                            if (adobeCSDKException != null) {
                                dCXCompositeSyncTableItem.setSyncedStatusText(DCXCompositeSyncTable.syncErrorText);
                            } else if (dCXCompositeSyncTableItem.getPullRequest() == null && dCXCompositeSyncTableItem.getPushRequest() == null && dCXCompositeSyncTableItem.getCcAssetDownloadText() == null) {
                                DCXCompositeSyncTable.this.updateContentFromComposite(dCXCompositeSyncTableItem);
                                dCXCompositeSyncTableItem.setSyncedStatusText(DCXCompositeSyncTable.syncedText);
                            }
                            DCXCompositeSyncTable.this.listener.projectStatusChanged(i);
                        }
                    });
                    break;
                }
            }
        }
    }

    private void addTableCell(final AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle, final String str, final String str2, final boolean z) {
        boolean z2;
        if (this.restrictToShowCompositeId == null || this.restrictToShowCompositeId.equals(str2)) {
            synchronized (this.tableItems) {
                final int i = 0;
                while (true) {
                    if (i >= this.tableItems.size()) {
                        z2 = false;
                        break;
                    } else if (!this.tableItems.get(i).getCompositeId().equals(str2)) {
                        i++;
                    } else {
                        final DCXCompositeSyncTableItem dCXCompositeSyncTableItem = this.tableItems.get(i);
                        this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.dcx.DCXCompositeSyncTable.4
                            @Override // java.lang.Runnable
                            public void run() {
                                if (str.equals(DCXCompositeSyncTable.ccAssetDownloadKey)) {
                                    dCXCompositeSyncTableItem.setCcAssetDownloadText(DCXCompositeSyncTable.this.getCCAssetDownloadText(str2));
                                } else {
                                    if (str.equals(DCXCompositeSyncTable.kPullRequestKey)) {
                                        dCXCompositeSyncTableItem.setDownloadStatusText(DCXCompositeSyncTable.this.getUpdatedText(adobeNetworkHttpTaskHandle, DCXCompositeSyncTable.downloadTextPrefix));
                                    } else {
                                        dCXCompositeSyncTableItem.setUploadStatusText(DCXCompositeSyncTable.this.getUpdatedText(adobeNetworkHttpTaskHandle, DCXCompositeSyncTable.uploadTextPrefix));
                                    }
                                    dCXCompositeSyncTableItem.addRequest(str, adobeNetworkHttpTaskHandle);
                                }
                                if (!z) {
                                    DCXCompositeSyncTable.this.listener.projectStatusChanged(i);
                                }
                            }
                        });
                        z2 = true;
                        break;
                    }
                }
            }
            if (!z2) {
                final DCXCompositeSyncTableItem dCXCompositeSyncTableItem2 = new DCXCompositeSyncTableItem(str2);
                if (str.equals(ccAssetDownloadKey)) {
                    dCXCompositeSyncTableItem2.setCcAssetDownloadText(getCCAssetDownloadText(str2));
                } else {
                    if (str.equals(kPullRequestKey)) {
                        dCXCompositeSyncTableItem2.setDownloadStatusText(getUpdatedText(adobeNetworkHttpTaskHandle, downloadTextPrefix));
                    } else {
                        dCXCompositeSyncTableItem2.setUploadStatusText(getUpdatedText(adobeNetworkHttpTaskHandle, uploadTextPrefix));
                    }
                    dCXCompositeSyncTableItem2.addRequest(str, adobeNetworkHttpTaskHandle);
                }
                updateContentFromComposite(dCXCompositeSyncTableItem2);
                this.mUIHandler.post(new Runnable() { // from class: com.adobe.premiereclip.dcx.DCXCompositeSyncTable.5
                    @Override // java.lang.Runnable
                    public void run() {
                        DCXCompositeSyncTable.this.tableItems.add(dCXCompositeSyncTableItem2);
                        if (!z) {
                            DCXCompositeSyncTable.this.listener.projectAdded(DCXCompositeSyncTable.this.tableItems.size() - 1);
                        }
                    }
                });
            }
        }
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.ProjectSyncUpdateCallback
    public void updateSyncStatus(Set<String> set) {
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.ProjectSyncUpdateCallback
    public void ccAssetDownloadStarted(String str) {
        Log.w("CCDownload", "asset download started");
        addTableCell(null, ccAssetDownloadKey, str, false);
    }

    @Override // com.adobe.premiereclip.downloadmanager.CCDownloadManager.ProjectSyncUpdateCallback
    public void ccAssetDownloadStopped(String str) {
        Log.w("CCDownload", "asset download stopped");
        removeTableCell(ccAssetDownloadKey, str, null);
    }
}

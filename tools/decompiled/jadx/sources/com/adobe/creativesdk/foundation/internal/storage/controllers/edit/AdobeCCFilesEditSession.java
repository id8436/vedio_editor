package com.adobe.creativesdk.foundation.internal.storage.controllers.edit;

import android.support.v4.app.FragmentManager;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEditOperationsEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeAssetBrowserCommandMgr;
import com.adobe.creativesdk.foundation.internal.storage.controllers.commands.AdobeAssetViewBrowserCommandName;
import com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditAssetData;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionEditCallback;
import com.adobe.creativesdk.foundation.storage.AdobeAsset;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFile;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import java.util.ArrayList;
import java.util.HashMap;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCCFilesEditSession {
    private AdobeCloud _cloud;
    private String _newLocation;
    private EditSummary _summary;
    protected int count = 0;
    IAdobeEditAssetCallback editResponseCallback;
    FragmentManager fm;
    AdobeCCFilesEditOperation operation;

    public AdobeCCFilesEditSession(FragmentManager fragmentManager, AdobeCCFilesEditOperation adobeCCFilesEditOperation, IAdobeEditAssetCallback iAdobeEditAssetCallback, AdobeCloud adobeCloud) {
        this.operation = adobeCCFilesEditOperation;
        this.editResponseCallback = iAdobeEditAssetCallback;
        this.fm = fragmentManager;
        this._cloud = adobeCloud;
    }

    public AdobeCCFilesEditSession(String str, FragmentManager fragmentManager, AdobeCCFilesEditOperation adobeCCFilesEditOperation, IAdobeEditAssetCallback iAdobeEditAssetCallback, AdobeCloud adobeCloud) {
        this.operation = adobeCCFilesEditOperation;
        this.editResponseCallback = iAdobeEditAssetCallback;
        this.fm = fragmentManager;
        this._newLocation = str;
        this._cloud = adobeCloud;
    }

    public void startEditSession() {
        startEditSession(null);
    }

    public void startEditSession(AdobeAssetViewEditRenameDialogFragment adobeAssetViewEditRenameDialogFragment) {
        handleEditOperation(adobeAssetViewEditRenameDialogFragment);
    }

    private void addAnalytics(final int i, final AdobeAsset adobeAsset, String str) {
        if (this.count <= 0) {
            HashMap<String, String> map = new HashMap<String, String>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditSession.1
                {
                    put(AdobeAnalyticsSDKReporter.AnalyticAction, AdobeCCFilesEditSession.this.operation.getString());
                    put("assetName", adobeAsset.getName());
                    put(AdobeAnalyticsSDKReporter.AnalyticAssetId, adobeAsset.getGUID());
                    put(AdobeAnalyticsSDKReporter.AnalyticAssetCount, String.valueOf(i));
                }
            };
            if (i == 1) {
                String str2 = adobeAsset instanceof AdobeAssetFile ? "file" : "folder";
                map.put(AdobeAnalyticsSDKReporter.AnalyticArea, AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_OPERATIONS);
                map.put("type", str2);
            } else {
                map.put(AdobeAnalyticsSDKReporter.AnalyticArea, AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_BATCH_OPERATIONS);
            }
            AdobeAnalyticsSDKReporter.trackAction(str, map, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAnalyticsForIngest(int i, AdobeAsset adobeAsset) {
        AdobeAnalyticsETSEditOperationsEvent adobeAnalyticsETSEditOperationsEvent;
        if (this.count <= 0) {
            if (i == 1) {
                String str = adobeAsset instanceof AdobeAssetFile ? "file" : "folder";
                AdobeAnalyticsETSEditOperationsEvent adobeAnalyticsETSEditOperationsEvent2 = new AdobeAnalyticsETSEditOperationsEvent(AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_OPERATIONS);
                adobeAnalyticsETSEditOperationsEvent2.addEventParams(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentId.getValue(), adobeAsset.getGUID());
                adobeAnalyticsETSEditOperationsEvent2.addEventParams(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentName.getValue(), adobeAsset.getName());
                adobeAnalyticsETSEditOperationsEvent2.addEventParams(AdobeAnalyticsEventParams.Content.AdobeEventPropertyContentType.getValue(), str);
                adobeAnalyticsETSEditOperationsEvent = adobeAnalyticsETSEditOperationsEvent2;
            } else {
                adobeAnalyticsETSEditOperationsEvent = new AdobeAnalyticsETSEditOperationsEvent(AdobeAnalyticsETSEditOperationsEvent.ADOBE_ETS_EVENT_TYPE_EDIT_BATCH_OPERATIONS);
            }
            adobeAnalyticsETSEditOperationsEvent.addEventParams(AdobeAnalyticsEventParams.Core.AdobeEventPropertySubType.getValue(), this.operation.getString());
            adobeAnalyticsETSEditOperationsEvent.addEventParams(AdobeAnalyticsEventParams.Core.AdobeEventPropertyCount.getValue(), String.valueOf(i));
            adobeAnalyticsETSEditOperationsEvent.endAndTrackEvent();
        }
    }

    private void clearSummary() {
        if (this._summary != null) {
            if (this._summary._successAssets != null) {
                this._summary._successAssets.clear();
            }
            if (this._summary._errorAssets != null) {
                this._summary._errorAssets.clear();
            }
        }
    }

    private void handleSameLocationMoveError() {
        AdobeCCFilesEditAssetData adobeCCFilesEditAssetData;
        ArrayList<AdobeAsset> targetAssets = AdobeAssetViewEditSelectedAssetsController.sharedController().getTargetAssets();
        int size = targetAssets.size();
        for (int i = 0; i < size; i++) {
            AdobeAsset adobeAsset = targetAssets.get(i);
            if (adobeAsset instanceof AdobeAssetFile) {
                adobeCCFilesEditAssetData = new AdobeCCFilesEditAssetData(adobeAsset.getName(), (AdobeAssetFile) adobeAsset, AdobeCCFilesEditAssetData.EditStatus.Error);
            } else {
                adobeCCFilesEditAssetData = new AdobeCCFilesEditAssetData(adobeAsset.getName(), AdobeCCFilesEditAssetData.EditStatus.Error);
            }
            addAssetToSummary(adobeCCFilesEditAssetData);
            this.count++;
            if (this.count == size) {
                AdobeCCFilesEditManager.setEditCompletionHandled(false);
                if (this._summary != null) {
                    this._summary.setMoveOperationInSameLocation();
                }
                this.editResponseCallback.onComplete();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void addAssetToSummary(AdobeCCFilesEditAssetData adobeCCFilesEditAssetData) {
        if (adobeCCFilesEditAssetData.status == AdobeCCFilesEditAssetData.EditStatus.Completed && this._summary != null) {
            this._summary._successAssets.add(adobeCCFilesEditAssetData);
        } else if (adobeCCFilesEditAssetData.status == AdobeCCFilesEditAssetData.EditStatus.Error && this._summary != null) {
            this._summary._errorAssets.add(adobeCCFilesEditAssetData);
        }
    }

    private void notifiyEditStarted() {
        AdobeCCFilesEditManager.setEditInProgress(true);
        AdobeCCFilesEditManager.setEditStarted(true);
        AdobeAssetBrowserCommandMgr.getInstance().postCommand(AdobeAssetViewBrowserCommandName.ACTION_ASSETVIEW_EDIT_STARTED);
    }

    private IAdobeStorageSessionEditCallback getEditCallBackHandler(final AdobeAsset adobeAsset, final int i) {
        return new IAdobeStorageSessionEditCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.edit.AdobeCCFilesEditSession.2
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionEditCallback
            public void onComplete() {
                AdobeCCFilesEditAssetData adobeCCFilesEditAssetData;
                AdobeCCFilesEditSession.this.addAnalyticsForIngest(i, adobeAsset);
                AdobeCCFilesEditSession.this.count++;
                if (adobeAsset instanceof AdobeAssetFile) {
                    adobeCCFilesEditAssetData = new AdobeCCFilesEditAssetData(adobeAsset.getName(), (AdobeAssetFile) adobeAsset, AdobeCCFilesEditAssetData.EditStatus.Completed);
                } else {
                    adobeCCFilesEditAssetData = new AdobeCCFilesEditAssetData(adobeAsset.getName(), AdobeCCFilesEditAssetData.EditStatus.Completed);
                }
                AdobeCCFilesEditSession.this.addAssetToSummary(adobeCCFilesEditAssetData);
                if (AdobeCCFilesEditSession.this.count == i) {
                    AdobeCCFilesEditManager.setEditCompletionHandled(false);
                    AdobeCCFilesEditSession.this.editResponseCallback.onComplete();
                } else {
                    AdobeCCFilesEditSession.this.editResponseCallback.onProgress(((double) AdobeCCFilesEditSession.this.count) / ((double) i));
                }
            }

            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionEditCallback
            public void onError(AdobeAssetException adobeAssetException) {
                AdobeCCFilesEditAssetData adobeCCFilesEditAssetData;
                AdobeCCFilesEditSession.this.addAnalyticsForIngest(i, adobeAsset);
                AdobeCCFilesEditSession.this.count++;
                if (adobeAsset instanceof AdobeAssetFile) {
                    adobeCCFilesEditAssetData = new AdobeCCFilesEditAssetData(adobeAsset.getName(), (AdobeAssetFile) adobeAsset, AdobeCCFilesEditAssetData.EditStatus.Error);
                } else {
                    adobeCCFilesEditAssetData = new AdobeCCFilesEditAssetData(adobeAsset.getName(), AdobeCCFilesEditAssetData.EditStatus.Error);
                }
                AdobeCCFilesEditSession.this.addAssetToSummary(adobeCCFilesEditAssetData);
                if (AdobeCCFilesEditSession.this.count == i) {
                    AdobeCCFilesEditManager.setEditCompletionHandled(false);
                    AdobeCCFilesEditSession.this.editResponseCallback.onComplete();
                } else if (!AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
                    AdobeCCFilesEditManager.setEditCompletionHandled(false);
                    AdobeCCFilesEditSession.this.editResponseCallback.onAbort();
                }
            }
        };
    }

    private String getAssetLocation() {
        String string = AdobeAssetViewEditSelectedAssetsController.sharedController().getTargetAssets().get(0).getHref().toString();
        if (string.endsWith(URIUtil.SLASH)) {
            string = string.substring(0, string.length() - 1);
        }
        String strSubstring = string.substring(0, string.lastIndexOf(URIUtil.SLASH));
        if (!strSubstring.endsWith(URIUtil.SLASH)) {
            return strSubstring + URIUtil.SLASH;
        }
        return strSubstring;
    }

    private void handleEditOperation(AdobeAssetViewEditRenameDialogFragment adobeAssetViewEditRenameDialogFragment) {
        int i = 0;
        this.count = 0;
        this._summary = new EditSummary();
        this._summary.operation = this.operation;
        AdobeStorageSession adobeStorageSession = (AdobeStorageSession) this._cloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        ArrayList<AdobeAsset> targetAssets = AdobeAssetViewEditSelectedAssetsController.sharedController().getTargetAssets();
        if (targetAssets != null) {
            int size = targetAssets.size();
            switch (this.operation) {
                case ADOBE_CC_FILE_EDIT_OPERATION_DELETE:
                    notifiyEditStarted();
                    while (i < size && AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
                        AdobeAsset adobeAsset = targetAssets.get(i);
                        IAdobeStorageSessionEditCallback editCallBackHandler = getEditCallBackHandler(adobeAsset, size);
                        if (adobeAsset instanceof AdobeAssetFile) {
                            addAnalytics(size, adobeAsset, AdobeAnalyticsSDKReporter.AnalyticDeleteFile);
                            ((AdobeAssetFile) adobeAsset).delete(adobeStorageSession, editCallBackHandler);
                        } else {
                            addAnalytics(size, adobeAsset, AdobeAnalyticsSDKReporter.AnalyticDeleteFolder);
                            ((AdobeAssetFolder) adobeAsset).delete(adobeStorageSession, editCallBackHandler);
                        }
                        i++;
                    }
                    break;
                case ADOBE_CC_FILE_EDIT_OPERATION_ARCHIVE:
                    notifiyEditStarted();
                    while (i < size && AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
                        AdobeAsset adobeAsset2 = targetAssets.get(i);
                        IAdobeStorageSessionEditCallback editCallBackHandler2 = getEditCallBackHandler(adobeAsset2, size);
                        if (adobeAsset2 instanceof AdobeAssetFile) {
                            addAnalytics(size, adobeAsset2, AdobeAnalyticsSDKReporter.AnalyticArchiveFile);
                        } else {
                            addAnalytics(size, adobeAsset2, AdobeAnalyticsSDKReporter.AnalyticArchiveFolder);
                        }
                        adobeStorageSession.eraseAsset(adobeAsset2, editCallBackHandler2);
                        i++;
                    }
                    break;
                case ADOBE_CC_FILE_EDIT_OPERATION_MOVE:
                    notifiyEditStarted();
                    if (getAssetLocation().equals(this._newLocation)) {
                        handleSameLocationMoveError();
                    } else {
                        for (int i2 = 0; i2 < size && AdobeNetworkReachabilityUtil.getSharedInstance().isOnline(); i2++) {
                            AdobeAsset adobeAsset3 = targetAssets.get(i2);
                            IAdobeStorageSessionEditCallback editCallBackHandler3 = getEditCallBackHandler(adobeAsset3, size);
                            if (adobeAsset3 instanceof AdobeAssetFile) {
                                addAnalytics(size, adobeAsset3, AdobeAnalyticsSDKReporter.AnalyticMoveFile);
                            } else {
                                addAnalytics(size, adobeAsset3, AdobeAnalyticsSDKReporter.AnalyticMoveFolder);
                            }
                            adobeStorageSession.moveAsset(this._newLocation, adobeAsset3, false, editCallBackHandler3);
                        }
                    }
                    break;
                case ADOBE_CC_FILE_EDIT_OPERATION_COPY:
                    notifiyEditStarted();
                    if (getAssetLocation().equals(this._newLocation)) {
                        handleSameLocationMoveError();
                    } else {
                        while (i < size && AdobeNetworkReachabilityUtil.getSharedInstance().isOnline()) {
                            AdobeAsset adobeAsset4 = targetAssets.get(i);
                            IAdobeStorageSessionEditCallback editCallBackHandler4 = getEditCallBackHandler(adobeAsset4, size);
                            if (adobeAsset4 instanceof AdobeAssetFile) {
                                addAnalytics(size, adobeAsset4, AdobeAnalyticsSDKReporter.AnalyticCopyFile);
                            } else {
                                addAnalytics(size, adobeAsset4, AdobeAnalyticsSDKReporter.AnalyticCopyFolder);
                            }
                            adobeStorageSession.moveAsset(this._newLocation, adobeAsset4, true, editCallBackHandler4);
                            i++;
                        }
                    }
                    break;
                case ADOBE_CC_FILE_EDIT_OPERATION_RENAME:
                    AdobeAsset adobeAsset5 = targetAssets.get(0);
                    String assetNewName = adobeAssetViewEditRenameDialogFragment.getAssetNewName();
                    if (assetNewName.length() > 0) {
                        notifiyEditStarted();
                        IAdobeStorageSessionEditCallback editCallBackHandler5 = getEditCallBackHandler(adobeAsset5, size);
                        if (adobeAsset5 instanceof AdobeAssetFile) {
                            addAnalytics(size, adobeAsset5, AdobeAnalyticsSDKReporter.AnalyticRenameFile);
                        } else {
                            addAnalytics(size, adobeAsset5, AdobeAnalyticsSDKReporter.AnalyticRenameFolder);
                        }
                        adobeStorageSession.renameAsset(adobeAsset5, assetNewName, editCallBackHandler5);
                    }
                    adobeAssetViewEditRenameDialogFragment.dismiss();
                    break;
            }
        }
    }

    public EditSummary getEditSummary() {
        return this._summary;
    }

    public class EditSummary {
        public AdobeCCFilesEditOperation operation;
        private boolean _moveOperationInSameLocation = false;
        public ArrayList<AdobeCCFilesEditAssetData> _errorAssets = new ArrayList<>();
        public ArrayList<AdobeCCFilesEditAssetData> _successAssets = new ArrayList<>();

        public int getErrorCount() {
            return this._errorAssets.size();
        }

        public int getSuccessCount() {
            return this._successAssets.size();
        }

        public void setMoveOperationInSameLocation() {
            this._moveOperationInSameLocation = true;
        }

        public boolean hasMoveOperationInSameLocation() {
            if (!this._moveOperationInSameLocation) {
                return false;
            }
            this._moveOperationInSameLocation = false;
            return true;
        }
    }
}

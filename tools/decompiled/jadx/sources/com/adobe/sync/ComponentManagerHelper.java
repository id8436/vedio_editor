package com.adobe.sync;

import android.database.Cursor;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.sync.database.ComponentInfoModel;
import com.adobe.sync.database.ComponentWaitingModel;
import com.adobe.sync.database.DatabaseHelper;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class ComponentManagerHelper {
    private HashSet<PairKey> currentDownloads;
    private HashMap<PairKey, PairValue> currentUploads;
    private DatabaseHelper databaseHelper;
    private static ComponentManagerHelper instance = null;
    private static boolean isInitialized = false;
    private static SimpleDateFormat formatter = null;

    public static ComponentManagerHelper getInstance() {
        if (instance == null) {
            instance = new ComponentManagerHelper();
        }
        return instance;
    }

    private ComponentManagerHelper() {
    }

    public void initialize() {
        if (!isInitialized) {
            this.databaseHelper = new DatabaseHelper(AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext());
            this.currentDownloads = new HashSet<>();
            this.currentUploads = new HashMap<>();
            formatter = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.US);
        }
        isInitialized = true;
    }

    class PairKey {
        private String assetUrl;
        private String createdDate;

        public PairKey(String str, String str2) {
            this.assetUrl = str;
            this.createdDate = str2;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof PairKey)) {
                return false;
            }
            PairKey pairKey = (PairKey) obj;
            return this.assetUrl.equals(pairKey.assetUrl) && this.createdDate.equals(pairKey.createdDate);
        }

        public int hashCode() {
            return (this.assetUrl + this.createdDate).hashCode();
        }
    }

    class PairValue {
        private String componentId;
        private String compositeId;

        public PairValue(String str, String str2) {
            this.compositeId = str;
            this.componentId = str2;
        }

        public String getCompositeId() {
            return this.compositeId;
        }

        public String getComponentId() {
            return this.componentId;
        }
    }

    private ComponentWaitingModel getComponentWaitingModelFromCursor(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ComponentWaitingModel componentWaitingModel = new ComponentWaitingModel();
        componentWaitingModel.setCompositeId(cursor.getString(0));
        componentWaitingModel.setComponentId(cursor.getString(1));
        componentWaitingModel.setUCID(cursor.getString(2));
        componentWaitingModel.setServerHref(cursor.getString(3));
        componentWaitingModel.setAssetSyncStatus(cursor.getString(4));
        componentWaitingModel.setAdobeId(cursor.getString(5));
        componentWaitingModel.setCloudId(cursor.getString(6));
        return componentWaitingModel;
    }

    private ComponentInfoModel getComponentInfoModelFromCursor(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        ComponentInfoModel componentInfoModel = new ComponentInfoModel();
        componentInfoModel.setUCID(cursor.getString(0));
        componentInfoModel.setAssetURL(cursor.getString(1));
        componentInfoModel.setCreatedDate(cursor.getString(2));
        componentInfoModel.setLocalPath(cursor.getString(3));
        componentInfoModel.setAssetSyncStatus(cursor.getString(4));
        return componentInfoModel;
    }

    public ComponentInfoModel getComponentInfoModel(String str, String str2) throws DBException {
        Cursor componentInfo = this.databaseHelper.getComponentInfo(str, str2);
        if (componentInfo != null) {
            int count = componentInfo.getCount();
            if (count == 1) {
                componentInfo.moveToFirst();
                ComponentInfoModel componentInfoModelFromCursor = getComponentInfoModelFromCursor(componentInfo);
                componentInfo.close();
                return componentInfoModelFromCursor;
            }
            componentInfo.close();
            if (count > 1) {
                throw new DBException("duplicate entries for same assetUrl and createdDate present in database");
            }
        }
        return null;
    }

    public ComponentInfoModel getComponentInfoModel(String str) throws DBException {
        Cursor componentInfo = this.databaseHelper.getComponentInfo(str);
        if (componentInfo != null) {
            int count = componentInfo.getCount();
            if (count == 1) {
                componentInfo.moveToFirst();
                ComponentInfoModel componentInfoModelFromCursor = getComponentInfoModelFromCursor(componentInfo);
                componentInfo.close();
                return componentInfoModelFromCursor;
            }
            componentInfo.close();
            if (count > 1) {
                throw new DBException("duplicate entries for same assetUrl and createdDate present in database");
            }
        }
        return null;
    }

    public ComponentWaitingModel getComponentWaitingModel(String str) throws DBException {
        Cursor componentWaiting = this.databaseHelper.getComponentWaiting(str);
        if (componentWaiting != null) {
            int count = componentWaiting.getCount();
            if (count == 1) {
                componentWaiting.moveToFirst();
                ComponentWaitingModel componentWaitingModelFromCursor = getComponentWaitingModelFromCursor(componentWaiting);
                componentWaiting.close();
                return componentWaitingModelFromCursor;
            }
            componentWaiting.close();
            if (count > 1) {
                throw new DBException("duplicate entries for same assetUrl and createdDate present in database");
            }
        }
        return null;
    }

    public ArrayList<ComponentWaitingModel> getComponentWaitingModelsForUCID(String str) throws DBException {
        Cursor componentsWaiting = this.databaseHelper.getComponentsWaiting(str, AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID(), AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID());
        ArrayList<ComponentWaitingModel> arrayList = new ArrayList<>();
        if (componentsWaiting != null) {
            while (componentsWaiting.moveToNext()) {
                arrayList.add(getComponentWaitingModelFromCursor(componentsWaiting));
            }
            componentsWaiting.close();
        }
        return arrayList;
    }

    public boolean insertComponentInfo(ComponentInfoModel componentInfoModel) throws DBException {
        return this.databaseHelper.insertComponentInfo(componentInfoModel);
    }

    private boolean updateComponentInfo(ComponentInfoModel componentInfoModel) throws DBException {
        return this.databaseHelper.updateComponentInfo(componentInfoModel);
    }

    public boolean updateComponentWaiting(ComponentWaitingModel componentWaitingModel) throws DBException {
        return this.databaseHelper.updateComponentWaiting(componentWaitingModel);
    }

    public boolean insertComponentWaiting(ComponentWaitingModel componentWaitingModel) throws DBException {
        return this.databaseHelper.insertComponentWaiting(componentWaitingModel);
    }

    public boolean deleteComponentWaiting(String str) throws DBException {
        return this.databaseHelper.deleteComponentWaiting(str);
    }

    public boolean isFileExistLocally(String str, String str2) {
        File file = new File(str);
        return file.exists() && formatter.format(new Date(file.lastModified())).equals(str2);
    }

    public boolean isComponentDownloadRequired(String str, String str2) throws DBException {
        if (isFileExistLocally(str, str2) || this.currentDownloads.contains(new PairKey(str, str2))) {
            return false;
        }
        ComponentInfoModel componentInfoModel = getComponentInfoModel(str, str2);
        return componentInfoModel == null || !componentInfoModel.getAssetSyncStatus().equals(ComponentInfoModel.ASSET_SYNC_STATUS.DONE.name());
    }

    private void insertOrUpdateComponentInfo(ComponentInfoModel componentInfoModel) throws DBException {
        if (getComponentInfoModel(componentInfoModel.getAssetURL(), componentInfoModel.getCreatedDate()) == null) {
            insertComponentInfo(componentInfoModel);
        } else {
            updateComponentInfo(componentInfoModel);
        }
    }

    private void insertOrUpdateComponentWaiting(ComponentWaitingModel componentWaitingModel) throws DBException {
        if (getComponentWaitingModel(componentWaitingModel.getComponentId()) == null) {
            insertComponentWaiting(componentWaitingModel);
        } else {
            updateComponentWaiting(componentWaitingModel);
        }
    }

    public void initComponentDownloadStart(ComponentInfoModel componentInfoModel, boolean z) throws DBException {
        PairKey pairKey = new PairKey(componentInfoModel.getAssetURL(), componentInfoModel.getCreatedDate());
        if (!this.currentDownloads.contains(pairKey)) {
            this.currentDownloads.add(pairKey);
        }
        if (z && getComponentInfoModel(componentInfoModel.getAssetURL(), componentInfoModel.getCreatedDate()) == null) {
            insertComponentInfo(componentInfoModel);
        }
    }

    public void initComponentDownloadFinish(ComponentInfoModel componentInfoModel, ComponentWaitingModel componentWaitingModel, AdobeCSDKException adobeCSDKException) throws DBException {
        PairKey pairKey = new PairKey(componentInfoModel.getAssetURL(), componentInfoModel.getCreatedDate());
        if (this.currentDownloads.contains(pairKey)) {
            this.currentDownloads.remove(pairKey);
        }
        if (adobeCSDKException == null) {
            insertOrUpdateComponentInfo(componentInfoModel);
            if (componentWaitingModel != null) {
                insertOrUpdateComponentWaiting(componentWaitingModel);
            }
        }
    }

    public void initComponentUploadStart(ComponentInfoModel componentInfoModel, ComponentWaitingModel componentWaitingModel) throws DBException {
        PairKey pairKey = new PairKey(componentInfoModel.getAssetURL(), componentInfoModel.getCreatedDate());
        PairValue pairValue = new PairValue(componentWaitingModel.getCompositeId(), componentWaitingModel.getComponentId());
        if (!this.currentUploads.containsKey(pairKey)) {
            this.currentUploads.put(pairKey, pairValue);
        }
        if (getComponentInfoModel(componentInfoModel.getAssetURL(), componentInfoModel.getCreatedDate()) == null) {
            insertComponentInfo(componentInfoModel);
        }
        insertOrUpdateComponentWaiting(componentWaitingModel);
    }

    public void initComponentUploadFinish(ComponentInfoModel componentInfoModel, ComponentWaitingModel componentWaitingModel, AdobeCSDKException adobeCSDKException) throws DBException {
        PairKey pairKey = new PairKey(componentInfoModel.getAssetURL(), componentInfoModel.getCreatedDate());
        if (this.currentUploads.containsKey(pairKey)) {
            this.currentUploads.remove(pairKey);
        }
        if (adobeCSDKException == null) {
            insertOrUpdateComponentInfo(componentInfoModel);
            insertOrUpdateComponentWaiting(componentWaitingModel);
        }
    }

    public boolean isUploadOfComponentInProgress(String str, String str2, String str3, String str4) {
        PairKey pairKey = new PairKey(str, str2);
        if (!this.currentUploads.containsKey(pairKey)) {
            return false;
        }
        PairValue pairValue = this.currentUploads.get(pairKey);
        return (pairValue.getCompositeId().equals(str3) && pairValue.getComponentId().equals(str4)) ? false : true;
    }

    public String getAvailableHrefForUCID(String str) throws DBException {
        for (ComponentWaitingModel componentWaitingModel : getComponentWaitingModelsForUCID(str)) {
            if (componentWaitingModel.getAssetSyncStatus().equals(ComponentWaitingModel.SYNC_STATUS.DONE.name())) {
                AdobeCloud defaultCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
                if (AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID().equals(componentWaitingModel.getAdobeId()) && defaultCloud != null && defaultCloud.getGUID().equals(componentWaitingModel.getCloudId())) {
                    return componentWaitingModel.getServerHref();
                }
            }
        }
        return null;
    }

    public void resetSyncOnChangeCloud() {
        this.currentDownloads.clear();
        this.currentUploads.clear();
    }

    public void clearOutComponentDownload(String str, String str2) {
        PairKey pairKey = new PairKey(str, str2);
        if (this.currentDownloads.contains(pairKey)) {
            this.currentDownloads.remove(pairKey);
        }
    }
}

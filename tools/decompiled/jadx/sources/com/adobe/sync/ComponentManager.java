package com.adobe.sync;

import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentManagerProtocol;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXReadyWithDownloadFileCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXReadyWithUploadFileCompletionHandler;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.sync.ComponentUtils;
import com.adobe.sync.database.ComponentInfoModel;
import com.adobe.sync.database.ComponentWaitingModel;
import com.adobe.sync.database.CompositeLoader;
import com.adobe.sync.s3utils.DirectS3HttpTaskHandle;
import java.io.File;
import java.io.FileInputStream;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class ComponentManager implements IAdobeDCXComponentManagerProtocol {
    private static final long MIN_DCX_FILE_SIZE = 524288000;
    public static final String STATE_UPLOADING = "uploading";
    public static final String STATE_WAITING = "waiting";
    private static final String kLargeComponentHttpRequestHandler = "httpRequestHandler";
    private static final String kLargeComponents = "components";
    private ComponentManagerHelper componentManagerHelper = ComponentManagerHelper.getInstance();
    private AdobeDCXController controller;
    private JSONObject largeComponentsComposites;
    private String rootDirectory;
    private AdobeStorageSession session;

    private String getNonExistentPath() {
        return this.rootDirectory + "/dummyAsset/asset.jpg";
    }

    public ComponentManager(String str, AdobeStorageSession adobeStorageSession, AdobeDCXController adobeDCXController) {
        this.rootDirectory = str + "/assets";
        this.controller = adobeDCXController;
        this.session = adobeStorageSession;
        this.componentManagerHelper.initialize();
        this.largeComponentsComposites = new JSONObject();
    }

    public synchronized JSONObject getLargeComponentsComposites() {
        return this.largeComponentsComposites;
    }

    private String getServerHref(String str, String str2) {
        return str.equals("preferences") ? "assets" + File.separator + "adobe-premiereclip-preferences" + File.separator + str + File.separator + str2 : "assets" + File.separator + "adobe-premiereclip" + File.separator + str + File.separator + str2;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentManagerProtocol
    public synchronized void requestFileToDownloadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, IAdobeDCXReadyWithDownloadFileCompletionHandler iAdobeDCXReadyWithDownloadFileCompletionHandler) {
        String localPath;
        ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(adobeDCXComponent, adobeDCXComposite.getPulled() != null ? adobeDCXComposite.getPulled() : adobeDCXComposite.getCurrent());
        if (componentKeys == null) {
            Log.d("ComponentManager", "Sync: Not unmanaged component " + adobeDCXComponent.getComponentId());
            iAdobeDCXReadyWithDownloadFileCompletionHandler.onCompletion(null, str, null);
        } else {
            String str2 = componentKeys.assetUrl;
            String str3 = componentKeys.createdDate;
            String extensionFromFilePath = ComponentUtils.getExtensionFromFilePath(str2);
            Log.d("ComponentManager", "Sync: requestFileToDownloadComponent called for component " + adobeDCXComponent.getComponentId() + " in composite " + adobeDCXComposite.getCompositeId());
            Log.d("ComponentManager", "Sync: inside requestFileToDownloadComponent assetUrl " + str2 + " createdDate " + str3 + " ext" + extensionFromFilePath);
            if (extensionFromFilePath != null) {
                try {
                    ComponentInfoModel componentInfoModel = this.componentManagerHelper.getComponentInfoModel(str2, str3);
                    boolean zIsComponentDownloadRequired = this.componentManagerHelper.isComponentDownloadRequired(str2, str3);
                    if (!zIsComponentDownloadRequired) {
                        localPath = str2;
                    } else if (componentInfoModel == null) {
                        localPath = this.rootDirectory + File.separator + (adobeDCXComposite.getCompositeId() + "#" + adobeDCXComponent.getComponentId() + "." + extensionFromFilePath);
                    } else {
                        localPath = componentInfoModel.getLocalPath();
                    }
                    ComponentInfoModel componentInfoModel2 = new ComponentInfoModel();
                    componentInfoModel2.setUCID(componentInfoModel == null ? UUID.randomUUID().toString() : componentInfoModel.getUCID());
                    componentInfoModel2.setAssetURL(str2);
                    componentInfoModel2.setCreatedDate(str3);
                    componentInfoModel2.setLocalPath(localPath);
                    componentInfoModel2.setAssetSyncStatus(zIsComponentDownloadRequired ? ComponentInfoModel.ASSET_SYNC_STATUS.PENDING.name() : ComponentInfoModel.ASSET_SYNC_STATUS.DONE.name());
                    this.componentManagerHelper.initComponentDownloadStart(componentInfoModel2, true);
                    if (zIsComponentDownloadRequired) {
                        Log.d("ComponentManager", "Sync: from requestFileToDownloadComponent Sending download path as " + componentInfoModel2.getLocalPath());
                        iAdobeDCXReadyWithDownloadFileCompletionHandler.onCompletion(componentInfoModel2.getLocalPath(), componentInfoModel2.getUCID(), null);
                    } else {
                        Log.d("ComponentManager", "Sync: from requestFileToDownloadComponent Download not required as being downloaded in other composite");
                        iAdobeDCXReadyWithDownloadFileCompletionHandler.onCompletion(null, componentInfoModel2.getUCID(), null);
                    }
                } catch (DBException e2) {
                    e2.printStackTrace();
                    iAdobeDCXReadyWithDownloadFileCompletionHandler.onCompletion(null, str, null);
                }
            } else {
                iAdobeDCXReadyWithDownloadFileCompletionHandler.onCompletion(null, str, null);
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentManagerProtocol
    public synchronized void didDownloadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, AdobeCSDKException adobeCSDKException) {
        AdobeDCXCompositeBranch pulled = adobeDCXComposite.getPulled() != null ? adobeDCXComposite.getPulled() : adobeDCXComposite.getCurrent();
        Log.d("ComponentManager", "Sync: didDownloadComponent called for composite " + adobeDCXComposite.getCompositeId());
        if (adobeCSDKException != null) {
            try {
                Log.d("ComponentManager", "Sync: didDownloadComponent failure called for composite with exception" + adobeDCXComposite.getCompositeId() + " " + adobeCSDKException);
                ComponentInfoModel componentInfoModel = this.componentManagerHelper.getComponentInfoModel(str);
                if (componentInfoModel == null) {
                    Log.d("ComponentManager", "Sync: Error: component downloaded without entry into database");
                } else {
                    this.componentManagerHelper.initComponentDownloadFinish(componentInfoModel, null, adobeCSDKException);
                }
            } catch (DBException e2) {
                e2.printStackTrace();
            }
        } else {
            Log.d("ComponentManager", "Sync: didDownloadComponent success called for component " + adobeDCXComponent.getComponentId() + " in composite " + adobeDCXComposite.getCompositeId());
            ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(adobeDCXComponent, pulled);
            if (componentKeys != null) {
                String str2 = componentKeys.assetUrl;
                String str3 = componentKeys.createdDate;
                try {
                    ComponentInfoModel componentInfoModel2 = this.componentManagerHelper.getComponentInfoModel(str2, str3);
                    if (componentInfoModel2 == null) {
                        Log.d("ComponentManager", "Sync: Error: component downloaded without entry into database");
                    } else {
                        ComponentInfoModel componentInfoModel3 = new ComponentInfoModel();
                        componentInfoModel3.setUCID(str);
                        componentInfoModel3.setAssetURL(str2);
                        componentInfoModel3.setCreatedDate(str3);
                        componentInfoModel3.setLocalPath(componentInfoModel2.getLocalPath());
                        componentInfoModel3.setAssetSyncStatus(ComponentInfoModel.ASSET_SYNC_STATUS.DONE.name());
                        ComponentWaitingModel componentWaitingModel = new ComponentWaitingModel();
                        componentWaitingModel.setUCID(str);
                        componentWaitingModel.setCompositeId(adobeDCXComposite.getCompositeId());
                        componentWaitingModel.setComponentId(adobeDCXComponent.getComponentId());
                        componentWaitingModel.setAssetSyncStatus(ComponentWaitingModel.SYNC_STATUS.DONE.name());
                        componentWaitingModel.setServerHref(getServerHref(adobeDCXComposite.getCompositeId(), adobeDCXComponent.getComponentId()));
                        componentWaitingModel.setAdobeId(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
                        componentWaitingModel.setCloudId(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID());
                        this.componentManagerHelper.initComponentDownloadFinish(componentInfoModel3, componentWaitingModel, null);
                    }
                } catch (DBException e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentManagerProtocol
    public synchronized void requestFileToUploadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, IAdobeDCXReadyWithUploadFileCompletionHandler iAdobeDCXReadyWithUploadFileCompletionHandler) {
        ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(adobeDCXComponent, adobeDCXComposite.getCurrent());
        if (componentKeys == null) {
            Log.d("ComponentManager", "Sync: Error: assetUrl or createdDate could not be retrieved from composite");
        } else {
            Log.d("ComponentManager", "Sync: started upload component " + adobeDCXComponent.getComponentId() + " for composite " + adobeDCXComposite.getCompositeId());
            String str2 = componentKeys.assetUrl;
            String str3 = componentKeys.createdDate;
            try {
                ComponentInfoModel componentInfoModel = this.componentManagerHelper.getComponentInfoModel(str2, str3);
                String localPath = componentInfoModel != null ? componentInfoModel.getLocalPath() : str2;
                ComponentInfoModel componentInfoModel2 = new ComponentInfoModel();
                componentInfoModel2.setUCID(str);
                componentInfoModel2.setAssetURL(str2);
                componentInfoModel2.setCreatedDate(str3);
                componentInfoModel2.setLocalPath(localPath);
                componentInfoModel2.setAssetSyncStatus(ComponentInfoModel.ASSET_SYNC_STATUS.DONE.name());
                ComponentWaitingModel componentWaitingModel = new ComponentWaitingModel();
                componentWaitingModel.setUCID(str);
                componentWaitingModel.setCompositeId(adobeDCXComposite.getCompositeId());
                componentWaitingModel.setComponentId(adobeDCXComponent.getComponentId());
                componentWaitingModel.setAssetSyncStatus(ComponentWaitingModel.SYNC_STATUS.PENDING.name());
                componentWaitingModel.setServerHref("");
                componentWaitingModel.setAdobeId(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
                componentWaitingModel.setCloudId(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID());
                this.componentManagerHelper.initComponentUploadStart(componentInfoModel2, componentWaitingModel);
                String strMD5HashFromStream = AdobeStorageUtils.MD5HashFromStream(new FileInputStream(localPath), false);
                if (useDirectS3ForFile(localPath)) {
                    Log.d("S3Transfer", "preparing to upload large component " + localPath);
                    long fileSize = getFileSize(localPath);
                    String componentId = adobeDCXComponent.getComponentId();
                    String str4 = adobeDCXComposite.getCompositeId() + ":" + componentId;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("componentId", componentId);
                    jSONObject.put("assetPath", localPath);
                    jSONObject.put("requestId", str4);
                    jSONObject.put("assetSize", fileSize);
                    jSONObject.put("UCID", str);
                    jSONObject.put("state", STATE_WAITING);
                    Log.d("S3Transfer", "added large component " + jSONObject.toString());
                    addLargeComponentsComposites(adobeDCXComposite.getCompositeId(), componentId, jSONObject, fileSize);
                    iAdobeDCXReadyWithUploadFileCompletionHandler.onCompletion(null, null, strMD5HashFromStream);
                } else {
                    iAdobeDCXReadyWithUploadFileCompletionHandler.onCompletion(localPath, null, strMD5HashFromStream);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private boolean useDirectS3ForFile(String str) {
        return getFileSize(str) > MIN_DCX_FILE_SIZE;
    }

    private long getFileSize(String str) {
        return new File(str).length();
    }

    private synchronized int addLargeComponentsComposites(String str, String str2, JSONObject jSONObject, long j) {
        int length;
        JSONObject jSONObject2;
        try {
            if (!this.largeComponentsComposites.has(str)) {
                DirectS3HttpTaskHandle directS3HttpTaskHandle = new DirectS3HttpTaskHandle();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(kLargeComponentHttpRequestHandler, directS3HttpTaskHandle);
                this.largeComponentsComposites.put(str, jSONObject3);
            }
            DirectS3HttpTaskHandle directS3HttpTaskHandle2 = (DirectS3HttpTaskHandle) ((JSONObject) this.largeComponentsComposites.get(str)).get(kLargeComponentHttpRequestHandler);
            directS3HttpTaskHandle2.setTotalUnitCount(directS3HttpTaskHandle2.getTotalUnitCount() + j);
            JSONObject jSONObject4 = this.largeComponentsComposites.getJSONObject(str);
            if (jSONObject4.has("components")) {
                jSONObject2 = jSONObject4.getJSONObject("components");
            } else {
                jSONObject2 = new JSONObject();
            }
            String string = STATE_WAITING;
            if (jSONObject2.has(str2)) {
                JSONObject jSONObject5 = jSONObject2.getJSONObject(str2);
                if (jSONObject5.has("state")) {
                    string = jSONObject5.getString("state");
                }
            }
            if (string.equals(STATE_WAITING)) {
                jSONObject2.put(str2, jSONObject);
                jSONObject4.put("components", jSONObject2);
            }
            length = jSONObject2.length();
        } catch (Exception e2) {
            e2.printStackTrace();
            length = 0;
        }
        return length;
    }

    public synchronized JSONObject getLargeComponentsComposites(String str) {
        JSONObject jSONObject;
        try {
            jSONObject = this.largeComponentsComposites.getJSONObject(str).getJSONObject("components");
        } catch (Exception e2) {
            e2.printStackTrace();
            jSONObject = null;
        }
        return jSONObject;
    }

    private synchronized int getLargeComponentsCompositesSize(String str) {
        int length;
        try {
            length = this.largeComponentsComposites.getJSONObject(str).getJSONObject("components").length();
        } catch (Exception e2) {
            e2.printStackTrace();
            length = 0;
        }
        return length;
    }

    public synchronized DirectS3HttpTaskHandle getLargeComponentsCompositesRequest(String str) {
        DirectS3HttpTaskHandle directS3HttpTaskHandle;
        try {
            directS3HttpTaskHandle = (DirectS3HttpTaskHandle) this.largeComponentsComposites.getJSONObject(str).get(kLargeComponentHttpRequestHandler);
        } catch (Exception e2) {
            e2.printStackTrace();
            directS3HttpTaskHandle = null;
        }
        return directS3HttpTaskHandle;
    }

    public synchronized int removeLargeComponentComposites(String str, String str2) {
        int length;
        try {
            JSONObject jSONObject = this.largeComponentsComposites.getJSONObject(str).getJSONObject("components");
            jSONObject.remove(str2);
            length = jSONObject.length();
            if (length == 0) {
                this.largeComponentsComposites.remove(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            length = 0;
        }
        return length;
    }

    public synchronized void removeAllLargeComponentComposites(String str) {
        try {
            this.largeComponentsComposites.remove(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public synchronized void removeAllLargeComponentComposites() {
        try {
            this.largeComponentsComposites = new JSONObject();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXComponentManagerProtocol
    public void didUploadComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXComposite adobeDCXComposite, String str, String str2, AdobeCSDKException adobeCSDKException) {
        JSONObject jSONObjectOptJSONObject;
        AdobeDCXComposite adobeDCXCompositeLoadComposite;
        AdobeDCXCompositeMutableBranch current = adobeDCXComposite.getCurrent();
        if (adobeCSDKException != null) {
            if (getLargeComponentsComposites(adobeDCXComposite.getCompositeId()).has(adobeDCXComponent.getComponentId())) {
                Log.d("S3Transfer", "got large component " + adobeDCXComponent.getComponentId() + " in didupload, returning");
                return;
            }
            Log.d("ComponentManager", "Sync: upload failed for UCID " + str);
            try {
                ComponentInfoModel componentInfoModel = this.componentManagerHelper.getComponentInfoModel(str);
                if (componentInfoModel == null) {
                    Log.d("ComponentManager", "Sync: Error: component uploaded without entry into database");
                    return;
                }
                this.componentManagerHelper.initComponentUploadFinish(componentInfoModel, null, adobeCSDKException);
                for (ComponentWaitingModel componentWaitingModel : this.componentManagerHelper.getComponentWaitingModelsForUCID(str)) {
                    if (!componentWaitingModel.getCompositeId().equals(adobeDCXComposite.getCompositeId()) && !componentWaitingModel.getAssetSyncStatus().equals(ComponentWaitingModel.SYNC_STATUS.DONE.name()) && (adobeDCXCompositeLoadComposite = CompositeLoader.getInstance().loadComposite(componentWaitingModel.getCompositeId(), null, null)) != null) {
                        this.controller.resumeSyncForComposite(adobeDCXCompositeLoadComposite);
                        Log.d("ComponentManager", "Sync: resuming sync for component " + componentWaitingModel.getComponentId() + " in composite " + componentWaitingModel.getCompositeId());
                    }
                }
                return;
            } catch (DBException e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (this.largeComponentsComposites.optJSONObject(adobeDCXComposite.getCompositeId()) != null && (jSONObjectOptJSONObject = this.largeComponentsComposites.optJSONObject(adobeDCXComposite.getCompositeId()).optJSONObject("components")) != null && jSONObjectOptJSONObject.opt(adobeDCXComponent.getComponentId()) != null) {
            removeLargeComponentComposites(adobeDCXComposite.getCompositeId(), adobeDCXComponent.getComponentId());
        }
        ComponentUtils.ComponentKeys componentKeys = ComponentUtils.getComponentKeys(adobeDCXComponent, current);
        if (componentKeys != null) {
            String str3 = componentKeys.assetUrl;
            String str4 = componentKeys.createdDate;
            try {
                ComponentInfoModel componentInfoModel2 = this.componentManagerHelper.getComponentInfoModel(str3, str4);
                if (componentInfoModel2 == null) {
                    Log.d("ComponentManager", "Sync: Error: component uploaded without entry into database");
                    return;
                }
                Log.d("ComponentManager", "Sync: finished upload component " + adobeDCXComponent.getComponentId() + " for composite " + adobeDCXComposite.getCompositeId());
                ComponentInfoModel componentInfoModel3 = new ComponentInfoModel();
                componentInfoModel3.setUCID(str);
                componentInfoModel3.setAssetURL(str3);
                componentInfoModel3.setCreatedDate(str4);
                componentInfoModel3.setLocalPath(componentInfoModel2.getLocalPath());
                componentInfoModel3.setAssetSyncStatus(ComponentInfoModel.ASSET_SYNC_STATUS.DONE.name());
                String serverHref = getServerHref(adobeDCXComposite.getCompositeId(), adobeDCXComponent.getComponentId());
                ComponentWaitingModel componentWaitingModel2 = new ComponentWaitingModel();
                componentWaitingModel2.setUCID(str);
                componentWaitingModel2.setCompositeId(adobeDCXComposite.getCompositeId());
                componentWaitingModel2.setComponentId(adobeDCXComponent.getComponentId());
                componentWaitingModel2.setAssetSyncStatus(ComponentWaitingModel.SYNC_STATUS.DONE.name());
                componentWaitingModel2.setServerHref(serverHref);
                componentWaitingModel2.setAdobeId(AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID());
                componentWaitingModel2.setCloudId(AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getGUID());
                this.componentManagerHelper.initComponentUploadFinish(componentInfoModel3, componentWaitingModel2, adobeCSDKException);
                for (ComponentWaitingModel componentWaitingModel3 : this.componentManagerHelper.getComponentWaitingModelsForUCID(str)) {
                    if (!componentWaitingModel3.getComponentId().equals(adobeDCXComponent.getComponentId()) && !componentWaitingModel3.getAssetSyncStatus().equals(ComponentWaitingModel.SYNC_STATUS.DONE.name())) {
                        Server2ServerCopy.trigger(this.session, this.controller, serverHref, componentWaitingModel3);
                        Log.d("ComponentManager", "Sync: S2S copy for Composit2ID: " + componentWaitingModel3.getCompositeId() + " ComponentID: " + componentWaitingModel3.getComponentId());
                    }
                }
            } catch (DBException e3) {
                e3.printStackTrace();
            }
        }
    }

    public String getUnmanagedDataPathForAssetUrl(String str, String str2) {
        try {
            ComponentInfoModel componentInfoModel = this.componentManagerHelper.getComponentInfoModel(str, str2);
            if (componentInfoModel == null) {
                if (!this.componentManagerHelper.isFileExistLocally(str, str2)) {
                    str = null;
                }
            } else if (componentInfoModel.getAssetSyncStatus().equals(ComponentInfoModel.ASSET_SYNC_STATUS.PENDING.name())) {
                str = getNonExistentPath();
            } else {
                str = componentInfoModel.getLocalPath();
            }
            return str;
        } catch (DBException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public String getUCIDForAssetUrl(String str, String str2) {
        String ucid;
        try {
            ComponentInfoModel componentInfoModel = this.componentManagerHelper.getComponentInfoModel(str, str2);
            if (componentInfoModel == null) {
                ucid = UUID.randomUUID().toString();
                ComponentInfoModel componentInfoModel2 = new ComponentInfoModel();
                componentInfoModel2.setUCID(ucid);
                componentInfoModel2.setAssetURL(str);
                componentInfoModel2.setCreatedDate(str2);
                componentInfoModel2.setLocalPath(str);
                componentInfoModel2.setAssetSyncStatus(ComponentInfoModel.ASSET_SYNC_STATUS.DONE.name());
                this.componentManagerHelper.insertComponentInfo(componentInfoModel2);
            } else {
                ucid = componentInfoModel.getUCID();
            }
            return ucid;
        } catch (DBException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}

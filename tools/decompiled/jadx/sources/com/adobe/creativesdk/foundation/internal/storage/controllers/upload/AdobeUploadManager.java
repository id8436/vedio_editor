package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.os.Handler;
import android.os.Looper;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.notification.IAdobeNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination;
import com.adobe.creativesdk.foundation.internal.utils.AdobeUxUtilMainUIThreadHandler;
import com.adobe.creativesdk.foundation.storage.AdobeAssetFolder;
import com.adobe.creativesdk.foundation.storage.AdobePhotoCollection;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadManager<EndPointType extends UploadDestination<EndPointType>> {
    public static final String UPLOAD_SESSION_KEY = "upload_session_key";
    private Map<String, AdobeUploadSession<EndPointType>> _activeSessionsMap = new HashMap();
    public static boolean showLastUploads = false;
    public static boolean _isFileUploadCompleteNotificationHandled = true;
    private static Map<Class<? extends UploadDestination>, AdobeUploadManager> instancesMap = new HashMap();

    public static <T extends UploadDestination<T>> AdobeUploadManager<T> getInstance(Class<T> cls) {
        if (instancesMap.get(cls) == null) {
            instancesMap.put(cls, new AdobeUploadManager());
        }
        return instancesMap.get(cls);
    }

    public int getTotalUploadSessions() {
        return this._activeSessionsMap.size();
    }

    public List<String> getListOfEndPoints() {
        return new ArrayList(this._activeSessionsMap.keySet());
    }

    public AdobeUploadSession<EndPointType> getUploadSessionOfEndPointFromId(String str) {
        return this._activeSessionsMap.get(str);
    }

    public AdobeUploadSession<EndPointType> getUploadSessionOfEndPoint(EndPointType endpointtype) {
        return this._activeSessionsMap.get(endpointtype.getId());
    }

    private void putUploadSessionForEndPoint(EndPointType endpointtype, AdobeUploadSession<EndPointType> adobeUploadSession) {
        this._activeSessionsMap.put(endpointtype.getId(), adobeUploadSession);
    }

    public boolean haveSessionForEndPoint(EndPointType endpointtype) {
        return this._activeSessionsMap.containsKey(endpointtype.getId());
    }

    private AdobeUploadSession<EndPointType> removeUploadSessionForEndPoint(EndPointType endpointtype) {
        return this._activeSessionsMap.remove(endpointtype.getId());
    }

    private AdobeUploadManager() {
    }

    public void createAndStartUploadSession(ArrayList<AdobeUploadFileInfo> arrayList, EndPointType endpointtype, List<Uploader<EndPointType>> list) {
        if (!haveSessionForEndPoint(endpointtype)) {
            AdobeUploadSession<EndPointType> adobeUploadSession = new AdobeUploadSession<>(endpointtype, arrayList, list);
            showLastUploads = true;
            putUploadSessionForEndPoint(endpointtype, adobeUploadSession);
            postUploadSessionNotificationCommon(AdobeInternalNotificationID.AdobeCCFilesUploadSessionStarted, adobeUploadSession);
            postAboutUploadSessions(AdobeInternalNotificationID.AdobeUploadSessionsActive);
            final WeakReference weakReference = new WeakReference(adobeUploadSession);
            AdobeUxUtilMainUIThreadHandler.getHandler().postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadManager.1
                @Override // java.lang.Runnable
                public void run() {
                    AdobeUploadSession adobeUploadSession2 = (AdobeUploadSession) weakReference.get();
                    if (adobeUploadSession2 != null) {
                        adobeUploadSession2.startUploadAll();
                    }
                }
            }, 400L);
        }
    }

    public void uploadSessionComplete(EndPointType endpointtype) {
        removeUploadSessionAndNotify(endpointtype, false);
    }

    public void cancelUploadSession(EndPointType endpointtype) {
        removeUploadSessionAndNotify(endpointtype, true);
    }

    private void removeUploadSessionAndNotify(final EndPointType endpointtype, final boolean z) {
        if (haveSessionForEndPoint(endpointtype)) {
            final AdobeUploadSession<EndPointType> adobeUploadSessionRemoveUploadSessionForEndPoint = removeUploadSessionForEndPoint(endpointtype);
            if (z) {
                adobeUploadSessionRemoveUploadSessionForEndPoint.cancelUpload();
            }
            if (adobeUploadSessionRemoveUploadSessionForEndPoint.getUploadSummary() != null) {
                AdobeUploadHistoryManager.storeSessionData(adobeUploadSessionRemoveUploadSessionForEndPoint.getUploadSummary().getAllAssets());
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeUploadManager.2
                @Override // java.lang.Runnable
                public void run() {
                    if (endpointtype instanceof AdobeAssetFolder) {
                        AdobeUploadManager._isFileUploadCompleteNotificationHandled = false;
                    }
                    if (AdobeUploadManager.checkForNoUploadSessions().booleanValue()) {
                        AdobeUploadManager.this.postAboutUploadSessions(AdobeInternalNotificationID.AdobeNoUploadSessions);
                    }
                    AdobeUploadManager.this.postUploadSessionNotificationCommon(z ? AdobeInternalNotificationID.AdobeCCFilesUploadSessionCancelled : AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete, adobeUploadSessionRemoveUploadSessionForEndPoint);
                }
            }, 200L);
        }
    }

    public static Boolean checkForNoUploadSessions() {
        return (getInstance(AdobeAssetFolder.class).getTotalUploadSessions() + getInstance(AdobeDCXManifest.class).getTotalUploadSessions()) + getInstance(AdobePhotoCollection.class).getTotalUploadSessions() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postUploadSessionNotificationCommon(IAdobeNotificationID iAdobeNotificationID, AdobeUploadSession<EndPointType> adobeUploadSession) {
        HashMap map = new HashMap();
        map.put(UPLOAD_SESSION_KEY, adobeUploadSession);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(iAdobeNotificationID, map));
        if (iAdobeNotificationID == AdobeInternalNotificationID.AdobeCCFilesUploadSessionComplete) {
            AdobePhotoCollectionAssetsUploadStatus.reloadDataAfterUploaded = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postAboutUploadSessions(IAdobeNotificationID iAdobeNotificationID) {
        AdobeNotification adobeNotification = new AdobeNotification(iAdobeNotificationID, null);
        if (iAdobeNotificationID == AdobeInternalNotificationID.AdobeNoUploadSessions || iAdobeNotificationID == AdobeInternalNotificationID.AdobeUploadSessionsActive) {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(adobeNotification);
        }
    }
}

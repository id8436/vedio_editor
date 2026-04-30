package com.adobe.premiereclip.library;

import android.content.Context;
import android.util.Log;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryDownloadPolicyType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElementFilter;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryStartupOptions;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.looks.CandyLook;
import com.adobe.premiereclip.util.CloudUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class ClipLibraryManager implements Observer {
    private static final String kCandyMimeType = "application/vnd.adobe.candy+jpg";
    private static final String kCubeMimeType = "application/vnd.adobe.cube+txt";
    private static final String kLookElementMimeType = "application/vnd.adobe.element.look+dcx";
    private static final String kThumbnailMimeType = "image/jpg";
    private static ClipLibraryManager mSharedInstance;
    private AdobeLibraryElementFilter filter;
    private GeneralLibraryManager generalLibraryManager;
    private Context mContext;
    private AdobeLibraryStartupOptions options;
    private ObservableWrapper _observable = null;
    private int mLooksCount = 0;
    private ArrayList<AdobeLibraryElement> mElements = null;
    LibraryRequestHandler _libraryRequestHandler = new LibraryRequestHandler();
    private Map<Integer, CandyLook> currentLibraryLooks = new Hashtable();
    private boolean selectedDefaultLooks = false;

    /* JADX INFO: loaded from: classes2.dex */
    class LibraryRequestHandler {
        Map<String, HashMap<IAdobeGenericCompletionCallback<CandyLook>, Integer>> completionCallbackMap;
        Map<String, HashMap<IAdobeGenericErrorCallback<AdobeLibraryException>, Integer>> errorCallbackMap;

        private LibraryRequestHandler() {
            this.completionCallbackMap = new HashMap();
            this.errorCallbackMap = new HashMap();
        }

        void addRequest(AdobeLibraryElement adobeLibraryElement, IAdobeGenericCompletionCallback<CandyLook> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback) {
            String elementId = adobeLibraryElement.getElementId();
            if (this.completionCallbackMap.get(elementId) == null) {
                this.completionCallbackMap.put(elementId, new HashMap<>());
                this.errorCallbackMap.put(elementId, new HashMap<>());
            }
            this.completionCallbackMap.get(elementId).put(iAdobeGenericCompletionCallback, 1);
            this.errorCallbackMap.get(elementId).put(iAdobeGenericErrorCallback, 1);
        }

        void removeRequests(AdobeLibraryElement adobeLibraryElement) {
            String elementId = adobeLibraryElement.getElementId();
            this.completionCallbackMap.get(adobeLibraryElement);
            this.completionCallbackMap.put(elementId, null);
            this.errorCallbackMap.get(adobeLibraryElement);
            this.errorCallbackMap.put(elementId, null);
        }

        void clear() {
            this.completionCallbackMap = new HashMap();
            this.errorCallbackMap = new HashMap();
        }

        int getRequestCount(AdobeLibraryElement adobeLibraryElement) {
            HashMap<IAdobeGenericCompletionCallback<CandyLook>, Integer> map = this.completionCallbackMap.get(adobeLibraryElement.getElementId());
            if (map == null) {
                return 0;
            }
            return map.size();
        }

        void sendResult(AdobeLibraryElement adobeLibraryElement, CandyLook candyLook, AdobeLibraryException adobeLibraryException) {
            HashMap<IAdobeGenericErrorCallback<AdobeLibraryException>, Integer> map;
            HashMap<IAdobeGenericCompletionCallback<CandyLook>, Integer> map2;
            if (candyLook != null && (map2 = this.completionCallbackMap.get(adobeLibraryElement.getElementId())) != null) {
                Iterator<IAdobeGenericCompletionCallback<CandyLook>> it = map2.keySet().iterator();
                while (it.hasNext()) {
                    it.next().onCompletion(candyLook);
                }
            }
            if (adobeLibraryException != null && (map = this.errorCallbackMap.get(adobeLibraryElement.getElementId())) != null) {
                Iterator<IAdobeGenericErrorCallback<AdobeLibraryException>> it2 = map.keySet().iterator();
                while (it2.hasNext()) {
                    it2.next().onError(adobeLibraryException);
                }
            }
            removeRequests(adobeLibraryElement);
        }
    }

    public ClipLibraryManager(Context context) {
        this.mContext = context;
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginExternalNotification, this);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLoginNotification, this);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, this);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeCloudManagerDefaultCloudUpdatedNotification, this);
        if (CloudUtil.isAuthenticated()) {
            onLogin();
        }
    }

    public void onLogin() {
        if (AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null && this.generalLibraryManager == null) {
            this.options = new AdobeLibraryStartupOptions();
            this.filter = new AdobeLibraryElementFilter();
            this.currentLibraryLooks = new Hashtable();
            this.options.autoDownloadPolicy = AdobeLibraryDownloadPolicyType.AdobeLibraryDownloadPolicyTypeManifestOnly;
            this.options.syncAllowedByNetworkStatusMask = EnumSet.of(AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableMetered, AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered);
            ArrayList arrayList = new ArrayList();
            arrayList.add("application/vnd.adobe.element.look+dcx");
            this.options.elementTypesFilter = arrayList;
            this.filter = new AdobeLibraryElementFilter();
            ArrayList<String> arrayList2 = new ArrayList<>();
            arrayList2.add("application/vnd.adobe.cube+txt");
            arrayList2.add("image/jpg");
            this.filter.setContentTypes(arrayList2);
            this.filter.setMatchAny(true);
            this.filter.setType("application/vnd.adobe.element.look+dcx");
            this.options.autoDownloadContentTypes = arrayList2;
            this.generalLibraryManager = GeneralLibraryManager.getNewInstance(this.options, this.filter, DesignLibraryFileDirectory());
            this.generalLibraryManager.addObserver(this);
            this.generalLibraryManager.setElementTypesFilter(this.filter);
        }
    }

    public void onLogOut() {
        if (this.generalLibraryManager != null) {
            this.generalLibraryManager.removeObserver(this);
            this.generalLibraryManager.shutDown();
            this.generalLibraryManager = null;
            resetCurrentLibInfo();
        }
    }

    private void handleCloudSwitch() {
        if (CloudUtil.isAuthenticated()) {
            if (this.generalLibraryManager != null) {
                this.generalLibraryManager.removeObserver(this);
                this.generalLibraryManager.shutDown();
                this.generalLibraryManager = null;
                resetCurrentLibInfo();
            }
            this.options = new AdobeLibraryStartupOptions();
            this.filter = new AdobeLibraryElementFilter();
            this.currentLibraryLooks = new Hashtable();
            this.options.autoDownloadPolicy = AdobeLibraryDownloadPolicyType.AdobeLibraryDownloadPolicyTypeManifestOnly;
            this.options.syncAllowedByNetworkStatusMask = EnumSet.of(AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableMetered, AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered);
            ArrayList arrayList = new ArrayList();
            arrayList.add("application/vnd.adobe.element.look+dcx");
            this.options.elementTypesFilter = arrayList;
            this.filter = new AdobeLibraryElementFilter();
            ArrayList<String> arrayList2 = new ArrayList<>();
            arrayList2.add("application/vnd.adobe.cube+txt");
            arrayList2.add("image/jpg");
            this.filter.setContentTypes(arrayList2);
            this.filter.setMatchAny(true);
            this.filter.setType("application/vnd.adobe.element.look+dcx");
            this.options.autoDownloadContentTypes = arrayList2;
            this.generalLibraryManager = GeneralLibraryManager.getNewInstance(this.options, this.filter, DesignLibraryFileDirectory());
            this.generalLibraryManager.addObserver(this);
            this.generalLibraryManager.setElementTypesFilter(this.filter);
        }
    }

    public static ClipLibraryManager getSharedInstance() {
        if (mSharedInstance == null) {
            synchronized (ClipLibraryManager.class) {
                if (mSharedInstance == null) {
                    mSharedInstance = new ClipLibraryManager(PremiereClipApplication.getContext());
                }
            }
        }
        return mSharedInstance;
    }

    private String trimmedAdobeId() {
        return AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID().split("@")[0];
    }

    public void forceSync() {
        this.generalLibraryManager.syncLibrary();
    }

    public CandyLook getLookById(String str) {
        Iterator<Map.Entry<Integer, CandyLook>> it = this.currentLibraryLooks.entrySet().iterator();
        while (it.hasNext()) {
            CandyLook value = it.next().getValue();
            if (value.getLookId().equals(str)) {
                return value;
            }
        }
        return null;
    }

    public synchronized void addObserver(Observer observer) {
        if (this._observable == null) {
            this._observable = new ObservableWrapper();
        }
        this._observable.addObserver(observer);
    }

    public synchronized void removeObserver(Observer observer) {
        if (this._observable != null) {
            this._observable.deleteObserver(observer);
        }
    }

    public synchronized void postNotification(Object obj) {
        if (this._observable != null) {
            this._observable.markChanged();
            this._observable.notifyObservers(obj);
        }
    }

    public AdobeLibraryComposite createLibraryWithName(String str) {
        return this.generalLibraryManager.createLibraryWithName(str);
    }

    public void getLook(final AdobeLibraryElement adobeLibraryElement) {
        String name = adobeLibraryElement.getName();
        final String elementId = adobeLibraryElement.getElementId();
        final CandyLook candyLook = new CandyLook(elementId, name);
        candyLook.setLibraryId(getCurrentLibrary().getLibraryId());
        for (AdobeLibraryRepresentation adobeLibraryRepresentation : this.generalLibraryManager.getCurrentLibrary().getRepresentationsForElement(adobeLibraryElement)) {
            if (adobeLibraryRepresentation.getType().compareTo("application/vnd.adobe.cube+txt") == 0) {
                this.generalLibraryManager.getCurrentLibrary().getFilePathForRepresentation(adobeLibraryRepresentation, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.premiereclip.library.ClipLibraryManager.1
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(String str) {
                        Log.d("Looks", "look : " + elementId + ",  got cube file " + str);
                        candyLook.setCubeDataUrl(str);
                        if (candyLook.getCubeDataUrl() != null && candyLook.getRenditionPathUrl() != null) {
                            ClipLibraryManager.this._libraryRequestHandler.sendResult(adobeLibraryElement, candyLook, null);
                        }
                    }
                }, new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.premiereclip.library.ClipLibraryManager.2
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeLibraryException adobeLibraryException) {
                        Log.d("Looks", "look : " + elementId + ",  error for cube file");
                        ClipLibraryManager.this._libraryRequestHandler.sendResult(adobeLibraryElement, null, adobeLibraryException);
                    }
                }, null);
            }
            if (adobeLibraryRepresentation.getType().compareTo("image/jpg") == 0) {
                this.generalLibraryManager.getCurrentLibrary().getFilePathForRepresentation(adobeLibraryRepresentation, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.premiereclip.library.ClipLibraryManager.3
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                    public void onCompletion(String str) {
                        Log.d("Looks", "look : " + elementId + ",  got image file " + str);
                        candyLook.setRenditionPathUrl(str);
                        if (candyLook.getCubeDataUrl() != null && candyLook.getRenditionPathUrl() != null) {
                            ClipLibraryManager.this._libraryRequestHandler.sendResult(adobeLibraryElement, candyLook, null);
                        }
                    }
                }, new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.premiereclip.library.ClipLibraryManager.4
                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeLibraryException adobeLibraryException) {
                        Log.d("Looks", "look : " + elementId + ",  error for image file");
                        ClipLibraryManager.this._libraryRequestHandler.sendResult(adobeLibraryElement, null, adobeLibraryException);
                    }
                }, null);
            }
        }
    }

    public void getLookAtPosition(int i, IAdobeGenericCompletionCallback<CandyLook> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback) {
        if (this.mElements == null) {
            this.mElements = this.generalLibraryManager.getElements();
        }
        if (this.mElements != null) {
            AdobeLibraryElement adobeLibraryElement = this.mElements.get((this.mElements.size() - 1) - i);
            this._libraryRequestHandler.addRequest(adobeLibraryElement, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
            if (this._libraryRequestHandler.getRequestCount(adobeLibraryElement) <= 1) {
                getLook(adobeLibraryElement);
            }
        }
    }

    private String DesignLibraryFileDirectory() {
        String strStringByAppendingLastPathComponentAndLastPathComponentIsDir = AdobeDCXUtils.stringByAppendingLastPathComponentAndLastPathComponentIsDir(AdobeDCXUtils.stringByAppendingLastPathComponent(this.mContext.getFilesDir().getPath(), trimmedAdobeId()), "Design Libraries");
        File file = new File(strStringByAppendingLastPathComponentAndLastPathComponentIsDir);
        if (!file.exists() && !file.mkdirs()) {
            Log.e(ClipLibraryManager.class.getSimpleName(), "Failed to create design library directory" + strStringByAppendingLastPathComponentAndLastPathComponentIsDir);
            return null;
        }
        return strStringByAppendingLastPathComponentAndLastPathComponentIsDir;
    }

    public ArrayList<AdobeLibraryComposite> getLibraries() {
        return this.generalLibraryManager.getLibraries();
    }

    public ArrayList<AdobeLibraryComposite> getSortedLibraries() {
        ArrayList<AdobeLibraryComposite> libraries = this.generalLibraryManager.getLibraries();
        Collections.sort(libraries, new Comparator<AdobeLibraryComposite>() { // from class: com.adobe.premiereclip.library.ClipLibraryManager.5
            @Override // java.util.Comparator
            public int compare(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryComposite adobeLibraryComposite2) {
                return adobeLibraryComposite.getModified() > adobeLibraryComposite2.getModified() ? -1 : 1;
            }
        });
        return libraries;
    }

    public AdobeLibraryComposite getCurrentLibrary() {
        return this.generalLibraryManager.getCurrentLibrary();
    }

    public void setCurrentLibrary(Object obj) {
        if (obj instanceof AdobeLibraryComposite) {
            this.generalLibraryManager.setCurrentLibrary((AdobeLibraryComposite) obj);
            resetCurrentLibInfo();
        }
    }

    public boolean isSelectedDefaultLooks() {
        return this.selectedDefaultLooks;
    }

    public void setSelectedDefaultLooks(boolean z) {
        this.selectedDefaultLooks = z;
    }

    private void resetCurrentLibInfo() {
        this.currentLibraryLooks = new Hashtable();
        this.mLooksCount = 0;
        this.mElements = null;
    }

    public String getCurrentLibraryName() {
        return this.generalLibraryManager.getCurrentLibrary() != null ? this.generalLibraryManager.getCurrentLibrary().getName() : "";
    }

    public String getLibraryName(Object obj) {
        return obj instanceof AdobeLibraryComposite ? ((AdobeLibraryComposite) obj).getName() : "";
    }

    public int countLooksInLibrary(Object obj) {
        if (obj instanceof AdobeLibraryComposite) {
            return this.generalLibraryManager.countAssetsInLibrary((AdobeLibraryComposite) obj, this.filter);
        }
        return -1;
    }

    public int countLooksInCurrentLibrary() {
        if (this.mLooksCount == 0) {
            this.mLooksCount = this.generalLibraryManager.countAssetsInLibrary(getCurrentLibrary(), this.filter);
        }
        return this.mLooksCount;
    }

    public int countAllElementsInLibrary(Object obj) {
        if (obj instanceof AdobeLibraryComposite) {
            return this.generalLibraryManager.countAllAssetsInLibrary((AdobeLibraryComposite) obj);
        }
        return -1;
    }

    public String getLibraryId(Object obj) {
        return obj instanceof AdobeLibraryComposite ? ((AdobeLibraryComposite) obj).getLibraryId() : "";
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        if (obj instanceof AdobeNotification) {
            AdobeNotification adobeNotification = (AdobeNotification) obj;
            if ((adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginExternalNotification || adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLoginNotification) && (adobeNotification.getInfo() == null || (adobeNotification.getInfo() != null && !adobeNotification.getInfo().containsKey(AdobeNotification.Error)))) {
                onLogin();
            }
            if (adobeNotification.getId() == AdobeInternalNotificationID.AdobeAuthLogoutNotification) {
                onLogOut();
            }
            if (adobeNotification.getId().equals(AdobeInternalNotificationID.AdobeCloudManagerDefaultCloudUpdatedNotification) && AdobeCloudManager.getSharedCloudManager().getDefaultCloud() != null) {
                handleCloudSwitch();
            }
        }
        if (obj instanceof LibraryNotification) {
            LibraryNotification libraryNotification = (LibraryNotification) obj;
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kSyncStartedNotification)) {
                postNotification(libraryNotification);
                return;
            }
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kSyncIssueNotification)) {
                postNotification(libraryNotification);
                return;
            }
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kSyncCompleteNotification)) {
                postNotification(libraryNotification);
                return;
            }
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kLibraryDeleted)) {
                postNotification(libraryNotification);
                return;
            }
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kLibraryChanged)) {
                postNotification(libraryNotification);
                return;
            }
            String libraryId = libraryNotification.library.getLibraryId();
            String libraryId2 = this.generalLibraryManager.getCurrentLibrary().getLibraryId();
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kLibraryAdded) && libraryId.equals(libraryId2)) {
                postNotification(libraryNotification);
                return;
            }
            if (libraryNotification.notificationType.equals(GeneralLibraryManager.kElementAdded) && libraryId.equals(libraryId2)) {
                resetCurrentLibInfo();
                postNotification(libraryNotification);
            } else if (libraryNotification.notificationType.equals(GeneralLibraryManager.kElementRemoved) && libraryId.equals(libraryId2)) {
                resetCurrentLibInfo();
                postNotification(libraryNotification);
            } else if (libraryNotification.notificationType.equals(GeneralLibraryManager.kElementUpdated) && libraryId.equals(libraryId2)) {
                resetCurrentLibInfo();
                postNotification(libraryNotification);
            }
        }
    }

    public boolean isSyncStarted() {
        return this.generalLibraryManager.isSyncStarted();
    }

    public void addLookToCurrentLooks(int i, CandyLook candyLook) {
        this.currentLibraryLooks.put(Integer.valueOf(i), candyLook);
    }

    public CandyLook getLook(int i) {
        return this.currentLibraryLooks.get(Integer.valueOf(i));
    }

    public int getPositionFromLookFromId(String str) {
        if (this.mElements == null) {
            this.mElements = this.generalLibraryManager.getElements();
        }
        if (this.mElements != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mElements.size()) {
                    break;
                }
                if (!this.mElements.get(i2).getElementId().equals(str)) {
                    i = i2 + 1;
                } else {
                    return (this.mElements.size() - 1) - i2;
                }
            }
        }
        return -1;
    }

    public Object getLibraryById(String str) {
        return this.generalLibraryManager.getLibraryById(str);
    }

    /* JADX INFO: loaded from: classes2.dex */
    class ObservableWrapper extends Observable {
        private ObservableWrapper() {
        }

        public void markChanged() {
            setChanged();
        }
    }
}

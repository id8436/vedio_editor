package com.adobe.premiereclip.library;

import android.content.Context;
import android.util.Log;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeDesignLibraryUtilsInternal;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElementFilter;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryStartupOptions;
import com.adobe.creativesdk.foundation.storage.AdobeLibrarySyncStatus;
import com.adobe.premiereclip.util.CloudUtil;
import java.util.ArrayList;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes2.dex */
public class GeneralLibraryManager extends AdobeLibraryDelegate implements IAdobeNetworkHttpServiceDelegate {
    public static String DEFAULT_LIB_NAME = "My Library";
    public static final String kBulkLibraryUpdateFinished = "BulkElementUpdateFinished";
    public static final String kBulkLibraryUpdateStarted = "BulkElementUpdateStarted";
    public static final String kElementAdded = "elementAdded";
    public static final String kElementRemoved = "elementRemoved";
    public static final String kElementUpdated = "elementUpdated";
    public static final String kLibraryAdded = "libraryAdded";
    public static final String kLibraryChanged = "libraryChanged";
    public static final String kLibraryDeleted = "libraryDeleted";
    public static final String kLocalLibraryCreated = "localLibraryCreated";
    public static final String kSyncCompleteNotification = "SyncCompleteNotification";
    public static final String kSyncIssueNotification = "librarySyncIssue";
    public static final String kSyncStartedNotification = "syncStarted";
    private Context context;
    private AdobeLibraryComposite currentLibrary;
    private AdobeLibraryElementFilter elementFilter;
    private boolean firstSyncDone;
    private String libraryDir;
    private AdobeLibraryManager libraryManager;
    private AdobeLibraryStartupOptions options;
    private boolean pendingInitialLibraryCreate;
    private ObservableWrapper _observable = null;
    private boolean syncStarted = false;

    public static GeneralLibraryManager getNewInstance(AdobeLibraryStartupOptions adobeLibraryStartupOptions, AdobeLibraryElementFilter adobeLibraryElementFilter, String str) {
        GeneralLibraryManager generalLibraryManager = new GeneralLibraryManager();
        generalLibraryManager.init(adobeLibraryStartupOptions, adobeLibraryElementFilter, str);
        return generalLibraryManager;
    }

    public void setOptions(AdobeLibraryStartupOptions adobeLibraryStartupOptions) {
        this.options = adobeLibraryStartupOptions;
    }

    public void setElementTypesFilter(AdobeLibraryElementFilter adobeLibraryElementFilter) {
        this.elementFilter = adobeLibraryElementFilter;
    }

    public void setLibraryDir(String str) {
        this.libraryDir = str;
    }

    public String getCurrentLibraryName() {
        return getCurrentLibrary().getName();
    }

    private AdobeLibraryManager createLibraryManager() {
        boolean zStartWithFolder;
        AdobeLibraryManager sharedInstance = AdobeLibraryManager.getSharedInstance();
        boolean zIsStarted = sharedInstance.isStarted();
        if (zIsStarted) {
            zStartWithFolder = zIsStarted;
        } else {
            try {
                zStartWithFolder = sharedInstance.startWithFolder(this.libraryDir);
            } catch (AdobeLibraryException e2) {
                e2.printStackTrace();
                zStartWithFolder = zIsStarted;
            }
        }
        if (!zStartWithFolder) {
            Log.e(GeneralLibraryManager.class.getSimpleName(), "Error starting Adobe Library Manager:");
            sharedInstance = null;
        } else {
            sharedInstance.setSyncEnabled(true);
        }
        if (sharedInstance.getSyncStatus().isSyncing()) {
            syncStarted();
        }
        sharedInstance.registerDelegate(this, this.options);
        return sharedInstance;
    }

    public boolean isCollaborated(AdobeLibraryComposite adobeLibraryComposite) {
        return adobeLibraryComposite.getCollaboration() != AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
    }

    public boolean isCollaboratedWithYou(AdobeLibraryComposite adobeLibraryComposite) {
        return adobeLibraryComposite.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER;
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

    private void setAdobeID(String str) {
        if (str != null) {
            if (this.libraryManager == null) {
                this.libraryManager = createLibraryManager();
            }
            if (this.pendingInitialLibraryCreate) {
                createInitialLibrary();
            }
        }
    }

    public void shutDown() {
        if (this.libraryManager != null) {
            this.libraryManager.shutdown();
        }
        this.pendingInitialLibraryCreate = true;
        this.currentLibrary = null;
        this.libraryManager = null;
    }

    private void createInitialLibrary() {
        AdobeLibrarySyncStatus syncStatus = this.libraryManager.getSyncStatus();
        Log.i(GeneralLibraryManager.class.getSimpleName(), "Last sync time : " + syncStatus.getLastSyncTime());
        if (syncStatus.isSyncing() || !CloudUtil.isAuthenticated() || !this.firstSyncDone) {
            this.pendingInitialLibraryCreate = true;
            return;
        }
        this.pendingInitialLibraryCreate = false;
        if (this.currentLibrary == null && this.libraryManager.getLibraries().size() > 0) {
            libraryWasAdded(getLastModifiedLibrary());
            setCurrentLibrary(getLastModifiedLibrary());
        }
        if (this.currentLibrary != null) {
            getElements();
        }
    }

    public AdobeLibraryComposite createLibraryWithName(String str) {
        AdobeLibraryComposite adobeLibraryCompositeCreateLibraryWithName = this.libraryManager.createLibraryWithName(str);
        if (adobeLibraryCompositeCreateLibraryWithName == null) {
            return null;
        }
        syncLibrary();
        return adobeLibraryCompositeCreateLibraryWithName;
    }

    public boolean deleteLibrary(String str) {
        try {
            if (this.currentLibrary.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
                this.libraryManager.leaveSharedLibraryWithId(str);
            } else {
                this.libraryManager.deleteLibraryWithId(str);
            }
            if (this.currentLibrary.getLibraryId().equals(str)) {
                setCurrentLibrary(getLastModifiedLibrary());
            }
            syncLibrary();
            return true;
        } catch (AdobeLibraryException e2) {
            Log.e(GeneralLibraryManager.class.getSimpleName(), "Error deleting Library: " + str, e2);
            return false;
        }
    }

    public String renameLibrary(AdobeLibraryComposite adobeLibraryComposite, String str) {
        if (str == null || str.isEmpty()) {
            return adobeLibraryComposite.getName();
        }
        try {
            AdobeDesignLibraryUtilsInternal.renameLibrary(str, adobeLibraryComposite);
        } catch (AdobeLibraryException e2) {
        }
        syncLibrary();
        return str;
    }

    public boolean deleteElement(AdobeLibraryComposite adobeLibraryComposite, String str) {
        boolean zDeleteElement = AdobeDesignLibraryUtilsInternal.deleteElement(str, adobeLibraryComposite);
        syncLibrary();
        return zDeleteElement;
    }

    public ArrayList<AdobeLibraryElement> getElements() {
        if (getCurrentLibrary() == null) {
            Log.i(GeneralLibraryManager.class.getSimpleName(), "Library does not exist");
            return null;
        }
        if (!CloudUtil.isAuthenticated()) {
            Log.i(GeneralLibraryManager.class.getSimpleName(), "User is not authenticated");
        }
        if (getCurrentLibrary() == null || !CloudUtil.isAuthenticated()) {
            return null;
        }
        return getCurrentLibrary().getElementsWithFilter(this.elementFilter, this);
    }

    public String getLibraryName(Object obj) {
        if (obj instanceof AdobeLibraryComposite) {
            return ((AdobeLibraryComposite) obj).getName();
        }
        return null;
    }

    private void checkAndUnsuspendLibraryManager() {
        if (this.libraryManager.isSyncSuspendedDueToAuthenticationError()) {
            this.libraryManager.unsuspendSyncDueToNewAuthenticationStatus();
        }
    }

    private void postRefresh(boolean z) {
        postNotification("TokenRefreshedFromDL");
        setAdobeID(AdobeAuthIdentityManagementService.getSharedInstance().getAdobeID());
        checkAndUnsuspendLibraryManager();
        if (z) {
            syncLibrary();
        }
    }

    private void refreshAccessTokenWithSync(boolean z) {
        if (CloudUtil.isAuthenticated()) {
            postRefresh(z);
        }
    }

    public ArrayList<AdobeLibraryComposite> getLibraries() {
        if (this.libraryManager == null || !this.libraryManager.isStarted()) {
            return null;
        }
        return this.libraryManager.getLibraries();
    }

    public AdobeLibraryComposite getLastModifiedLibrary() {
        ArrayList<AdobeLibraryComposite> libraries = getLibraries();
        if (libraries == null || libraries.size() == 0) {
            return null;
        }
        AdobeLibraryComposite adobeLibraryComposite = libraries.get(0);
        for (int i = 1; i < libraries.size(); i++) {
            AdobeLibraryComposite adobeLibraryComposite2 = libraries.get(i);
            if (adobeLibraryComposite2.getModified() > adobeLibraryComposite.getModified()) {
                adobeLibraryComposite = adobeLibraryComposite2;
            }
        }
        return adobeLibraryComposite;
    }

    public AdobeLibraryComposite getCurrentLibrary() {
        boolean z;
        String str = null;
        ArrayList<AdobeLibraryComposite> libraries = this.libraryManager.getLibraries();
        if (this.currentLibrary == null) {
            z = false;
            for (int i = 0; i < this.libraryManager.getLibraries().size(); i++) {
                if (0 != 0 && str.equals(libraries.get(i).getLibraryId())) {
                    this.currentLibrary = libraries.get(i);
                    z = true;
                }
            }
        } else {
            z = false;
        }
        String libraryId = this.currentLibrary != null ? this.currentLibrary.getLibraryId() : null;
        for (int i2 = 0; i2 < libraries.size() && !z; i2++) {
            if (libraryId != null && libraryId.equals(libraries.get(i2).getLibraryId())) {
                z = true;
            }
        }
        if (!z) {
            this.currentLibrary = getLastModifiedLibrary();
        }
        return this.currentLibrary;
    }

    public void setCurrentLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        synchronized (this) {
            if (adobeLibraryComposite != null) {
                if (this.currentLibrary == null || !this.currentLibrary.getLibraryId().equals(adobeLibraryComposite.getLibraryId())) {
                    postNotification(kBulkLibraryUpdateStarted);
                    syncLibrary();
                    this.currentLibrary = adobeLibraryComposite;
                    postNotification(kBulkLibraryUpdateFinished);
                }
            }
        }
    }

    public boolean isFirstSyncDone() {
        return this.firstSyncDone;
    }

    public boolean isSyncStarted() {
        return this.syncStarted;
    }

    public int countAllAssetsInLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        if (CloudUtil.isAuthenticated()) {
            return adobeLibraryComposite.getCountOfAllElements();
        }
        return -1;
    }

    public int countAssetsInLibrary(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElementFilter adobeLibraryElementFilter) {
        try {
            if (CloudUtil.isAuthenticated() && adobeLibraryComposite != null) {
                return adobeLibraryComposite.getElementsWithFilter(adobeLibraryElementFilter, this).size();
            }
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public void syncLibrary() {
        refreshAccessTokenWithSync(false);
        this.libraryManager.sync();
    }

    private void init(AdobeLibraryStartupOptions adobeLibraryStartupOptions, AdobeLibraryElementFilter adobeLibraryElementFilter, String str) {
        this.firstSyncDone = false;
        this.pendingInitialLibraryCreate = true;
        setOptions(adobeLibraryStartupOptions);
        setElementTypesFilter(adobeLibraryElementFilter);
        setLibraryDir(str);
        if (CloudUtil.isAuthenticated()) {
            refreshAccessTokenWithSync(true);
        }
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void elementWasUpdated(AdobeLibraryComposite adobeLibraryComposite, String str) {
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.elementId = str;
        libraryNotification.library = adobeLibraryComposite;
        libraryNotification.notificationType = kElementUpdated;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void elementWasAdded(AdobeLibraryComposite adobeLibraryComposite, String str) {
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.elementId = str;
        libraryNotification.library = adobeLibraryComposite;
        libraryNotification.notificationType = kElementAdded;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void elementWasRemoved(AdobeLibraryComposite adobeLibraryComposite, String str) {
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.elementId = str;
        libraryNotification.library = adobeLibraryComposite;
        libraryNotification.notificationType = kElementRemoved;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void libraryWasUpdated(AdobeLibraryComposite adobeLibraryComposite) {
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.elementId = null;
        libraryNotification.library = adobeLibraryComposite;
        libraryNotification.notificationType = kLibraryChanged;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void libraryWasAdded(AdobeLibraryComposite adobeLibraryComposite) {
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.elementId = null;
        libraryNotification.library = adobeLibraryComposite;
        libraryNotification.notificationType = kLibraryAdded;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void libraryWasDeleted(String str) {
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.elementId = null;
        libraryNotification.libraryId = str;
        libraryNotification.notificationType = kLibraryDeleted;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void libraryWasUnshared(String str) {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public String libraryPreReadabilityChange(String str) {
        return str;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public boolean libraryPreDelete(String str) {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void syncStarted() {
        this.syncStarted = true;
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.notificationType = kSyncStartedNotification;
        libraryNotification.elementId = null;
        libraryNotification.library = null;
        libraryNotification.libraryId = null;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void syncFinished() {
        this.firstSyncDone = true;
        this.syncStarted = false;
        if (this.pendingInitialLibraryCreate) {
            createInitialLibrary();
        }
        if (getLibraries() == null || getLibraries().isEmpty()) {
            createLibraryWithName(DEFAULT_LIB_NAME);
        }
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.notificationType = kSyncCompleteNotification;
        libraryNotification.elementId = null;
        libraryNotification.library = null;
        libraryNotification.libraryId = null;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void syncAvailable(AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void syncUnavailable(AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
        this.syncStarted = false;
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.notificationType = kSyncIssueNotification;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void onSyncProgress(AdobeLibraryComposite adobeLibraryComposite, long j) {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void onSyncError(AdobeLibraryComposite adobeLibraryComposite, AdobeCSDKException adobeCSDKException) {
        this.syncStarted = false;
        LibraryNotification libraryNotification = new LibraryNotification();
        libraryNotification.notificationType = kSyncIssueNotification;
        postNotification(libraryNotification);
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public boolean HTTPServiceAuthenticationDidFail(AdobeNetworkHttpService adobeNetworkHttpService) {
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public void HTTPServiceDidDisconnect(AdobeNetworkHttpService adobeNetworkHttpService) {
    }

    public AdobeLibraryComposite getLibraryById(String str) {
        return this.libraryManager.getLibraryWithId(str);
    }

    class ObservableWrapper extends Observable {
        private ObservableWrapper() {
        }

        public void markChanged() {
            setChanged();
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkHttpServiceDelegate
    public void HTTPServiceIsActive(AdobeNetworkHttpService adobeNetworkHttpService) {
    }
}

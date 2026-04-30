package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core;

import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.ACEventBus;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerSyncDelegate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerLibOpEvent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerSyncErrorEvent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryManagerUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeDesignLibraryUtilsInternal;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.notification.IAdobeNotificationID;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryManager extends AdobeLibraryDelegate {
    private AdobeLibraryManager _csdkLibraryManager;
    private ACEventBus _eventBusToPublishOn;
    private boolean _firstSyncDone = false;
    private ACLibraryManagerOptions _startUpOptions;

    public enum ACLibraryNotificationID implements IAdobeNotificationID {
        ACLibrarySyncStartedNotification,
        ACLibrarySyncFinishedNotification
    }

    public static ACLibraryManager createNewInstance(ACLibraryManagerOptions aCLibraryManagerOptions) {
        return createNewInstance(aCLibraryManagerOptions, ACEventBus.getDefault());
    }

    public static ACLibraryManager createNewInstance(ACLibraryManagerOptions aCLibraryManagerOptions, ACEventBus aCEventBus) {
        if (!isAuthenticated()) {
            throw new IllegalArgumentException("ACLibraryManager Failed to create instance : User not authenticated");
        }
        ACLibraryManager aCLibraryManager = new ACLibraryManager();
        aCLibraryManager.start(aCLibraryManagerOptions, aCEventBus);
        return aCLibraryManager;
    }

    protected ACLibraryManager() {
    }

    private void start(ACLibraryManagerOptions aCLibraryManagerOptions, ACEventBus aCEventBus) {
        this._eventBusToPublishOn = aCEventBus;
        this._startUpOptions = aCLibraryManagerOptions;
        this._csdkLibraryManager = createNStartAdobeLibraryManager();
    }

    public void syncLibrary() {
        checkAndUnsuspendLibraryManager();
        this._csdkLibraryManager.sync();
    }

    public void forceSync() {
        syncLibrary();
    }

    public void forceSync(final IACLibraryManagerSyncDelegate iACLibraryManagerSyncDelegate) {
        final boolean[] zArr = {this._csdkLibraryManager.getSyncStatus().isSyncing()};
        if (!zArr[0]) {
            this._csdkLibraryManager.sync();
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(ACLibraryNotificationID.ACLibrarySyncFinishedNotification, new Observer() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLibraryManager.1
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    iACLibraryManagerSyncDelegate.handleSyncFinished();
                    AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(ACLibraryNotificationID.ACLibrarySyncFinishedNotification, this);
                }
            });
        } else {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(ACLibraryNotificationID.ACLibrarySyncFinishedNotification, new Observer() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLibraryManager.2
                @Override // java.util.Observer
                public void update(Observable observable, Object obj) {
                    if (zArr[0]) {
                        if (ACLibraryManager.this._csdkLibraryManager != null) {
                            ACLibraryManager.this._csdkLibraryManager.sync();
                            zArr[0] = false;
                            return;
                        }
                        return;
                    }
                    iACLibraryManagerSyncDelegate.handleSyncFinished();
                    AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(ACLibraryNotificationID.ACLibrarySyncFinishedNotification, this);
                }
            });
        }
    }

    public boolean isValid() {
        return this._csdkLibraryManager != null;
    }

    private void checkAndUnsuspendLibraryManager() {
        if (this._csdkLibraryManager.isSyncSuspendedDueToAuthenticationError()) {
            this._csdkLibraryManager.unsuspendSyncDueToNewAuthenticationStatus();
        }
    }

    public AdobeLibraryComposite getLibraryWithId(String str) {
        return this._csdkLibraryManager.getLibraryWithId(str);
    }

    private AdobeLibraryManager createNStartAdobeLibraryManager() {
        AdobeStorageSession adobeStorageSession;
        AdobeLibraryManager sharedInstance = AdobeLibraryManager.getSharedInstance();
        this.delegateHandler = this._startUpOptions._almHandler;
        AdobeStorageSession adobeStorageSession2 = null;
        try {
            adobeStorageSession = (AdobeStorageSession) AdobeCloudManager.getSharedCloudManager().getDefaultCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
        } catch (AdobeLibraryException e2) {
            e = e2;
        }
        try {
            if (!sharedInstance.isStarted()) {
                sharedInstance.startWithFolder(this._startUpOptions._designLibrariesFolder);
            }
            sharedInstance.setDownloadLibraryPriority(this._startUpOptions._downloadPriority);
            sharedInstance.setUploadLibraryPriority(this._startUpOptions._uploadPriority);
            sharedInstance.registerDelegate(this, this._startUpOptions._almStartupOptions);
            sharedInstance.setSyncEnabled(true);
            if (sharedInstance.getSyncStatus().isSyncing()) {
                syncStarted();
            }
            return sharedInstance;
        } catch (AdobeLibraryException e3) {
            adobeStorageSession2 = adobeStorageSession;
            e = e3;
            throw new IllegalArgumentException("Failed with AdobeLibraryException in ACLibraryManager createLibraryManager method error code : " + e.getErrorCode().name() + "   and storage session was : " + (adobeStorageSession2 != null ? " =VALID " : " =INVALID "));
        }
    }

    private static boolean isAuthenticated() {
        return ACLibraryManagerUtil.appHasAnyAuthenticatedUser();
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void elementWasUpdated(AdobeLibraryComposite adobeLibraryComposite, String str) {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kElementUpdated);
        aCLibraryManagerLibOpEvent.elementId = str;
        aCLibraryManagerLibOpEvent.library = adobeLibraryComposite;
        postNotification(aCLibraryManagerLibOpEvent);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void elementWasAdded(AdobeLibraryComposite adobeLibraryComposite, String str) {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kElementAdded);
        aCLibraryManagerLibOpEvent.elementId = str;
        aCLibraryManagerLibOpEvent.library = adobeLibraryComposite;
        postNotification(aCLibraryManagerLibOpEvent);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void elementWasRemoved(AdobeLibraryComposite adobeLibraryComposite, String str) {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kElementRemoved);
        aCLibraryManagerLibOpEvent.elementId = str;
        aCLibraryManagerLibOpEvent.library = adobeLibraryComposite;
        postNotification(aCLibraryManagerLibOpEvent);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void libraryWasUpdated(AdobeLibraryComposite adobeLibraryComposite) {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kLibraryUpdated);
        aCLibraryManagerLibOpEvent.elementId = null;
        aCLibraryManagerLibOpEvent.library = adobeLibraryComposite;
        aCLibraryManagerLibOpEvent.libraryId = adobeLibraryComposite.getLibraryId();
        postNotification(aCLibraryManagerLibOpEvent);
    }

    private void postNotification(ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent) {
        this._eventBusToPublishOn.post(aCLibraryManagerLibOpEvent);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void libraryWasAdded(AdobeLibraryComposite adobeLibraryComposite) {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kLibraryAdded);
        aCLibraryManagerLibOpEvent.elementId = null;
        aCLibraryManagerLibOpEvent.library = adobeLibraryComposite;
        postNotification(aCLibraryManagerLibOpEvent);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void libraryWasDeleted(String str) {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kLibraryDeleted);
        aCLibraryManagerLibOpEvent.elementId = null;
        aCLibraryManagerLibOpEvent.libraryId = str;
        postNotification(aCLibraryManagerLibOpEvent);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void libraryWasUnshared(String str) {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kLibraryUnShared);
        aCLibraryManagerLibOpEvent.elementId = null;
        aCLibraryManagerLibOpEvent.libraryId = str;
        postNotification(aCLibraryManagerLibOpEvent);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public boolean libraryPreDelete(String str) {
        return true;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    protected String libraryPreReadabilityChange(String str) {
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    public void syncStarted() {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kSyncStarted);
        aCLibraryManagerLibOpEvent.elementId = null;
        aCLibraryManagerLibOpEvent.library = null;
        postNotification(aCLibraryManagerLibOpEvent);
    }

    public boolean isFirstEverSyncWithServerDone() {
        ArrayList<AdobeLibraryComposite> libraries = getLibraries();
        return (libraries != null && libraries.size() > 0) || this._firstSyncDone;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    protected void syncFinished() {
        this._firstSyncDone = true;
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kSyncFinished);
        aCLibraryManagerLibOpEvent.elementId = null;
        aCLibraryManagerLibOpEvent.libraryId = null;
        postNotification(aCLibraryManagerLibOpEvent);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().postNotification(new AdobeNotification(ACLibraryNotificationID.ACLibrarySyncFinishedNotification, null));
    }

    private void postGenericEvent(Object obj) {
        this._eventBusToPublishOn.post(obj);
    }

    public ArrayList<AdobeLibraryComposite> getLibraries() {
        return this._csdkLibraryManager.getLibraries();
    }

    private void checkNCreateInitialDefaultLibrary() {
        ArrayList<AdobeLibraryComposite> libraries = getLibraries();
        if (libraries != null && libraries.size() <= 0) {
            libraryWasAdded(createLibraryWithName(this._startUpOptions._defaultLibName));
        }
    }

    public AdobeLibraryComposite createLibraryWithName(String str) {
        AdobeLibraryComposite adobeLibraryCompositeCreateLibraryWithName = this._csdkLibraryManager.createLibraryWithName(str);
        if (adobeLibraryCompositeCreateLibraryWithName != null) {
            syncLibrary();
        }
        return adobeLibraryCompositeCreateLibraryWithName;
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

    public ArrayList<AdobeLibraryComposite> getLibrariesSortedByModifiedDate() {
        ArrayList<AdobeLibraryComposite> libraries = this._csdkLibraryManager.getLibraries();
        Collections.sort(libraries, new Comparator<AdobeLibraryComposite>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLibraryManager.3
            @Override // java.util.Comparator
            public int compare(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryComposite adobeLibraryComposite2) {
                return adobeLibraryComposite.getModified() > adobeLibraryComposite2.getModified() ? -1 : 1;
            }
        });
        return libraries;
    }

    public void shutDown() {
        if (this._csdkLibraryManager != null) {
            AdobeLogger.log(Level.DEBUG, " LibraryManager- shutDown", "ACLibraryManager-shutDOwn");
            this._csdkLibraryManager.deregisterDelegate(this);
            this._csdkLibraryManager.shutdown();
        }
        this._csdkLibraryManager = null;
    }

    public boolean deleteLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        String libraryId = adobeLibraryComposite.getLibraryId();
        try {
            if (ACLibraryManagerUtil.isLibraryCollaboratedWithYou(adobeLibraryComposite)) {
                this._csdkLibraryManager.leaveSharedLibraryWithId(libraryId);
            } else {
                this._csdkLibraryManager.deleteLibraryWithId(libraryId);
            }
            libraryWasDeleted(libraryId);
            syncLibrary();
            return true;
        } catch (AdobeLibraryException e2) {
            return false;
        }
    }

    public String renameLibrary(AdobeLibraryComposite adobeLibraryComposite, String str) throws AdobeLibraryException {
        if (str != null && !str.isEmpty() && adobeLibraryComposite != null) {
            AdobeDesignLibraryUtilsInternal.renameLibrary(str, adobeLibraryComposite);
            syncLibrary();
        }
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kLibraryRenamed);
        aCLibraryManagerLibOpEvent.libraryId = adobeLibraryComposite.getLibraryId();
        postNotification(aCLibraryManagerLibOpEvent);
        return adobeLibraryComposite.getName();
    }

    public boolean deleteElement(AdobeLibraryComposite adobeLibraryComposite, String str) {
        boolean zDeleteElement = AdobeDesignLibraryUtilsInternal.deleteElement(str, adobeLibraryComposite);
        syncLibrary();
        return zDeleteElement;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    protected void syncAvailable(AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    protected void syncUnavailable(AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
        if (adobeNetworkStatusCode == AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkNotReachable) {
            ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(ACLibraryManagerLibOpEvent.Type.kSyncUnavailableDueToNoInternat);
            aCLibraryManagerLibOpEvent.elementId = null;
            aCLibraryManagerLibOpEvent.libraryId = null;
            postNotification(aCLibraryManagerLibOpEvent);
            return;
        }
        postGenericEvent(new ACLibraryManagerSyncErrorEvent());
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    protected void onSyncProgress(AdobeLibraryComposite adobeLibraryComposite, long j) {
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate
    protected void onSyncError(AdobeLibraryComposite adobeLibraryComposite, AdobeCSDKException adobeCSDKException) {
    }
}

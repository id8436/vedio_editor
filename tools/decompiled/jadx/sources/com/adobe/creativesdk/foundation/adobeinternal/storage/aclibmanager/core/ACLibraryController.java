package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.ACEventBus;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.IACLibraryManagerSyncDelegate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerLibOpEvent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryManagerUtil;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryController {
    private final ACEventBus _acEventBus;
    private AdobeLibraryComposite _currentLibrary;
    private ACLibraryManager _libraryManager;

    public ACLibraryController(ACLibraryManager aCLibraryManager) {
        this(aCLibraryManager, ACEventBus.getDefault());
    }

    public ACLibraryController(ACLibraryManager aCLibraryManager, ACEventBus aCEventBus) {
        this._libraryManager = aCLibraryManager;
        this._acEventBus = aCEventBus;
        this._libraryManager.syncLibrary();
        selectDefaultCurrentLibraryInternal(false);
        this._acEventBus.register(this);
    }

    private void selectDefaultCurrentLibraryInternal(boolean z) {
        AdobeLibraryComposite lastUserSelectedLibraryFromPrefs = ACLibraryManagerUtil.getLastUserSelectedLibraryFromPrefs(this._libraryManager);
        if (lastUserSelectedLibraryFromPrefs == null) {
            lastUserSelectedLibraryFromPrefs = getLastModifiedLibrary();
        }
        setCurrentLibraryInternal(lastUserSelectedLibraryFromPrefs, z);
    }

    private void setCurrentLibraryInternal(AdobeLibraryComposite adobeLibraryComposite, boolean z) {
        this._currentLibrary = adobeLibraryComposite;
        if (z) {
            postCurrentLibraryEvent(ACLibraryManagerLibOpEvent.Type.kCurrentLibrarySwitched);
        }
    }

    protected AdobeLibraryComposite getLastModifiedLibrary() {
        return this._libraryManager.getLastModifiedLibrary();
    }

    public ACLibraryManager getLibraryManager() {
        return this._libraryManager;
    }

    public void selectDefaultCurrentLibrary() {
    }

    public void setCurrentLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        setCurrentLibraryInternal(adobeLibraryComposite, true);
    }

    public void markCurrentLibraryAsUpdated() {
        postCurrentLibraryEvent(ACLibraryManagerLibOpEvent.Type.kCurrentLibraryUpdated);
    }

    private void postNotification(Object obj) {
        this._acEventBus.post(obj);
    }

    public AdobeLibraryComposite getCurrentLibrary() {
        return this._currentLibrary;
    }

    public void shutDown() {
        this._libraryManager.shutDown();
        this._libraryManager = null;
    }

    private void postCurrentLibraryEvent(ACLibraryManagerLibOpEvent.Type type) {
        ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent = new ACLibraryManagerLibOpEvent(type);
        aCLibraryManagerLibOpEvent.library = getCurrentLibrary();
        postNotification(aCLibraryManagerLibOpEvent);
    }

    public void onEvent(ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent) {
        ACLibraryManagerLibOpEvent.Type eventType = aCLibraryManagerLibOpEvent.getEventType();
        if (eventType == ACLibraryManagerLibOpEvent.Type.kLibraryDeleted) {
            AdobeLibraryComposite currentLibrary = getCurrentLibrary();
            if (aCLibraryManagerLibOpEvent.libraryId.equalsIgnoreCase(currentLibrary != null ? currentLibrary.getLibraryId() : "")) {
                selectDefaultCurrentLibrary();
                return;
            }
            return;
        }
        if ((eventType == ACLibraryManagerLibOpEvent.Type.kElementAdded || eventType == ACLibraryManagerLibOpEvent.Type.kElementRemoved || eventType == ACLibraryManagerLibOpEvent.Type.kElementUpdated) && ACLibraryManagerUtil.isLibrariesSame(getCurrentLibrary(), aCLibraryManagerLibOpEvent.library)) {
            postCurrentLibraryEvent(ACLibraryManagerLibOpEvent.Type.kCurrentLibraryUpdated);
        }
    }

    public boolean shouldPerformFirstEverSyncWithServer() {
        return !this._libraryManager.isFirstEverSyncWithServerDone();
    }

    public void forceSync() {
        this._libraryManager.forceSync();
    }

    public void forceSync(IACLibraryManagerSyncDelegate iACLibraryManagerSyncDelegate) {
        this._libraryManager.forceSync(iACLibraryManagerSyncDelegate);
    }
}

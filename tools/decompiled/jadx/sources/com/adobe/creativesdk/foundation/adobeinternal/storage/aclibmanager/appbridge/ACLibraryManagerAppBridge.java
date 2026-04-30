package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge;

import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.ACEventBus;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLibraryController;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLibraryManager;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.core.ACLibraryManagerOptions;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerLibOpEvent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerSyncCompleteEvent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.events.ACLibraryManagerSyncErrorEvent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.util.ACLibraryManagerUtil;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import java.util.ArrayList;
import java.util.Observable;
import java.util.Observer;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryManagerAppBridge {
    private static ACLibraryManagerAppBridge _sInstance;
    private IACLibraryManagerAppBridgeDelegate _appDelegate;
    private final ACEventBus _eventBus;
    private ACLibraryController _libraryController;
    private final ACLibraryManagerOptions _libraryMgrOptions;
    private boolean _performingFirstEverSyncWithServer;

    protected ACLibraryManagerAppBridge(ACLibraryManagerOptions aCLibraryManagerOptions, ACEventBus aCEventBus) {
        this._libraryMgrOptions = aCLibraryManagerOptions;
        this._eventBus = aCEventBus;
        this._eventBus.register(this);
        this._performingFirstEverSyncWithServer = false;
    }

    public static boolean hasValidInstance() {
        return _sInstance != null;
    }

    public static ACLibraryManagerAppBridge getInstance() {
        return _sInstance;
    }

    public static void createNewInstance(ACLibraryManagerOptions aCLibraryManagerOptions, ACEventBus aCEventBus) {
        if (hasValidInstance()) {
            throw new IllegalArgumentException("ACLibraryManagerAppSupportMgr : instance already present");
        }
        if (!ACLibraryManagerUtil.appHasAnyAuthenticatedUser()) {
            throw new IllegalArgumentException("ACLibraryManagerAppSupportMgr : FAIL : no valid authenticated user present");
        }
        _sInstance = new ACLibraryManagerAppBridge(aCLibraryManagerOptions, aCEventBus);
        _sInstance.createLibraryManagerNController();
    }

    public ACLibraryController getLibraryController() {
        return this._libraryController;
    }

    public ACLibraryManager getLibraryManager() {
        return this._libraryController.getLibraryManager();
    }

    private void createLibraryManagerNController() {
        ACLibraryManager aCLibraryManagerCreateNewInstance = ACLibraryManager.createNewInstance(this._libraryMgrOptions, this._eventBus);
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeAuthLogoutNotification, new Observer() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.appbridge.ACLibraryManagerAppBridge.1
            @Override // java.util.Observer
            public void update(Observable observable, Object obj) {
                ACLibraryManagerAppBridge.destroyInstance();
            }
        });
        if (!aCLibraryManagerCreateNewInstance.isValid()) {
            throw new IllegalArgumentException("ACLibraryManagerAppSupportMgr : ACLibraryManager not initialized correctly");
        }
        this._libraryController = new ACLibraryController(aCLibraryManagerCreateNewInstance);
    }

    private void continueWithAppWorkflow() {
        if (this._appDelegate != null) {
            this._appDelegate.handleResumeAppWorkflow();
        }
    }

    public void start(IACLibraryManagerAppBridgeDelegate iACLibraryManagerAppBridgeDelegate) {
        this._appDelegate = iACLibraryManagerAppBridgeDelegate;
        if (this._libraryController.shouldPerformFirstEverSyncWithServer()) {
            if (this._appDelegate != null) {
                this._appDelegate.handleFirstSyncWithServerInitiated();
            }
            this._libraryController.forceSync();
            this._performingFirstEverSyncWithServer = true;
            return;
        }
        continueWithAppWorkflow();
    }

    public void forceSync() {
        this._libraryController.forceSync();
    }

    public static void destroyInstance() {
        if (_sInstance != null) {
            _sInstance.shutDown();
            _sInstance = null;
        }
    }

    private void shutDown() {
        this._eventBus.unregister(this);
        this._libraryController.shutDown();
        this._libraryController = null;
        this._appDelegate = null;
    }

    public void onEvent(ACLibraryManagerSyncCompleteEvent aCLibraryManagerSyncCompleteEvent) {
        checkNResumeAppClientWorkflow(true);
    }

    public void onEvent(ACLibraryManagerSyncErrorEvent aCLibraryManagerSyncErrorEvent) {
        checkNResumeAppClientWorkflow(false);
    }

    private void checkNResumeAppClientWorkflow(boolean z) {
        if (this._performingFirstEverSyncWithServer) {
            this._performingFirstEverSyncWithServer = false;
            checkNCreateDefaultLib();
            continueWithAppWorkflow();
        }
    }

    private void checkNCreateDefaultLib() {
        AdobeLibraryComposite adobeLibraryCompositeCreateLibraryWithName;
        ACLibraryManager libraryManager = this._libraryController.getLibraryManager();
        ArrayList<AdobeLibraryComposite> libraries = libraryManager.getLibraries();
        if ((libraries == null || libraries.size() == 0) && (adobeLibraryCompositeCreateLibraryWithName = libraryManager.createLibraryWithName(this._libraryMgrOptions._defaultLibName)) != null) {
            this._libraryController.setCurrentLibrary(adobeLibraryCompositeCreateLibraryWithName);
        }
    }

    public void onEvent(ACLibraryManagerLibOpEvent aCLibraryManagerLibOpEvent) {
        if (this._appDelegate != null) {
            this._appDelegate.handleLibraryEvent(aCLibraryManagerLibOpEvent);
        }
    }
}

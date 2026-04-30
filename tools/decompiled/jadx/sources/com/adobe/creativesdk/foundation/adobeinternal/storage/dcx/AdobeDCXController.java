package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.os.Handler;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestExecutor;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderByProperty;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderRelation;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXController implements IAdobeDCXSyncGroupMonitorDelegate, Observer {
    static final /* synthetic */ boolean $assertionsDisabled;
    private Map<String, CompositeControllerState> _compositeCtrlStateMap;
    private int _delayPushBySeconds;
    private WeakReference<IAdobeDCXControllerDelegate> _delegate;
    private Handler _delegateHandler;
    private boolean _ignoreWaitingForCancel;
    private volatile boolean _isInSync;
    private AdobeDCXControllerMode _mode;
    private AdobeDCXSyncGroupMonitor _monitor;
    private boolean _monitorIsRunning;
    private int _numConcurrentRequests;
    private AdobeNetworkHttpRequestExecutor _requestExecutor;
    private ArrayList<AdobeStorageResource> _scannedLocalAssets;
    private AdobeStorageSession _session;
    private AdobeNetworkReachability _sharedNetworkReachability;
    private boolean _syncAllowedByNetworkStatus;
    private EnumSet<AdobeNetworkReachability.AdobeNetworkStatusCode> _syncAllowedByNetworkStatusMask;
    private String _syncGroup;
    private volatile boolean _syncInProgress;
    private long _totalBytesConsumed;
    private boolean _unInitialized;
    private final String instanceId;

    static {
        $assertionsDisabled = !AdobeDCXController.class.desiredAssertionStatus();
    }

    public synchronized boolean isSyncInProgress() {
        return this._syncInProgress;
    }

    public synchronized boolean getIgnoreWaitingForCancel() {
        return this._ignoreWaitingForCancel;
    }

    public synchronized void setIgnoreWaitingForCancel(boolean z) {
        this._ignoreWaitingForCancel = z;
    }

    public AdobeDCXController() {
        this._numConcurrentRequests = 1;
        this._requestExecutor = null;
        this._unInitialized = false;
        this._ignoreWaitingForCancel = false;
        this.instanceId = AdobeStorageUtils.generateUuid();
    }

    private static String compositeIDFromHref(String str) {
        String[] strArrSplit = str.split(URIUtil.SLASH);
        String str2 = null;
        for (int length = strArrSplit.length - 1; length >= 0; length--) {
            str2 = strArrSplit[length];
            if (str2.length() > 0) {
                break;
            }
        }
        return str2;
    }

    public AdobeDCXController(String str, AdobeStorageSession adobeStorageSession, IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate, Handler handler) {
        this._numConcurrentRequests = 1;
        this._requestExecutor = null;
        this._unInitialized = false;
        this._ignoreWaitingForCancel = false;
        this.instanceId = AdobeStorageUtils.generateUuid();
        this._syncGroup = str;
        this._session = adobeStorageSession;
        this._delegate = new WeakReference<>(iAdobeDCXControllerDelegate);
        this._delegateHandler = handler;
        this._monitor = AdobeDCXSyncGroupMonitor.assetMonitorForSyncGroup(str, adobeStorageSession, this, null);
        this._monitorIsRunning = false;
        this._syncInProgress = false;
        this._scannedLocalAssets = new ArrayList<>();
        this._mode = AdobeDCXControllerMode.AdobeDCXControllerStopped;
        this._isInSync = true;
        this._compositeCtrlStateMap = Collections.synchronizedMap(new HashMap());
        this._syncAllowedByNetworkStatus = true;
        this._syncAllowedByNetworkStatusMask = EnumSet.of(AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered);
        this._requestExecutor = new AdobeNetworkHttpRequestExecutor(this._numConcurrentRequests, this._numConcurrentRequests, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        if (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() != null) {
            this._sharedNetworkReachability = AdobeNetworkReachabilityUtil.getSharedInstance();
        }
        this._delayPushBySeconds = 0;
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this);
    }

    protected void finalize() {
        unInitialize();
    }

    public void unInitialize() {
        if (!this._unInitialized) {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this);
            synchronized (this) {
                if (this._sharedNetworkReachability != null) {
                    AdobeNetworkReachabilityUtil.destorySharedInstance();
                    this._sharedNetworkReachability = null;
                }
            }
            this._requestExecutor.shutdown();
            AdobeDCXComposite.clearInstanceCache();
            this._unInitialized = true;
        }
    }

    public int getDelayPushBySeconds() {
        int i;
        synchronized (this) {
            i = this._delayPushBySeconds;
        }
        return i;
    }

    public void setDelayPushBySeconds(int i) {
        synchronized (this) {
            this._delayPushBySeconds = i;
        }
    }

    public static AdobeDCXController createControllerForSyncGroup(String str, AdobeStorageSession adobeStorageSession, IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate, Handler handler) {
        return new AdobeDCXController(str, adobeStorageSession, iAdobeDCXControllerDelegate, handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchDelegateBlock(Runnable runnable) {
        if (this._delegateHandler != null) {
            this._delegateHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void setMode(AdobeDCXControllerMode adobeDCXControllerMode) {
        boolean z = false;
        synchronized (this) {
            AdobeDCXControllerMode adobeDCXControllerMode2 = this._mode;
            this._mode = adobeDCXControllerMode;
            switch (adobeDCXControllerMode) {
                case AdobeDCXControllerSyncing:
                    if (adobeDCXControllerMode2 != AdobeDCXControllerMode.AdobeDCXControllerSyncing) {
                        if (!this._monitorIsRunning) {
                            startSyncGroupMonitor();
                        }
                        z = true;
                    } else {
                        return;
                    }
                    break;
                case AdobeDCXControllerPaused:
                    if (adobeDCXControllerMode2 == AdobeDCXControllerMode.AdobeDCXControllerSyncing) {
                        cancelActiveRequests();
                        checkAndNotifyForSyncCompletion();
                    } else if (adobeDCXControllerMode2 == AdobeDCXControllerMode.AdobeDCXControllerStopped) {
                        startSyncGroupMonitor();
                    } else {
                        return;
                    }
                    break;
                case AdobeDCXControllerStopped:
                    if (adobeDCXControllerMode2 != AdobeDCXControllerMode.AdobeDCXControllerStopped) {
                        stopSyncGroupMonitor();
                        cancelActiveRequests();
                        checkAndNotifyForSyncCompletion();
                    }
                    break;
                default:
                    return;
            }
            if (z) {
                restartSyncCycle();
            }
        }
    }

    public AdobeDCXControllerMode getMode() {
        AdobeDCXControllerMode adobeDCXControllerMode;
        synchronized (this) {
            adobeDCXControllerMode = this._mode;
        }
        return adobeDCXControllerMode;
    }

    public boolean getIsInSync() {
        boolean z;
        synchronized (this) {
            z = this._isInSync;
        }
        return z;
    }

    public void setServerPollingFrequency(long j) {
        synchronized (this) {
            this._monitor.setUpdateFrequency(j);
        }
    }

    public long getServerPollingFrequency() {
        long updateFrequency;
        synchronized (this) {
            updateFrequency = this._monitor.getUpdateFrequency();
        }
        return updateFrequency;
    }

    public void forceServerPoll() {
        this._monitor.update();
    }

    public EnumSet<AdobeNetworkReachability.AdobeNetworkStatusCode> getSyncAllowedByNetworkStatusMask() {
        EnumSet<AdobeNetworkReachability.AdobeNetworkStatusCode> enumSet;
        synchronized (this) {
            enumSet = this._syncAllowedByNetworkStatusMask;
        }
        return enumSet;
    }

    public void setSyncAllowedByNetworkStatusMask(EnumSet<AdobeNetworkReachability.AdobeNetworkStatusCode> enumSet) {
        synchronized (this) {
            this._syncAllowedByNetworkStatusMask = enumSet;
            if (this._sharedNetworkReachability != null) {
                onNetworkStatus(this._sharedNetworkReachability.getNetworkStatus());
            } else if (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() != null) {
                this._sharedNetworkReachability = AdobeNetworkReachabilityUtil.getSharedInstance();
                onNetworkStatus(this._sharedNetworkReachability.getNetworkStatus());
            }
        }
    }

    public boolean getSyncAllowedByNetworkStatus() {
        boolean z;
        synchronized (this) {
            z = this._syncAllowedByNetworkStatus;
        }
        return z;
    }

    public void setSyncOrder(AdobeStorageOrderRelation adobeStorageOrderRelation) {
        this._monitor.setSyncOrder(adobeStorageOrderRelation);
    }

    public AdobeStorageOrderRelation getSyncOrder() {
        return this._monitor.getSyncOrder();
    }

    public void setSyncOrderBy(AdobeStorageOrderByProperty adobeStorageOrderByProperty) {
        if (this._syncInProgress) {
            AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Warning: setting syncOrderBy while a sync is in progress will not affect the active syncing process.");
        }
        this._monitor.setSyncOrderBy(adobeStorageOrderByProperty);
    }

    public AdobeStorageOrderByProperty getSyncOrderBy() {
        if (this._syncInProgress) {
            AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Warning: getting syncOrderBy while a sync is in progress will not affect the active syncing process.");
        }
        return this._monitor.getSyncOrderBy();
    }

    public boolean scanLocalComposites(ArrayList<AdobeDCXComposite> arrayList) {
        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside scanLocalComposites composites.size() =" + (arrayList != null ? arrayList.size() : 0), null);
        synchronized (this) {
            IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
            for (AdobeDCXComposite adobeDCXComposite : arrayList) {
                if (iAdobeDCXControllerDelegate == null || iAdobeDCXControllerDelegate.controllerWillTrackLocalComposite(this, adobeDCXComposite)) {
                    AdobeStorageResource adobeStorageResourceResourceForComposite = this._monitor.resourceForComposite(adobeDCXComposite);
                    if (adobeStorageResourceResourceForComposite != null) {
                        this._scannedLocalAssets.add(adobeStorageResourceResourceForComposite);
                    }
                    CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
                    if (compositeControllerState == null) {
                        compositeControllerState = new CompositeControllerState();
                        compositeControllerState.compositeId = adobeDCXComposite.getCompositeId();
                        compositeControllerState.href = (adobeStorageResourceResourceForComposite == null || adobeStorageResourceResourceForComposite.href == null) ? null : adobeStorageResourceResourceForComposite.href.toString();
                        this._compositeCtrlStateMap.put(adobeDCXComposite.getCompositeId(), compositeControllerState);
                    }
                    if (compositeControllerState.phase == null) {
                        if (adobeDCXComposite.getPushed() != null) {
                            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseAccept;
                            if (adobeDCXComposite.getPulled() != null) {
                                try {
                                    adobeDCXComposite.discardPulledBranch();
                                } catch (AdobeDCXException e2) {
                                }
                            }
                        } else if (adobeDCXComposite.getPulled() != null) {
                            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePull;
                        } else if (adobeDCXComposite.getCurrent() != null && ((adobeDCXComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified) || adobeDCXComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) || adobeDCXComposite.getCurrent().getCompositeArchivalState().equals(AdobeDCXConstants.AdobeDCXCompositeArchivalStatePending)) && adobeDCXComposite.getHref() != null)) {
                            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePush;
                        } else {
                            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync;
                            compositeControllerState.bytesConsumedByComposite = adobeDCXComposite.getLocalStorageBytesConsumed();
                        }
                    }
                    adobeDCXComposite.setController(this);
                }
            }
            if (this._monitorIsRunning) {
                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside scanLocalComposites _scannedLocalAssets.size() =" + (this._scannedLocalAssets != null ? this._scannedLocalAssets.size() : 0), null);
                Iterator<AdobeStorageResource> it = this._scannedLocalAssets.iterator();
                while (it.hasNext()) {
                    this._monitor.updateLocalAsset(it.next(), false);
                }
                this._scannedLocalAssets.clear();
            }
        }
        restartSyncCycle();
        return true;
    }

    public boolean scanLocalCompositesInPath(String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) throws AdobeDCXException {
        File file = new File(str);
        File[] fileArrListFiles = null;
        if (file.isDirectory()) {
            fileArrListFiles = file.listFiles();
        }
        if (fileArrListFiles == null) {
            return false;
        }
        ArrayList<AdobeDCXComposite> arrayList = new ArrayList<>(fileArrListFiles.length);
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                arrayList.add(AdobeDCXComposite.createCompositeFromPath(file2.getPath(), adobeDCXLocalStorageScheme));
            }
        }
        return scanLocalComposites(arrayList);
    }

    public void pauseSyncForComposite(AdobeDCXComposite adobeDCXComposite) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside pauseSyncForComposite compositeId =" + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null), null);
            if (compositeControllerState != null) {
                compositeControllerState.isPaused = true;
                if ((compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePull || compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePush) && compositeControllerState.activeRequest != null) {
                    if (compositeControllerState.activeRequest.isScheduled()) {
                        compositeControllerState.waitingForCancel = true;
                    }
                    compositeControllerState.activeRequest.cancel();
                    compositeControllerState.activeRequest = null;
                }
                checkAndNotifyForSyncCompletion();
            }
        }
    }

    public void pauseSyncForCompositeWithError(AdobeDCXComposite adobeDCXComposite) throws AdobeDCXException {
        synchronized (this) {
            if (this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId()) == null) {
                throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorCompositeNotAttachedToController, "Composite is not attached to controller");
            }
            pauseSyncForComposite(adobeDCXComposite);
        }
    }

    public void resumeSyncForComposite(AdobeDCXComposite adobeDCXComposite) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside resumeSyncForComposite compositeId =" + (adobeDCXComposite != null ? adobeDCXComposite.getCompositeId() : null), null);
            if (compositeControllerState != null) {
                compositeControllerState.isPaused = false;
                if (getIgnoreWaitingForCancel()) {
                    compositeControllerState.waitingForCancel = false;
                }
                if (compositeControllerState.phase != AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync && !compositeControllerState.waitingForCancel) {
                    dispatchRequestForCompositeWithControllerState(compositeControllerState);
                }
            }
        }
    }

    public boolean isSyncPausedForComposite(AdobeDCXComposite adobeDCXComposite) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            if (compositeControllerState != null) {
                return compositeControllerState.isPaused;
            }
            return false;
        }
    }

    public boolean isPushPendingForComposite(AdobeDCXComposite adobeDCXComposite) {
        boolean z;
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            z = compositeControllerState != null ? compositeControllerState.hasPendingPush : false;
        }
        return z;
    }

    public AdobeDCXSyncPhase currentSyncPhaseForComposite(AdobeDCXComposite adobeDCXComposite) {
        AdobeDCXSyncPhase adobeDCXSyncPhase;
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            adobeDCXSyncPhase = (compositeControllerState == null || compositeControllerState.phase == null) ? AdobeDCXSyncPhase.AdobeDCXSyncPhaseError : compositeControllerState.phase;
        }
        return adobeDCXSyncPhase;
    }

    public long localStorageBytesConsumed() {
        long j;
        synchronized (this) {
            j = this._totalBytesConsumed;
        }
        return j;
    }

    void delayPushBySeconds(int i, CompositeControllerState compositeControllerState) {
        if (compositeControllerState.syncDelayTimer != null) {
            compositeControllerState.syncDelayTimer.cancel();
            compositeControllerState.syncDelayTimer = null;
        }
        compositeControllerState.syncDelayTimer = new Timer();
        final WeakReference weakReference = new WeakReference(compositeControllerState);
        compositeControllerState.syncDelayTimer.schedule(new TimerTask() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                CompositeControllerState compositeControllerState2 = (CompositeControllerState) weakReference.get();
                if (compositeControllerState2 != null) {
                    AdobeDCXController.this.requestPushForCompositeWithControllerState(compositeControllerState2);
                }
            }
        }, i * 1000);
    }

    void reportChangeToCompositeWithID(String str) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(str);
            this._isInSync = false;
            if (compositeControllerState == null) {
                compositeControllerState = new CompositeControllerState();
                compositeControllerState.compositeId = str;
                compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync;
                this._compositeCtrlStateMap.put(str, compositeControllerState);
            } else if (compositeControllerState.phase == null) {
                compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync;
            }
            if (getDelayPushBySeconds() > 0) {
                delayPushBySeconds(getDelayPushBySeconds(), compositeControllerState);
            } else {
                requestPushForCompositeWithControllerState(compositeControllerState);
            }
        }
    }

    void requestPushForCompositeWithControllerState(CompositeControllerState compositeControllerState) {
        if (compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync) {
            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePush;
            compositeControllerState.activeRequest = null;
            compositeControllerState.bytesConsumedByComposite = 0L;
            dispatchRequestForCompositeWithControllerState(compositeControllerState);
            return;
        }
        if (this._mode == AdobeDCXControllerMode.AdobeDCXControllerSyncing && this._syncAllowedByNetworkStatus && !compositeControllerState.isPaused) {
            compositeControllerState.hasPendingPush = true;
        }
    }

    void reportLocalStorageChangeToCompositeWithID(String str) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(str);
            if (compositeControllerState != null) {
                compositeControllerState.bytesConsumedByComposite = 0L;
            }
        }
    }

    public void reportDeletedComposite(AdobeDCXComposite adobeDCXComposite) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            if (compositeControllerState != null) {
                if (compositeControllerState.phase != AdobeDCXSyncPhase.AdobeDCXSyncPhaseDelete && adobeDCXComposite.isBound()) {
                    this._monitor.updateLocalAsset(this._monitor.resourceForComposite(adobeDCXComposite), true);
                }
                this._compositeCtrlStateMap.remove(adobeDCXComposite.getCompositeId());
                checkAndNotifyForSyncCompletion();
            }
        }
    }

    void reportPushStartedForCompositeWithID(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(str);
            if (compositeControllerState != null) {
                if (compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePush) {
                    if (this._mode == AdobeDCXControllerMode.AdobeDCXControllerSyncing && this._syncAllowedByNetworkStatus && !compositeControllerState.isPaused) {
                        compositeControllerState.hasPendingPush = false;
                        compositeControllerState.activeRequest = adobeNetworkHttpTaskHandle;
                    } else {
                        if (adobeNetworkHttpTaskHandle.isScheduled()) {
                            compositeControllerState.waitingForCancel = true;
                        }
                        adobeNetworkHttpTaskHandle.cancel();
                        checkAndNotifyForSyncCompletion();
                    }
                } else {
                    AdobeLogger.log(Level.WARN, AdobeDCXController.class.getSimpleName(), "pushComposite was called unexpectedly on composite with ID = " + str + ".  The push request will not be tracked by its controller.");
                }
            }
        }
    }

    void reportPushFinishedForCompositeWithID(AdobeDCXComposite adobeDCXComposite, AdobeCSDKException adobeCSDKException) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            if (compositeControllerState != null && compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePush) {
                compositeControllerState.activeRequest = null;
                compositeControllerState.waitingForDelegate = false;
                compositeControllerState.waitingForCancel = false;
                compositeControllerState.bytesConsumedByComposite = 0L;
                if (adobeCSDKException != null) {
                    compositeControllerState.lastError = adobeCSDKException;
                    processErrorForCompositeWithControllerState(compositeControllerState);
                    checkAndNotifyForSyncCompletion();
                } else if (adobeDCXComposite.getPushed() == null) {
                    compositeControllerState.lastError = null;
                    checkAndNotifyForPendingTransfersWithCtrlState(compositeControllerState);
                } else {
                    compositeControllerState.lastError = null;
                    compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseAccept;
                    dispatchRequestForCompositeWithControllerState(compositeControllerState);
                }
            }
        }
    }

    void reportPullStartedForCompositeWithID(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(str);
            if (compositeControllerState != null) {
                if (compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePull) {
                    if (this._mode == AdobeDCXControllerMode.AdobeDCXControllerSyncing && this._syncAllowedByNetworkStatus && !compositeControllerState.isPaused) {
                        compositeControllerState.hasPendingPull = false;
                        compositeControllerState.activeRequest = adobeNetworkHttpTaskHandle;
                    } else {
                        if (adobeNetworkHttpTaskHandle.isScheduled()) {
                            compositeControllerState.waitingForCancel = true;
                        }
                        adobeNetworkHttpTaskHandle.cancel();
                        checkAndNotifyForSyncCompletion();
                    }
                } else {
                    AdobeLogger.log(Level.WARN, AdobeDCXController.class.getSimpleName(), "pullComposite was called unexpectedly on composite with ID = " + str + ".  The pull request will not be tracked by its controller.");
                }
            }
        }
    }

    void reportPullFinishedForCompositeWithID(AdobeDCXComposite adobeDCXComposite, AdobeCSDKException adobeCSDKException) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            if (compositeControllerState != null && compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePull) {
                compositeControllerState.activeRequest = null;
                compositeControllerState.waitingForDelegate = false;
                compositeControllerState.waitingForCancel = false;
                compositeControllerState.bytesConsumedByComposite = 0L;
                if (adobeCSDKException != null) {
                    compositeControllerState.lastError = adobeCSDKException;
                    processErrorForCompositeWithControllerState(compositeControllerState);
                    checkAndNotifyForSyncCompletion();
                } else if (adobeDCXComposite.getPulled() == null) {
                    compositeControllerState.lastError = null;
                    compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync;
                    checkAndNotifyForPendingTransfersWithCtrlState(compositeControllerState);
                } else {
                    compositeControllerState.lastError = null;
                    compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseResolve;
                    dispatchRequestForCompositeWithControllerState(compositeControllerState);
                }
            }
        }
    }

    void reportDownloadComponentsStartedForCompositeWithID(String str, AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(str);
            if (compositeControllerState != null) {
                compositeControllerState.isPullingComponents = true;
            }
        }
    }

    void reportDownloadComponentsFinishedForCompositeWithID(String str, AdobeCSDKException adobeCSDKException) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(str);
            if (compositeControllerState != null) {
                compositeControllerState.isPullingComponents = false;
                reportLocalStorageChangeToCompositeWithID(str);
                dispatchRequestForCompositeWithControllerState(compositeControllerState);
            }
        }
    }

    void reportAcceptFinishedForComposite(AdobeDCXComposite adobeDCXComposite, AdobeCSDKException adobeCSDKException) {
        AdobeStorageResource adobeStorageResourceResourceForComposite;
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            if (compositeControllerState != null) {
                if (compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhaseAccept) {
                    compositeControllerState.waitingForDelegate = false;
                    compositeControllerState.waitingForCancel = false;
                    compositeControllerState.bytesConsumedByComposite = 0L;
                    if (adobeCSDKException != null) {
                        compositeControllerState.lastError = adobeCSDKException;
                        processErrorForCompositeWithControllerState(compositeControllerState);
                        checkAndNotifyForSyncCompletion();
                    } else {
                        compositeControllerState.lastError = null;
                        if (adobeDCXComposite.isBound() && (adobeStorageResourceResourceForComposite = this._monitor.resourceForComposite(adobeDCXComposite)) != null && this._monitorIsRunning) {
                            this._monitor.updateLocalAsset(adobeStorageResourceResourceForComposite, false);
                        }
                        checkAndNotifyForPendingTransfersWithCtrlState(compositeControllerState);
                    }
                } else {
                    AdobeLogger.log(Level.WARN, AdobeDCXController.class.getSimpleName(), "acceptPushWithError was called unexpectedly on composite with ID = " + adobeDCXComposite.getCompositeId() + ".  The result of this operation will not be tracked by its controller.");
                }
            }
        }
    }

    void reportResolveFinishedForComposite(AdobeDCXComposite adobeDCXComposite, AdobeCSDKException adobeCSDKException) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(adobeDCXComposite.getCompositeId());
            if (compositeControllerState != null) {
                if (compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhaseResolve) {
                    compositeControllerState.waitingForDelegate = false;
                    compositeControllerState.waitingForCancel = false;
                    compositeControllerState.bytesConsumedByComposite = 0L;
                    if (adobeCSDKException != null) {
                        compositeControllerState.lastError = adobeCSDKException;
                        processErrorForCompositeWithControllerState(compositeControllerState);
                        checkAndNotifyForSyncCompletion();
                    } else {
                        compositeControllerState.lastError = null;
                        if (adobeDCXComposite.isBound()) {
                            this._monitor.updateLocalAsset(this._monitor.resourceForComposite(adobeDCXComposite), false);
                        }
                        if (compositeControllerState.hasPendingPull) {
                            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePull;
                            dispatchRequestForCompositeWithControllerState(compositeControllerState);
                        } else if (compositeControllerState.hasPendingPush) {
                            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePush;
                            dispatchRequestForCompositeWithControllerState(compositeControllerState);
                        } else {
                            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync;
                            checkAndNotifyForSyncCompletion();
                        }
                    }
                } else {
                    AdobeLogger.log(Level.WARN, AdobeDCXController.class.getSimpleName(), "resolvePullWithBranch:withError was called unexpectedly on composite with ID = " + adobeDCXComposite.getCompositeId() + ".  The result of this operation will not be tracked by its controller.");
                }
            }
        }
    }

    void reportDiscardedPushedBranchForCompositeWithID(String str) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(str);
            if (compositeControllerState != null && compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhaseAccept) {
                compositeControllerState.waitingForDelegate = false;
                compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePush;
                dispatchRequestForCompositeWithControllerState(compositeControllerState);
            }
        }
    }

    void reportDiscardedPulledBranchForCompositeWithID(String str) {
        synchronized (this) {
            CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(str);
            if (compositeControllerState != null && compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhaseResolve) {
                compositeControllerState.waitingForDelegate = false;
                compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePull;
                dispatchRequestForCompositeWithControllerState(compositeControllerState);
            }
        }
    }

    void attachComposite(AdobeDCXComposite adobeDCXComposite) {
        synchronized (this) {
            IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
            if (iAdobeDCXControllerDelegate == null || iAdobeDCXControllerDelegate.controllerWillTrackLocalComposite(this, adobeDCXComposite)) {
                String compositeId = adobeDCXComposite.getCompositeId();
                String string = adobeDCXComposite.getHref() != null ? adobeDCXComposite.getHref().toString() : null;
                if (this._compositeCtrlStateMap.get(compositeId) == null) {
                    CompositeControllerState compositeControllerState = new CompositeControllerState();
                    compositeControllerState.compositeId = compositeId;
                    compositeControllerState.href = string;
                    this._compositeCtrlStateMap.put(compositeId, compositeControllerState);
                }
            }
        }
    }

    private void restartSyncCycle() {
        final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
        this._requestExecutor.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.2
            @Override // java.lang.Runnable
            public void run() {
                Runnable runnable;
                ArrayList arrayList = new ArrayList(this._compositeCtrlStateMap.size());
                synchronized (this) {
                    if (this._syncAllowedByNetworkStatus && this._mode == AdobeDCXControllerMode.AdobeDCXControllerSyncing) {
                        Iterator it = this._compositeCtrlStateMap.entrySet().iterator();
                        while (it.hasNext()) {
                            final CompositeControllerState compositeControllerState = (CompositeControllerState) ((Map.Entry) it.next()).getValue();
                            if (!compositeControllerState.isPaused && !compositeControllerState.waitingForDelegate) {
                                if (compositeControllerState.lastError != null) {
                                    this.processErrorForCompositeWithControllerState(compositeControllerState);
                                    this.checkAndNotifyForSyncCompletion();
                                } else {
                                    switch (compositeControllerState.phase) {
                                        case AdobeDCXSyncPhasePush:
                                            runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.2.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    if (iAdobeDCXControllerDelegate != null) {
                                                        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsPushOfCompositeWithID for compositeCtrlState.compositeId= " + compositeControllerState.compositeId);
                                                        iAdobeDCXControllerDelegate.controllerRequestsPushOfCompositeWithID(this, compositeControllerState.compositeId);
                                                    }
                                                }
                                            };
                                            break;
                                        case AdobeDCXSyncPhaseAccept:
                                            runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.2.2
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    if (iAdobeDCXControllerDelegate != null) {
                                                        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsAcceptOfCompositeWithID for compositeCtrlState.compositeId= " + compositeControllerState.compositeId);
                                                        iAdobeDCXControllerDelegate.controllerRequestsAcceptOfCompositeWithID(this, compositeControllerState.compositeId);
                                                    }
                                                }
                                            };
                                            break;
                                        case AdobeDCXSyncPhasePull:
                                            runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.2.3
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    if (iAdobeDCXControllerDelegate != null) {
                                                        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsPullOfCompositeWithID for compositeCtrlState.compositeId= " + compositeControllerState.compositeId);
                                                        iAdobeDCXControllerDelegate.controllerRequestsPullOfCompositeWithID(this, compositeControllerState.compositeId, compositeControllerState.href);
                                                    }
                                                }
                                            };
                                            break;
                                        case AdobeDCXSyncPhaseResolve:
                                            runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.2.4
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    if (iAdobeDCXControllerDelegate != null) {
                                                        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsResolveOfCompositeWithID for compositeCtrlState.compositeId= " + compositeControllerState.compositeId);
                                                        iAdobeDCXControllerDelegate.controllerRequestsResolveOfCompositeWithID(this, compositeControllerState.compositeId);
                                                    }
                                                }
                                            };
                                            break;
                                        case AdobeDCXSyncPhaseDelete:
                                            runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.2.5
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    if (iAdobeDCXControllerDelegate != null) {
                                                        AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsDeleteOfCompositeWithID for compositeCtrlState.compositeId= " + compositeControllerState.compositeId);
                                                        iAdobeDCXControllerDelegate.controllerRequestsDeleteOfCompositeWithID(this, compositeControllerState.compositeId);
                                                    }
                                                }
                                            };
                                            break;
                                        default:
                                            runnable = null;
                                            break;
                                    }
                                    compositeControllerState.activeRequest = null;
                                    if (runnable != null && !compositeControllerState.waitingForCancel) {
                                        compositeControllerState.waitingForDelegate = true;
                                        arrayList.add(runnable);
                                    }
                                }
                            }
                        }
                        if (arrayList.size() == 0) {
                            this.checkAndNotifyForSyncCompletion();
                            return;
                        }
                        this.checkAndNotifyForSyncStarting();
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            this.dispatchDelegateBlock((Runnable) it2.next());
                        }
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndNotifyForSyncStarting() {
        synchronized (this) {
            if (!this._syncInProgress) {
                this._syncInProgress = true;
                final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
                if (iAdobeDCXControllerDelegate != null) {
                    dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.3
                        @Override // java.lang.Runnable
                        public void run() {
                            iAdobeDCXControllerDelegate.controllerHasStartedSync(this);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndNotifyForSyncCompletion() {
        boolean z;
        boolean z2 = false;
        synchronized (this) {
            if (this._syncInProgress) {
                if (this._mode == AdobeDCXControllerMode.AdobeDCXControllerSyncing) {
                    Iterator<Map.Entry<String, CompositeControllerState>> it = this._compositeCtrlStateMap.entrySet().iterator();
                    boolean z3 = false;
                    while (true) {
                        if (!it.hasNext()) {
                            z = z3;
                            z2 = true;
                            break;
                        }
                        CompositeControllerState value = it.next().getValue();
                        if (value.isPaused) {
                            if (value.phase != AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync) {
                                z3 = true;
                            }
                        } else if (value.phase != AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync) {
                            z = z3;
                            break;
                        }
                    }
                } else {
                    z = false;
                    z2 = true;
                }
                if (z2 || !this._syncAllowedByNetworkStatus) {
                    if (z2 && !z && this._mode == AdobeDCXControllerMode.AdobeDCXControllerSyncing) {
                        synchronized (this) {
                            this._isInSync = true;
                        }
                    }
                    this._syncInProgress = false;
                    final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
                    if (iAdobeDCXControllerDelegate != null) {
                        dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.4
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeDCXControllerDelegate.controllerHasFinishedSync(this);
                            }
                        });
                    }
                    recalculateLocalStorageBytesConsumed();
                }
            }
        }
    }

    private void checkAndNotifyForPendingTransfersWithCtrlState(CompositeControllerState compositeControllerState) {
        if (compositeControllerState.hasPendingPull) {
            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePull;
            dispatchRequestForCompositeWithControllerState(compositeControllerState);
        } else if (compositeControllerState.hasPendingPush) {
            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePush;
            dispatchRequestForCompositeWithControllerState(compositeControllerState);
        } else {
            compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync;
            checkAndNotifyForSyncCompletion();
        }
    }

    private void recalculateLocalStorageBytesConsumed() {
        final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
        this._requestExecutor.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.5
            /* JADX WARN: Code restructure failed: missing block: B:29:0x0086, code lost:
            
                r4 = r2.bytesConsumedByCompositeWithID(r0);
                r6 = r2;
             */
            /* JADX WARN: Code restructure failed: missing block: B:30:0x008e, code lost:
            
                monitor-enter(r6);
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x008f, code lost:
            
                r1.bytesConsumedByComposite = r4;
             */
            /* JADX WARN: Code restructure failed: missing block: B:32:0x0091, code lost:
            
                monitor-exit(r6);
             */
            /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
            
                r0 = false;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r10 = this;
                    r8 = 0
                    r2 = 1
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r0 = r2
                    java.util.Map r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$000(r0)
                    java.util.ArrayList r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils.getAllKeysForCompositeCtrlStateMap(r0)
                    java.util.Iterator r3 = r0.iterator()
                L11:
                    boolean r0 = r3.hasNext()
                    if (r0 == 0) goto La7
                    java.lang.Object r0 = r3.next()
                    java.lang.String r0 = (java.lang.String) r0
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r1 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.this
                    java.util.Map r1 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$000(r1)
                    java.lang.Object r1 = r1.get(r0)
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.CompositeControllerState r1 = (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.CompositeControllerState) r1
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r4 = r2
                    monitor-enter(r4)
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r5 = r2     // Catch: java.lang.Throwable -> L82
                    boolean r5 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$700(r5)     // Catch: java.lang.Throwable -> L82
                    if (r5 == 0) goto L7a
                    r0 = 0
                    monitor-exit(r4)     // Catch: java.lang.Throwable -> L82
                L36:
                    if (r0 == 0) goto La6
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r1 = r2
                    monitor-enter(r1)
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r0 = r2     // Catch: java.lang.Throwable -> L77
                    java.util.Map r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$000(r0)     // Catch: java.lang.Throwable -> L77
                    java.util.ArrayList r0 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils.getAllKeysForCompositeCtrlStateMap(r0)     // Catch: java.lang.Throwable -> L77
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r2 = r2     // Catch: java.lang.Throwable -> L77
                    r4 = 0
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$902(r2, r4)     // Catch: java.lang.Throwable -> L77
                    java.util.Iterator r2 = r0.iterator()     // Catch: java.lang.Throwable -> L77
                L50:
                    boolean r0 = r2.hasNext()     // Catch: java.lang.Throwable -> L77
                    if (r0 == 0) goto L97
                    java.lang.Object r0 = r2.next()     // Catch: java.lang.Throwable -> L77
                    java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L77
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r3 = r2     // Catch: java.lang.Throwable -> L77
                    java.util.Map r3 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$000(r3)     // Catch: java.lang.Throwable -> L77
                    java.lang.Object r0 = r3.get(r0)     // Catch: java.lang.Throwable -> L77
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.CompositeControllerState r0 = (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.CompositeControllerState) r0     // Catch: java.lang.Throwable -> L77
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r3 = r2     // Catch: java.lang.Throwable -> L77
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r4 = r2     // Catch: java.lang.Throwable -> L77
                    long r4 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$900(r4)     // Catch: java.lang.Throwable -> L77
                    long r6 = r0.bytesConsumedByComposite     // Catch: java.lang.Throwable -> L77
                    long r4 = r4 + r6
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$902(r3, r4)     // Catch: java.lang.Throwable -> L77
                    goto L50
                L77:
                    r0 = move-exception
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L77
                    throw r0
                L7a:
                    long r6 = r1.bytesConsumedByComposite     // Catch: java.lang.Throwable -> L82
                    int r5 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                    if (r5 == 0) goto L85
                    monitor-exit(r4)     // Catch: java.lang.Throwable -> L82
                    goto L11
                L82:
                    r0 = move-exception
                    monitor-exit(r4)     // Catch: java.lang.Throwable -> L82
                    throw r0
                L85:
                    monitor-exit(r4)     // Catch: java.lang.Throwable -> L82
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r4 = r2
                    long r4 = com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$800(r4, r0)
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r6 = r2
                    monitor-enter(r6)
                    r1.bytesConsumedByComposite = r4     // Catch: java.lang.Throwable -> L94
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L94
                    goto L11
                L94:
                    r0 = move-exception
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L94
                    throw r0
                L97:
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXControllerDelegate r0 = r3     // Catch: java.lang.Throwable -> L77
                    if (r0 == 0) goto La5
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController r0 = r2     // Catch: java.lang.Throwable -> L77
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController$5$1 r2 = new com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController$5$1     // Catch: java.lang.Throwable -> L77
                    r2.<init>()     // Catch: java.lang.Throwable -> L77
                    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.access$600(r0, r2)     // Catch: java.lang.Throwable -> L77
                La5:
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L77
                La6:
                    return
                La7:
                    r0 = r2
                    goto L36
                */
                throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.AnonymousClass5.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long bytesConsumedByCompositeWithID(final String str) {
        final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
        if (this._delegateHandler == null) {
            if (iAdobeDCXControllerDelegate == null) {
                return 0L;
            }
            return iAdobeDCXControllerDelegate.controllerRequestsBytesConsumedByCompositeWithID(this, str);
        }
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1OutPut c1OutPut = new C1OutPut();
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.6
            @Override // java.lang.Runnable
            public void run() {
                AdobeDCXController.this._delegateHandler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (iAdobeDCXControllerDelegate != null) {
                            c1OutPut.bytesConsumed = iAdobeDCXControllerDelegate.controllerRequestsBytesConsumedByCompositeWithID(this, str);
                        }
                        reentrantLock.lock();
                        try {
                            c1OutPut.delegateReturned = true;
                            conditionNewCondition.signal();
                        } finally {
                            reentrantLock.unlock();
                        }
                    }
                });
            }
        }).start();
        reentrantLock.lock();
        while (!c1OutPut.delegateReturned) {
            try {
                try {
                    conditionNewCondition.await();
                } catch (InterruptedException e2) {
                    AdobeLogger.log(Level.DEBUG, "AdobeDCXController.bytesConsumedByCompositeWithID", e2.getMessage());
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        return c1OutPut.bytesConsumed;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController$1OutPut, reason: invalid class name */
    class C1OutPut {
        long bytesConsumed = 0;
        boolean delegateReturned = false;

        C1OutPut() {
        }
    }

    private void cancelActiveRequests() {
        synchronized (this) {
            Iterator<Map.Entry<String, CompositeControllerState>> it = this._compositeCtrlStateMap.entrySet().iterator();
            while (it.hasNext()) {
                CompositeControllerState value = it.next().getValue();
                if ((value.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePull || value.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePush) && value.activeRequest != null) {
                    if (value.activeRequest.isScheduled()) {
                        value.waitingForCancel = true;
                    }
                    value.activeRequest.cancel();
                    value.activeRequest = null;
                }
                value.waitingForDelegate = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processErrorForCompositeWithControllerState(CompositeControllerState compositeControllerState) {
        boolean z;
        boolean z2;
        final AdobeCSDKException adobeCSDKException = compositeControllerState.lastError;
        if (!$assertionsDisabled && adobeCSDKException == null) {
            throw new AssertionError("Error is unexpectedly nil in processErrorForCompositeWithControllerState");
        }
        final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
        compositeControllerState.lastError = null;
        compositeControllerState.waitingForCancel = false;
        if (adobeCSDKException.getClass().equals(AdobeDCXException.class)) {
            if (((AdobeDCXException) adobeCSDKException).getErrorCode() != AdobeDCXErrorCode.AdobeDCXErrorUnknownComposite && ((AdobeDCXException) adobeCSDKException).getErrorCode() == AdobeDCXErrorCode.AdobeDCXErrorCompositeAlreadyExists) {
                z = false;
                z2 = false;
            } else {
                compositeControllerState.isPaused = true;
                z = false;
                z2 = false;
            }
        } else if (adobeCSDKException.getClass().equals(AdobeAssetException.class)) {
            if (compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePush && ((AdobeAssetException) adobeCSDKException).getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorConflictingChanges) {
                compositeControllerState.hasPendingPush = true;
                compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePull;
                if (compositeControllerState.hasPendingPull) {
                    compositeControllerState.hasPendingPull = false;
                }
                AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXController.processErrorForCompositeWithControllerState", "AdobeAssetErrorConflictingChanges", compositeControllerState.compositeId);
                dispatchRequestForCompositeWithControllerState(compositeControllerState);
                z = true;
                z2 = false;
            } else if ((compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePush && ((AdobeAssetException) adobeCSDKException).getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse && ((AdobeAssetException) adobeCSDKException).getHttpStatusCode().intValue() == 409) || ((AdobeAssetException) adobeCSDKException).getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorOffline) {
                z = false;
                z2 = true;
            } else if (((AdobeAssetException) adobeCSDKException).getErrorCode() == AdobeAssetErrorCode.AdobeAssetErrorExceededQuota) {
                dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.7
                    @Override // java.lang.Runnable
                    public void run() {
                        iAdobeDCXControllerDelegate.controllerHasPausedSyncForAllCompositesDueToError(this, adobeCSDKException);
                    }
                });
                compositeControllerState.isPaused = true;
                z = true;
                z2 = false;
            } else {
                compositeControllerState.isPaused = true;
                z = false;
                z2 = false;
            }
        } else if (!adobeCSDKException.getClass().equals(AdobeNetworkException.class)) {
            z = false;
            z2 = false;
        } else if (((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorNetworkFailure || ((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorOffline) {
            z = false;
            z2 = true;
        } else if (((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorAuthenticationFailed) {
            dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.8
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXControllerDelegate.controllerHasPausedSyncForAllCompositesDueToError(this, adobeCSDKException);
                }
            });
            this._mode = AdobeDCXControllerMode.AdobeDCXControllerPaused;
            z = true;
            z2 = false;
        } else if (((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorServiceDisconnected) {
            dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.9
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeDCXControllerDelegate.controllerHasPausedSyncForAllCompositesDueToError(this, adobeCSDKException);
                }
            });
            this._mode = AdobeDCXControllerMode.AdobeDCXControllerPaused;
            z = true;
            z2 = false;
        } else if (((AdobeNetworkException) adobeCSDKException).getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
            z = false;
            z2 = true;
        } else {
            compositeControllerState.isPaused = true;
            z = false;
            z2 = false;
        }
        if (z2 && !getSyncAllowedByNetworkStatus()) {
            compositeControllerState.isPaused = true;
            z2 = false;
        }
        if (z2) {
            if (!$assertionsDisabled && (compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhaseError || compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync)) {
                throw new AssertionError("Unexpected sync phase in processErrorForCompositeWithControllerState");
            }
            dispatchRequestForCompositeWithControllerState(compositeControllerState);
            return;
        }
        if (!z) {
            final String str = compositeControllerState.compositeId;
            final AdobeDCXSyncPhase adobeDCXSyncPhase = compositeControllerState.phase;
            final boolean z3 = compositeControllerState.isPaused;
            dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.10
                @Override // java.lang.Runnable
                public void run() {
                    AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsClientHandleError for compositeID= " + str);
                    iAdobeDCXControllerDelegate.controllerRequestsClientHandleError(this, adobeCSDKException, str, adobeDCXSyncPhase, z3);
                }
            });
        }
    }

    private void dispatchRequestForCompositeWithControllerState(CompositeControllerState compositeControllerState) {
        if (compositeControllerState.phase != null && !compositeControllerState.isPaused && this._mode == AdobeDCXControllerMode.AdobeDCXControllerSyncing && this._syncAllowedByNetworkStatus) {
            final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate != null ? this._delegate.get() : null;
            if (iAdobeDCXControllerDelegate == null) {
                AdobeLogger.log(Level.ERROR, AdobeDCXController.class.getSimpleName(), "The delegate inside DCX Controller is null");
            }
            final String str = compositeControllerState.compositeId;
            compositeControllerState.waitingForDelegate = true;
            switch (compositeControllerState.phase) {
                case AdobeDCXSyncPhasePush:
                    compositeControllerState.hasPendingPush = false;
                    checkAndNotifyForSyncStarting();
                    dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.11
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iAdobeDCXControllerDelegate != null) {
                                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsPushOfCompositeWithID for compositeID= " + str);
                                iAdobeDCXControllerDelegate.controllerRequestsPushOfCompositeWithID(this, str);
                            }
                        }
                    });
                    break;
                case AdobeDCXSyncPhaseAccept:
                    checkAndNotifyForSyncStarting();
                    dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.13
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iAdobeDCXControllerDelegate != null) {
                                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsAcceptOfCompositeWithID for compositeID= " + str);
                                iAdobeDCXControllerDelegate.controllerRequestsAcceptOfCompositeWithID(this, str);
                            }
                        }
                    });
                    break;
                case AdobeDCXSyncPhasePull:
                    compositeControllerState.hasPendingPull = false;
                    checkAndNotifyForSyncStarting();
                    final String str2 = compositeControllerState.href;
                    dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.12
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iAdobeDCXControllerDelegate != null) {
                                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsPullOfCompositeWithID for compositeID= " + str);
                                iAdobeDCXControllerDelegate.controllerRequestsPullOfCompositeWithID(this, str, str2);
                            }
                        }
                    });
                    break;
                case AdobeDCXSyncPhaseResolve:
                    checkAndNotifyForSyncStarting();
                    dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.14
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iAdobeDCXControllerDelegate != null) {
                                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsResolveOfCompositeWithID for compositeID= " + str);
                                iAdobeDCXControllerDelegate.controllerRequestsResolveOfCompositeWithID(this, str);
                            }
                        }
                    });
                    break;
                case AdobeDCXSyncPhaseDelete:
                    checkAndNotifyForSyncStarting();
                    dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.15
                        @Override // java.lang.Runnable
                        public void run() {
                            if (iAdobeDCXControllerDelegate != null) {
                                AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsDeleteOfCompositeWithID for compositeID= " + str);
                                iAdobeDCXControllerDelegate.controllerRequestsDeleteOfCompositeWithID(this, str);
                            }
                        }
                    });
                    break;
                default:
                    compositeControllerState.waitingForDelegate = false;
                    break;
            }
        }
    }

    private void startSyncGroupMonitor() {
        this._monitor.startWithLocalAssets(this._scannedLocalAssets);
        this._monitorIsRunning = true;
    }

    private void stopSyncGroupMonitor() {
        this._monitor.stop();
        this._monitorIsRunning = false;
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void monitorHasStartedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void monitorHasFinishedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void monitorHasFinishedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor, boolean z) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void assetWasUpdated(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
        String strCompositeIDFromHref = compositeIDFromHref(adobeStorageResource.href.toString());
        if (strCompositeIDFromHref != null) {
            synchronized (this) {
                CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(strCompositeIDFromHref);
                if (compositeControllerState != null) {
                    this._isInSync = false;
                    if ((compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhaseInSync || compositeControllerState.phase == null) && !compositeControllerState.isPullingComponents) {
                        compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePull;
                        dispatchRequestForCompositeWithControllerState(compositeControllerState);
                    } else {
                        compositeControllerState.hasPendingPull = true;
                    }
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void assetWasDeleted(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
        final String strCompositeIDFromHref = compositeIDFromHref(adobeStorageResource.href.toString());
        if (strCompositeIDFromHref != null) {
            AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXController.assetWasDeleted", "Composite was deleted on server " + Arrays.toString(Thread.currentThread().getStackTrace()), strCompositeIDFromHref);
            synchronized (this) {
                CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(strCompositeIDFromHref);
                if (compositeControllerState != null) {
                    if ((compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePush || compositeControllerState.phase == AdobeDCXSyncPhase.AdobeDCXSyncPhasePull) && compositeControllerState.activeRequest != null) {
                        if (compositeControllerState.activeRequest.isScheduled()) {
                            compositeControllerState.waitingForCancel = true;
                        }
                        compositeControllerState.activeRequest.cancel();
                    }
                    compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhaseDelete;
                    this._isInSync = false;
                    if (this._mode == AdobeDCXControllerMode.AdobeDCXControllerSyncing && this._syncAllowedByNetworkStatus && !compositeControllerState.isPaused && !compositeControllerState.isPullingComponents) {
                        compositeControllerState.waitingForDelegate = true;
                        final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate.get();
                        checkAndNotifyForSyncStarting();
                        dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.16
                            @Override // java.lang.Runnable
                            public void run() {
                                if (iAdobeDCXControllerDelegate != null) {
                                    AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "calling controllerRequestsDeleteOfCompositeWithID for compositeID= " + strCompositeIDFromHref);
                                    AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXController.assetWasDeleted", "controllerRequestsDeleteOfCompositeWithID", strCompositeIDFromHref);
                                    iAdobeDCXControllerDelegate.controllerRequestsDeleteOfCompositeWithID(this, strCompositeIDFromHref);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void assetWasAdded(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
        String strCompositeIDFromHref = compositeIDFromHref(adobeStorageResource.href.toString());
        if (strCompositeIDFromHref != null) {
            synchronized (this) {
                CompositeControllerState compositeControllerState = this._compositeCtrlStateMap.get(strCompositeIDFromHref);
                if (compositeControllerState == null) {
                    compositeControllerState = new CompositeControllerState();
                    compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePull;
                    compositeControllerState.compositeId = strCompositeIDFromHref;
                    compositeControllerState.href = adobeStorageResource.href.toString();
                    this._compositeCtrlStateMap.put(strCompositeIDFromHref, compositeControllerState);
                } else if (compositeControllerState.phase == null) {
                    compositeControllerState.phase = AdobeDCXSyncPhase.AdobeDCXSyncPhasePull;
                }
                this._isInSync = false;
                dispatchRequestForCompositeWithControllerState(compositeControllerState);
            }
        }
    }

    private void onNetworkStatus(final AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
        synchronized (this) {
            final IAdobeDCXControllerDelegate iAdobeDCXControllerDelegate = this._delegate.get();
            if (this._syncAllowedByNetworkStatusMask.contains(adobeNetworkStatusCode) && !this._syncAllowedByNetworkStatus) {
                this._syncAllowedByNetworkStatus = true;
                if (iAdobeDCXControllerDelegate != null) {
                    dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.17
                        @Override // java.lang.Runnable
                        public void run() {
                            iAdobeDCXControllerDelegate.controllerHasEnabledSync(this, adobeNetworkStatusCode);
                        }
                    });
                    forceServerPoll();
                    restartSyncCycle();
                }
            } else if (!this._syncAllowedByNetworkStatusMask.contains(adobeNetworkStatusCode) && this._syncAllowedByNetworkStatus) {
                this._syncAllowedByNetworkStatus = false;
                cancelActiveRequests();
                if (iAdobeDCXControllerDelegate != null) {
                    dispatchDelegateBlock(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXController.18
                        @Override // java.lang.Runnable
                        public void run() {
                            iAdobeDCXControllerDelegate.controllerHasDisabledSync(this, adobeNetworkStatusCode);
                        }
                    });
                    checkAndNotifyForSyncCompletion();
                }
            }
        }
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        onNetworkStatus(((AdobeNetworkReachability.AdobeNetworkStatus) ((AdobeNotification) obj).getInfo().get(AdobeNetworkReachability.AdobeNetworkReachabilityStatusKey)).networkStatusCode);
    }

    String getInstanceId() {
        return this.instanceId;
    }
}

package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.os.Handler;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderByProperty;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderRelation;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageDCXServiceMapping;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXSyncGroupMonitor {
    public static final int DEFAULT_UPDATE_FREQ_SECS = 60;
    public static final int MINIMUM_UPDATE_FREQ_SECS = 60;
    boolean isPolling;
    String mCurrentUpdateId;
    IAdobeDCXSyncGroupMonitorDelegate mDelegate;
    AdobeStorageResourceCollection mInProgressCollection;
    AdobeStorageResourceCollection mLastCollection;
    AdobeNetworkHttpTaskHandle mPendingUpdateRequest;
    Timer mPollTimer;
    IAdobeSessionProtocol mSession;
    private String mSyncGroup = null;
    boolean mSyncGroupWasRefreshed;
    AdobeStorageOrderRelation mSyncOrder;
    AdobeStorageOrderByProperty mSyncOrderBy;
    Condition mUpdateFinishedCondition;
    ReentrantLock mUpdateFinishedLock;
    private long mUpdateFrequency;

    public static AdobeDCXSyncGroupMonitor assetMonitorForSyncGroup(String str, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXSyncGroupMonitorDelegate iAdobeDCXSyncGroupMonitorDelegate, Handler handler) {
        AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor = new AdobeDCXSyncGroupMonitor();
        adobeDCXSyncGroupMonitor.init(str, iAdobeSessionProtocol, iAdobeDCXSyncGroupMonitorDelegate, handler);
        return adobeDCXSyncGroupMonitor;
    }

    private void init(String str, IAdobeSessionProtocol iAdobeSessionProtocol, IAdobeDCXSyncGroupMonitorDelegate iAdobeDCXSyncGroupMonitorDelegate, Handler handler) {
        this.mSession = iAdobeSessionProtocol;
        this.mSyncGroup = str;
        this.mDelegate = iAdobeDCXSyncGroupMonitorDelegate;
        this.mPollTimer = new Timer();
        this.mUpdateFrequency = 60L;
        this.mUpdateFinishedLock = new ReentrantLock();
        this.mUpdateFinishedCondition = this.mUpdateFinishedLock.newCondition();
        this.mSyncOrder = AdobeStorageOrderRelation.ADOBE_STORAGE_ORDER_ASCENDING;
        this.mSyncOrderBy = AdobeStorageOrderByProperty.ADOBE_STORAGE_ORDER_BY_NAME;
    }

    public long getUpdateFrequency() {
        return this.mUpdateFrequency;
    }

    public void setUpdateFrequency(long j) {
        if (j < 60) {
            j = 60;
        }
        this.mUpdateFrequency = j;
    }

    public AdobeStorageResource resourceForComposite(AdobeDCXComposite adobeDCXComposite) {
        if (adobeDCXComposite == null || !adobeDCXComposite.isBound()) {
            return null;
        }
        AdobeStorageResourceItem adobeStorageResourceItemResourceForComposite = AdobeStorageDCXServiceMapping.resourceForComposite(adobeDCXComposite);
        if (adobeStorageResourceItemResourceForComposite != null && adobeDCXComposite.getCurrent() != null) {
            adobeStorageResourceItemResourceForComposite.etag = adobeDCXComposite.getCurrent().getEtag();
            return adobeStorageResourceItemResourceForComposite;
        }
        return adobeStorageResourceItemResourceForComposite;
    }

    public void startWithLocalAssets(ArrayList<AdobeStorageResource> arrayList) {
        this.mUpdateFinishedLock.lock();
        try {
            if (!this.isPolling) {
                this.isPolling = true;
                this.mLastCollection = this.mSession.getCollectionForSyncGroup(this.mSyncGroup);
                ArrayList<AdobeStorageResource> arrayList2 = null;
                if (arrayList != null) {
                    arrayList2 = new ArrayList<>(arrayList);
                }
                this.mLastCollection.setChildren(arrayList2);
                this.mPollTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        AdobeDCXSyncGroupMonitor.this.doUpdateAndForceSyncGroupRefresh(false);
                    }
                }, 0L, this.mUpdateFrequency * 1000);
            }
        } finally {
            this.mUpdateFinishedLock.unlock();
        }
    }

    public void stop() {
        this.mUpdateFinishedLock.lock();
        try {
            if (this.isPolling) {
                this.mPollTimer.cancel();
                this.mPollTimer.purge();
                this.mPollTimer = new Timer();
                this.isPolling = false;
            }
            if (this.mCurrentUpdateId != null) {
                if (this.mPendingUpdateRequest != null) {
                    this.mPendingUpdateRequest.cancel();
                    this.mPendingUpdateRequest = null;
                }
                this.mCurrentUpdateId = null;
                this.mInProgressCollection = null;
                this.mDelegate.monitorHasFinishedUpdate(null);
                this.mDelegate.monitorHasFinishedUpdate(null, this.mSyncGroupWasRefreshed);
                this.mUpdateFinishedCondition.signal();
            }
        } finally {
            this.mUpdateFinishedLock.unlock();
        }
    }

    public void resume() {
        this.mUpdateFinishedLock.lock();
        try {
            if (!this.isPolling && this.mLastCollection != null) {
                this.isPolling = true;
                this.mPollTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        AdobeDCXSyncGroupMonitor.this.doUpdateAndForceSyncGroupRefresh(false);
                    }
                }, 0L, this.mUpdateFrequency * 1000);
            }
        } finally {
            this.mUpdateFinishedLock.unlock();
        }
    }

    public AdobeStorageResourceCollection getMonitoredCollection() {
        return new AdobeStorageResourceCollection(this.mLastCollection);
    }

    public void startWithMonitoredCollection(AdobeStorageResourceCollection adobeStorageResourceCollection) {
        this.mUpdateFinishedLock.lock();
        try {
            if (!this.isPolling) {
                if (this.mSession.getHrefForSyncGroup(this.mSyncGroup).compareTo(adobeStorageResourceCollection.href.toString()) == 0) {
                    this.isPolling = true;
                    this.mLastCollection = adobeStorageResourceCollection;
                    this.mPollTimer.scheduleAtFixedRate(new TimerTask() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor.3
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            AdobeDCXSyncGroupMonitor.this.doUpdateAndForceSyncGroupRefresh(false);
                        }
                    }, 0L, this.mUpdateFrequency * 1000);
                }
            }
        } finally {
            this.mUpdateFinishedLock.unlock();
        }
    }

    private int find_child_resource_by_name(ArrayList<AdobeStorageResource> arrayList, String str) {
        if (arrayList != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= arrayList.size()) {
                    break;
                }
                arrayList.get(i2);
                if (arrayList.get(i2).name.compareTo(str) != 0) {
                    i = i2 + 1;
                } else {
                    return i2;
                }
            }
        }
        return -1;
    }

    public void updateLocalAsset(AdobeStorageResource adobeStorageResource, boolean z) {
        boolean z2;
        ArrayList<AdobeStorageResource> arrayList;
        this.mUpdateFinishedLock.lock();
        try {
            if (this.isPolling) {
                if (this.mCurrentUpdateId != null) {
                    if (this.mPendingUpdateRequest != null) {
                        this.mPendingUpdateRequest.cancel();
                        this.mPendingUpdateRequest = null;
                    }
                    this.mCurrentUpdateId = null;
                    this.mInProgressCollection = null;
                    this.mDelegate.monitorHasFinishedUpdate(null);
                    this.mDelegate.monitorHasFinishedUpdate(null, this.mSyncGroupWasRefreshed);
                    this.mUpdateFinishedCondition.signal();
                }
                int iFind_child_resource_by_name = find_child_resource_by_name(this.mLastCollection.getChildren(), adobeStorageResource.name);
                boolean z3 = false;
                if (iFind_child_resource_by_name == -1) {
                    if (z) {
                        return;
                    }
                    ArrayList<AdobeStorageResource> arrayList2 = new ArrayList<>(this.mLastCollection.getChildren());
                    if (adobeStorageResource instanceof AdobeStorageResourceItem) {
                        arrayList2.add(new AdobeStorageResourceItem((AdobeStorageResourceItem) adobeStorageResource));
                        arrayList = arrayList2;
                        z2 = false;
                    } else {
                        arrayList = arrayList2;
                        z2 = false;
                    }
                } else if (z) {
                    ArrayList<AdobeStorageResource> arrayList3 = new ArrayList<>(this.mLastCollection.getChildren());
                    arrayList3.remove(iFind_child_resource_by_name);
                    arrayList = arrayList3;
                    z2 = false;
                } else {
                    AdobeStorageResource adobeStorageResource2 = this.mLastCollection.getChildren().get(iFind_child_resource_by_name);
                    if (adobeStorageResource2.etag != null && !adobeStorageResource2.etag.equals(adobeStorageResource.etag)) {
                        adobeStorageResource2.etag = adobeStorageResource.etag;
                        z3 = true;
                    }
                    if (adobeStorageResource2.collaboration != adobeStorageResource.collaboration) {
                        adobeStorageResource2.collaboration = adobeStorageResource.collaboration;
                        z3 = true;
                    }
                    if (adobeStorageResource2.collaboration_role != adobeStorageResource.collaboration_role) {
                        adobeStorageResource2.collaboration_role = adobeStorageResource.collaboration_role;
                        z3 = true;
                    }
                    if (z3) {
                        adobeStorageResource2.modified = null;
                    }
                    z2 = z3;
                    arrayList = null;
                }
                if (arrayList != null) {
                    this.mLastCollection.setChildren(arrayList);
                }
                if (arrayList != null || z2) {
                    this.mLastCollection.etag = null;
                }
            }
        } finally {
            this.mUpdateFinishedLock.unlock();
        }
    }

    public void update() {
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor.4
            @Override // java.lang.Runnable
            public void run() {
                AdobeDCXSyncGroupMonitor.this.doUpdateAndForceSyncGroupRefresh(false);
            }
        }).start();
    }

    public void updateAndForceSyncGroupRefresh() {
        new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor.5
            @Override // java.lang.Runnable
            public void run() {
                AdobeDCXSyncGroupMonitor.this.doUpdateAndForceSyncGroupRefresh(true);
            }
        }).start();
    }

    public void waitFoUpdate() throws InterruptedException {
        doUpdateAndForceSyncGroupRefresh(false);
        this.mUpdateFinishedLock.lock();
        String str = this.mCurrentUpdateId;
        while (str != null) {
            try {
                if (!str.equals(this.mCurrentUpdateId)) {
                    break;
                } else {
                    this.mUpdateFinishedCondition.await();
                }
            } finally {
                this.mUpdateFinishedLock.unlock();
            }
        }
    }

    public void setSyncOrder(AdobeStorageOrderRelation adobeStorageOrderRelation) {
        this.mSyncOrder = adobeStorageOrderRelation;
    }

    public AdobeStorageOrderRelation getSyncOrder() {
        return this.mSyncOrder;
    }

    public void setSyncOrderBy(AdobeStorageOrderByProperty adobeStorageOrderByProperty) {
        this.mSyncOrderBy = adobeStorageOrderByProperty;
    }

    public AdobeStorageOrderByProperty getSyncOrderBy() {
        return this.mSyncOrderBy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doUpdateAndForceSyncGroupRefresh(boolean z) {
        Exception e2;
        String strGenerateUuid;
        this.mUpdateFinishedLock.lock();
        if (this.mCurrentUpdateId == null) {
            try {
                try {
                    strGenerateUuid = AdobeStorageUtils.generateUuid();
                    this.mCurrentUpdateId = strGenerateUuid;
                    try {
                        this.mInProgressCollection = new AdobeStorageResourceCollection(this.mLastCollection);
                        this.mInProgressCollection.resetPageIndex();
                        this.mInProgressCollection.setOrder(this.mSyncOrder);
                        this.mInProgressCollection.setOrderBy(this.mSyncOrderBy);
                    } catch (Exception e3) {
                        e2 = e3;
                        AdobeLogger.log(Level.DEBUG, AdobeDCXSyncGroupMonitor.class.getSimpleName(), null, e2);
                        this.mUpdateFinishedLock.unlock();
                    }
                } finally {
                    this.mUpdateFinishedLock.unlock();
                }
            } catch (Exception e4) {
                e2 = e4;
                strGenerateUuid = null;
            }
            this.mDelegate.monitorHasStartedUpdate(null);
            requestSyncGroupAssetsWithUpdateId(strGenerateUuid, false, z);
        }
    }

    private void forceRefreshOnSyncGroupForNextRefresh() {
        this.mLastCollection.etag = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestSyncGroupAssetsWithUpdateId(final String str, boolean z, boolean z2) {
        if (!z) {
            this.mUpdateFinishedLock.lock();
            if (this.mCurrentUpdateId == null || !this.mCurrentUpdateId.equals(str)) {
                this.mUpdateFinishedLock.unlock();
                return;
            }
            this.mSyncGroupWasRefreshed = false;
        }
        if (z2) {
            this.mInProgressCollection.etag = null;
            this.mSyncGroupWasRefreshed = true;
        }
        IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler = new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor.6
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection) {
                AdobeDCXSyncGroupMonitor.this.mUpdateFinishedLock.lock();
                if (!AdobeDCXUtils.areStringsEqual(AdobeDCXSyncGroupMonitor.this.mCurrentUpdateId, str)) {
                    AdobeDCXSyncGroupMonitor.this.mUpdateFinishedLock.unlock();
                    return;
                }
                AdobeDCXSyncGroupMonitor.this.mPendingUpdateRequest = null;
                if (adobeStorageResourceCollection == null) {
                    AdobeDCXSyncGroupMonitor.this.finishUpdateAndUnlock();
                    return;
                }
                if (adobeStorageResourceCollection.isComplete()) {
                    try {
                        if (AdobeDCXSyncGroupMonitor.this.updateSyncGroupCollection(adobeStorageResourceCollection, str)) {
                            AdobeDCXSyncGroupMonitor.this.finishUpdateAndUnlock();
                            return;
                        }
                        return;
                    } catch (AdobeDCXException e2) {
                        AdobeLogger.log(Level.DEBUG, "AdobeDCXSyncGroupMonitor.requestSyncGroupAssetsWithUpdateId", e2.getMessage(), e2);
                        return;
                    } catch (InterruptedException e3) {
                        AdobeLogger.log(Level.DEBUG, "AdobeDCXSyncGroupMonitor.requestSyncGroupAssetsWithUpdateId", e3.getMessage(), e3);
                        return;
                    } catch (ParseException e4) {
                        AdobeLogger.log(Level.DEBUG, "AdobeDCXSyncGroupMonitor.requestSyncGroupAssetsWithUpdateId", e4.getMessage(), e4);
                        return;
                    }
                }
                AdobeDCXSyncGroupMonitor.this.requestSyncGroupAssetsWithUpdateId(str, true, false);
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                AdobeDCXSyncGroupMonitor.this.mUpdateFinishedLock.lock();
                if (!AdobeDCXUtils.areStringsEqual(AdobeDCXSyncGroupMonitor.this.mCurrentUpdateId, str)) {
                    AdobeDCXSyncGroupMonitor.this.mUpdateFinishedLock.unlock();
                } else {
                    AdobeDCXSyncGroupMonitor.this.mPendingUpdateRequest = null;
                    AdobeDCXSyncGroupMonitor.this.finishUpdateAndUnlock();
                }
            }
        };
        if (this.mInProgressCollection != null) {
            this.mPendingUpdateRequest = AdobeDCXCompositeXfer.getAssetsInSyncGroup(this.mInProgressCollection, this.mInProgressCollection.isComplete() ? AdobeStoragePagingMode.AdobeStorageFirstPage : AdobeStoragePagingMode.AdobeStorageNextPageAppend, this.mSession, iAdobeStorageCollectionRequestCompletionHandler, null);
        }
        this.mUpdateFinishedLock.unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishUpdateAndUnlock() {
        this.mCurrentUpdateId = null;
        this.mInProgressCollection = null;
        this.mDelegate.monitorHasFinishedUpdate(null);
        this.mDelegate.monitorHasFinishedUpdate(null, this.mSyncGroupWasRefreshed);
        this.mUpdateFinishedCondition.signal();
        this.mUpdateFinishedLock.unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateSyncGroupCollection(AdobeStorageResourceCollection adobeStorageResourceCollection, String str) throws InterruptedException, AdobeDCXException, ParseException {
        ArrayList<AdobeStorageResource> arrayList;
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final C1ExternalWrapper c1ExternalWrapper = new C1ExternalWrapper();
        if (adobeStorageResourceCollection.getChildren() == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList<>(adobeStorageResourceCollection.getChildren());
        }
        ArrayList<AdobeStorageResource> arrayList2 = null;
        if (this.mLastCollection.getChildren() != null) {
            arrayList2 = new ArrayList(this.mLastCollection.getChildren());
        }
        final ArrayList<AdobeStorageResource> arrayList3 = new ArrayList<>();
        String str2 = this.mLastCollection.etag;
        this.mUpdateFinishedLock.unlock();
        if (arrayList2 != null) {
            for (final AdobeStorageResource adobeStorageResource : arrayList2) {
                int iFind_child_resource_by_name = find_child_resource_by_name(arrayList, adobeStorageResource.name);
                if (iFind_child_resource_by_name == -1) {
                    this.mDelegate.assetWasDeleted(adobeStorageResource, this);
                } else {
                    final AdobeStorageResource adobeStorageResource2 = arrayList.get(iFind_child_resource_by_name);
                    if (!AdobeDCXUtils.areStringsEqual(adobeStorageResource.modified, adobeStorageResource2.modified) || adobeStorageResource2.collaboration != AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE) {
                        if (adobeStorageResource2.isCollection) {
                            AdobeDCXComposite adobeDCXCompositeNewCompositeWithHref = AdobeDCXComposite.newCompositeWithHref(adobeStorageResource2.href, null, null, null);
                            try {
                                reentrantLock.lock();
                                c1ExternalWrapper.pendingRequestCount++;
                                reentrantLock.unlock();
                                AdobeDCXCompositeXfer.pullHeaderInfoForManifest(adobeDCXCompositeNewCompositeWithHref, this.mSession, new IAdobeDCXResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor.7
                                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler
                                    public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem, AdobeCSDKException adobeCSDKException) {
                                        boolean z = false;
                                        if (adobeStorageResourceItem != null && adobeCSDKException == null) {
                                            if (!adobeStorageResourceItem.etag.equals(adobeStorageResource.etag)) {
                                                adobeStorageResource2.etag = adobeStorageResourceItem.etag;
                                                AdobeDCXSyncGroupMonitor.this.mDelegate.assetWasUpdated(adobeStorageResource2, this);
                                                z = true;
                                            } else {
                                                adobeStorageResource2.etag = adobeStorageResource.etag;
                                            }
                                        } else {
                                            adobeStorageResource2.etag = adobeStorageResource.etag;
                                        }
                                        if (!z && (adobeStorageResource.collaboration != adobeStorageResource2.collaboration || adobeStorageResource2.collaboration_role != adobeStorageResource.collaboration_role)) {
                                            AdobeDCXSyncGroupMonitor.this.mDelegate.assetWasUpdated(adobeStorageResource2, this);
                                        }
                                        reentrantLock.lock();
                                        C1ExternalWrapper c1ExternalWrapper2 = c1ExternalWrapper;
                                        int i = c1ExternalWrapper2.pendingRequestCount - 1;
                                        c1ExternalWrapper2.pendingRequestCount = i;
                                        if (i == 0) {
                                            conditionNewCondition.signal();
                                        }
                                        reentrantLock.unlock();
                                    }
                                }, null);
                            } finally {
                            }
                        } else {
                            this.mDelegate.assetWasUpdated(adobeStorageResource2, this);
                        }
                    } else if (adobeStorageResource.collaboration != adobeStorageResource2.collaboration || adobeStorageResource2.collaboration_role != adobeStorageResource.collaboration_role) {
                        this.mDelegate.assetWasUpdated(adobeStorageResource2, this);
                    }
                    arrayList3.add(adobeStorageResource2);
                    arrayList.remove(iFind_child_resource_by_name);
                }
            }
        }
        if (arrayList != null) {
            for (final AdobeStorageResource adobeStorageResource3 : arrayList) {
                if (adobeStorageResource3.isCollection) {
                    AdobeDCXComposite adobeDCXCompositeNewCompositeWithHref2 = AdobeDCXComposite.newCompositeWithHref(adobeStorageResource3.href, null, null, null);
                    try {
                        reentrantLock.lock();
                        c1ExternalWrapper.pendingRequestCount++;
                        reentrantLock.unlock();
                        AdobeDCXCompositeXfer.pullHeaderInfoForManifest(adobeDCXCompositeNewCompositeWithHref2, this.mSession, new IAdobeDCXResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor.8
                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler
                            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem, AdobeCSDKException adobeCSDKException) {
                                if (adobeStorageResourceItem != null && adobeCSDKException == null) {
                                    adobeStorageResource3.etag = adobeStorageResourceItem.etag;
                                    AdobeDCXSyncGroupMonitor.this.mDelegate.assetWasAdded(adobeStorageResource3, this);
                                    synchronized (arrayList3) {
                                        arrayList3.add(adobeStorageResource3);
                                    }
                                }
                                if (adobeCSDKException != null && (adobeCSDKException instanceof AdobeAssetException) && ((AdobeAssetException) adobeCSDKException).getHttpStatusCode().intValue() == 600) {
                                    c1ExternalWrapper.pendingEtagReset = true;
                                }
                                reentrantLock.lock();
                                try {
                                    C1ExternalWrapper c1ExternalWrapper2 = c1ExternalWrapper;
                                    int i = c1ExternalWrapper2.pendingRequestCount - 1;
                                    c1ExternalWrapper2.pendingRequestCount = i;
                                    if (i == 0) {
                                        conditionNewCondition.signal();
                                    }
                                } finally {
                                    reentrantLock.unlock();
                                }
                            }
                        }, null);
                    } finally {
                    }
                } else {
                    this.mDelegate.assetWasAdded(adobeStorageResource3, this);
                    arrayList3.add(adobeStorageResource3);
                }
            }
        }
        reentrantLock.lock();
        while (c1ExternalWrapper.pendingRequestCount > 0) {
            try {
                conditionNewCondition.await();
            } finally {
            }
        }
        reentrantLock.unlock();
        adobeStorageResourceCollection.setChildren(arrayList3);
        this.mUpdateFinishedLock.lock();
        if (this.mCurrentUpdateId == null || !this.mCurrentUpdateId.equals(str)) {
            this.mUpdateFinishedLock.unlock();
            return false;
        }
        if (!this.mSyncGroupWasRefreshed && !AdobeDCXUtils.areStringsEqual(str2, adobeStorageResourceCollection.etag)) {
            this.mSyncGroupWasRefreshed = true;
        }
        this.mLastCollection = adobeStorageResourceCollection;
        if (c1ExternalWrapper.pendingEtagReset) {
            forceRefreshOnSyncGroupForNextRefresh();
        }
        return true;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor$1ExternalWrapper, reason: invalid class name */
    class C1ExternalWrapper {
        public int pendingRequestCount = 0;
        public boolean pendingEtagReset = false;

        C1ExternalWrapper() {
        }
    }
}

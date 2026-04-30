package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import android.os.Handler;
import android.support.annotation.Nullable;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeXfer;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeSessionProtocol;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestExecutor;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationRoleType;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryDownloadPolicyType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibrarySyncManager {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int ADOBE_LIBRARY_MAXIMUM_RETRY_COUNT = 5;
    private static final String ELEMENT_WAS_ADDED = "elementWasAdded";
    private static final String ELEMENT_WAS_UPDATED = "elementWasUpdated";
    private static final String ON_SYNC_ERROR = "onSyncError";
    HashMap<String, AdobeNetworkHttpTaskHandle> mActiveDownloadRequests;
    HashMap<String, AdobeNetworkHttpTaskHandle> mActivePullRequests;
    HashMap<String, AdobeNetworkHttpTaskHandle> mActivePushRequests;
    private AdobeLibraryCollection mCollection;
    HashMap<String, HashMap<String, ArrayList<AdobeDCXComponent>>> mComponentsToPull;
    ArrayList<String> mConflictedLibs;
    private HashMap<String, HashMap<String, String>> mElementsAdded;
    private HashMap<String, HashMap<String, String>> mElementsDeleted;
    private HashMap<String, HashMap<String, String>> mElementsModified;
    HashMap<String, HashMap<String, ArrayList<String>>> mExternalAssetsToPull;
    int mForceResyncPending;
    ArrayList<String> mInProgressPullLibs;
    ArrayList<String> mInProgressPushLibs;
    private Date mLastSyncTime;
    ArrayList<String> mLibsPendingDelete;
    ArrayList<String> mLibsPullDone;
    ArrayList<String> mLibsPushDone;
    ArrayList<String> mLibsToDelete;
    ArrayList<String> mLibsToLeave;
    ArrayList<String> mLibsToPull;
    ArrayList<String> mLibsToPush;
    ReentrantLock mListLock;
    private AdobeLibraryManagerInternal mManager;
    AdobeDCXSyncGroupMonitor mMonitor;
    private AdobeNetworkRequestPriority mPullLibsPriority;
    private AdobeNetworkRequestPriority mPushLibsPriority;
    HashMap<String, HashMap<String, ArrayList<Integer>>> mRenditionsForLibrary;
    private IAdobeSessionProtocol mSession;
    private int mSessionId;
    private HashMap<String, Integer> mSyncErrorCountsForResources;
    private String mSyncGroup;
    boolean mSyncInProgress;
    private int mNumConcurrentRequests = 1;
    private ArrayList<String> mAssetDownloadLibraryFilter = null;
    private AdobeNetworkHttpRequestExecutor mRequestExecutor = null;

    static {
        $assertionsDisabled = !AdobeLibrarySyncManager.class.desiredAssertionStatus();
    }

    AdobeLibrarySyncManager() {
        initVars();
    }

    void initWithCollection(AdobeLibraryCollection adobeLibraryCollection, IAdobeSessionProtocol iAdobeSessionProtocol, String str) {
        this.mSessionId = 0;
        this.mSession = iAdobeSessionProtocol;
        this.mSyncGroup = str;
        this.mCollection = adobeLibraryCollection;
        this.mManager = (AdobeLibraryManagerInternal) AdobeLibraryManager.getSharedInstance();
    }

    void initVars() {
        this.mListLock = new ReentrantLock();
        this.mSessionId++;
        this.mMonitor = null;
        this.mLibsToPush = new ArrayList<>();
        this.mLibsToPull = new ArrayList<>();
        this.mConflictedLibs = new ArrayList<>();
        this.mComponentsToPull = new HashMap<>();
        this.mExternalAssetsToPull = new HashMap<>();
        this.mRenditionsForLibrary = new HashMap<>();
        this.mLibsToDelete = new ArrayList<>();
        this.mLibsPendingDelete = new ArrayList<>();
        this.mLibsToLeave = new ArrayList<>();
        this.mInProgressPullLibs = new ArrayList<>();
        this.mInProgressPushLibs = new ArrayList<>();
        this.mLibsPullDone = new ArrayList<>();
        this.mLibsPushDone = new ArrayList<>();
        this.mElementsAdded = new HashMap<>();
        this.mElementsModified = new HashMap<>();
        this.mElementsDeleted = new HashMap<>();
        this.mPullLibsPriority = AdobeLibraryManager.getSharedInstance().getDownloadLibraryPriority();
        this.mPushLibsPriority = AdobeLibraryManager.getSharedInstance().getUploadLibraryPriority();
        this.mSyncErrorCountsForResources = new HashMap<>();
        this.mRequestExecutor = new AdobeNetworkHttpRequestExecutor(this.mNumConcurrentRequests, this.mNumConcurrentRequests, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        synchronized (this) {
            this.mSyncInProgress = false;
            this.mForceResyncPending = 0;
            this.mActivePullRequests = new HashMap<>();
            this.mActivePushRequests = new HashMap<>();
            this.mActiveDownloadRequests = new HashMap<>();
        }
    }

    public void setPullLibsPriority(AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        this.mPullLibsPriority = adobeNetworkRequestPriority;
    }

    public void setPushLibsPriority(AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        this.mPushLibsPriority = adobeNetworkRequestPriority;
    }

    public IAdobeSessionProtocol serviceSession() {
        return this.mSession;
    }

    public String hrefForLibrary(String str) {
        return this.mSyncGroup != null ? AdobeDCXUtils.stringByAppendingLastPathComponent(this.mSession.getHrefForSyncGroup(this.mSyncGroup), str) : this.mManager.getBookmarlURL(str);
    }

    void doSyncOnCommit() {
        synchronized (this) {
            if (this.mManager.shouldSyncOnCommit() && !this.mSyncInProgress) {
                doPushAndPull(false, false);
            }
        }
    }

    boolean hasActivePulls() {
        boolean z;
        synchronized (this) {
            z = this.mActivePullRequests.size() != 0;
        }
        return z;
    }

    boolean hasActivePushes() {
        boolean z;
        synchronized (this) {
            z = this.mActivePushRequests.size() != 0;
        }
        return z;
    }

    void cancelActivePushes() {
        synchronized (this) {
            Iterator<AdobeNetworkHttpTaskHandle> it = this.mActivePushRequests.values().iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.mActivePushRequests.clear();
        }
    }

    void cancelActivePulls() {
        synchronized (this) {
            Iterator<AdobeNetworkHttpTaskHandle> it = this.mActivePullRequests.values().iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.mActivePullRequests.clear();
        }
    }

    void cancelActiveDownloads() {
        synchronized (this) {
            Iterator<AdobeNetworkHttpTaskHandle> it = this.mActiveDownloadRequests.values().iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
            this.mActiveDownloadRequests.clear();
        }
    }

    void cancelAllTransfers() {
        cancelActivePulls();
        cancelActivePushes();
        cancelActiveDownloads();
    }

    void sendSyncCompleted() {
        this.mCollection.syncCompleted();
        if (this.mForceResyncPending == 1) {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.1
                @Override // java.lang.Runnable
                public void run() {
                    AdobeLibrarySyncManager.this.mCollection.sync(true);
                }
            }).start();
        }
        this.mForceResyncPending = 0;
    }

    void checkSyncComplete(boolean z) {
        boolean z2;
        synchronized (this) {
            if (hasActivePulls() || hasActivePushes()) {
                z2 = false;
            } else {
                if (this.mSyncInProgress) {
                    this.mSyncInProgress = false;
                    if (!z || !this.mManager.canSync()) {
                        this.mLastSyncTime = new Date();
                        sendSyncCompleted();
                    }
                }
                z2 = true;
            }
        }
        if (z2 && z && !this.mManager.isSyncSuspendedDueToAuthenticationError()) {
            doPushAndPull(true, false);
        }
    }

    HashMap<String, String> elementsAddedForLibrary(String str) {
        HashMap<String, String> map = this.mElementsAdded.get(str);
        if (map == null) {
            HashMap<String, String> map2 = new HashMap<>();
            this.mElementsAdded.put(str, map2);
            return map2;
        }
        return map;
    }

    HashMap<String, String> elementsModifiedForLibrary(String str) {
        HashMap<String, String> map = this.mElementsModified.get(str);
        if (map == null) {
            HashMap<String, String> map2 = new HashMap<>();
            this.mElementsModified.put(str, map2);
            return map2;
        }
        return map;
    }

    HashMap<String, String> elementsDeletedForLibrary(String str) {
        HashMap<String, String> map = this.mElementsDeleted.get(str);
        if (map == null) {
            HashMap<String, String> map2 = new HashMap<>();
            this.mElementsDeleted.put(str, map2);
            return map2;
        }
        return map;
    }

    boolean isNewElementAdded(String str, String str2) {
        this.mListLock.lock();
        try {
            return this.mElementsAdded.get(str2).get(str) != null;
        } finally {
            this.mListLock.unlock();
        }
    }

    boolean isElementModified(String str, String str2) {
        this.mListLock.lock();
        try {
            return this.mElementsModified.get(str2).get(str) != null;
        } finally {
            this.mListLock.unlock();
        }
    }

    void pushCompletedForLibrary(AdobeLibraryComposite adobeLibraryComposite, boolean z, AdobeCSDKException adobeCSDKException) {
        boolean z2;
        boolean zHandlePushErrorForComposite;
        boolean z3 = false;
        if (!z) {
            Boolean[] boolArr = {false};
            Boolean[] boolArr2 = {false};
            try {
                zHandlePushErrorForComposite = handlePushErrorForComposite(((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite(), adobeLibraryComposite.getLibraryId(), adobeCSDKException, boolArr, boolArr2);
            } catch (AdobeCSDKException e2) {
                this.mManager.sendDelegateMessage(ON_SYNC_ERROR, adobeLibraryComposite, e2);
                zHandlePushErrorForComposite = false;
            }
            if (boolArr2[0].booleanValue()) {
                this.mManager.handleLibraryReadOnlyConversion(adobeLibraryComposite);
            }
            if (boolArr[0].booleanValue()) {
                this.mListLock.lock();
                if (!this.mConflictedLibs.contains(adobeLibraryComposite.getLibraryId()) && !this.mLibsPendingDelete.contains(adobeLibraryComposite.getLibraryId())) {
                    synchronized (this) {
                        if (this.mActivePullRequests.get(adobeLibraryComposite.getLibraryId()) == null) {
                            this.mListLock.lock();
                            this.mLibsToPull.remove(adobeLibraryComposite.getLibraryId());
                            this.mConflictedLibs.add(adobeLibraryComposite.getLibraryId());
                            this.mListLock.unlock();
                        }
                    }
                }
            } else if (zHandlePushErrorForComposite) {
                this.mListLock.lock();
                if (!this.mLibsToPush.contains(adobeLibraryComposite.getLibraryId())) {
                    this.mLibsToPush.add(adobeLibraryComposite.getLibraryId());
                }
            }
        } else {
            if (((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getPushed() != null) {
                ((AdobeLibraryCompositeInternal) adobeLibraryComposite).lock();
                try {
                    try {
                        ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().acceptPush();
                    } catch (AdobeDCXException e3) {
                        AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "Accept Push Error", e3);
                    }
                    z2 = ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getCurrent().getCompositeState().compareTo(AdobeDCXConstants.AdobeDCXAssetStateModified) == 0 || ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getCurrent().getCompositeState().compareTo(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) == 0;
                    if (this.mMonitor != null && this.mManager.canSync()) {
                        this.mMonitor.updateLocalAsset(this.mMonitor.resourceForComposite(((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite()), ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getCurrent().getCompositeState().compareTo(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete) == 0);
                    }
                } finally {
                    ((AdobeLibraryCompositeInternal) adobeLibraryComposite).unlock();
                }
            } else {
                z2 = false;
            }
            if (((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getCurrent().getCompositeState().compareTo(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete) == 0) {
                queueLibraryForDelete(adobeLibraryComposite.getLibraryId());
            } else {
                z3 = z2;
            }
            this.mListLock.lock();
            try {
                this.mInProgressPushLibs.remove(adobeLibraryComposite.getLibraryId());
                if (z3) {
                    int iIndexOf = this.mLibsToPush.indexOf(adobeLibraryComposite.getLibraryId());
                    if (iIndexOf != -1) {
                        this.mLibsToPush.remove(iIndexOf);
                    }
                    this.mLibsToPush.add(0, adobeLibraryComposite.getLibraryId());
                } else {
                    this.mLibsPushDone.add(adobeLibraryComposite.getLibraryId());
                }
                if (this.mLibsToPush.isEmpty() && this.mInProgressPushLibs.isEmpty()) {
                    this.mLibsPushDone.clear();
                }
                this.mListLock.unlock();
            } finally {
                this.mListLock.unlock();
            }
        }
        synchronized (this) {
            if (adobeLibraryComposite.getLibraryId() != null) {
                this.mActivePushRequests.remove(adobeLibraryComposite.getLibraryId());
            }
        }
        checkSyncComplete(true);
    }

    void uploadChangedLibraries() {
        boolean z;
        while (!this.mLibsToPush.isEmpty() && this.mManager.canSync()) {
            String str = this.mLibsToPush.get(0);
            final AdobeLibraryComposite libraryWithId = this.mCollection.getLibraryWithId(str);
            try {
                this.mListLock.lock();
                if (libraryWithId == null || this.mConflictedLibs.contains(str) || this.mLibsPendingDelete.contains(str)) {
                    this.mLibsToPush.remove(0);
                    z = true;
                } else if (this.mLibsToPull.contains(str)) {
                    if (!this.mConflictedLibs.contains(str)) {
                        this.mConflictedLibs.add(str);
                    }
                    this.mLibsToPull.remove(str);
                    this.mLibsToPush.remove(0);
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    try {
                        this.mListLock.lock();
                        this.mLibsToPush.remove(0);
                        this.mInProgressPushLibs.add(str);
                        this.mListLock.unlock();
                        AdobeDCXComposite dcxComposite = ((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite();
                        if (dcxComposite.getHref() == null) {
                            try {
                                dcxComposite.setHref(new URI(hrefForLibrary(str)));
                            } catch (URISyntaxException e2) {
                                AdobeLogger.log(Level.DEBUG, AdobeLibraryManager.class.getSimpleName(), "", e2);
                            }
                            try {
                                dcxComposite.commitChanges();
                            } catch (AdobeDCXException e3) {
                                AdobeLogger.log(Level.DEBUG, AdobeLibraryManager.class.getSimpleName(), "", e3);
                            }
                        }
                        final int i = this.mSessionId;
                        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandlePushCompositeWithPriority = AdobeDCXCompositeXfer.pushCompositeWithPriority(dcxComposite, false, (AdobeStorageSession) this.mSession, new IAdobeDCXPushCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.2
                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushCompletionHandler
                            public void onSuccess() {
                                if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                    AdobeLibrarySyncManager.this.pushCompletedForLibrary(libraryWithId, true, null);
                                }
                            }

                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPushCompletionHandler
                            public void onFailure(AdobeCSDKException adobeCSDKException) {
                                AdobeLibrarySyncManager.this.pushCompletedForLibrary(libraryWithId, false, adobeCSDKException);
                            }
                        }, null, this.mPushLibsPriority);
                        synchronized (this) {
                            if (!$assertionsDisabled && this.mActivePushRequests.containsKey(str)) {
                                throw new AssertionError("Already uploading library " + str);
                            }
                            this.mActivePushRequests.put(str, adobeNetworkHttpTaskHandlePushCompositeWithPriority);
                        }
                    } finally {
                    }
                }
            } finally {
            }
        }
    }

    void sendNotificationForElement(String str, AdobeLibraryComposite adobeLibraryComposite, boolean z) {
        AdobeLibraryElement elementWithId = adobeLibraryComposite.getElementWithId(str);
        if (z) {
            this.mManager.sendDelegateMessage(ELEMENT_WAS_ADDED, adobeLibraryComposite, str, elementWithId != null ? elementWithId.getType() : null);
        } else {
            this.mManager.sendDelegateMessage(ELEMENT_WAS_UPDATED, adobeLibraryComposite, str, elementWithId != null ? elementWithId.getType() : null);
        }
    }

    void getRenditionSizeCompletedForElement(String str, Integer num, AdobeCSDKException adobeCSDKException, AdobeLibraryComposite adobeLibraryComposite, boolean z, int i) {
        boolean z2;
        this.mListLock.lock();
        if (this.mManager.isStarted() && i == this.mSessionId) {
            try {
                HashMap<String, ArrayList<Integer>> map = this.mRenditionsForLibrary.get(adobeLibraryComposite.getLibraryId());
                if (!$assertionsDisabled && map == null) {
                    throw new AssertionError("Renditions to generate for element empty!");
                }
                ArrayList<Integer> arrayList = map.get(str);
                if (!$assertionsDisabled && arrayList == null) {
                    throw new AssertionError("Renditions to generate for element empty!");
                }
                arrayList.remove(num);
                if (!arrayList.isEmpty()) {
                    z2 = false;
                } else {
                    map.remove(str);
                    z2 = true;
                }
                if (adobeCSDKException != null) {
                    this.mManager.sendDelegateMessage(ON_SYNC_ERROR, adobeLibraryComposite, adobeCSDKException);
                }
                if (z2 && !downloadExternalAssetsForElement(adobeLibraryComposite.getElementWithId(str), adobeLibraryComposite, z)) {
                    sendNotificationForElement(str, adobeLibraryComposite, z);
                }
                synchronized (this) {
                    this.mActivePullRequests.remove(str + ":" + Long.toString(num.intValue()));
                }
                this.mListLock.unlock();
                checkSyncComplete(true);
            } finally {
                this.mListLock.unlock();
            }
        }
    }

    public void setAssetDownloadLibraryFilter(List<String> list) {
        this.mListLock.lock();
        try {
            if (list != null) {
                this.mAssetDownloadLibraryFilter = new ArrayList<>(list);
            } else {
                this.mAssetDownloadLibraryFilter = null;
            }
            this.mListLock.unlock();
            this.mListLock.lock();
            try {
                if (this.mCollection.getLibraries() != null) {
                    for (AdobeLibraryComposite adobeLibraryComposite : this.mCollection.getLibraries()) {
                        if (this.mAssetDownloadLibraryFilter != null && !this.mAssetDownloadLibraryFilter.contains(adobeLibraryComposite.getLibraryId())) {
                            this.mComponentsToPull.remove(adobeLibraryComposite.getLibraryId());
                        }
                    }
                }
            } finally {
            }
        } finally {
        }
    }

    boolean downloadRenditionsForElement(final String str, final AdobeLibraryComposite adobeLibraryComposite, final boolean z) {
        AdobeLibraryElement elementWithId;
        boolean z2;
        HashMap<String, ArrayList<Integer>> renditionSizes = this.mManager.getRenditionSizes();
        if (!(this.mAssetDownloadLibraryFilter == null || this.mAssetDownloadLibraryFilter.contains(adobeLibraryComposite.getLibraryId())) || renditionSizes == null || (elementWithId = adobeLibraryComposite.getElementWithId(str)) == null) {
            return false;
        }
        this.mListLock.lock();
        try {
            ArrayList<Integer> arrayList = renditionSizes.get(elementWithId.getType());
            ArrayList<Integer> arrayList2 = arrayList == null ? renditionSizes.get("*") : arrayList;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                ArrayList<Integer> arrayList3 = new ArrayList<>(arrayList2.size());
                HashMap<String, ArrayList<Integer>> map = this.mRenditionsForLibrary.get(adobeLibraryComposite.getLibraryId());
                this.mListLock.lock();
                if (map == null) {
                    try {
                        map = new HashMap<>();
                        this.mRenditionsForLibrary.put(adobeLibraryComposite.getLibraryId(), map);
                    } finally {
                    }
                }
                map.put(str, arrayList3);
                this.mListLock.unlock();
                boolean z3 = false;
                for (final Integer num : arrayList2) {
                    if (num != null) {
                        this.mListLock.lock();
                        try {
                            arrayList3.add(num);
                            this.mListLock.unlock();
                            ArrayList<AdobeNetworkHttpTaskHandle> arrayList4 = new ArrayList<>();
                            final int i = this.mSessionId;
                            synchronized (this) {
                                if (((AdobeLibraryCompositeInternal) adobeLibraryComposite).internalGetRenditionPath(str, num.intValue(), num.intValue() == 0, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.3
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                                    public void onCompletion(String str2) {
                                        if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                            AdobeLibrarySyncManager.this.getRenditionSizeCompletedForElement(str, num, null, adobeLibraryComposite, z, i);
                                        }
                                    }
                                }, new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.4
                                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                    public void onError(AdobeLibraryException adobeLibraryException) {
                                        if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                            if (adobeLibraryException == null || adobeLibraryException.getErrorCode() != AdobeLibraryErrorCode.AdobeLibraryErrorNoRenditionCandidate) {
                                                AdobeLibrarySyncManager.this.getRenditionSizeCompletedForElement(str, num, adobeLibraryException, adobeLibraryComposite, z, i);
                                            }
                                        }
                                    }
                                }, null, arrayList4)) {
                                    if (!arrayList4.isEmpty()) {
                                        synchronized (this) {
                                            this.mActivePullRequests.put(str + ":" + num, arrayList4.get(0));
                                        }
                                    }
                                    z2 = true;
                                } else {
                                    z2 = z3;
                                }
                            }
                            z3 = z2;
                        } finally {
                        }
                    }
                }
                return z3;
            }
            return false;
        } finally {
        }
    }

    void downloadExternalAssetCompletedForElement(String str, String str2, AdobeCSDKException adobeCSDKException, AdobeLibraryComposite adobeLibraryComposite, boolean z, int i) {
        boolean z2;
        this.mListLock.lock();
        if (!this.mManager.isStarted() || i != this.mSessionId) {
            this.mListLock.unlock();
            return;
        }
        HashMap<String, ArrayList<String>> map = this.mExternalAssetsToPull.get(adobeLibraryComposite.getLibraryId());
        if (!$assertionsDisabled && map == null) {
            throw new AssertionError("External assets to download for library empty!");
        }
        ArrayList<String> arrayList = map.get(str);
        if (!$assertionsDisabled && arrayList == null) {
            throw new AssertionError("External assets to download for element empty!");
        }
        arrayList.remove(str2);
        if (arrayList.isEmpty()) {
            map.remove(str);
            if (map.size() == 0) {
                this.mExternalAssetsToPull.remove(adobeLibraryComposite.getLibraryId());
            }
            z2 = true;
        } else {
            z2 = false;
        }
        this.mListLock.unlock();
        if (adobeCSDKException != null) {
            AdobeLogger.log(Level.DEBUG, AdobeLibrarySyncManager.class.getSimpleName(), String.format("Error getting external asset for element id: %s, representation id:%s. Error: %s", str, str2, adobeCSDKException));
            this.mManager.sendDelegateMessage(ON_SYNC_ERROR, adobeLibraryComposite, adobeCSDKException);
        }
        if (z2) {
            sendNotificationForElement(str, adobeLibraryComposite, z);
        }
        synchronized (this) {
            this.mActivePullRequests.remove(String.format("%s:%s:%s", adobeLibraryComposite.getLibraryId(), str, str2));
        }
        checkSyncComplete(true);
    }

    boolean downloadExternalAssetsForElement(AdobeLibraryElement adobeLibraryElement, final AdobeLibraryComposite adobeLibraryComposite, final boolean z) {
        HashMap<String, ArrayList<String>> map;
        boolean z2;
        String str;
        this.mListLock.lock();
        HashMap<String, ArrayList<String>> map2 = this.mExternalAssetsToPull.get(adobeLibraryComposite != null ? adobeLibraryComposite.getLibraryId() : null);
        if (map2 == null) {
            HashMap<String, ArrayList<String>> map3 = new HashMap<>();
            this.mExternalAssetsToPull.put(adobeLibraryComposite != null ? adobeLibraryComposite.getLibraryId() : null, map3);
            map = map3;
        } else {
            map = map2;
        }
        this.mListLock.unlock();
        if (adobeLibraryElement == null || adobeLibraryComposite == null || ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite() == null) {
            return false;
        }
        final String elementId = adobeLibraryElement.getElementId();
        List<AdobeDCXNode> childrenOfNode = ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getCurrent().getChildrenOfNode(adobeLibraryElement.getDCXNode());
        if (childrenOfNode == null || childrenOfNode.isEmpty()) {
            return false;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        for (AdobeDCXNode adobeDCXNode : childrenOfNode) {
            if (adobeDCXNode.getType().equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType) && (str = (String) adobeDCXNode.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkContentTypeKey)) != null && this.mManager.getAutoDownloadPolicy() == AdobeLibraryDownloadPolicyType.AdobeLibraryDownloadPolicyTypeManifestRenditionsAndAssets && this.mManager.shouldAutoDownloadType(str) && ((AdobeLibraryCompositeInternal) adobeLibraryComposite).shouldDownloadExternalAssetForRepresentation(adobeDCXNode)) {
                arrayList.add(adobeDCXNode.getNodeId());
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        this.mListLock.lock();
        map.put(elementId, arrayList);
        this.mListLock.unlock();
        boolean z3 = false;
        for (final String str2 : new ArrayList(arrayList)) {
            AdobeLibraryRepresentation representationWithId = adobeLibraryElement.getRepresentationWithId(str2);
            if (representationWithId != null) {
                ArrayList<AdobeNetworkHttpTaskHandle> arrayList2 = new ArrayList<>();
                final int i = this.mSessionId;
                synchronized (this) {
                    if (((AdobeLibraryCompositeInternal) adobeLibraryComposite).internalFilePathForRepresentation(representationWithId, new IAdobeGenericCompletionCallback<String>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.5
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(String str3) {
                            AdobeLibrarySyncManager.this.downloadExternalAssetCompletedForElement(elementId, str2, null, adobeLibraryComposite, z, i);
                        }
                    }, new IAdobeGenericErrorCallback<AdobeLibraryException>() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.6
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeLibraryException adobeLibraryException) {
                            AdobeLibrarySyncManager.this.downloadExternalAssetCompletedForElement(elementId, str2, adobeLibraryException, adobeLibraryComposite, z, i);
                        }
                    }, null, arrayList2)) {
                        z2 = true;
                        this.mActivePullRequests.put(String.format("%s:%s:%s", adobeLibraryComposite.getLibraryId(), elementId, str2), arrayList2.get(0));
                    } else {
                        z2 = z3;
                    }
                }
                z3 = z2;
            }
        }
        return z3;
    }

    void updateLibraryAndSendNotificationForComposite(AdobeDCXComposite adobeDCXComposite, String str) {
        AdobeLibraryComposite adobeLibraryCompositeInternal;
        AdobeLibraryComposite adobeLibraryComposite;
        List<AdobeDCXComponent> componentsOfNode;
        ArrayList<AdobeDCXComponent> arrayList;
        HashMap map;
        HashMap map2;
        AdobeLibraryComposite libraryWithId = this.mCollection.getLibraryWithId(str);
        if (libraryWithId != null) {
            ((AdobeLibraryCompositeInternal) libraryWithId).refreshWithComposite(adobeDCXComposite, this.mCollection.isPublic() ? libraryWithId.getLibraryId() : null);
            this.mListLock.lock();
            try {
                HashMap<String, ArrayList<AdobeDCXComponent>> map3 = this.mComponentsToPull.get(str);
                HashMap<String, String> map4 = this.mElementsAdded.get(str);
                HashMap<String, String> map5 = this.mElementsModified.get(str);
                HashMap<String, String> map6 = this.mElementsDeleted.get(str);
                if (map4 != null) {
                    HashMap map7 = new HashMap();
                    for (String str2 : map4.keySet()) {
                        ArrayList<AdobeDCXComponent> arrayList2 = map3.get(str2);
                        if (arrayList2 == null || arrayList2.isEmpty()) {
                            map7.put(str2, map4.get(str2));
                        }
                    }
                    Iterator it = map7.keySet().iterator();
                    while (it.hasNext()) {
                        map4.remove((String) it.next());
                    }
                    map = map7;
                } else {
                    map = null;
                }
                if (map5 != null) {
                    HashMap map8 = new HashMap();
                    for (String str3 : map5.keySet()) {
                        ArrayList<AdobeDCXComponent> arrayList3 = map3.get(str3);
                        if (arrayList3 == null || arrayList3.isEmpty()) {
                            ((AdobeLibraryCompositeInternal) libraryWithId).removeRenditionCacheForElement(str3);
                            map8.put(str3, map5.get(str3));
                        }
                    }
                    Iterator it2 = map8.keySet().iterator();
                    while (it2.hasNext()) {
                        map5.remove((String) it2.next());
                    }
                    map2 = map8;
                } else {
                    map2 = null;
                }
                map = map6 != null ? new HashMap(map6) : null;
                if (map6 != null) {
                    map6.clear();
                }
                this.mListLock.unlock();
                this.mManager.sendDelegateMessage("libraryWasUpdated", libraryWithId);
                if (map2 != null && map2.size() > 0) {
                    for (String str4 : map2.keySet()) {
                        if (!downloadRenditionsForElement(str4, libraryWithId, false) && isElementWithIdInElementTypesFilter(str4, libraryWithId)) {
                            this.mManager.sendDelegateMessage(ELEMENT_WAS_UPDATED, libraryWithId, str4, (String) map2.get(str4));
                        }
                    }
                }
                if (map != null && map.size() > 0) {
                    for (String str5 : map.keySet()) {
                        this.mManager.sendDelegateMessage("elementWasRemoved", libraryWithId, str5, (String) map.get(str5));
                    }
                }
                adobeLibraryComposite = libraryWithId;
                map = map;
            } finally {
            }
        } else {
            try {
                adobeLibraryCompositeInternal = new AdobeLibraryCompositeInternal(adobeDCXComposite, this.mCollection, this.mCollection.isPublic() ? str : null);
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e2);
                adobeLibraryCompositeInternal = libraryWithId;
            }
            if (adobeLibraryCompositeInternal != null && adobeLibraryCompositeInternal.getVersion() == 1) {
                this.mListLock.lock();
                try {
                    AdobeCollaborationType adobeCollaborationType = this.mCollection._collaborationStateForNewLibs.get(adobeLibraryCompositeInternal.getLibraryId());
                    if (adobeCollaborationType != null) {
                        ((AdobeLibraryCompositeInternal) adobeLibraryCompositeInternal).getDcxComposite().setCollaborationType(adobeCollaborationType);
                        this.mCollection._collaborationStateForNewLibs.remove(adobeLibraryCompositeInternal.getLibraryId());
                        try {
                            adobeDCXComposite.commitChanges();
                        } catch (AdobeDCXException e3) {
                            AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e3);
                        }
                    }
                    AdobeCollaborationRoleType adobeCollaborationRoleType = this.mCollection._collaborationRoleStateForNewLibs.get(adobeLibraryCompositeInternal.getLibraryId());
                    if (adobeCollaborationRoleType != null) {
                        adobeLibraryCompositeInternal.setCollaborationRole(adobeCollaborationRoleType);
                        this.mCollection._collaborationRoleStateForNewLibs.remove(adobeLibraryCompositeInternal.getLibraryId());
                        try {
                            adobeDCXComposite.commitChanges();
                        } catch (AdobeDCXException e4) {
                            AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e4);
                        }
                    }
                    this.mCollection.addLibrary(adobeLibraryCompositeInternal);
                    this.mListLock.unlock();
                    this.mManager.sendDelegateMessage("libraryWasAdded", adobeLibraryCompositeInternal);
                    map = new HashMap();
                    ArrayList<AdobeLibraryElement> allElements = adobeLibraryCompositeInternal.getAllElements();
                    HashMap<String, ArrayList<AdobeDCXComponent>> map9 = this.mComponentsToPull.get(str);
                    for (AdobeLibraryElement adobeLibraryElement : allElements) {
                        if (this.mManager.getAutoDownloadPolicy() != AdobeLibraryDownloadPolicyType.AdobeLibraryDownloadPolicyTypeManifestRenditionsAndAssets || (componentsOfNode = ((AdobeLibraryCompositeInternal) adobeLibraryCompositeInternal).getDcxComposite().getCurrent().getComponentsOfNode(adobeLibraryElement.getDCXNode())) == null || !componentsOfNode.isEmpty() || (arrayList = map9.get(adobeLibraryElement.getElementId())) == null || arrayList.isEmpty()) {
                            map.put(adobeLibraryElement.getElementId(), adobeLibraryElement.getType());
                        }
                    }
                } finally {
                }
            }
            adobeLibraryComposite = adobeLibraryCompositeInternal;
        }
        if (map != null && map.size() > 0) {
            for (String str6 : map.keySet()) {
                elementDownloadComplete(adobeLibraryComposite.getElementWithId(str6), (String) map.get(str6), adobeLibraryComposite, ELEMENT_WAS_ADDED, true);
            }
        }
    }

    void elementDownloadComplete(AdobeLibraryElement adobeLibraryElement, String str, AdobeLibraryComposite adobeLibraryComposite, String str2, boolean z) {
        if (!downloadRenditionsForElement(adobeLibraryElement != null ? adobeLibraryElement.getElementId() : null, adobeLibraryComposite, z) && !downloadExternalAssetsForElement(adobeLibraryElement, adobeLibraryComposite, z)) {
            if (str == null || this.mManager.isTypeInElementTypesFilter(str)) {
                AdobeLibraryManagerInternal adobeLibraryManagerInternal = this.mManager;
                String elementId = adobeLibraryElement != null ? adobeLibraryElement.getElementId() : null;
                if (str == null) {
                    str = adobeLibraryElement != null ? adobeLibraryElement.getType() : null;
                }
                adobeLibraryManagerInternal.sendDelegateMessage(str2, adobeLibraryComposite, elementId, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pullComponentsCompletedForElement(String str, AdobeDCXComposite adobeDCXComposite, String str2, AdobeDCXCompositeBranch adobeDCXCompositeBranch, boolean z, AdobeCSDKException adobeCSDKException) {
        boolean z2;
        boolean z3 = false;
        if (adobeDCXCompositeBranch == null) {
            if (adobeCSDKException == null) {
                z2 = false;
            } else {
                ArrayList<AdobeCSDKException> arrayList = new ArrayList<>();
                boolean zHandlePullErrorForComponents = handlePullErrorForComponents(adobeCSDKException, str, str2, arrayList);
                if (!arrayList.isEmpty()) {
                    this.mManager.sendDelegateMessage(ON_SYNC_ERROR, this.mCollection.getLibraryWithId(str2), arrayList.get(0));
                }
                z2 = zHandlePullErrorForComponents;
                z3 = true;
            }
        } else {
            try {
                adobeDCXComposite.commitChanges();
                z2 = false;
            } catch (AdobeDCXException e2) {
                AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "Commit after pull components failed for composite:" + adobeDCXComposite.getCompositeId(), e2);
                z2 = false;
            }
        }
        this.mListLock.lock();
        try {
            HashMap<String, String> map = this.mElementsAdded.get(str2);
            HashMap<String, String> map2 = this.mElementsModified.get(str2);
            HashMap<String, ArrayList<AdobeDCXComponent>> map3 = this.mComponentsToPull.get(str2);
            if (!z2) {
                map3.remove(str);
            }
            this.mListLock.unlock();
            AdobeLibraryComposite libraryWithId = this.mCollection.getLibraryWithId(str2);
            if (!z3 && libraryWithId != null) {
                AdobeLibraryElement elementWithId = libraryWithId.getElementWithId(str);
                if (z || isNewElementAdded(str, str2)) {
                    elementDownloadComplete(elementWithId, null, libraryWithId, ELEMENT_WAS_ADDED, true);
                    try {
                        this.mListLock.lock();
                        if (map != null) {
                            map.remove(str);
                        }
                    } finally {
                    }
                } else if (isElementModified(str, str2)) {
                    ((AdobeLibraryCompositeInternal) libraryWithId).removeRenditionCacheForElement(str);
                    elementDownloadComplete(elementWithId, null, libraryWithId, ELEMENT_WAS_UPDATED, false);
                    this.mListLock.lock();
                    if (map2 != null) {
                        try {
                            map2.remove(str);
                        } finally {
                        }
                    }
                    this.mListLock.unlock();
                } else {
                    elementDownloadComplete(elementWithId, null, libraryWithId, ELEMENT_WAS_UPDATED, false);
                }
            }
            this.mListLock.lock();
            try {
                if (map3.size() == 0 && str2 != null) {
                    this.mComponentsToPull.remove(str2);
                }
                synchronized (this) {
                    this.mActivePullRequests.remove(str);
                }
                if (z2) {
                    downloadUpdatedComponents(adobeDCXComposite, str2, false);
                }
                checkSyncComplete(true);
            } finally {
            }
        } finally {
        }
    }

    public AdobeNetworkHttpTaskHandle downloadRepresentation(final AdobeLibraryRepresentation adobeLibraryRepresentation, final String str, final AdobeDCXComposite adobeDCXComposite, final String str2, final IAdobeGenericRequestCallback<String, AdobeCSDKException> iAdobeGenericRequestCallback) {
        final ArrayList<AdobeLibraryException> arrayList = new ArrayList<>();
        if (!this.mManager.canSyncWithError(arrayList)) {
            this.mRequestExecutor.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.7
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeGenericRequestCallback.onError(arrayList.get(0));
                }
            });
            return null;
        }
        final AdobeDCXComponent component = adobeLibraryRepresentation.getComponent();
        final int i = this.mSessionId;
        final AdobeLibraryManagerInternal adobeLibraryManagerInternal = this.mManager;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(component);
        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleDownloadComponentsWithPriority = AdobeDCXCompositeXfer.downloadComponentsWithPriority(arrayList2, adobeDCXComposite.getCurrent(), this.mSession, new IAdobeDCXPullCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.8
            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
            public void onSuccess(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
                synchronized (adobeLibraryManagerInternal) {
                    AdobeLibrarySyncManager.this.mActiveDownloadRequests.remove(component.getComponentId());
                }
                if (i == AdobeLibrarySyncManager.this.mSessionId) {
                    try {
                        adobeDCXComposite.commitChanges();
                    } catch (AdobeDCXException e2) {
                        AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e2);
                    }
                    final String pathForComponent = null;
                    try {
                        pathForComponent = adobeDCXComposite.getCurrent().getPathForComponent(component);
                    } catch (AdobeDCXException e3) {
                        AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e3);
                    }
                    AdobeLibrarySyncManager.this.mRequestExecutor.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            iAdobeGenericRequestCallback.onCompletion(pathForComponent);
                        }
                    });
                }
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
            public void onFailure(AdobeDCXCompositeBranch adobeDCXCompositeBranch, final AdobeCSDKException adobeCSDKException) {
                synchronized (adobeLibraryManagerInternal) {
                    AdobeLibrarySyncManager.this.mActiveDownloadRequests.remove(component.getComponentId());
                }
                if (i == AdobeLibrarySyncManager.this.mSessionId && adobeCSDKException != null) {
                    ArrayList arrayList3 = new ArrayList();
                    boolean zHandlePullErrorForComponents = AdobeLibrarySyncManager.this.handlePullErrorForComponents(adobeCSDKException, str, str2, arrayList3);
                    if (!arrayList3.isEmpty()) {
                        AdobeLibrarySyncManager.this.mRequestExecutor.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.8.2
                            @Override // java.lang.Runnable
                            public void run() {
                                iAdobeGenericRequestCallback.onError(adobeCSDKException);
                            }
                        });
                    }
                    if (zHandlePullErrorForComponents) {
                        AdobeLibrarySyncManager.this.downloadRepresentation(adobeLibraryRepresentation, str, adobeDCXComposite, str2, iAdobeGenericRequestCallback);
                    }
                }
            }
        }, null, this.mPullLibsPriority);
        synchronized (adobeLibraryManagerInternal) {
            this.mActiveDownloadRequests.put(component.getComponentId(), adobeNetworkHttpTaskHandleDownloadComponentsWithPriority);
        }
        return adobeNetworkHttpTaskHandleDownloadComponentsWithPriority;
    }

    private AdobeDCXCompositeMutableBranch mergePulledBranchWithCurrent(AdobeDCXComposite adobeDCXComposite, AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str) throws AdobeLibraryException {
        this.mListLock.lock();
        AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranchMergePulledBranchWithCurrent = null;
        try {
            final HashMap<String, String> mapElementsAddedForLibrary = elementsAddedForLibrary(str);
            final HashMap<String, String> mapElementsModifiedForLibrary = elementsModifiedForLibrary(str);
            final HashMap<String, String> mapElementsDeletedForLibrary = elementsDeletedForLibrary(str);
            try {
                adobeDCXCompositeMutableBranchMergePulledBranchWithCurrent = AdobeLibraryMerger.mergePulledBranchWithCurrent(adobeDCXComposite, adobeDCXCompositeBranch, new IAdobeLibraryMergerCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.9
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                    public boolean onElementAdded(String str2, String str3) {
                        mapElementsAddedForLibrary.put(str2, str3);
                        return true;
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                    public boolean onElementModified(String str2, String str3) {
                        mapElementsModifiedForLibrary.put(str2, str3);
                        return true;
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                    public boolean onElementDeleted(String str2, String str3) {
                        mapElementsDeletedForLibrary.put(str2, str3);
                        return true;
                    }
                }, this.mManager.getElementTypesFilter(), this.mCollection);
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e2);
            }
            return adobeDCXCompositeMutableBranchMergePulledBranchWithCurrent;
        } finally {
            this.mListLock.unlock();
        }
    }

    private void determineChangesInPulledBranch(AdobeDCXComposite adobeDCXComposite, AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str) {
        this.mListLock.lock();
        try {
            final HashMap<String, String> mapElementsAddedForLibrary = elementsAddedForLibrary(str);
            final HashMap<String, String> mapElementsModifiedForLibrary = elementsModifiedForLibrary(str);
            final HashMap<String, String> mapElementsDeletedForLibrary = elementsDeletedForLibrary(str);
            AdobeLibraryMerger.determineChangesInBranch(adobeDCXComposite, adobeDCXCompositeBranch, null, new IAdobeLibraryMergerCallback() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.10
                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                public boolean onElementAdded(String str2, String str3) {
                    mapElementsAddedForLibrary.put(str2, str3);
                    return true;
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                public boolean onElementModified(String str2, String str3) {
                    mapElementsModifiedForLibrary.put(str2, str3);
                    return true;
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                public boolean onElementDeleted(String str2, String str3) {
                    mapElementsDeletedForLibrary.put(str2, str3);
                    return true;
                }
            }, this.mManager.getElementTypesFilter());
        } finally {
            this.mListLock.unlock();
        }
    }

    boolean componentChanged(AdobeDCXComponent adobeDCXComponent, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXCompositeBranch adobeDCXCompositeBranch2) {
        String pathForComponent = null;
        AdobeDCXComponent componentWithId = adobeDCXCompositeBranch2 != null ? adobeDCXCompositeBranch2.getComponentWithId(adobeDCXComponent.getComponentId()) : null;
        if (adobeDCXCompositeBranch != null) {
            try {
                pathForComponent = adobeDCXCompositeBranch.getPathForComponent(adobeDCXComponent);
            } catch (AdobeDCXException e2) {
                AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e2);
            }
        }
        if (adobeDCXCompositeBranch != null && pathForComponent != null && componentWithId != null && componentWithId.getEtag().equals(adobeDCXComponent.getEtag())) {
            return false;
        }
        return true;
    }

    void hasLibraryChangedOnServer(final AdobeLibraryComposite adobeLibraryComposite, final IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback, @Nullable Handler handler) {
        this.mSession.getHeaderInfoForManifestOfComposite(((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite(), new IAdobeDCXResourceRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.11
            boolean hasChanged = true;

            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXResourceRequestCompletionHandler
            public void onCompletion(AdobeStorageResourceItem adobeStorageResourceItem, AdobeCSDKException adobeCSDKException) {
                if (adobeStorageResourceItem != null && adobeCSDKException == null) {
                    if (adobeStorageResourceItem.etag.equals(((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().getCurrent().getEtag())) {
                        this.hasChanged = false;
                    }
                    iAdobeGenericCompletionCallback.onCompletion(Boolean.valueOf(this.hasChanged));
                    return;
                }
                iAdobeGenericErrorCallback.onError(adobeCSDKException);
            }
        }, handler);
    }

    void queueLibraryForPull(String str) {
        this.mListLock.lock();
        try {
            if (this.mActivePullRequests.get(str) == null && !this.mLibsToPull.contains(str) && !this.mConflictedLibs.contains(str) && !this.mLibsToLeave.contains(str)) {
                this.mLibsToPull.add(str);
            }
        } finally {
            this.mListLock.unlock();
        }
    }

    public void queueLibraryForDelete(String str) {
        this.mListLock.lock();
        try {
            if (!this.mLibsToLeave.contains(str)) {
                this.mLibsToPull.remove(str);
                this.mLibsToPush.remove(str);
                this.mConflictedLibs.remove(str);
                this.mComponentsToPull.remove(str);
                this.mLibsPendingDelete.remove(str);
                this.mLibsToDelete.add(str);
            }
        } finally {
            this.mListLock.unlock();
        }
    }

    boolean isLibraryQueuedForDelete(String str) {
        this.mListLock.lock();
        if (this.mLibsToDelete.contains(str)) {
            this.mListLock.unlock();
            return true;
        }
        this.mListLock.unlock();
        return false;
    }

    void queueLibraryForLeave(String str) {
        this.mListLock.lock();
        try {
            this.mLibsToPull.remove(str);
            this.mLibsToPush.remove(str);
            this.mConflictedLibs.remove(str);
            this.mComponentsToPull.remove(str);
            this.mLibsPendingDelete.remove(str);
            this.mLibsToDelete.remove(str);
            this.mLibsToLeave.add(str);
        } finally {
            this.mListLock.unlock();
        }
    }

    void removeLibraryFromAllQueues(String str) {
        this.mListLock.lock();
        try {
            this.mLibsToPull.remove(str);
            this.mLibsToPush.remove(str);
            this.mConflictedLibs.remove(str);
            this.mComponentsToPull.remove(str);
            this.mLibsPendingDelete.remove(str);
            this.mLibsToDelete.remove(str);
        } finally {
            this.mListLock.unlock();
        }
    }

    public boolean removeLibraryFromSyncQueues(String str) {
        synchronized (this) {
            this.mListLock.lock();
            try {
                if (this.mActivePullRequests.get(str) != null || this.mActivePushRequests.get(str) != null) {
                    return false;
                }
                this.mLibsToPull.remove(str);
                this.mLibsToPush.remove(str);
                return true;
            } finally {
                this.mListLock.unlock();
            }
        }
    }

    void addLibraryToPendingDelete(String str) {
        this.mListLock.lock();
        try {
            this.mLibsPendingDelete.add(str);
        } finally {
            this.mListLock.unlock();
        }
    }

    void removeLibraryFomPendingDelete(String str) {
        this.mListLock.lock();
        try {
            this.mLibsPendingDelete.remove(str);
        } finally {
            this.mListLock.unlock();
        }
    }

    void queueLibraryForPush(String str) {
        synchronized (this) {
            this.mListLock.lock();
            try {
                if (this.mActivePullRequests.get(str) == null && this.mActivePushRequests.get(str) == null && !this.mLibsToPull.contains(str) && !this.mConflictedLibs.contains(str) && !this.mLibsToLeave.contains(str)) {
                    int iIndexOf = this.mLibsToPush.indexOf(str);
                    if (iIndexOf != -1) {
                        this.mLibsToPush.remove(iIndexOf);
                    }
                    this.mLibsToPush.add(0, str);
                    this.mListLock.unlock();
                    if (this.mManager.shouldSyncOnCommit() && !this.mSyncInProgress) {
                        doPushAndPull(false, false);
                    }
                }
            } finally {
                this.mListLock.unlock();
            }
        }
    }

    void cancelPushForLibrary(String str) {
        this.mListLock.lock();
        try {
            if (this.mLibsToPush.contains(str)) {
                this.mLibsToPush.remove(str);
            }
            if (this.mInProgressPushLibs.contains(str)) {
                synchronized (this) {
                    AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandle = this.mActivePushRequests.get(str);
                    if (adobeNetworkHttpTaskHandle != null) {
                        adobeNetworkHttpTaskHandle.cancel();
                        this.mActivePushRequests.remove(str);
                    }
                    this.mInProgressPushLibs.remove(str);
                }
            }
        } finally {
            this.mListLock.unlock();
        }
    }

    void queueChangedLibrariesForPush() {
        this.mListLock.lock();
        try {
            for (AdobeLibraryComposite adobeLibraryComposite : this.mCollection.getLibraries()) {
                AdobeDCXComposite dcxComposite = ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite();
                if (dcxComposite != null && dcxComposite.getCurrent() != null && dcxComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified) && !this.mLibsPendingDelete.contains(adobeLibraryComposite.getLibraryId()) && !this.mLibsToPush.contains(adobeLibraryComposite.getLibraryId()) && !this.mLibsToDelete.contains(adobeLibraryComposite.getLibraryId())) {
                    this.mLibsToPush.add(adobeLibraryComposite.getLibraryId());
                }
            }
            for (AdobeLibraryComposite adobeLibraryComposite2 : this.mCollection._deletedLibraries) {
                AdobeDCXComposite dcxComposite2 = ((AdobeLibraryCompositeInternal) adobeLibraryComposite2).getDcxComposite();
                if (dcxComposite2 != null && dcxComposite2.getCurrent() != null) {
                    if (!$assertionsDisabled && !dcxComposite2.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete)) {
                        throw new AssertionError("Library in local deleted list not in pending delete state!");
                    }
                    if (adobeLibraryComposite2.getCollaboration() != AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER && !this.mLibsToPush.contains(adobeLibraryComposite2.getLibraryId())) {
                        this.mLibsToPush.add(adobeLibraryComposite2.getLibraryId());
                    }
                }
            }
        } finally {
            this.mListLock.unlock();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x013e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean determineComponentsToPullForComposite(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r15, java.lang.String r16, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch r17) {
        /*
            Method dump skipped, instruction units count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.determineComponentsToPullForComposite(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite, java.lang.String, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean isPushOrPullPendingForLibrary(java.lang.String r3) {
        /*
            r2 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r2.mListLock
            r0.lock()
            java.util.ArrayList<java.lang.String> r0 = r2.mLibsToPull     // Catch: java.lang.Throwable -> L36
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L2d
            java.util.ArrayList<java.lang.String> r0 = r2.mLibsToPush     // Catch: java.lang.Throwable -> L36
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L2d
            java.util.ArrayList<java.lang.String> r0 = r2.mConflictedLibs     // Catch: java.lang.Throwable -> L36
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L2d
            java.util.ArrayList<java.lang.String> r0 = r2.mLibsToDelete     // Catch: java.lang.Throwable -> L36
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L36
            if (r0 != 0) goto L2d
            java.util.ArrayList<java.lang.String> r0 = r2.mLibsPendingDelete     // Catch: java.lang.Throwable -> L36
            boolean r0 = r0.contains(r3)     // Catch: java.lang.Throwable -> L36
            if (r0 == 0) goto L34
        L2d:
            r0 = 1
        L2e:
            java.util.concurrent.locks.ReentrantLock r1 = r2.mListLock
            r1.unlock()
            return r0
        L34:
            r0 = 0
            goto L2e
        L36:
            r0 = move-exception
            java.util.concurrent.locks.ReentrantLock r1 = r2.mListLock
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.isPushOrPullPendingForLibrary(java.lang.String):boolean");
    }

    void revertLibrary(AdobeLibraryComposite adobeLibraryComposite) throws AdobeDCXException {
        this.mListLock.lock();
        try {
            this.mLibsToPull.remove(adobeLibraryComposite.getLibraryId());
            this.mLibsToPush.remove(adobeLibraryComposite.getLibraryId());
            this.mListLock.unlock();
            ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().revertCurrentBranchToBase();
        } catch (Throwable th) {
            this.mListLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkComponentsToPullForAllUnchangedLibraries() {
        boolean z = false;
        for (AdobeLibraryComposite adobeLibraryComposite : new ArrayList(this.mCollection.getLibraries())) {
            if ((this.mAssetDownloadLibraryFilter == null || (this.mAssetDownloadLibraryFilter.contains(adobeLibraryComposite.getLibraryId()) && !isPushOrPullPendingForLibrary(adobeLibraryComposite.getLibraryId()))) && determineComponentsToPullForComposite(((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite(), adobeLibraryComposite.getLibraryId(), null)) {
                z = true;
                downloadUpdatedComponents(((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite(), adobeLibraryComposite.getLibraryId(), false);
            }
            z = z;
        }
        return z;
    }

    private void downloadUpdatedComponents(final AdobeDCXComposite adobeDCXComposite, final String str, final boolean z) {
        HashMap<String, ArrayList<AdobeDCXComponent>> map = this.mComponentsToPull.get(str);
        if (map != null && map.size() > 0) {
            ArrayList<String> allKeys = getAllKeys(map);
            final int i = this.mSessionId;
            for (final String str2 : allKeys) {
                if (this.mManager.canSync()) {
                    ArrayList<AdobeDCXComponent> arrayList = map.get(str2);
                    if (arrayList != null && !arrayList.isEmpty()) {
                        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleDownloadComponentsWithPriority = AdobeDCXCompositeXfer.downloadComponentsWithPriority(arrayList, adobeDCXComposite.getCurrent(), (AdobeStorageSession) this.mSession, new IAdobeDCXPullCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.12
                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
                            public void onSuccess(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
                                if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                    AdobeLibrarySyncManager.this.pullComponentsCompletedForElement(str2, adobeDCXComposite, str, adobeDCXCompositeBranch, z, null);
                                }
                            }

                            @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
                            public void onFailure(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeCSDKException adobeCSDKException) {
                                if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                    AdobeLibrarySyncManager.this.pullComponentsCompletedForElement(str2, adobeDCXComposite, str, adobeDCXCompositeBranch, z, adobeCSDKException);
                                }
                            }
                        }, null, this.mPullLibsPriority);
                        synchronized (this) {
                            this.mActivePullRequests.put(str2, adobeNetworkHttpTaskHandleDownloadComponentsWithPriority);
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    static ArrayList<String> getAllKeys(HashMap<String, ArrayList<AdobeDCXComponent>> map) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Map.Entry<String, ArrayList<AdobeDCXComponent>>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getKey());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:157:0x025b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void pullCompletedForComposite(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r12, java.lang.String r13, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch r14, com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException r15) throws com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException {
        /*
            Method dump skipped, instruction units count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.pullCompletedForComposite(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite, java.lang.String, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch, com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void downloadUpdatedLibraries(boolean z) throws AdobeDCXException {
        AdobeDCXException adobeDCXException;
        final AdobeDCXComposite adobeDCXCompositeNewCompositeWithHref;
        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandlePullCompositeWithPriority;
        ArrayList<String> arrayList = z ? this.mConflictedLibs : this.mLibsToPull;
        while (!arrayList.isEmpty() && this.mManager.canSync()) {
            this.mListLock.lock();
            try {
                final String str = arrayList.get(0);
                arrayList.remove(0);
                this.mInProgressPullLibs.add(str);
                this.mListLock.unlock();
                String strPathToLibrary = this.mCollection.pathToLibrary(str);
                String strHrefForLibrary = hrefForLibrary(str);
                try {
                    adobeDCXCompositeNewCompositeWithHref = AdobeDCXComposite.compositeStoredAt(strPathToLibrary, null);
                    adobeDCXException = null;
                } catch (AdobeDCXException e2) {
                    adobeDCXException = e2;
                    adobeDCXCompositeNewCompositeWithHref = null;
                }
                if (adobeDCXCompositeNewCompositeWithHref == null || adobeDCXException != null) {
                    adobeDCXCompositeNewCompositeWithHref = AdobeDCXComposite.newCompositeWithHref(URI.create(strHrefForLibrary), str, strPathToLibrary, null);
                }
                final int i = this.mSessionId;
                if ((this.mManager.getElementTypesFilter() == null || this.mManager.getElementTypesFilter().isEmpty()) && this.mManager.getAutoDownloadPolicy() == null && this.mManager.getAutoDownloadPolicy() == AdobeLibraryDownloadPolicyType.AdobeLibraryDownloadPolicyTypeManifestRenditionsAndAssets) {
                    adobeNetworkHttpTaskHandlePullCompositeWithPriority = AdobeDCXCompositeXfer.pullCompositeWithPriority(adobeDCXCompositeNewCompositeWithHref, this.mSession, new IAdobeDCXPullCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.13
                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
                        public void onSuccess(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
                            if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                try {
                                    AdobeLibrarySyncManager.this.pullCompletedForComposite(adobeDCXCompositeNewCompositeWithHref, str, adobeDCXCompositeBranch, null);
                                } catch (AdobeCSDKException e3) {
                                    AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e3);
                                }
                            }
                        }

                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
                        public void onFailure(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeCSDKException adobeCSDKException) {
                            if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                try {
                                    AdobeLibrarySyncManager.this.pullCompletedForComposite(adobeDCXCompositeNewCompositeWithHref, str, adobeDCXCompositeBranch, adobeCSDKException);
                                } catch (AdobeCSDKException e3) {
                                    AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e3);
                                }
                            }
                        }
                    }, null, this.mPullLibsPriority);
                } else {
                    adobeNetworkHttpTaskHandlePullCompositeWithPriority = AdobeDCXCompositeXfer.pullMinimalCompositeWithPriority(adobeDCXCompositeNewCompositeWithHref, this.mSession, new IAdobeDCXPullCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.14
                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
                        public void onSuccess(AdobeDCXCompositeBranch adobeDCXCompositeBranch) {
                            if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                try {
                                    AdobeLibrarySyncManager.this.pullCompletedForComposite(adobeDCXCompositeNewCompositeWithHref, str, adobeDCXCompositeBranch, null);
                                } catch (AdobeCSDKException e3) {
                                    AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e3);
                                }
                            }
                        }

                        @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXPullCompletionHandler
                        public void onFailure(AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeCSDKException adobeCSDKException) {
                            if (i == AdobeLibrarySyncManager.this.mSessionId) {
                                try {
                                    AdobeLibrarySyncManager.this.pullCompletedForComposite(adobeDCXCompositeNewCompositeWithHref, str, adobeDCXCompositeBranch, adobeCSDKException);
                                } catch (AdobeCSDKException e3) {
                                    AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e3);
                                }
                            }
                        }
                    }, null, this.mPullLibsPriority);
                }
                synchronized (this) {
                    if (!$assertionsDisabled && this.mActivePullRequests.get(str) != null) {
                        throw new AssertionError("Already downloading library " + str);
                    }
                    this.mActivePullRequests.put(str, adobeNetworkHttpTaskHandlePullCompositeWithPriority);
                }
            } catch (Throwable th) {
                this.mListLock.unlock();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deletePendingLibraries() {
        boolean zDeleteLibrary;
        while (!this.mLibsToDelete.isEmpty()) {
            this.mListLock.lock();
            try {
                String str = this.mLibsToDelete.get(0);
                this.mLibsToDelete.remove(0);
                this.mListLock.unlock();
                AdobeLibraryComposite libraryWithId = this.mCollection.getLibraryWithId(str);
                if (libraryWithId != null) {
                    AdobeCollaborationType collaboration = libraryWithId.getCollaboration();
                    AdobeLibraryException adobeLibraryException = null;
                    try {
                        zDeleteLibrary = this.mCollection.deleteLibrary(libraryWithId, false);
                    } catch (AdobeLibraryException e2) {
                        adobeLibraryException = e2;
                        zDeleteLibrary = false;
                    }
                    if (!zDeleteLibrary) {
                        this.mManager.sendDelegateMessage(ON_SYNC_ERROR, libraryWithId, adobeLibraryException);
                    } else if (collaboration == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
                        this.mManager.sendDelegateMessage("libraryWasUnshared", str);
                    } else {
                        this.mManager.sendDelegateMessage("libraryWasDeleted", str);
                    }
                }
            } catch (Throwable th) {
                this.mListLock.unlock();
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void leavePendingLibraries() {
        while (!this.mLibsToLeave.isEmpty()) {
            this.mListLock.lock();
            try {
                final String str = this.mLibsToLeave.get(0);
                this.mLibsToLeave.remove(0);
                this.mListLock.unlock();
                final AdobeLibraryComposite libraryWithId = this.mCollection.getLibraryWithId(str);
                ((AdobeStorageSession) this.mSession).leaveSharedComposite(((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite(), new IAdobeDCXCompositeRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.15
                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
                    public void onCompletion(AdobeDCXComposite adobeDCXComposite) {
                        completionHandler(null);
                    }

                    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXCompositeRequestCompletionHandler
                    public void onError(AdobeCSDKException adobeCSDKException) {
                        completionHandler(adobeCSDKException);
                    }

                    private void completionHandler(AdobeCSDKException adobeCSDKException) {
                        AdobeLibraryException adobeLibraryException;
                        boolean zDeleteLibrary;
                        if (adobeCSDKException != null) {
                            ArrayList arrayList = new ArrayList();
                            if (!AdobeLibrarySyncManager.this.handleLeaveErrorForComposite(adobeCSDKException, str, arrayList)) {
                                AdobeLibrarySyncManager.this.mManager.sendDelegateMessage(AdobeLibrarySyncManager.ON_SYNC_ERROR, libraryWithId, (AdobeCSDKException) arrayList.get(0));
                            } else {
                                AdobeLibrarySyncManager.this.mListLock.lock();
                                try {
                                    AdobeLibrarySyncManager.this.mLibsToLeave.add(str);
                                    return;
                                } finally {
                                    AdobeLibrarySyncManager.this.mListLock.unlock();
                                }
                            }
                        }
                        try {
                            zDeleteLibrary = AdobeLibrarySyncManager.this.mCollection.deleteLibrary(libraryWithId, false);
                            adobeLibraryException = null;
                        } catch (AdobeLibraryException e2) {
                            adobeLibraryException = e2;
                            zDeleteLibrary = false;
                        }
                        if (!zDeleteLibrary) {
                            AdobeLibrarySyncManager.this.mManager.sendDelegateMessage(AdobeLibrarySyncManager.ON_SYNC_ERROR, libraryWithId, adobeLibraryException);
                        }
                    }
                }, null);
            } catch (Throwable th) {
                this.mListLock.unlock();
                throw th;
            }
        }
    }

    void doSync(boolean z) {
        if (!this.mSyncInProgress) {
            this.mForceResyncPending = z ? -1 : 0;
            this.mListLock.lock();
            try {
                this.mSyncErrorCountsForResources.clear();
                this.mListLock.unlock();
                queueChangedLibrariesForPush();
                doPushAndPull(true, true);
            } catch (Throwable th) {
                this.mListLock.unlock();
                throw th;
            }
        }
    }

    void doPushAndPull(final boolean z, final boolean z2) {
        if (this.mManager.canSync() && this.mRequestExecutor != null) {
            this.mRequestExecutor.execute(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager.16
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (this) {
                        if (!this.mSyncInProgress) {
                            if (AdobeLibrarySyncManager.this.mRequestExecutor != null && !AdobeLibrarySyncManager.this.mManager.getUnInitialized()) {
                                if (z2) {
                                    this.checkComponentsToPullForAllUnchangedLibraries();
                                }
                                if (this.mLibsToPush.isEmpty() && this.mLibsToPull.isEmpty() && this.mLibsToDelete.isEmpty() && this.mConflictedLibs.isEmpty() && this.mLibsToLeave.isEmpty() && !this.hasActivePulls() && !this.hasActivePushes()) {
                                    if (!this.mSyncInProgress && z) {
                                        this.mLastSyncTime = new Date();
                                        AdobeLibrarySyncManager.this.sendSyncCompleted();
                                    }
                                    return;
                                }
                                this.mSyncInProgress = true;
                                this.deletePendingLibraries();
                                this.leavePendingLibraries();
                                this.uploadChangedLibraries();
                                try {
                                    this.downloadUpdatedLibraries(true);
                                    this.downloadUpdatedLibraries(false);
                                } catch (Exception e2) {
                                    AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e2);
                                    AdobeLogger.log(Level.DEBUG, AdobeLibrarySyncManager.class.getSimpleName(), null, e2);
                                }
                                AdobeLibrarySyncManager.this.checkSyncComplete(false);
                            }
                        }
                    }
                }
            });
        }
    }

    boolean incrementRetryStatusWithLibrary(String str, String str2) {
        Object[] objArr = new Object[2];
        objArr[0] = str;
        if (str2 == null) {
            str2 = "";
        }
        objArr[1] = str2;
        String str3 = String.format("%s-%s", objArr);
        this.mListLock.lock();
        try {
            int iIntValue = this.mSyncErrorCountsForResources.containsKey(str3) ? this.mSyncErrorCountsForResources.get(str3).intValue() : 0;
            this.mSyncErrorCountsForResources.put(str3, Integer.valueOf(iIntValue + 1));
            this.mListLock.unlock();
            return iIntValue <= 5;
        } catch (Throwable th) {
            this.mListLock.unlock();
            throw th;
        }
    }

    boolean handlePushErrorForComposite(AdobeDCXComposite adobeDCXComposite, String str, AdobeCSDKException adobeCSDKException, Boolean[] boolArr, Boolean[] boolArr2) throws AdobeCSDKException {
        if (!this.mManager.canSync()) {
            return true;
        }
        if (adobeCSDKException instanceof AdobeAssetException) {
            switch (((AdobeAssetException) adobeCSDKException).getErrorCode()) {
                case AdobeAssetErrorConflictingChanges:
                    boolArr[0] = true;
                    return false;
                case AdobeAssetErrorFileReadFailure:
                    throw adobeCSDKException;
                case AdobeAssetErrorUnexpectedResponse:
                    boolArr[0] = true;
                    return false;
                case AdobeAssetErrorForbiddenRequest:
                    boolArr2[0] = true;
                    return false;
                case AdobeAssetErrorExceededQuota:
                    throw adobeCSDKException;
                case AdobeAssetErrorOffline:
                    boolean zIncrementRetryStatusWithLibrary = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary) {
                        throw adobeCSDKException;
                    }
                    return zIncrementRetryStatusWithLibrary;
                default:
                    boolean zIncrementRetryStatusWithLibrary2 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary2) {
                        throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncUnexpectedError, adobeCSDKException, null, str);
                    }
                    if ($assertionsDisabled) {
                        return zIncrementRetryStatusWithLibrary2;
                    }
                    throw new AssertionError("Push Library Error - Unknown error:" + adobeCSDKException + " " + adobeCSDKException.getDescription());
            }
        }
        if (adobeCSDKException instanceof AdobeNetworkException) {
            switch (((AdobeNetworkException) adobeCSDKException).getErrorCode()) {
                case AdobeNetworkErrorCancelled:
                    boolean zIncrementRetryStatusWithLibrary3 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary3) {
                        throw adobeCSDKException;
                    }
                    return zIncrementRetryStatusWithLibrary3;
                case AdobeNetworkErrorServiceDisconnected:
                    boolean zIncrementRetryStatusWithLibrary4 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary4) {
                        throw adobeCSDKException;
                    }
                    AdobeNetworkHttpService serviceForSchemaId = ((AdobeStorageSession) this.mSession).getServiceForSchemaId("libraries");
                    if (serviceForSchemaId != null) {
                        serviceForSchemaId.reconnect();
                    }
                    return zIncrementRetryStatusWithLibrary4;
                case AdobeNetworkErrorOffline:
                case AdobeNetworkErrorNetworkFailure:
                    boolean zIncrementRetryStatusWithLibrary5 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary5) {
                        throw adobeCSDKException;
                    }
                    return zIncrementRetryStatusWithLibrary5;
                case AdobeNetworkErrorRequestForbidden:
                    if (adobeDCXComposite.getBase() != null) {
                        boolArr2[0] = true;
                        return false;
                    }
                    break;
                case AdobeNetworkErrorAuthenticationFailed:
                    break;
                default:
                    boolean zIncrementRetryStatusWithLibrary6 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary6) {
                        throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncUnexpectedError, adobeCSDKException, null, str);
                    }
                    if ($assertionsDisabled) {
                        return zIncrementRetryStatusWithLibrary6;
                    }
                    throw new AssertionError("Push Library Error - Unknown error: " + adobeCSDKException + " " + adobeCSDKException.getDescription());
            }
            this.mManager.setSyncSuspendedDueToAuthenticationError(true);
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncNotAvailableDueToUserSession, adobeCSDKException, null, str);
        }
        if (adobeCSDKException instanceof AdobeDCXException) {
            switch (((AdobeDCXException) adobeCSDKException).getErrorCode()) {
                case AdobeDCXErrorCompositeAlreadyExists:
                    return false;
                case AdobeDCXErrorUnknownComposite:
                case AdobeDCXErrorDeletedComposite:
                    if (adobeDCXComposite == null || adobeDCXComposite.getCurrent() == null) {
                        queueLibraryForDelete(str);
                        return false;
                    }
                    try {
                        adobeDCXComposite.resetBinding();
                        break;
                    } catch (AdobeDCXException e2) {
                        AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e2);
                    }
                    this.mManager.handleDeleteLibraryWithId(str, this.mCollection);
                    return false;
                default:
                    boolean zIncrementRetryStatusWithLibrary7 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary7) {
                        throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncUnexpectedError, adobeCSDKException, null, str);
                    }
                    if ($assertionsDisabled) {
                        return zIncrementRetryStatusWithLibrary7;
                    }
                    throw new AssertionError("Push Library Error: " + adobeCSDKException + " " + adobeCSDKException.getDescription());
            }
        }
        boolean zIncrementRetryStatusWithLibrary8 = incrementRetryStatusWithLibrary(str, null);
        if (!zIncrementRetryStatusWithLibrary8) {
            throw adobeCSDKException;
        }
        if ($assertionsDisabled) {
            return zIncrementRetryStatusWithLibrary8;
        }
        throw new AssertionError("Push Library Error - Unknown error: " + adobeCSDKException + " " + adobeCSDKException.getDescription());
    }

    private boolean handlePullErrorForComposite(AdobeDCXComposite adobeDCXComposite, String str, AdobeCSDKException adobeCSDKException, ArrayList<AdobeCSDKException> arrayList) {
        if (!this.mManager.canSync()) {
            return true;
        }
        if (adobeCSDKException instanceof AdobeNetworkException) {
            switch (((AdobeNetworkException) adobeCSDKException).getErrorCode()) {
                case AdobeNetworkErrorCancelled:
                    boolean zIncrementRetryStatusWithLibrary = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary) {
                        arrayList.add(adobeCSDKException);
                        return zIncrementRetryStatusWithLibrary;
                    }
                    return zIncrementRetryStatusWithLibrary;
                case AdobeNetworkErrorServiceDisconnected:
                    boolean zIncrementRetryStatusWithLibrary2 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary2) {
                        arrayList.add(adobeCSDKException);
                        return zIncrementRetryStatusWithLibrary2;
                    }
                    AdobeNetworkHttpService serviceForSchemaId = getSession().getServiceForSchemaId("libraries");
                    if (serviceForSchemaId != null) {
                        serviceForSchemaId.reconnect();
                        return zIncrementRetryStatusWithLibrary2;
                    }
                    return zIncrementRetryStatusWithLibrary2;
                case AdobeNetworkErrorOffline:
                case AdobeNetworkErrorNetworkFailure:
                    boolean zIncrementRetryStatusWithLibrary3 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary3) {
                        arrayList.add(adobeCSDKException);
                        return zIncrementRetryStatusWithLibrary3;
                    }
                    return zIncrementRetryStatusWithLibrary3;
                case AdobeNetworkErrorRequestForbidden:
                default:
                    boolean zIncrementRetryStatusWithLibrary4 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary4) {
                        arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncUnexpectedError, adobeCSDKException, null, str));
                        return zIncrementRetryStatusWithLibrary4;
                    }
                    return zIncrementRetryStatusWithLibrary4;
                case AdobeNetworkErrorAuthenticationFailed:
                    this.mManager.setSyncSuspendedDueToAuthenticationError(true);
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncNotAvailableDueToUserSession, adobeCSDKException, null, str));
                    return false;
            }
        }
        if (adobeCSDKException instanceof AdobeDCXException) {
            switch (((AdobeDCXException) adobeCSDKException).getErrorCode()) {
                case AdobeDCXErrorUnknownComposite:
                    if (adobeDCXComposite.getCurrent() == null || !adobeDCXComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                        queueLibraryForDelete(str);
                        return false;
                    }
                    this.mManager.handleDeleteLibraryWithId(str, this.mCollection);
                    return false;
                case AdobeDCXErrorDeletedComposite:
                default:
                    boolean zIncrementRetryStatusWithLibrary5 = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary5) {
                        arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncUnexpectedError, adobeCSDKException, null, str));
                        return zIncrementRetryStatusWithLibrary5;
                    }
                    return zIncrementRetryStatusWithLibrary5;
                case AdobeDCXErrorMissingManifest:
                    this.mManager.handleDeleteLibraryWithId(str, this.mCollection);
                    return false;
                case AdobeDCXErrorManifestWriteFailure:
                case AdobeDCXErrorComponentWriteFailure:
                case AdobeDCXErrorComponentCopyFailure:
                    try {
                        adobeDCXComposite.discardPulledBranch();
                        break;
                    } catch (AdobeDCXException e2) {
                        AdobeLogger.log(Level.ERROR, AdobeLibraryManager.class.getSimpleName(), "", e2);
                    }
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncWriteFailure, adobeCSDKException, null, str));
                    return false;
            }
        }
        boolean zIncrementRetryStatusWithLibrary6 = incrementRetryStatusWithLibrary(str, null);
        if (!zIncrementRetryStatusWithLibrary6) {
            arrayList.add(adobeCSDKException);
            return zIncrementRetryStatusWithLibrary6;
        }
        return zIncrementRetryStatusWithLibrary6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handlePullErrorForComponents(AdobeCSDKException adobeCSDKException, String str, String str2, ArrayList<AdobeCSDKException> arrayList) {
        AdobeNetworkHttpService serviceForSchemaId;
        if (!this.mManager.canSync()) {
            return true;
        }
        if (adobeCSDKException instanceof AdobeNetworkException) {
            switch (((AdobeNetworkException) adobeCSDKException).getErrorCode()) {
                case AdobeNetworkErrorCancelled:
                case AdobeNetworkErrorNetworkFailure:
                    boolean zIncrementRetryStatusWithLibrary = incrementRetryStatusWithLibrary(str2, str);
                    if (!zIncrementRetryStatusWithLibrary) {
                        arrayList.add(adobeCSDKException);
                        return zIncrementRetryStatusWithLibrary;
                    }
                    return zIncrementRetryStatusWithLibrary;
                case AdobeNetworkErrorServiceDisconnected:
                    boolean zIncrementRetryStatusWithLibrary2 = incrementRetryStatusWithLibrary(str2, str);
                    if (!zIncrementRetryStatusWithLibrary2) {
                        arrayList.add(adobeCSDKException);
                        return zIncrementRetryStatusWithLibrary2;
                    }
                    if (this.mSession != null && (serviceForSchemaId = getSession().getServiceForSchemaId("libraries")) != null) {
                        serviceForSchemaId.reconnect();
                        return zIncrementRetryStatusWithLibrary2;
                    }
                    return zIncrementRetryStatusWithLibrary2;
                case AdobeNetworkErrorOffline:
                case AdobeNetworkErrorAuthenticationFailed:
                    this.mManager.setSyncSuspendedDueToAuthenticationError(true);
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncNotAvailableDueToUserSession, adobeCSDKException, null, str2));
                    return false;
                case AdobeNetworkErrorRequestForbidden:
                default:
                    boolean zIncrementRetryStatusWithLibrary3 = incrementRetryStatusWithLibrary(str2, str);
                    if (!zIncrementRetryStatusWithLibrary3) {
                        arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncUnexpectedError, adobeCSDKException, null, str2));
                        return zIncrementRetryStatusWithLibrary3;
                    }
                    return zIncrementRetryStatusWithLibrary3;
            }
        }
        if (adobeCSDKException instanceof AdobeDCXException) {
            switch (((AdobeDCXException) adobeCSDKException).getErrorCode()) {
                case AdobeDCXErrorComponentWriteFailure:
                case AdobeDCXErrorComponentCopyFailure:
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncWriteFailure, adobeCSDKException, null, str2));
                    return false;
                case AdobeDCXErrorMissingComponentAsset:
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, adobeCSDKException, null, str2));
                    return false;
                default:
                    boolean zIncrementRetryStatusWithLibrary4 = incrementRetryStatusWithLibrary(str2, str);
                    if (!zIncrementRetryStatusWithLibrary4) {
                        arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncUnexpectedError, adobeCSDKException, null, str2));
                    }
                    if ($assertionsDisabled) {
                        return zIncrementRetryStatusWithLibrary4;
                    }
                    throw new AssertionError("Pull components unexpected error:");
            }
        }
        boolean zIncrementRetryStatusWithLibrary5 = incrementRetryStatusWithLibrary(str2, str);
        if (!zIncrementRetryStatusWithLibrary5) {
            arrayList.add(adobeCSDKException);
        }
        if ($assertionsDisabled) {
            return zIncrementRetryStatusWithLibrary5;
        }
        throw new AssertionError("Pull components error - Unknown error:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleLeaveErrorForComposite(AdobeCSDKException adobeCSDKException, String str, ArrayList<AdobeCSDKException> arrayList) {
        AdobeNetworkHttpService serviceForSchemaId;
        if (!this.mManager.canSync()) {
            return true;
        }
        boolean zIncrementRetryStatusWithLibrary = false;
        if (adobeCSDKException instanceof AdobeNetworkException) {
            switch (((AdobeNetworkException) adobeCSDKException).getErrorCode()) {
                case AdobeNetworkErrorCancelled:
                case AdobeNetworkErrorNetworkFailure:
                    zIncrementRetryStatusWithLibrary = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary) {
                        arrayList.add(adobeCSDKException);
                    }
                    break;
                case AdobeNetworkErrorServiceDisconnected:
                    zIncrementRetryStatusWithLibrary = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary) {
                        arrayList.add(adobeCSDKException);
                    } else if (this.mSession != null && (serviceForSchemaId = getSession().getServiceForSchemaId("libraries")) != null) {
                        serviceForSchemaId.reconnect();
                    }
                    break;
                case AdobeNetworkErrorOffline:
                case AdobeNetworkErrorAuthenticationFailed:
                    this.mManager.setSyncSuspendedDueToAuthenticationError(true);
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncNotAvailableDueToUserSession, adobeCSDKException, null, str));
                    zIncrementRetryStatusWithLibrary = true;
                    break;
                case AdobeNetworkErrorRequestForbidden:
                default:
                    zIncrementRetryStatusWithLibrary = incrementRetryStatusWithLibrary(str, null);
                    if (!zIncrementRetryStatusWithLibrary) {
                        arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLeavingSharedLibrary, adobeCSDKException, null, str));
                    }
                    break;
            }
        } else {
            arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLeavingSharedLibrary, adobeCSDKException, null, str));
        }
        return zIncrementRetryStatusWithLibrary;
    }

    boolean isSyncing() {
        return this.mSyncInProgress;
    }

    void reset() {
        this.mRequestExecutor.shutdown();
        this.mRequestExecutor = null;
        cancelActivePulls();
        cancelActivePushes();
        cancelActiveDownloads();
        initVars();
    }

    public void reconnect() {
        AdobeNetworkHttpService serviceForSchemaId;
        if (this.mSession != null && (serviceForSchemaId = getSession().getServiceForSchemaId("libraries")) != null) {
            serviceForSchemaId.reconnect();
        }
    }

    public AdobeCloudServiceSession getSession() {
        return (AdobeCloudServiceSession) this.mSession;
    }

    boolean isElementWithIdInElementTypesFilter(String str, AdobeLibraryComposite adobeLibraryComposite) {
        AdobeLibraryElement elementWithId = adobeLibraryComposite.getElementWithId(str);
        if (elementWithId != null) {
            return this.mManager.isTypeInElementTypesFilter(elementWithId.getType());
        }
        return false;
    }
}

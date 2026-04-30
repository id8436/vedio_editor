package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachability;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryAnalyticsReporter;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmark;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryManagerInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMerger;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryPublicCollection;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryUtils;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestExecutor;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.notification.AdobeInternalNotificationID;
import com.adobe.creativesdk.foundation.internal.notification.AdobeLocalNotificationCenter;
import com.adobe.creativesdk.foundation.internal.notification.AdobeNotification;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.premiereclip.library.GeneralLibraryManager;
import com.google.gdata.client.contacts.ContactsService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryManager implements Observer {
    private static final String ON_SYNC_ERROR = "onSyncError";
    private static AdobeLibraryManager sharedLibraryInstance = null;
    protected boolean includeBookmarkedLibraries;
    ArrayList<String> mAutoDownloadContentTypes;
    protected AdobeLibraryDownloadPolicyType mAutoDownloadPolicy;
    protected long mAutoSyncInterval;
    AdobeCloud mCloud;
    List<AdobeLibraryCollection> mCollections;
    Map<AdobeLibraryDelegate, AdobeLibraryStartupOptions> mDelegates;
    ArrayList mElementTypesFilter;
    private Date mLastSyncTime;
    private ReentrantLock mListLock;
    AdobeLibraryCollection mMainCollection;
    boolean mPollingStarted;
    protected HashMap<String, ArrayList<Integer>> mRenditionSizes;
    protected String mRootLibraryCollectionsURL;
    private EnumSet<AdobeNetworkReachability.AdobeNetworkStatusCode> mSyncAllowedByNetworkStatusMask;
    private boolean mSyncEnabled;
    boolean mSyncInProgress;
    protected boolean mSyncSuspendedDueToAuthenticationError;
    private Date mSyncTimer;
    protected boolean mUnInitialized;
    private boolean mWasSyncInProgress;
    boolean syncAllowedByNetworkStatus;
    Integer syncAllowedByNetworkStatusMask;
    private int mNumConcurrentRequests = 1;
    private AdobeNetworkHttpRequestExecutor mRequestExecutor = null;
    private AdobeNetworkRequestPriority mDownloadLibraryPriority = AdobeNetworkRequestPriority.NORMAL;
    private AdobeNetworkRequestPriority mUploadLibraryPriority = AdobeNetworkRequestPriority.NORMAL;
    private int mSessionId = 0;
    boolean mGenerateLocalThumbnails = false;

    interface IAdobeDelegateResponseHandler<T> {
        boolean onCompletion(T t);
    }

    protected AdobeLibraryManager() {
        initVars();
    }

    public ArrayList getElementTypesFilter() {
        return this.mElementTypesFilter;
    }

    public static AdobeLibraryManager getSharedInstance() {
        synchronized (AdobeLibraryManager.class) {
            if (sharedLibraryInstance == null) {
                sharedLibraryInstance = new AdobeLibraryManagerInternal();
                sharedLibraryInstance.setSyncEnabled(true);
            }
        }
        return sharedLibraryInstance;
    }

    public static void removeLocalLibraryFilesInRootFolder(String str) throws IOException {
        AdobeLibraryUtils.removeLocalLibraryFilesInRootFolder(str);
    }

    private void initVars() {
        this.mCollections = Collections.synchronizedList(new ArrayList());
        this.mSessionId++;
        this.mDelegates = new ConcurrentHashMap();
        this.mMainCollection = null;
        this.mPollingStarted = false;
        this.mCloud = null;
        this.mElementTypesFilter = null;
        this.mAutoDownloadContentTypes = null;
        this.mRenditionSizes = null;
        this.mRootLibraryCollectionsURL = null;
        this.mListLock = new ReentrantLock();
        this.mSyncSuspendedDueToAuthenticationError = false;
        this.mUnInitialized = true;
        this.includeBookmarkedLibraries = true;
        this.mRequestExecutor = new AdobeNetworkHttpRequestExecutor(this.mNumConcurrentRequests, this.mNumConcurrentRequests, 100L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        synchronized (this) {
            this.syncAllowedByNetworkStatus = true;
            this.mSyncInProgress = false;
            this.mWasSyncInProgress = false;
            this.mSyncAllowedByNetworkStatusMask = EnumSet.of(AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkReachableNonMetered);
        }
    }

    public ArrayList<AdobeLibraryComposite> getLibraries() {
        ArrayList<AdobeLibraryComposite> arrayList = new ArrayList<>();
        this.mListLock.lock();
        try {
            for (AdobeLibraryCollection adobeLibraryCollection : this.mCollections) {
                if (!adobeLibraryCollection.isPublic() || this.includeBookmarkedLibraries) {
                    arrayList.addAll(adobeLibraryCollection.getLibraries());
                }
            }
            return arrayList;
        } finally {
            this.mListLock.unlock();
        }
    }

    public AdobeLibraryComposite getDefaultLibrary() {
        if (this.mMainCollection != null) {
            return this.mMainCollection.getDefaultLibrary();
        }
        return null;
    }

    public AdobeLibraryComposite createLibraryWithName(String str) {
        if (isStarted() && this.mMainCollection != null) {
            return this.mMainCollection.createLibraryWithName(str);
        }
        AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null);
        return null;
    }

    public boolean leaveSharedLibraryWithId(String str) throws AdobeLibraryException {
        if (!isStarted() && this.mMainCollection != null) {
            return this.mMainCollection.leaveSharedLibraryWithId(str);
        }
        AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null);
        return false;
    }

    public boolean deleteLibraryWithId(String str) throws AdobeLibraryException {
        if (!isStarted() || this.mMainCollection == null) {
            AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null);
            return false;
        }
        AdobeLibraryComposite libraryWithId = getLibraryWithId(str);
        if (libraryWithId != null && libraryWithId.isPublic()) {
            String bookmarlURL = getBookmarlURL(str);
            if (bookmarlURL != null) {
                return removeBookmark(AdobeLibraryBookmark.initWithId(str, bookmarlURL));
            }
            return false;
        }
        return this.mMainCollection.deleteLibraryWithId(str);
    }

    public AdobeLibraryComposite getLibraryWithId(String str) {
        Iterator<AdobeLibraryCollection> it = this.mCollections.iterator();
        while (it.hasNext()) {
            AdobeLibraryComposite libraryWithId = it.next().getLibraryWithId(str);
            if (libraryWithId != null) {
                return libraryWithId;
            }
        }
        return null;
    }

    ArrayList<AdobeLibraryComposite> refreshLibraries() {
        new ArrayList();
        if (this.mCollections == null) {
            return null;
        }
        this.mListLock.lock();
        try {
            ArrayList<AdobeLibraryComposite> arrayList = new ArrayList<>();
            for (AdobeLibraryCollection adobeLibraryCollection : this.mCollections) {
                adobeLibraryCollection.updateLibraries();
                arrayList.addAll(adobeLibraryCollection.getLibraries());
            }
            return arrayList;
        } finally {
            this.mListLock.unlock();
        }
    }

    public boolean isTypeInElementTypesFilter(String str) {
        return str != null && (this.mElementTypesFilter == null || this.mElementTypesFilter.isEmpty() || this.mElementTypesFilter.indexOf(str) != -1);
    }

    public boolean isTypeInDelegateElementTypesFilter(String str, AdobeLibraryDelegate adobeLibraryDelegate) {
        AdobeLibraryStartupOptions adobeLibraryStartupOptions;
        return (str == null || (adobeLibraryStartupOptions = this.mDelegates.get(adobeLibraryDelegate)) == null || (adobeLibraryStartupOptions.elementTypesFilter != null && !adobeLibraryStartupOptions.elementTypesFilter.isEmpty() && adobeLibraryStartupOptions.elementTypesFilter.indexOf(str) == -1)) ? false : true;
    }

    void resolveElementReference(String str, AdobeLibraryComposite[] adobeLibraryCompositeArr, AdobeLibraryElement[] adobeLibraryElementArr) {
        Matcher matcher = Pattern.compile("cloud-asset://(.+)/([A-Za-z0-9-]+);node=([A-Za-z0-9-]+)").matcher(str);
        if (matcher.find()) {
            String strGroup = matcher.group(2);
            String strGroup2 = matcher.group(3);
            adobeLibraryCompositeArr[0] = getLibraryWithId(strGroup);
            if (adobeLibraryCompositeArr[0] != null) {
                adobeLibraryElementArr[0] = adobeLibraryCompositeArr[0].getElementWithId(strGroup2);
            }
        }
    }

    public boolean startWithFolder(String str) throws AdobeLibraryException {
        return startWithFolder(str, (AdobeCloud) null);
    }

    protected boolean startWithFolder(String str, AdobeCloud adobeCloud) throws AdobeLibraryException {
        synchronized (this) {
            if (this.mRootLibraryCollectionsURL != null || this.mCloud != null) {
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupAlreadyStarted, null, null, null);
            }
            if (adobeCloud == null && this.mSyncEnabled) {
                adobeCloud = AdobeCloudManager.getSharedCloudManager().getDefaultCloud();
            }
            if (str == null || (adobeCloud == null && this.mSyncEnabled)) {
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
            }
            this.mRootLibraryCollectionsURL = str;
            this.mCloud = adobeCloud;
            this.mMainCollection = new AdobeLibraryCollection();
            if (!this.mMainCollection.initWithRootFolder(str, this.mCloud, AdobeCloudServiceType.AdobeCloudServiceTypeStorage, null, AdobeLibraryCompositeConstantsInternal.AdobeLibraryDCXGroupName)) {
                this.mRootLibraryCollectionsURL = null;
                return false;
            }
            this.mCollections.add(this.mMainCollection);
            String[][] strArr = AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS ? AdobeLibraryCompositeConstantsInternal.AdobeLibraryCommunityPlatformHostStaging : AdobeLibraryCompositeConstantsInternal.AdobeLibraryCommunityPlatformHostProduction;
            for (int i = 0; i < strArr.length; i++) {
                String strStringByAppendingLastPathComponentAndLastPathComponentIsDir = AdobeDCXUtils.stringByAppendingLastPathComponentAndLastPathComponentIsDir(str, "public");
                AdobeLibraryPublicCollection adobeLibraryPublicCollection = new AdobeLibraryPublicCollection();
                if (adobeLibraryPublicCollection.initWithRootFolder(strStringByAppendingLastPathComponentAndLastPathComponentIsDir, adobeCloud, strArr[i][1].equals(ContactsService.CONTACTS_SERVICE) ? AdobeCloudServiceType.AdobeCloudServiceTypeCommunity : AdobeCloudServiceType.AdobeCloudServiceTypeStorage, strArr[i][0], null)) {
                    this.mCollections.add(adobeLibraryPublicCollection);
                }
            }
            if (this.mDelegates.size() > 0) {
                initializeCollections();
                bookmarksChanged();
            }
            this.mUnInitialized = false;
            return true;
        }
    }

    public void setDownloadLibraryPriority(AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        this.mDownloadLibraryPriority = adobeNetworkRequestPriority;
        if (this.mCollections != null && !this.mCollections.isEmpty()) {
            Iterator<AdobeLibraryCollection> it = this.mCollections.iterator();
            while (it.hasNext()) {
                it.next().setPullLibsPriority(adobeNetworkRequestPriority);
            }
        }
    }

    public AdobeNetworkRequestPriority getDownloadLibraryPriority() {
        return this.mDownloadLibraryPriority;
    }

    public void setUploadLibraryPriority(AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        this.mUploadLibraryPriority = adobeNetworkRequestPriority;
        if (this.mCollections != null && !this.mCollections.isEmpty()) {
            Iterator<AdobeLibraryCollection> it = this.mCollections.iterator();
            while (it.hasNext()) {
                it.next().setPushLibsPriority(adobeNetworkRequestPriority);
            }
        }
    }

    public AdobeNetworkRequestPriority getUploadLibraryPriority() {
        return this.mUploadLibraryPriority;
    }

    public boolean shutdownWithError() throws AdobeLibraryException {
        if (this.mDelegates.size() > 0) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorCannotShutdownDelegatesExist, null, null, null);
        }
        shutdown();
        return true;
    }

    public void shutdown() {
        this.mListLock.lock();
        if (this.mCollections != null && !this.mCollections.isEmpty()) {
            Iterator<AdobeLibraryCollection> it = this.mCollections.iterator();
            while (it.hasNext()) {
                it.next().shutdownSync();
            }
        }
        this.mListLock.unlock();
        synchronized (this) {
            AdobeLocalNotificationCenter.getDefaultNotificationCenter().removeObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this);
            if (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() != null) {
                AdobeNetworkReachabilityUtil.destorySharedInstance();
            }
        }
        initVars();
        this.mUnInitialized = true;
    }

    void initializeCollections() {
        onNetworkStatus(AdobeNetworkReachabilityUtil.getSharedInstance().getNetworkStatus());
        if (this.mCollections != null) {
            for (int i = 0; i < this.mCollections.size(); i++) {
                AdobeLibraryCollection adobeLibraryCollection = this.mCollections.get(i);
                if (adobeLibraryCollection != null) {
                    if (i == 0) {
                        this.mPollingStarted = adobeLibraryCollection.initSync(true);
                    } else if (!adobeLibraryCollection.isPublic() || this.includeBookmarkedLibraries) {
                        adobeLibraryCollection.initSync(false);
                    }
                }
            }
        }
        if (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() != null) {
            AdobeNetworkReachabilityUtil.getSharedInstance();
        }
        AdobeLocalNotificationCenter.getDefaultNotificationCenter().addObserver(AdobeInternalNotificationID.AdobeNetworkStatusChangeNotification, this);
    }

    protected void onNetworkStatus(AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
        synchronized (this) {
            if (!this.mSyncAllowedByNetworkStatusMask.contains(adobeNetworkStatusCode)) {
                if (this.syncAllowedByNetworkStatus) {
                    this.syncAllowedByNetworkStatus = false;
                    this.mWasSyncInProgress = this.mSyncInProgress;
                    if (adobeNetworkStatusCode != AdobeNetworkReachability.AdobeNetworkStatusCode.AdobeNetworkNotReachable) {
                        this.mMainCollection.stopPolling();
                    }
                    sendDelegateMessage("syncUnavailable", adobeNetworkStatusCode);
                }
            } else if (!this.syncAllowedByNetworkStatus) {
                this.syncAllowedByNetworkStatus = true;
                Iterator<AdobeLibraryCollection> it = this.mCollections.iterator();
                while (it.hasNext()) {
                    it.next()._syncManager.reconnect();
                }
                this.mMainCollection.startPolling();
                sendDelegateMessage("syncAvailable", adobeNetworkStatusCode);
                if (this.mWasSyncInProgress || this.mLastSyncTime == null || new Date().getTime() - this.mLastSyncTime.getTime() > this.mAutoSyncInterval) {
                    sync();
                }
                this.mWasSyncInProgress = false;
                this.mSyncSuspendedDueToAuthenticationError = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void computeStartupSettings() {
        /*
            Method dump skipped, instruction units count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.computeStartupSettings():void");
    }

    public void registerDelegate(AdobeLibraryDelegate adobeLibraryDelegate, AdobeLibraryStartupOptions adobeLibraryStartupOptions) {
        boolean z = false;
        this.mListLock.lock();
        if (!this.mDelegates.containsKey(adobeLibraryDelegate)) {
            this.mDelegates.put(adobeLibraryDelegate, adobeLibraryStartupOptions);
            this.mListLock.unlock();
            computeStartupSettings();
            if (this.mRootLibraryCollectionsURL != null && !this.mPollingStarted) {
                z = true;
            }
        } else {
            this.mListLock.unlock();
        }
        if (z) {
            initializeCollections();
        }
    }

    public void deregisterDelegate(AdobeLibraryDelegate adobeLibraryDelegate) {
        boolean z;
        boolean z2 = true;
        boolean z3 = false;
        this.mListLock.lock();
        if (this.mDelegates.containsKey(adobeLibraryDelegate)) {
            this.mDelegates.remove(adobeLibraryDelegate);
            z = true;
        } else {
            z = false;
        }
        if (this.mDelegates.size() != 0) {
            z2 = false;
            z3 = z;
        }
        this.mListLock.unlock();
        if (z3) {
            computeStartupSettings();
        }
        if (z2) {
            try {
                shutdownWithError();
            } catch (AdobeLibraryException e2) {
                AdobeLogger.log(Level.ERROR, "", "", e2);
            }
        }
    }

    public boolean isStarted() {
        return this.mRootLibraryCollectionsURL != null;
    }

    protected void handleDeleteLibraryWithId(final String str, final AdobeLibraryCollection adobeLibraryCollection) {
        AdobeLibraryComposite libraryWithId = adobeLibraryCollection.getLibraryWithId(str);
        if ((libraryWithId != null && libraryWithId.mCollaboration == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) || libraryWithId.isPublic()) {
            adobeLibraryCollection._syncManager.queueLibraryForDelete(str);
        } else {
            sendDelegateMessage("libraryPreDelete", null, str, null, null, new IAdobeGenericCompletionCallback<Void>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Void r3) {
                    adobeLibraryCollection._syncManager.queueLibraryForDelete(str);
                }
            }, new IAdobeDelegateResponseHandler<Object>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.2
                @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.IAdobeDelegateResponseHandler
                public boolean onCompletion(Object obj) {
                    if (((Integer) obj).intValue() == 0) {
                        try {
                            adobeLibraryCollection.resetBindingOnLibrary(str);
                            return false;
                        } catch (AdobeDCXException e2) {
                            AdobeLogger.log(Level.ERROR, "", "", e2);
                        }
                    }
                    return true;
                }
            }, null, null);
        }
    }

    protected void handleLibraryReadOnlyConversion(final AdobeLibraryComposite adobeLibraryComposite) {
        adobeLibraryComposite.mDcxComposite.setCollaborationRoleType(AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_VIEWER);
        if (adobeLibraryComposite.mDcxComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
            sendDelegateMessage("libraryPreReadabilityChange", adobeLibraryComposite.getLibraryId(), new IAdobeGenericCompletionCallback<Void>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.3
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(Void r3) {
                    adobeLibraryComposite.revertUnsyncedChanges(null, null, null);
                }
            }, new IAdobeDelegateResponseHandler<Object>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.4
                @Override // com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.IAdobeDelegateResponseHandler
                public boolean onCompletion(Object obj) {
                    if (obj != null) {
                        AdobeLibraryComposite libraryWithId = AdobeLibraryManager.this.getLibraryWithId((String) obj);
                        if (libraryWithId != null && !libraryWithId.isReadOnly()) {
                            adobeLibraryComposite.lock();
                            final ArrayList arrayList = new ArrayList();
                            List<AdobeDCXComponent> listDetermineComponentsWithoutLocalCopy = AdobeLibraryMerger.determineComponentsWithoutLocalCopy(adobeLibraryComposite.mDcxComposite);
                            if (listDetermineComponentsWithoutLocalCopy != null) {
                                Iterator<AdobeDCXComponent> it = listDetermineComponentsWithoutLocalCopy.iterator();
                                while (it.hasNext()) {
                                    arrayList.add(adobeLibraryComposite.getDcxComposite().getCurrent().findParentNodeOfComponent(it.next()).getNodeId());
                                }
                            }
                            final ArrayList arrayList2 = new ArrayList();
                            AdobeLibraryMerger.determineChangesInBranch(adobeLibraryComposite.getDcxComposite(), adobeLibraryComposite.getDcxComposite().getCurrent(), adobeLibraryComposite.getDcxComposite().getBase(), new IAdobeLibraryMergerCallback() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.4.1
                                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                                public boolean onElementAdded(String str, String str2) {
                                    if (arrayList.indexOf(str) == -1) {
                                        arrayList2.add(str);
                                        return true;
                                    }
                                    return true;
                                }

                                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                                public boolean onElementModified(String str, String str2) {
                                    if (arrayList.indexOf(str) == -1) {
                                        arrayList2.add(str);
                                        return true;
                                    }
                                    return true;
                                }

                                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeLibraryMergerCallback
                                public boolean onElementDeleted(String str, String str2) {
                                    return true;
                                }
                            }, AdobeLibraryManager.this.mElementTypesFilter);
                            adobeLibraryComposite.unlock();
                            Iterator it2 = arrayList2.iterator();
                            while (it2.hasNext()) {
                                try {
                                    libraryWithId.copyElement(adobeLibraryComposite.getElementWithId((String) it2.next()), adobeLibraryComposite);
                                } catch (AdobeLibraryException e2) {
                                    AdobeLogger.log(Level.DEBUG, AdobeLibraryManager.class.getSimpleName(), null, e2);
                                }
                            }
                            adobeLibraryComposite.revertUnsyncedChanges(null, null, null);
                            return false;
                        }
                    }
                    return true;
                }
            });
        }
    }

    protected void reportSyncError(AdobeLibraryComposite adobeLibraryComposite, AdobeCSDKException adobeCSDKException) {
        sendDelegateMessage(ON_SYNC_ERROR, adobeLibraryComposite, adobeCSDKException);
    }

    void sendDelegateMessage(String str) {
        sendDelegateMessage(str, null, null, null, null, null, null, null, null);
    }

    void sendDelegateMessage(String str, AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode) {
        sendDelegateMessage(str, null, null, null, null, null, null, adobeNetworkStatusCode, null);
    }

    protected void sendDelegateMessage(String str, String str2) {
        sendDelegateMessage(str, null, str2, null, null, null, null, null, null);
    }

    void sendDelegateMessage(String str, String str2, IAdobeGenericCompletionCallback<Void> iAdobeGenericCompletionCallback, IAdobeDelegateResponseHandler<Object> iAdobeDelegateResponseHandler) {
        sendDelegateMessage(str, null, str2, null, null, iAdobeGenericCompletionCallback, iAdobeDelegateResponseHandler, null, null);
    }

    protected void sendDelegateMessage(String str, AdobeLibraryComposite adobeLibraryComposite, AdobeCSDKException adobeCSDKException) {
        sendDelegateMessage(str, adobeLibraryComposite, null, null, null, null, null, null, adobeCSDKException);
    }

    void sendDelegateMessage(String str, AdobeLibraryComposite adobeLibraryComposite, String str2) {
        sendDelegateMessage(str, adobeLibraryComposite, null, str2, adobeLibraryComposite.getElementWithId(str2).getType(), null, null, null, null);
    }

    protected void sendDelegateMessage(String str, AdobeLibraryComposite adobeLibraryComposite, String str2, String str3) {
        sendDelegateMessage(str, adobeLibraryComposite, null, str2, str3, null, null, null, null);
    }

    protected void sendDelegateMessage(String str, AdobeLibraryComposite adobeLibraryComposite) {
        sendDelegateMessage(str, adobeLibraryComposite, null, null, null, null, null, null, null);
    }

    void sendDelegateMessage(final String str, final AdobeLibraryComposite adobeLibraryComposite, final String str2, final String str3, String str4, final IAdobeGenericCompletionCallback<Void> iAdobeGenericCompletionCallback, final IAdobeDelegateResponseHandler<Object> iAdobeDelegateResponseHandler, final AdobeNetworkReachability.AdobeNetworkStatusCode adobeNetworkStatusCode, final AdobeCSDKException adobeCSDKException) {
        if (isStarted()) {
            if (iAdobeDelegateResponseHandler != null || iAdobeGenericCompletionCallback != null) {
                Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.5
                    /* JADX WARN: Removed duplicated region for block: B:30:0x0076  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public void run() {
                        /*
                            r8 = this;
                            r2 = 1
                            r3 = 0
                            java.util.ArrayList r5 = new java.util.ArrayList
                            com.adobe.creativesdk.foundation.storage.AdobeLibraryManager r0 = com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.this
                            java.util.Map<com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate, com.adobe.creativesdk.foundation.storage.AdobeLibraryStartupOptions> r0 = r0.mDelegates
                            java.util.Set r0 = r0.keySet()
                            r5.<init>(r0)
                            r4 = r3
                        L10:
                            if (r5 == 0) goto L71
                            boolean r0 = r5.isEmpty()
                            if (r0 != 0) goto L71
                            java.lang.Object r0 = r5.get(r4)
                            com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate r0 = (com.adobe.creativesdk.foundation.storage.AdobeLibraryDelegate) r0
                            if (r0 == 0) goto L78
                            java.lang.String r1 = "libraryPreDelete"
                            java.lang.String r6 = r2
                            boolean r1 = r1.equals(r6)
                            if (r1 == 0) goto L76
                            java.lang.String r1 = r3
                            boolean r1 = r0.libraryPreDelete(r1)
                            com.adobe.creativesdk.foundation.storage.AdobeLibraryManager$IAdobeDelegateResponseHandler r6 = r4
                            if (r6 == 0) goto L76
                            com.adobe.creativesdk.foundation.storage.AdobeLibraryManager$IAdobeDelegateResponseHandler r6 = r4
                            if (r1 == 0) goto L72
                            r1 = r2
                        L3a:
                            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
                            boolean r1 = r6.onCompletion(r1)
                        L42:
                            java.lang.String r6 = "libraryPreReadabilityChange"
                            java.lang.String r7 = r2
                            boolean r6 = r6.equals(r7)
                            if (r6 == 0) goto L5d
                            java.lang.String r6 = r3
                            java.lang.String r0 = r0.libraryPreReadabilityChange(r6)
                            com.adobe.creativesdk.foundation.storage.AdobeLibraryManager$IAdobeDelegateResponseHandler r6 = r4
                            if (r6 == 0) goto L5d
                            com.adobe.creativesdk.foundation.storage.AdobeLibraryManager$IAdobeDelegateResponseHandler r1 = r4
                            boolean r1 = r1.onCompletion(r0)
                        L5d:
                            if (r1 == 0) goto L71
                            int r0 = r4 + 1
                            int r1 = r5.size()
                            if (r0 != r1) goto L74
                            com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback r0 = r5
                            if (r0 == 0) goto L71
                            com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback r0 = r5
                            r1 = 0
                            r0.onCompletion(r1)
                        L71:
                            return
                        L72:
                            r1 = r3
                            goto L3a
                        L74:
                            r4 = r0
                            goto L10
                        L76:
                            r1 = r2
                            goto L42
                        L78:
                            r1 = r2
                            goto L5d
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.AnonymousClass5.run():void");
                    }
                };
                Handler handler = ((AdobeLibraryDelegate) new ArrayList(this.mDelegates.keySet()).get(this.mDelegates.size() - 1)).delegateHandler;
                if (handler != null) {
                    handler.post(runnable);
                    return;
                } else {
                    this.mRequestExecutor.execute(runnable);
                    return;
                }
            }
            for (final AdobeLibraryDelegate adobeLibraryDelegate : this.mDelegates.keySet()) {
                Runnable runnable2 = new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.6
                    @Override // java.lang.Runnable
                    public void run() {
                        AdobeLibraryDelegate adobeLibraryDelegate2;
                        if (AdobeLibraryManager.this.mDelegates != null && AdobeLibraryManager.this.mDelegates.containsKey(adobeLibraryDelegate) && (adobeLibraryDelegate2 = adobeLibraryDelegate) != null) {
                            if ("elementWasAdded".equals(str)) {
                                adobeLibraryDelegate2.elementWasAdded(adobeLibraryComposite, str3);
                                return;
                            }
                            if ("elementWasRemoved".equals(str)) {
                                adobeLibraryDelegate2.elementWasRemoved(adobeLibraryComposite, str3);
                                return;
                            }
                            if ("elementWasUpdated".equals(str)) {
                                adobeLibraryDelegate2.elementWasUpdated(adobeLibraryComposite, str3);
                                return;
                            }
                            if (AdobeLibraryManager.ON_SYNC_ERROR.equals(str)) {
                                adobeLibraryDelegate2.onSyncError(adobeLibraryComposite, adobeCSDKException);
                                AdobeLibraryAnalyticsReporter.trackError(adobeCSDKException);
                                return;
                            }
                            if ("libraryWasAdded".equals(str)) {
                                adobeLibraryDelegate2.libraryWasAdded(adobeLibraryComposite);
                                return;
                            }
                            if ("libraryWasDeleted".equals(str)) {
                                adobeLibraryDelegate2.libraryWasDeleted(str2);
                                return;
                            }
                            if ("libraryWasUnshared".equals(str)) {
                                adobeLibraryDelegate2.libraryWasUnshared(str2);
                                return;
                            }
                            if ("libraryWasUpdated".equals(str)) {
                                adobeLibraryDelegate2.libraryWasUpdated(adobeLibraryComposite);
                                return;
                            }
                            if (GeneralLibraryManager.kSyncStartedNotification.equals(str)) {
                                adobeLibraryDelegate2.syncStarted();
                                return;
                            }
                            if ("syncFinished".equals(str)) {
                                adobeLibraryDelegate2.syncFinished();
                            } else if ("syncUnavailable".equals(str)) {
                                adobeLibraryDelegate2.syncUnavailable(adobeNetworkStatusCode);
                            } else if ("syncAvailable".equals(str)) {
                                adobeLibraryDelegate2.syncAvailable(adobeNetworkStatusCode);
                            }
                        }
                    }
                };
                if (shouldRespondToSelector(str, adobeLibraryDelegate, adobeLibraryComposite, str3, str4) && adobeLibraryDelegate != null) {
                    if (adobeLibraryDelegate.delegateHandler != null) {
                        adobeLibraryDelegate.delegateHandler.post(runnable2);
                    } else {
                        this.mRequestExecutor.execute(runnable2);
                    }
                }
            }
        }
    }

    private boolean shouldRespondToSelector(String str, AdobeLibraryDelegate adobeLibraryDelegate, AdobeLibraryComposite adobeLibraryComposite, String str2, String str3) {
        AdobeLibraryStartupOptions adobeLibraryStartupOptions;
        if (adobeLibraryDelegate == null) {
            return false;
        }
        return adobeLibraryComposite == null || str2 == null || !("elementWasAdded".equals(str) || "elementWasUpdated".equals(str) || "elementWasRemoved".equals(str)) || (adobeLibraryStartupOptions = this.mDelegates.get(adobeLibraryDelegate)) == null || adobeLibraryStartupOptions.elementTypesFilter == null || adobeLibraryStartupOptions.elementTypesFilter.indexOf(str3) != -1;
    }

    protected boolean shouldSyncOnCommit() {
        Iterator<AdobeLibraryDelegate> it = this.mDelegates.keySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            z = z || it.next().syncOnCommit;
        }
        return z;
    }

    protected boolean shouldAutoSyncDownloadAssets() {
        Iterator<AdobeLibraryDelegate> it = this.mDelegates.keySet().iterator();
        boolean z = true;
        while (it.hasNext()) {
            z = z && it.next().autoSyncDownloadedAssets;
        }
        return z;
    }

    protected boolean shouldDownloadLibrary(String str) {
        boolean z = true;
        for (AdobeLibraryDelegate adobeLibraryDelegate : this.mDelegates.keySet()) {
            if (adobeLibraryDelegate.assetDownloadLibraryFilter != null) {
                z = false;
                if (new ArrayList(adobeLibraryDelegate.assetDownloadLibraryFilter).indexOf(str) != -1) {
                    return true;
                }
            }
            z = z;
        }
        return z;
    }

    public AdobeLibrarySyncStatus getSyncStatus() {
        AdobeLibrarySyncStatus adobeLibrarySyncStatus = new AdobeLibrarySyncStatus();
        synchronized (this) {
            adobeLibrarySyncStatus.setLastSyncTime(this.mLastSyncTime);
            adobeLibrarySyncStatus.setSyncing(this.mSyncInProgress);
        }
        return adobeLibrarySyncStatus;
    }

    public boolean isSyncEnabled() {
        boolean z;
        synchronized (this) {
            z = this.mSyncEnabled;
        }
        return z;
    }

    public void setSyncEnabled(boolean z) {
        synchronized (this) {
            this.mSyncEnabled = z;
            if (this.mSyncEnabled) {
                if (!this.mDelegates.isEmpty() && this.mMainCollection != null) {
                    this.mMainCollection.startPolling();
                }
            } else {
                Iterator<AdobeLibraryCollection> it = this.mCollections.iterator();
                while (it.hasNext()) {
                    it.next().cancelSync();
                }
                if (this.mMainCollection != null) {
                    this.mMainCollection.stopPolling();
                }
            }
        }
    }

    public void setSyncAllowedByNetworkStatusMask(EnumSet<AdobeNetworkReachability.AdobeNetworkStatusCode> enumSet) {
        synchronized (this) {
            this.mSyncAllowedByNetworkStatusMask = enumSet;
            onNetworkStatus(AdobeNetworkReachabilityUtil.getSharedInstance().getNetworkStatus());
        }
    }

    public boolean isSyncAllowedByNetworkStatus() {
        boolean z;
        synchronized (this) {
            z = this.syncAllowedByNetworkStatus;
        }
        return z;
    }

    public boolean isSyncSuspendedDueToAuthenticationError() {
        boolean z;
        synchronized (this) {
            z = this.mSyncSuspendedDueToAuthenticationError;
        }
        return z;
    }

    public void unsuspendSyncDueToNewAuthenticationStatus() {
        synchronized (this) {
            this.mSyncSuspendedDueToAuthenticationError = false;
        }
    }

    protected boolean canSync() {
        boolean z;
        synchronized (this) {
            z = (!this.mSyncEnabled || this.mMainCollection == null || this.mMainCollection._syncManager.serviceSession() == null || this.mSyncSuspendedDueToAuthenticationError || !this.syncAllowedByNetworkStatus) ? false : true;
        }
        return z;
    }

    protected boolean canSyncWithError(ArrayList<AdobeLibraryException> arrayList) {
        synchronized (this) {
            if (this.mCollections == null) {
                arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null));
            } else {
                AdobeCloudServiceSession session = this.mMainCollection != null ? this.mMainCollection._syncManager.getSession() : null;
                if (!this.mSyncEnabled) {
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncNotEnabled, null, null, null));
                } else if (this.mSyncSuspendedDueToAuthenticationError || session == null) {
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncNotAvailableDueToUserSession, null, null, null));
                } else if (!this.syncAllowedByNetworkStatus) {
                    arrayList.add(AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorSyncNotAvailableDueToNetwork, null, null, null));
                }
            }
        }
        if (!arrayList.isEmpty()) {
            return false;
        }
        return true;
    }

    public boolean sync() {
        ArrayList<AdobeLibraryException> arrayList = new ArrayList<>();
        if (!canSyncWithError(arrayList)) {
            sendDelegateMessage(ON_SYNC_ERROR, (AdobeLibraryComposite) null, arrayList.get(0));
            return false;
        }
        synchronized (this) {
            if (!this.mSyncInProgress) {
                this.mMainCollection.sync();
            }
        }
        return true;
    }

    protected void syncStartedForCollection(AdobeLibraryCollection adobeLibraryCollection) {
        synchronized (this) {
            if (!this.mSyncInProgress) {
                this.mSyncInProgress = true;
                this.mSyncTimer = new Date();
                if (adobeLibraryCollection == this.mMainCollection) {
                    sendDelegateMessage(GeneralLibraryManager.kSyncStartedNotification);
                }
            }
        }
    }

    protected void syncCompletedForCollection(AdobeLibraryCollection adobeLibraryCollection) {
        boolean zIsSyncing;
        boolean z = false;
        synchronized (this) {
            Iterator<AdobeLibraryCollection> it = this.mCollections.iterator();
            while (true) {
                if (!it.hasNext()) {
                    zIsSyncing = z;
                    break;
                }
                AdobeLibraryCollection next = it.next();
                if (next != adobeLibraryCollection) {
                    zIsSyncing = next.isSyncing();
                    if (zIsSyncing) {
                        break;
                    }
                } else {
                    zIsSyncing = z;
                }
                z = zIsSyncing;
            }
            if (!zIsSyncing && this.mSyncInProgress) {
                this.mSyncInProgress = false;
                this.mLastSyncTime = new Date();
                sendDelegateMessage("syncFinished");
            }
        }
    }

    protected boolean shouldAutoDownloadType(String str) {
        if (this.mAutoDownloadContentTypes == null) {
            return true;
        }
        Iterator<String> it = this.mAutoDownloadContentTypes.iterator();
        while (it.hasNext()) {
            if (AdobeLibraryUtils.isCompatibleType(str, it.next())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        onNetworkStatus(((AdobeNetworkReachability.AdobeNetworkStatus) ((AdobeNotification) obj).getInfo().get(AdobeNetworkReachability.AdobeNetworkReachabilityStatusKey)).networkStatusCode);
    }

    ArrayList<AdobeLibraryBookmark> bookmarks() {
        if (this.mMainCollection != null) {
            return this.mMainCollection.getBookmarkManager().bookmarks;
        }
        return null;
    }

    protected boolean removeBookmark(AdobeLibraryBookmark adobeLibraryBookmark) {
        AdobeLibraryComposite libraryWithId;
        if (this.mMainCollection == null || (libraryWithId = getLibraryWithId(adobeLibraryBookmark.bookmaarkID)) == null || !this.mMainCollection.getBookmarkManager().removeBookmark(adobeLibraryBookmark)) {
            return false;
        }
        try {
            removeBookmarkFromCollection();
            return this.mMainCollection.deleteLibrary(libraryWithId, false);
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.ERROR, "", "", e2);
            return false;
        }
    }

    void removeBookmarkFromCollection() {
        boolean z;
        synchronized (this) {
            ArrayList<AdobeLibraryBookmark> bookmarks = this.mMainCollection.getBookmarks();
            for (AdobeLibraryCollection adobeLibraryCollection : this.mCollections) {
                if (adobeLibraryCollection.isPublic()) {
                    ArrayList arrayList = new ArrayList(adobeLibraryCollection.getLibraries());
                    for (int i = 0; i < arrayList.size(); i++) {
                        AdobeLibraryComposite adobeLibraryComposite = (AdobeLibraryComposite) arrayList.get(i);
                        Iterator<AdobeLibraryBookmark> it = bookmarks.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (it.next().bookmaarkID.equals(adobeLibraryComposite.getLibraryId())) {
                                    z = true;
                                    break;
                                }
                            } else {
                                z = false;
                                break;
                            }
                        }
                        if (!z) {
                            adobeLibraryCollection.removeLibrary(adobeLibraryComposite.getLibraryId());
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00b2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void bookmarksChanged() {
        /*
            r11 = this;
            r4 = 0
            monitor-enter(r11)
            com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection r1 = r11.mMainCollection     // Catch: java.lang.Throwable -> L4e
            java.util.ArrayList r6 = r1.getBookmarks()     // Catch: java.lang.Throwable -> L4e
            if (r6 == 0) goto L51
            java.util.Iterator r5 = r6.iterator()     // Catch: java.lang.Throwable -> L4e
        Le:
            boolean r1 = r5.hasNext()     // Catch: java.lang.Throwable -> L4e
            if (r1 == 0) goto L51
            java.lang.Object r1 = r5.next()     // Catch: java.lang.Throwable -> L4e
            com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmark r1 = (com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmark) r1     // Catch: java.lang.Throwable -> L4e
            java.util.List<com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection> r2 = r11.mCollections     // Catch: java.lang.Throwable -> L4e
            java.util.Iterator r7 = r2.iterator()     // Catch: java.lang.Throwable -> L4e
        L20:
            boolean r2 = r7.hasNext()     // Catch: java.lang.Throwable -> L4e
            if (r2 == 0) goto Le
            java.lang.Object r2 = r7.next()     // Catch: java.lang.Throwable -> L4e
            com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection r2 = (com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection) r2     // Catch: java.lang.Throwable -> L4e
            boolean r3 = r2.isPublic()     // Catch: java.lang.Throwable -> L4e
            if (r3 == 0) goto L20
            java.lang.String r3 = r1.bookmaarkID     // Catch: java.lang.Throwable -> L4e
            com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite r3 = r2.getLibraryWithId(r3)     // Catch: java.lang.Throwable -> L4e
            if (r3 != 0) goto L20
            r0 = r2
            com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryPublicCollection r0 = (com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryPublicCollection) r0     // Catch: java.lang.Throwable -> L4e
            r3 = r0
            java.lang.String r8 = r1.url     // Catch: java.lang.Throwable -> L4e
            boolean r3 = r3.canLoadLibraryWithURL(r8)     // Catch: java.lang.Throwable -> L4e
            if (r3 == 0) goto L20
            com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryPublicCollection r2 = (com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryPublicCollection) r2     // Catch: java.lang.Throwable -> L4e
            java.lang.String r3 = r1.bookmaarkID     // Catch: java.lang.Throwable -> L4e
            r2.addLibraryWithId(r3)     // Catch: java.lang.Throwable -> L4e
            goto L20
        L4e:
            r1 = move-exception
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L4e
            throw r1
        L51:
            java.util.List<com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection> r1 = r11.mCollections     // Catch: java.lang.Throwable -> L4e
            java.util.Iterator r7 = r1.iterator()     // Catch: java.lang.Throwable -> L4e
        L57:
            boolean r1 = r7.hasNext()     // Catch: java.lang.Throwable -> L4e
            if (r1 == 0) goto Lc3
            java.lang.Object r1 = r7.next()     // Catch: java.lang.Throwable -> L4e
            com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection r1 = (com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection) r1     // Catch: java.lang.Throwable -> L4e
            boolean r2 = r1.isPublic()     // Catch: java.lang.Throwable -> L4e
            if (r2 == 0) goto L57
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4e
            java.util.ArrayList r2 = r1.getLibraries()     // Catch: java.lang.Throwable -> L4e
            r8.<init>(r2)     // Catch: java.lang.Throwable -> L4e
            r5 = r4
        L73:
            int r2 = r8.size()     // Catch: java.lang.Throwable -> L4e
            if (r5 >= r2) goto L57
            java.lang.Object r2 = r8.get(r5)     // Catch: java.lang.Throwable -> L4e
            com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite r2 = (com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite) r2     // Catch: java.lang.Throwable -> L4e
            if (r6 == 0) goto Lc5
            java.util.Iterator r9 = r6.iterator()     // Catch: java.lang.Throwable -> L4e
        L85:
            boolean r3 = r9.hasNext()     // Catch: java.lang.Throwable -> L4e
            if (r3 == 0) goto Lc5
            java.lang.Object r3 = r9.next()     // Catch: java.lang.Throwable -> L4e
            com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmark r3 = (com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryBookmark) r3     // Catch: java.lang.Throwable -> L4e
            java.lang.String r3 = r3.bookmaarkID     // Catch: java.lang.Throwable -> L4e
            java.lang.String r10 = r2.getLibraryId()     // Catch: java.lang.Throwable -> L4e
            boolean r3 = r3.equals(r10)     // Catch: java.lang.Throwable -> L4e
            if (r3 == 0) goto L85
            r3 = 1
        L9e:
            if (r3 != 0) goto Lb2
            r3 = 0
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)     // Catch: java.lang.Throwable -> L4e com.adobe.creativesdk.foundation.storage.AdobeLibraryException -> Lb6
            r1.deleteLibrary(r2, r3)     // Catch: java.lang.Throwable -> L4e com.adobe.creativesdk.foundation.storage.AdobeLibraryException -> Lb6
            java.lang.String r3 = "libraryWasDeleted"
            java.lang.String r2 = r2.getLibraryId()     // Catch: java.lang.Throwable -> L4e com.adobe.creativesdk.foundation.storage.AdobeLibraryException -> Lb6
            r11.sendDelegateMessage(r3, r2)     // Catch: java.lang.Throwable -> L4e com.adobe.creativesdk.foundation.storage.AdobeLibraryException -> Lb6
        Lb2:
            int r2 = r5 + 1
            r5 = r2
            goto L73
        Lb6:
            r2 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.ERROR     // Catch: java.lang.Throwable -> L4e
            java.lang.String r9 = ""
            java.lang.String r10 = ""
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r9, r10, r2)     // Catch: java.lang.Throwable -> L4e
            goto Lb2
        Lc3:
            monitor-exit(r11)     // Catch: java.lang.Throwable -> L4e
            return
        Lc5:
            r3 = r4
            goto L9e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.bookmarksChanged():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0012 A[Catch: all -> 0x0026, TryCatch #0 {, blocks: (B:4:0x0003, B:5:0x0006, B:6:0x000c, B:8:0x0012, B:10:0x001e, B:12:0x0022, B:16:0x0029), top: B:18:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void bookmarksFileSynced(boolean r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            if (r4 == 0) goto L6
            r3.bookmarksChanged()     // Catch: java.lang.Throwable -> L26
        L6:
            java.util.List<com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection> r0 = r3.mCollections     // Catch: java.lang.Throwable -> L26
            java.util.Iterator r1 = r0.iterator()     // Catch: java.lang.Throwable -> L26
        Lc:
            boolean r0 = r1.hasNext()     // Catch: java.lang.Throwable -> L26
            if (r0 == 0) goto L29
            java.lang.Object r0 = r1.next()     // Catch: java.lang.Throwable -> L26
            com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection r0 = (com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection) r0     // Catch: java.lang.Throwable -> L26
            boolean r2 = r0.isPublic()     // Catch: java.lang.Throwable -> L26
            if (r2 == 0) goto Lc
            boolean r2 = r3.includeBookmarkedLibraries     // Catch: java.lang.Throwable -> L26
            if (r2 == 0) goto Lc
            r0.sync()     // Catch: java.lang.Throwable -> L26
            goto Lc
        L26:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L26
            throw r0
        L29:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L26
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryManager.bookmarksFileSynced(boolean):void");
    }

    protected String getBookmarlURL(String str) {
        synchronized (this) {
            ArrayList<AdobeLibraryBookmark> bookmarks = this.mMainCollection.getBookmarks();
            if (bookmarks != null && !bookmarks.isEmpty()) {
                for (AdobeLibraryBookmark adobeLibraryBookmark : bookmarks) {
                    if (adobeLibraryBookmark.bookmaarkID.equals(str)) {
                        return adobeLibraryBookmark.url;
                    }
                }
            }
            return null;
        }
    }
}

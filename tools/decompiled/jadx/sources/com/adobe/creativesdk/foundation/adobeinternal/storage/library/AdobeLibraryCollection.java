package com.adobe.creativesdk.foundation.adobeinternal.storage.library;

import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXSyncGroupMonitor;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeSessionProtocol;
import com.adobe.creativesdk.foundation.auth.AdobeUXAuthManager;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSLibraryEvent;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.storage.model.library.AdobeLibraryXferUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationRoleType;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryCollection implements IAdobeDCXSyncGroupMonitorDelegate {
    private static final String ADOBE_LIBRARY_ROOT_FOLDER_KEY = "ADOBE_LIBRARY_ROOT_FOLDER_KEY";
    private static final String ADOBE_PUBLIC_LIBRARY_ROOT_FOLDER_KEY = "ADOBE_PUBLIC_LIBRARY_ROOT_FOLDER_KEY";
    private static final String AdobeLibraryLibrariesFolderName = "libraries";
    private static final String AdobeLibraryReadOnlyClearedFileName = "clear";
    private static final String AdobeLibraryRenditionsFolderName = "renditions";
    AdobeCloud _cloud;
    HashMap<String, AdobeCollaborationRoleType> _collaborationRoleStateForNewLibs;
    HashMap<String, AdobeCollaborationType> _collaborationStateForNewLibs;
    ArrayList<AdobeLibraryComposite> _deletedLibraries;
    private boolean _isPolling;
    private Date _lastSyncTime;
    private ArrayList<AdobeLibraryComposite> _libraries;
    protected ReentrantLock _listLock;
    AdobeLibraryManager _manager;
    public AdobeDCXSyncGroupMonitor _monitor;
    public boolean _monitorStarted;
    private boolean _monitorUpdating;
    private String _rootLibrariesURL;
    private String _rootRenditionsURL;
    public AdobeLibrarySyncManager _syncManager;
    private AdobeLibraryBookmarkManager bookmarkManager;
    AdobeNetworkHttpRequest bookmarkRequest;

    public AdobeLibraryBookmarkManager getBookmarkManager() {
        if (this.bookmarkManager == null && !isPublic()) {
            this.bookmarkManager = new AdobeLibraryBookmarkManager().initWithCollection(this);
        }
        return this.bookmarkManager;
    }

    public boolean isPublic() {
        return false;
    }

    public boolean canLoadLibraryWithURL(String str) {
        return false;
    }

    public boolean initWithRootFolder(String str, AdobeCloud adobeCloud, AdobeCloudServiceType adobeCloudServiceType, String str2, String str3) throws AdobeLibraryException {
        Object sessionForService;
        URL url;
        initVars();
        this._manager = AdobeLibraryManager.getSharedInstance();
        if (!createFolders(str, adobeCloud)) {
            return false;
        }
        if (adobeCloud != null) {
            this._cloud = adobeCloud;
            if (adobeCloudServiceType == AdobeCloudServiceType.AdobeCloudServiceTypeCommunity && str2 != null && !AdobeLibraryUtils.isJUnitTest()) {
                try {
                    url = new URL(str2);
                } catch (MalformedURLException e2) {
                    AdobeLogger.log(Level.ERROR, "BOOKMARK", "URL Creation execption");
                    url = null;
                }
                sessionForService = AdobeCommunitySession.initWithHTTPService(AdobeLibraryXferUtils.getSharedInstance().getTempServiceForURL(url), "libraries");
            } else if (str2 != null && str2.length() > 0) {
                try {
                    AdobeNetworkHttpService tempServiceForURL = AdobeLibraryXferUtils.getSharedInstance().getTempServiceForURL(new URL(str2));
                    AdobeStorageSession adobeStorageSession = new AdobeStorageSession(tempServiceForURL);
                    adobeStorageSession.setUpService("files", tempServiceForURL);
                    adobeStorageSession.setUpService(AdobeStorageSession.AdobeStorageSessionArchiveServiceTag, tempServiceForURL);
                    adobeStorageSession.setUpService("assets", tempServiceForURL);
                    adobeStorageSession.setUpService("libraries", tempServiceForURL);
                    sessionForService = adobeStorageSession;
                } catch (MalformedURLException e3) {
                    AdobeCloudServiceSession sessionForService2 = adobeCloud.getSessionForService(adobeCloudServiceType);
                    AdobeLogger.log(Level.DEBUG, "StorageSession-endpoint failure", "malformed" + e3.getMessage(), e3);
                    sessionForService = sessionForService2;
                }
            } else {
                sessionForService = adobeCloud.getSessionForService(adobeCloudServiceType);
            }
            this._syncManager = new AdobeLibrarySyncManager();
            this._syncManager.initWithCollection(this, (IAdobeSessionProtocol) sessionForService, str3);
        }
        this._listLock.lock();
        updateLibraries();
        this._listLock.unlock();
        return true;
    }

    private void initVars() {
        this._libraries = null;
        this._deletedLibraries = null;
        this._rootLibrariesURL = null;
        this._rootRenditionsURL = null;
        this._monitorStarted = false;
        this._monitor = null;
        this._monitorUpdating = false;
        this._isPolling = false;
        this._collaborationStateForNewLibs = new HashMap<>();
        this._collaborationRoleStateForNewLibs = new HashMap<>();
        this.bookmarkManager = null;
        this.bookmarkRequest = null;
        this._listLock = new ReentrantLock();
    }

    public ArrayList<AdobeLibraryBookmark> getBookmarks() {
        return getBookmarkManager().bookmarks;
    }

    ArrayList<AdobeLibraryComposite> refreshLibraries() {
        this._listLock.lock();
        try {
            this._libraries = null;
            updateLibraries();
            this._listLock.unlock();
            return this._libraries;
        } catch (Throwable th) {
            this._listLock.unlock();
            throw th;
        }
    }

    public String getRootLibrariesURL() {
        return this._rootLibrariesURL;
    }

    public String getRootRenditionsURL() {
        return this._rootRenditionsURL;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean createFolders(java.lang.String r14, com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud r15) throws com.adobe.creativesdk.foundation.storage.AdobeLibraryException {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection.createFolders(java.lang.String, com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud):boolean");
    }

    private String getCloudIDFromFolder(String str) {
        String strTrimmedAdobeId;
        int iIndexOf;
        String strSubstring;
        int iIndexOf2;
        if (str == null || (iIndexOf = str.indexOf((strTrimmedAdobeId = trimmedAdobeId()))) == -1 || (iIndexOf2 = (strSubstring = str.substring(strTrimmedAdobeId.length() + iIndexOf + 1)).indexOf(URIUtil.SLASH)) == -1) {
            return null;
        }
        return strSubstring.substring(0, iIndexOf2);
    }

    private String trimmedAdobeId() {
        return AdobeUXAuthManager.getSharedAuthManager().getUserProfile().getAdobeID().split("@")[0];
    }

    public void updateLibraries() {
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal;
        AdobeDCXComposite dcxComposite;
        String bookmarlURL;
        if (this._manager.isStarted()) {
            if (this._libraries == null) {
                this._libraries = new ArrayList<>();
                this._deletedLibraries = new ArrayList<>();
            }
            File[] fileArrListFiles = new File(this._rootLibrariesURL).listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file : fileArrListFiles) {
                    if (file.isDirectory()) {
                        String name = (isPublic() && AdobeLibraryUtils.isUUID(file.getName())) ? file.getName() : null;
                        if (name == null || ((bookmarlURL = ((AdobeLibraryManagerInternal) this._manager).getBookmarlURL(name)) != null && canLoadLibraryWithURL(bookmarlURL))) {
                            try {
                                adobeLibraryCompositeInternal = new AdobeLibraryCompositeInternal(file.getPath(), this, name);
                            } catch (AdobeLibraryException e2) {
                                AdobeLogger.log(Level.DEBUG, AdobeLibraryManager.class.getSimpleName(), "Error creating library for path: " + file.getPath(), e2);
                                adobeLibraryCompositeInternal = null;
                            }
                            if (adobeLibraryCompositeInternal != null && adobeLibraryCompositeInternal.getVersion() == 1 && (dcxComposite = adobeLibraryCompositeInternal.getDcxComposite()) != null) {
                                if (!isPublic() && dcxComposite.getCurrent().getCompositeState().compareTo(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) == 0) {
                                    this._deletedLibraries.add(adobeLibraryCompositeInternal);
                                    if (adobeLibraryCompositeInternal.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
                                        if (this._syncManager != null && !this._syncManager.mLibsToLeave.contains(adobeLibraryCompositeInternal.getLibraryId())) {
                                            this._syncManager.mLibsToLeave.add(adobeLibraryCompositeInternal.getLibraryId());
                                        }
                                    } else if (this._syncManager != null && !this._syncManager.mLibsToPush.contains(adobeLibraryCompositeInternal.getLibraryId())) {
                                        this._syncManager.mLibsToPush.add(adobeLibraryCompositeInternal.getLibraryId());
                                    }
                                } else {
                                    this._libraries.add(adobeLibraryCompositeInternal);
                                }
                                if (!isPublic() && dcxComposite.getCurrent().getCompositeState().compareTo(AdobeDCXConstants.AdobeDCXAssetStateModified) == 0 && this._syncManager != null && !this._syncManager.mLibsToPush.contains(adobeLibraryCompositeInternal.getLibraryId())) {
                                    this._syncManager.mLibsToPush.add(adobeLibraryCompositeInternal.getLibraryId());
                                }
                            }
                        }
                    }
                }
                if (!isPublic()) {
                    getBookmarkManager().load();
                }
            }
        }
    }

    public ArrayList<AdobeLibraryComposite> getLibraries() {
        ArrayList<AdobeLibraryComposite> arrayList;
        synchronized (this) {
            if (this._libraries == null) {
                updateLibraries();
            }
            arrayList = this._libraries;
        }
        return arrayList;
    }

    public AdobeLibraryComposite getLibraryWithId(String str) {
        this._listLock.lock();
        try {
            if (this._libraries == null) {
                updateLibraries();
            }
            if (this._libraries != null) {
                for (AdobeLibraryComposite adobeLibraryComposite : this._libraries) {
                    if (adobeLibraryComposite != null && str != null && adobeLibraryComposite.getLibraryId().compareTo(str) == 0) {
                        return adobeLibraryComposite;
                    }
                }
            }
            if (this._deletedLibraries != null) {
                for (AdobeLibraryComposite adobeLibraryComposite2 : this._deletedLibraries) {
                    if (adobeLibraryComposite2 != null && str != null && adobeLibraryComposite2.getLibraryId().compareTo(str) == 0) {
                        return adobeLibraryComposite2;
                    }
                }
            }
            this._listLock.unlock();
            return null;
        } finally {
            this._listLock.unlock();
        }
    }

    protected String pathToLibrary(String str) {
        return AdobeDCXUtils.stringByAppendingLastPathComponent(this._rootLibrariesURL, str);
    }

    public AdobeLibraryComposite getDefaultLibrary() {
        AdobeLibraryComposite adobeLibraryComposite = null;
        if (this._libraries != null) {
            this._listLock.lock();
            try {
                for (AdobeLibraryComposite adobeLibraryComposite2 : this._libraries) {
                    if (adobeLibraryComposite2.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER || (adobeLibraryComposite != null && adobeLibraryComposite2.created() >= adobeLibraryComposite.created())) {
                        adobeLibraryComposite2 = adobeLibraryComposite;
                    }
                    adobeLibraryComposite = adobeLibraryComposite2;
                }
            } finally {
                this._listLock.unlock();
            }
        }
        return adobeLibraryComposite;
    }

    protected void addLibrary(AdobeLibraryComposite adobeLibraryComposite) {
        synchronized (this) {
            this._libraries.add(adobeLibraryComposite);
        }
        ((AdobeLibraryManagerInternal) AdobeLibraryManager.getSharedInstance()).sendDelegateMessage("libraryWasAdded", adobeLibraryComposite);
    }

    public AdobeLibraryComposite createLibraryWithName(String str) {
        AdobeLibraryCompositeInternal adobeLibraryCompositeInternal;
        if (!this._manager.isStarted()) {
            return null;
        }
        try {
            adobeLibraryCompositeInternal = new AdobeLibraryCompositeInternal(str, this);
            e = null;
        } catch (AdobeLibraryException e2) {
            e = e2;
            adobeLibraryCompositeInternal = null;
        }
        synchronized (this) {
            if (adobeLibraryCompositeInternal != null) {
                this._libraries.add(0, adobeLibraryCompositeInternal);
            }
        }
        if (this._syncManager != null) {
            this._syncManager.doSyncOnCommit();
        }
        AdobeLibraryAnalyticsReporter.trackAction(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryCreate, adobeLibraryCompositeInternal, null, null, null, e);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue());
        if (adobeLibraryCompositeInternal != null) {
            adobeAnalyticsETSLibraryEvent.trackContentInfo(adobeLibraryCompositeInternal.getLibraryId(), adobeLibraryCompositeInternal.getName(), "", "library", "" + adobeLibraryCompositeInternal.getAllElements().size());
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
        } else {
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
        }
        return adobeLibraryCompositeInternal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        r3._libraries.remove(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void removeLibrary(java.lang.String r4) {
        /*
            r3 = this;
            java.util.concurrent.locks.ReentrantLock r0 = r3._listLock
            r0.lock()
            java.util.ArrayList<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r0 = r3._libraries     // Catch: java.lang.Throwable -> L2c
            java.util.Iterator r1 = r0.iterator()     // Catch: java.lang.Throwable -> L2c
        Lb:
            boolean r0 = r1.hasNext()     // Catch: java.lang.Throwable -> L2c
            if (r0 == 0) goto L26
            java.lang.Object r0 = r1.next()     // Catch: java.lang.Throwable -> L2c
            com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite r0 = (com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite) r0     // Catch: java.lang.Throwable -> L2c
            java.lang.String r2 = r0.getLibraryId()     // Catch: java.lang.Throwable -> L2c
            int r2 = r2.compareTo(r4)     // Catch: java.lang.Throwable -> L2c
            if (r2 != 0) goto Lb
            java.util.ArrayList<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r1 = r3._libraries     // Catch: java.lang.Throwable -> L2c
            r1.remove(r0)     // Catch: java.lang.Throwable -> L2c
        L26:
            java.util.concurrent.locks.ReentrantLock r0 = r3._listLock
            r0.unlock()
            return
        L2c:
            r0 = move-exception
            java.util.concurrent.locks.ReentrantLock r1 = r3._listLock
            r1.unlock()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection.removeLibrary(java.lang.String):void");
    }

    public boolean leaveSharedLibraryWithId(String str) throws AdobeLibraryException {
        boolean zDeleteLibrary;
        if (!this._manager.isStarted()) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null);
        }
        AdobeLibraryComposite libraryWithId = getLibraryWithId(str);
        if (libraryWithId == null || libraryWithId.getCollaboration() != AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorCannotLeaveLibraryOwnedByUser, null, null, null);
        }
        try {
            zDeleteLibrary = deleteLibrary(libraryWithId, true);
            e = null;
        } catch (AdobeLibraryException e2) {
            e = e2;
            zDeleteLibrary = false;
        }
        if (this._syncManager != null) {
            this._syncManager.doSyncOnCommit();
        }
        AdobeLibraryAnalyticsReporter.trackAction(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryDelete, libraryWithId, null, null, null, e);
        return zDeleteLibrary;
    }

    public boolean deleteLibraryWithId(String str) throws AdobeLibraryException {
        boolean zDeleteLibrary;
        if (!this._manager.isStarted()) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null);
        }
        AdobeLibraryComposite libraryWithId = getLibraryWithId(str);
        if (libraryWithId == null || libraryWithId.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorCannotDeleteLibrarySharedWithUser, null, null, null);
        }
        try {
            zDeleteLibrary = deleteLibrary(libraryWithId, true);
            e = null;
        } catch (AdobeLibraryException e2) {
            e = e2;
            zDeleteLibrary = false;
        }
        if (this._syncManager != null) {
            this._syncManager.doSyncOnCommit();
        }
        AdobeLibraryAnalyticsReporter.trackAction(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryDelete, libraryWithId, null, null, null, e);
        return zDeleteLibrary;
    }

    public boolean deleteLibrary(AdobeLibraryComposite adobeLibraryComposite, Boolean bool) throws AdobeLibraryException {
        boolean zDeleteLibrary = true;
        if (adobeLibraryComposite != null) {
            new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppDelete.getValue()).trackContentInfo(adobeLibraryComposite.getLibraryId(), adobeLibraryComposite.getName(), "", "library", "" + adobeLibraryComposite.getAllElements().size());
            String libraryId = adobeLibraryComposite.getLibraryId();
            if (!bool.booleanValue()) {
                try {
                    ((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().resetBinding();
                } catch (AdobeDCXException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryCollection.class.getSimpleName(), null, e2);
                }
                try {
                    this._listLock.lock();
                    this._deletedLibraries.remove(adobeLibraryComposite);
                    this._listLock.unlock();
                } finally {
                }
            } else if (((AdobeLibraryCompositeInternal) adobeLibraryComposite).getDcxComposite().isBound()) {
                this._listLock.lock();
                try {
                    this._deletedLibraries.add(adobeLibraryComposite);
                    this._listLock.unlock();
                    if (this._syncManager != null) {
                        if (adobeLibraryComposite.getCollaboration() == AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_SHAREDWITHUSER) {
                            this._syncManager.queueLibraryForLeave(libraryId);
                        } else {
                            this._syncManager.queueLibraryForPush(libraryId);
                        }
                    }
                } finally {
                }
            } else {
                this._listLock.lock();
                try {
                    if (this._syncManager != null) {
                        this._syncManager.mLibsToPull.remove(libraryId);
                        this._syncManager.mLibsToPush.remove(libraryId);
                        this._syncManager.mConflictedLibs.remove(libraryId);
                        this._syncManager.mComponentsToPull.remove(libraryId);
                        this._syncManager.mLibsToDelete.remove(libraryId);
                        this._syncManager.mLibsPendingDelete.remove(libraryId);
                    }
                    this._deletedLibraries.remove(adobeLibraryComposite);
                    this._listLock.unlock();
                } finally {
                }
            }
            zDeleteLibrary = ((AdobeLibraryCompositeInternal) adobeLibraryComposite).deleteLibrary();
            try {
                this._listLock.lock();
                this._libraries.remove(adobeLibraryComposite);
            } finally {
            }
        }
        return zDeleteLibrary;
    }

    public void resetBindingOnLibrary(String str) throws AdobeDCXException {
        this._listLock.lock();
        try {
            this._syncManager.mLibsPendingDelete.remove(str);
            this._listLock.unlock();
            AdobeLibraryComposite libraryWithId = getLibraryWithId(str);
            if (libraryWithId != null) {
                ((AdobeLibraryCompositeInternal) libraryWithId).lock();
                try {
                    ((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite().resetBinding();
                    ArrayList<String> arrayList = new ArrayList();
                    List<AdobeDCXComponent> listDetermineComponentsWithoutLocalCopy = AdobeLibraryMerger.determineComponentsWithoutLocalCopy(((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite());
                    if (listDetermineComponentsWithoutLocalCopy != null) {
                        Iterator<AdobeDCXComponent> it = listDetermineComponentsWithoutLocalCopy.iterator();
                        while (it.hasNext()) {
                            AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent = ((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite().getCurrent().findParentOfComponent(it.next());
                            if (adobeDCXManifestNodeFindParentOfComponent != null) {
                                ((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite().getCurrent().removeChild(adobeDCXManifestNodeFindParentOfComponent);
                                arrayList.add(adobeDCXManifestNodeFindParentOfComponent.getNodeId());
                            }
                        }
                    }
                    ((AdobeLibraryCompositeInternal) libraryWithId).unlock();
                    for (String str2 : arrayList) {
                        if (this._manager.isTypeInElementTypesFilter(str2)) {
                            ((AdobeLibraryManagerInternal) this._manager).sendDelegateMessage("elementWasRemoved", libraryWithId, str2, libraryWithId.getElementWithId(str2).getType());
                        }
                    }
                    this._syncManager.queueLibraryForPush(str);
                    this._syncManager.doSyncOnCommit();
                } catch (AdobeDCXException e2) {
                    ((AdobeLibraryCompositeInternal) libraryWithId).unlock();
                    throw e2;
                }
            }
        } catch (Throwable th) {
            this._listLock.unlock();
            throw th;
        }
    }

    public void libraryChanged(AdobeLibraryComposite adobeLibraryComposite) {
        if (this._syncManager != null) {
            this._syncManager.queueLibraryForPush(adobeLibraryComposite.getLibraryId());
        }
    }

    void libraryCompositeChangedBySync(AdobeDCXComposite adobeDCXComposite, boolean z) {
        AdobeStorageResource adobeStorageResourceResourceForComposite;
        if (this._monitor != null && ((AdobeLibraryManagerInternal) this._manager).canSync() && (adobeStorageResourceResourceForComposite = this._monitor.resourceForComposite(adobeDCXComposite)) != null) {
            this._monitor.updateLocalAsset(adobeStorageResourceResourceForComposite, z);
        }
    }

    void updateCollaborationStateForNewLibrary(AdobeDCXComposite adobeDCXComposite, String str) {
        synchronized (this) {
        }
    }

    public boolean initSync(boolean z) {
        if (z) {
            return initializeMonitor(z);
        }
        return true;
    }

    public void shutdownSync() {
        if (this._isPolling) {
            stopPolling();
        }
        if (this.bookmarkRequest != null) {
            this.bookmarkRequest.closeStream();
        }
        if (this._syncManager != null) {
            this._syncManager.reset();
        }
    }

    boolean isPolling() {
        return this._monitor != null && this._monitorStarted && this._isPolling;
    }

    public void startPolling() {
        startMonitor();
    }

    public void stopPolling() {
        stopMonitor();
    }

    public boolean sync() {
        return sync(false);
    }

    boolean sync(boolean z) {
        if (this._syncManager == null) {
            return false;
        }
        if (!this._syncManager.isSyncing()) {
            if (z) {
                this._monitor.updateAndForceSyncGroupRefresh();
            } else {
                this._monitor.update();
            }
        }
        return true;
    }

    public void cancelSync() {
        if (this._syncManager != null) {
            this._syncManager.cancelAllTransfers();
        }
        if (this.bookmarkRequest != null) {
            this.bookmarkRequest.closeStream();
        }
    }

    public void syncCompleted() {
        synchronized (this) {
            if (!isSyncing()) {
                ((AdobeLibraryManagerInternal) this._manager).syncCompletedForCollection(this);
            }
        }
    }

    boolean initializeMonitor(boolean z) {
        if (this._syncManager == null || this._syncManager.serviceSession() == null) {
            return false;
        }
        this._isPolling = z;
        this._monitor = AdobeDCXSyncGroupMonitor.assetMonitorForSyncGroup(AdobeLibraryCompositeConstantsInternal.AdobeLibraryDCXGroupName, this._syncManager.serviceSession(), this, null);
        this._monitor.setUpdateFrequency(((AdobeLibraryManagerInternal) this._manager).getAutoSyncInterval());
        ((AdobeLibraryManagerInternal) this._manager).onNetworkStatus(AdobeNetworkReachabilityUtil.getSharedInstance().getNetworkStatus());
        synchronized (this) {
            startMonitor();
        }
        return true;
    }

    void startMonitor() {
        if (!this._monitorStarted && ((AdobeLibraryManagerInternal) this._manager).canSync()) {
            ArrayList<AdobeStorageResource> arrayList = new ArrayList<>();
            this._listLock.lock();
            try {
                Iterator<AdobeLibraryComposite> it = this._libraries.iterator();
                while (it.hasNext()) {
                    AdobeStorageResource adobeStorageResourceResourceForComposite = this._monitor.resourceForComposite(((AdobeLibraryCompositeInternal) it.next()).getDcxComposite());
                    if (adobeStorageResourceResourceForComposite != null) {
                        arrayList.add(adobeStorageResourceResourceForComposite);
                    }
                }
                this._listLock.unlock();
                this._monitor.startWithLocalAssets(arrayList);
                this._monitorStarted = true;
            } catch (Throwable th) {
                this._listLock.unlock();
                throw th;
            }
        }
    }

    void stopMonitor() {
        if (this._monitorStarted) {
            this._monitorStarted = false;
            this._monitor.stop();
        }
    }

    public void setUpdateFrequency(long j) {
        this._monitor.setUpdateFrequency(j);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void monitorHasStartedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
        synchronized (this) {
            this._monitorUpdating = true;
            this._collaborationStateForNewLibs.clear();
            this._collaborationRoleStateForNewLibs.clear();
        }
        ((AdobeLibraryManagerInternal) this._manager).syncStartedForCollection(this);
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void monitorHasFinishedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void monitorHasFinishedUpdate(AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor, boolean z) {
        this._syncManager.doSync(z);
        if (((AdobeLibraryManagerInternal) this._manager).shouldincludeBookmarkedLibraries()) {
            syncBookmarks();
        }
        synchronized (this) {
            this._monitorUpdating = false;
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void assetWasUpdated(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
        if (this._monitorStarted) {
            this._syncManager.queueLibraryForPull(adobeStorageResource.name);
            AdobeLibraryComposite libraryWithId = getLibraryWithId(adobeStorageResource.name);
            if (libraryWithId != null) {
                if (adobeStorageResource.collaboration != libraryWithId.getCollaboration()) {
                    ((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite().setCollaborationType(adobeStorageResource.collaboration);
                    try {
                        ((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite().commitChanges();
                    } catch (AdobeDCXException e2) {
                    }
                    ((AdobeLibraryManagerInternal) this._manager).sendDelegateMessage("libraryWasUpdated", libraryWithId);
                }
                if (adobeStorageResource.collaboration_role != libraryWithId.getCollaborationRole()) {
                    ((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite().setCollaborationRoleType(adobeStorageResource.collaboration_role);
                    try {
                        ((AdobeLibraryCompositeInternal) libraryWithId).getDcxComposite().commitChanges();
                    } catch (AdobeDCXException e3) {
                    }
                    ((AdobeLibraryManagerInternal) this._manager).sendDelegateMessage("libraryWasUpdated", libraryWithId);
                    return;
                }
                return;
            }
            this._listLock.lock();
            try {
                this._collaborationStateForNewLibs.put(adobeStorageResource.name, adobeStorageResource.collaboration);
                this._collaborationRoleStateForNewLibs.put(adobeStorageResource.name, adobeStorageResource.collaboration_role);
            } finally {
                this._listLock.unlock();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void assetWasDeleted(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
        if (this._monitorStarted && adobeStorageResource.name != null) {
            if (getLibraryWithId(adobeStorageResource.name) != null) {
                this._listLock.lock();
                try {
                    if (!this._syncManager.mLibsToDelete.contains(adobeStorageResource.name)) {
                        this._syncManager.cancelPushForLibrary(adobeStorageResource.name);
                        this._syncManager.addLibraryToPendingDelete(adobeStorageResource.name);
                        this._listLock.unlock();
                        ((AdobeLibraryManagerInternal) this._manager).handleDeleteLibraryWithId(adobeStorageResource.name, this);
                    }
                } finally {
                    this._listLock.unlock();
                }
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.IAdobeDCXSyncGroupMonitorDelegate
    public void assetWasAdded(AdobeStorageResource adobeStorageResource, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) {
        if (this._monitorStarted) {
            this._syncManager.queueLibraryForPull(adobeStorageResource.name);
            this._listLock.lock();
            try {
                this._collaborationStateForNewLibs.put(adobeStorageResource.name, adobeStorageResource.collaboration);
                this._collaborationRoleStateForNewLibs.put(adobeStorageResource.name, adobeStorageResource.collaboration_role);
            } finally {
                this._listLock.unlock();
            }
        }
    }

    public void reportElementUsed(AdobeLibraryComposite adobeLibraryComposite, AdobeLibraryElement adobeLibraryElement, AdobeLibraryRepresentation adobeLibraryRepresentation, String str) {
        JSONObject jSONObject;
        if (str != null) {
            jSONObject = new JSONObject();
            try {
                jSONObject.put("opType", str);
            } catch (JSONException e2) {
            }
        } else {
            jSONObject = null;
        }
        AdobeLibraryAnalyticsReporter.trackAction(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementUse, adobeLibraryComposite, adobeLibraryElement, adobeLibraryRepresentation, jSONObject, null);
    }

    public void syncBookmarks() {
        synchronized (this) {
            this.bookmarkRequest = getBookmarkManager().sync(new IBookmarkSyncCompletionHandler() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection.1
                @Override // com.adobe.creativesdk.foundation.adobeinternal.storage.library.IBookmarkSyncCompletionHandler
                public void onComplete(Boolean bool) {
                    synchronized (this) {
                        AdobeLibraryCollection.this.bookmarkRequest = null;
                        ((AdobeLibraryManagerInternal) AdobeLibraryCollection.this._manager).bookmarksFileSynced(bool.booleanValue());
                        AdobeLogger.log(Level.INFO, "BOOKMARK", "syncBookmarks ");
                        if (!this.isSyncing()) {
                            AdobeLogger.log(Level.INFO, "BOOKMARK", "syncBookmarks  isSyncing " + this.isSyncing());
                            ((AdobeLibraryManagerInternal) AdobeLibraryCollection.this._manager).syncCompletedForCollection(this);
                        }
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(Object obj) {
                    AdobeLibraryCollection.this.bookmarkRequest = null;
                    if (!this.isSyncing()) {
                        ((AdobeLibraryManagerInternal) AdobeLibraryCollection.this._manager).syncCompletedForCollection(this);
                    }
                }
            });
        }
    }

    public boolean isSyncing() {
        return this._syncManager.isSyncing() || this._monitorUpdating || this.bookmarkRequest != null;
    }

    public void setPullLibsPriority(AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        if (this._syncManager != null) {
            this._syncManager.setPullLibsPriority(adobeNetworkRequestPriority);
        }
    }

    public void setPushLibsPriority(AdobeNetworkRequestPriority adobeNetworkRequestPriority) {
        if (this._syncManager != null) {
            this._syncManager.setPushLibsPriority(adobeNetworkRequestPriority);
        }
    }
}

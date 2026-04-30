package com.adobe.creativesdk.foundation.adobeinternal.storage.dcx;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageFileUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationRoleType;
import com.adobe.creativesdk.foundation.storage.AdobeCollaborationType;
import java.io.File;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeDCXComposite {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static volatile Map<String, AdobeDCXComposite> mInstanceCache;
    private Set<AdobeDCXManifest> mActiveManifests;
    private WeakReference<AdobeDCXManifest> mActivePushManifest;
    private boolean mAutoRemoveUnusedLocalFiles;
    private AdobeDCXCompositeBranch mBase;
    private AdobeCollaborationRoleType mCollaborationRoleType;
    private AdobeCollaborationType mCollaborationType;
    private String mCommittedCompositeArchivalState;
    private String mCommittedCompositeState;
    private String mCompositeId;
    private WeakReference<AdobeDCXController> mController;
    private AdobeDCXCompositeMutableBranch mCurrent;
    private Date mCurrentBranchCommittedAtDate;
    private AtomicInteger mDeleteFilesInBackgroundRequestCounter;
    private IAdobeDCXCompositeFileDeletionHandler mFileDeletionHandler;
    private URI mHref;
    private Set<String> mInflightLocalComponentFiles;
    private boolean mInitializeMetadataFromManifest;
    private JSONObject mLinks;
    private AdobeDCXCompositeBranch mLocalCommitted;
    private IAdobeDCXLocalStorageProtocol mLocalStorage;
    private String mLocalStoragePath;
    private boolean mLockImmutableComponents;
    private long mOrdinal;
    private String mPath;
    private AdobeDCXCompositeBranch mPulled;
    private AdobeDCXCompositeBranch mPushed;
    private boolean mReadOnly;

    interface innerInterfaceForLaterExecution {
        void perform();
    }

    static {
        $assertionsDisabled = !AdobeDCXComposite.class.desiredAssertionStatus();
    }

    public AdobeDCXComposite(String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme, URI uri, String str2, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile;
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile2;
        AdobeDCXException adobeDCXException = null;
        this.mDeleteFilesInBackgroundRequestCounter = new AtomicInteger();
        this.mActivePushManifest = null;
        if (adobeDCXController != null) {
            this.mController = new WeakReference<>(adobeDCXController);
        }
        this.mHref = uri;
        this.mCompositeId = str2;
        this.mLocalStorage = AdobeDCXUtils.localStorageClassObjForScheme(adobeDCXLocalStorageScheme);
        this.mLocalStoragePath = str;
        this.mDeleteFilesInBackgroundRequestCounter.set(0);
        this.mInitializeMetadataFromManifest = true;
        this.mAutoRemoveUnusedLocalFiles = true;
        this.mLockImmutableComponents = false;
        this.mReadOnly = false;
        this.mCollaborationType = AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
        this.mActiveManifests = new HashSet();
        this.mInflightLocalComponentFiles = new HashSet();
        if (str != null) {
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getCurrentManifestPath());
            } catch (AdobeDCXException e2) {
                e = e2;
                adobeDCXManifestCreateManifestWithContentsOfFile = null;
            }
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
            } catch (AdobeDCXException e3) {
                e = e3;
                AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e);
            }
            if (adobeDCXManifestCreateManifestWithContentsOfFile != null) {
                updateCurrentBranchWithManifest(adobeDCXManifestCreateManifestWithContentsOfFile, true);
            } else {
                try {
                    adobeDCXManifestCreateManifestWithContentsOfFile2 = AdobeDCXManifest.createManifestWithContentsOfFile(getPulledManifestPath());
                } catch (AdobeDCXException e4) {
                    e = e4;
                    adobeDCXManifestCreateManifestWithContentsOfFile2 = null;
                }
                try {
                    adobeDCXManifestCreateManifestWithContentsOfFile2.setCompositeLinks(this.mLinks);
                } catch (AdobeDCXException e5) {
                    e = e5;
                    AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e);
                    adobeDCXException = e;
                }
                if (adobeDCXManifestCreateManifestWithContentsOfFile2 != null) {
                    updatePulledBranchWithManifest(adobeDCXManifestCreateManifestWithContentsOfFile2);
                    if (this.mHref == null) {
                        this.mHref = adobeDCXManifestCreateManifestWithContentsOfFile2.getCompositeHref();
                    }
                    if (this.mCompositeId == null) {
                        this.mCompositeId = adobeDCXManifestCreateManifestWithContentsOfFile2.getCompositeId();
                    }
                    this.mCollaborationType = adobeDCXManifestCreateManifestWithContentsOfFile2.getCollaborationType();
                    this.mCollaborationRoleType = adobeDCXManifestCreateManifestWithContentsOfFile2.getCollaborationRoleType();
                } else {
                    AdobeLogger.log(Level.DEBUG, "CSDK::Release::DCX", "Inside AdobeDCXComposite:AdobeDCXComposite negative path should never come here");
                    throw adobeDCXException;
                }
            }
        }
        if (adobeDCXController != null) {
            adobeDCXController.attachComposite(this);
        }
    }

    public AdobeDCXComposite(String str, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        this(str, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite, (URI) null, (String) null, adobeDCXController);
    }

    public AdobeDCXComposite(String str, String str2, String str3, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme, String str4) throws AdobeDCXException {
        AdobeDCXException e2;
        AdobeDCXManifest adobeDCXManifestCreateManifestWithName;
        this((String) null, adobeDCXLocalStorageScheme, (URI) null, str4, (AdobeDCXController) null);
        this.mLocalStorage = AdobeDCXUtils.localStorageClassObjForScheme(adobeDCXLocalStorageScheme);
        this.mLocalStoragePath = str3;
        this.mDeleteFilesInBackgroundRequestCounter.set(0);
        this.mInitializeMetadataFromManifest = true;
        this.mAutoRemoveUnusedLocalFiles = true;
        this.mLockImmutableComponents = false;
        this.mCollaborationType = AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
        this.mActiveManifests = new HashSet();
        this.mInflightLocalComponentFiles = new HashSet();
        try {
            adobeDCXManifestCreateManifestWithName = AdobeDCXManifest.createManifestWithName(str, str2);
        } catch (AdobeDCXException e3) {
            e2 = e3;
            adobeDCXManifestCreateManifestWithName = null;
        }
        try {
            adobeDCXManifestCreateManifestWithName.setCompositeLinks(this.mLinks);
        } catch (AdobeDCXException e4) {
            e2 = e4;
            AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e2);
        }
        updateCurrentBranchWithManifest(adobeDCXManifestCreateManifestWithName, false);
        if (this.mCurrent != null && this.mCurrent.getManifest() != null) {
            if (str4 != null) {
                this.mCurrent.getManifest().setCompositeId(str4);
            } else {
                str4 = this.mCurrent.getManifest().getCompositeId();
            }
        }
        if (this.mCurrent != null) {
            this.mCurrent.setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateUnmodified);
            if (this.mCurrent.getManifest() != null) {
                this.mCurrent.getManifest().isDirty = true;
            }
        }
        AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXComposite", "composite created: " + str4 + Arrays.toString(Thread.currentThread().getStackTrace()), str3);
    }

    public AdobeDCXComposite(String str, String str2, String str3, String str4, URI uri, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        this(str, str2, str3, AdobeDCXLocalStorageScheme.AdobeDCXLocalStorageSchemeCopyOnWrite, str4);
        setHref(uri);
        if (adobeDCXController != null) {
            setController(adobeDCXController);
        }
    }

    public AdobeDCXComposite(AdobeDCXManifest adobeDCXManifest, String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) {
        this.mDeleteFilesInBackgroundRequestCounter = new AtomicInteger();
        this.mActivePushManifest = null;
        updateCurrentBranchWithManifest(adobeDCXManifest, true);
        this.mCompositeId = adobeDCXManifest.getCompositeId();
        this.mLocalStorage = AdobeDCXUtils.localStorageClassObjForScheme(adobeDCXLocalStorageScheme);
        this.mLocalStoragePath = str;
        this.mDeleteFilesInBackgroundRequestCounter.set(0);
        this.mInitializeMetadataFromManifest = true;
        this.mAutoRemoveUnusedLocalFiles = true;
        this.mLockImmutableComponents = false;
        this.mCollaborationType = AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
        this.mActiveManifests = new HashSet();
        this.mInflightLocalComponentFiles = new HashSet();
    }

    @Deprecated
    public AdobeDCXComposite(String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) throws AdobeDCXException {
        this(str, adobeDCXLocalStorageScheme, (URI) null, (String) null, (AdobeDCXController) null);
    }

    @Deprecated
    public AdobeDCXComposite(String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        this(str, adobeDCXLocalStorageScheme, (URI) null, (String) null, adobeDCXController);
    }

    @Deprecated
    public AdobeDCXComposite(URI uri, String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) throws AdobeDCXException {
        this((String) null, adobeDCXLocalStorageScheme, uri, str, (AdobeDCXController) null);
    }

    private static Map<String, AdobeDCXComposite> getInstanceCache() {
        if (mInstanceCache == null) {
            synchronized (AdobeDCXComposite.class) {
                if (mInstanceCache == null) {
                    mInstanceCache = new HashMap();
                }
            }
        }
        return mInstanceCache;
    }

    private static AdobeDCXComposite cacheCheckAndAdd(Map<String, AdobeDCXComposite> map, String str, AdobeDCXComposite adobeDCXComposite, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        synchronized (map) {
            AdobeDCXComposite adobeDCXComposite2 = map.get(str);
            if (adobeDCXComposite2 != null) {
                if (adobeDCXController != null && adobeDCXComposite2.getController() != null && !adobeDCXController.getInstanceId().equals(adobeDCXComposite2.getController().getInstanceId())) {
                    throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInstanceCacheConflict, "Controller mismatch.");
                }
                if (adobeDCXComposite2.getController() == null) {
                    adobeDCXComposite2.setController(adobeDCXController);
                }
                return adobeDCXComposite2;
            }
            if (adobeDCXComposite != null) {
                map.put(str, adobeDCXComposite);
            }
            return adobeDCXComposite;
        }
    }

    public static AdobeDCXComposite compositeStoredAt(String str, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        AdobeDCXComposite adobeDCXCompositeCacheCheckAndAdd = null;
        if (!$assertionsDisabled && str == null) {
            throw new AssertionError("Param localStoragePath must not be null");
        }
        Map<String, AdobeDCXComposite> instanceCache = getInstanceCache();
        try {
            adobeDCXCompositeCacheCheckAndAdd = cacheCheckAndAdd(instanceCache, str, null, adobeDCXController);
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e2);
        }
        if (adobeDCXCompositeCacheCheckAndAdd == null) {
            return cacheCheckAndAdd(instanceCache, str, new AdobeDCXComposite(str, adobeDCXController), adobeDCXController);
        }
        return adobeDCXCompositeCacheCheckAndAdd;
    }

    @Deprecated
    public static AdobeDCXComposite createCompositeFromHref(URI uri, String str, String str2, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) throws AdobeDCXException {
        AdobeDCXComposite adobeDCXComposite = new AdobeDCXComposite(uri, str, adobeDCXLocalStorageScheme);
        if (adobeDCXComposite != null) {
            adobeDCXComposite.setPath(str2);
        }
        return adobeDCXComposite;
    }

    public static AdobeDCXComposite newCompositeWithHref(URI uri, String str, String str2, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        AdobeDCXComposite adobeDCXComposite;
        if (str2 == null) {
            return new AdobeDCXComposite(null, null, null, str, uri, adobeDCXController);
        }
        getInstanceCache();
        synchronized (mInstanceCache) {
            if (mInstanceCache.get(str2) != null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInstanceCacheConflict, String.format("A composite instance with the storage path %s does already exist.", str2));
            }
            adobeDCXComposite = new AdobeDCXComposite(null, null, str2, str, uri, adobeDCXController);
            mInstanceCache.put(str2, adobeDCXComposite);
        }
        return adobeDCXComposite;
    }

    @Deprecated
    public static AdobeDCXComposite createCompositeFromResource(AdobeStorageResourceItem adobeStorageResourceItem, String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) throws AdobeDCXException {
        return createCompositeFromHref(adobeStorageResourceItem.href, adobeStorageResourceItem.name, str, adobeDCXLocalStorageScheme);
    }

    public static AdobeDCXComposite createCompositeFromResource(AdobeStorageResourceItem adobeStorageResourceItem, String str, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        return newCompositeWithHref(adobeStorageResourceItem.href, adobeStorageResourceItem.name, str, adobeDCXController);
    }

    public static AdobeDCXComposite createCompositeWithName(String str, String str2, URI uri, String str3, String str4, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        AdobeDCXComposite adobeDCXComposite;
        if (str4 == null) {
            return new AdobeDCXComposite(str, str2, null, str3, uri, adobeDCXController);
        }
        getInstanceCache();
        synchronized (mInstanceCache) {
            if (mInstanceCache.get(str4) != null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInstanceCacheConflict, String.format("A composite instance with the storage path %s does already exist.", str4));
            }
            adobeDCXComposite = new AdobeDCXComposite(str, str2, str4, str3, uri, adobeDCXController);
            mInstanceCache.put(str4, adobeDCXComposite);
        }
        return adobeDCXComposite;
    }

    public static AdobeDCXComposite createCompositeAsCopyOf(AdobeDCXComposite adobeDCXComposite, String str, String str2, URI uri, String str3, String str4, AdobeDCXController adobeDCXController, AdobeStorageSession adobeStorageSession) throws AdobeDCXException {
        return adobeDCXComposite.getLocalStorage().createCompositeAsCopyOf(adobeDCXComposite, adobeStorageSession, str, str2, str4, str3, uri, adobeDCXController);
    }

    public static AdobeDCXComposite createCompositeFromManifest(AdobeDCXManifest adobeDCXManifest, String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) throws AdobeDCXException {
        AdobeDCXComposite adobeDCXComposite;
        if (str == null) {
            return new AdobeDCXComposite(adobeDCXManifest, (String) null, adobeDCXLocalStorageScheme);
        }
        getInstanceCache();
        synchronized (mInstanceCache) {
            if (mInstanceCache.get(str) != null) {
                throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInstanceCacheConflict, String.format("A composite instance with the storage path %s does already exist.", str));
            }
            adobeDCXComposite = new AdobeDCXComposite(adobeDCXManifest, str, adobeDCXLocalStorageScheme);
            mInstanceCache.put(str, adobeDCXComposite);
        }
        return adobeDCXComposite;
    }

    @Deprecated
    public static AdobeDCXComposite createCompositeFromPath(String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme) throws AdobeDCXException {
        return new AdobeDCXComposite(str, adobeDCXLocalStorageScheme);
    }

    @Deprecated
    public static AdobeDCXComposite createCompositeFromPath(String str, AdobeDCXLocalStorageScheme adobeDCXLocalStorageScheme, AdobeDCXController adobeDCXController) throws AdobeDCXException {
        return new AdobeDCXComposite(str, adobeDCXLocalStorageScheme, adobeDCXController);
    }

    public void setFileDeletionHandler(IAdobeDCXCompositeFileDeletionHandler iAdobeDCXCompositeFileDeletionHandler) {
        this.mFileDeletionHandler = iAdobeDCXCompositeFileDeletionHandler;
    }

    public AdobeDCXManifest getManifest() {
        if (this.mCurrent != null) {
            return this.mCurrent.getManifest();
        }
        return null;
    }

    @Deprecated
    public void setManifest(AdobeDCXManifest adobeDCXManifest) {
        AdobeDCXManifest manifest = getManifest();
        if (manifest != adobeDCXManifest) {
            if (adobeDCXManifest == null && manifest != null) {
                this.mCompositeId = getManifest().getCompositeId();
            }
            updateCurrentBranchWithManifest(adobeDCXManifest, true);
            AdobeDCXManifest manifest2 = getManifest();
            if (manifest2 != null) {
                this.mCompositeId = manifest2.getCompositeId();
                manifest2.isDirty = true;
            }
        }
    }

    public String getCompositeId() {
        return getManifest() == null ? this.mCompositeId : getManifest().getCompositeId();
    }

    public void setCompositeId(String str) {
        if (getManifest() == null) {
            this.mCompositeId = str;
        } else {
            getManifest().setCompositeId(str);
        }
    }

    @Deprecated
    public String getPath() {
        return this.mLocalStoragePath;
    }

    @Deprecated
    public void setPath(String str) {
        this.mLocalStoragePath = str;
    }

    public String getLocalStoragePath() {
        return this.mLocalStoragePath;
    }

    public boolean setLocalStoragePath(String str) throws AdobeDCXException {
        boolean z;
        if ((str == null && this.mLocalStoragePath == null) || AdobeDCXUtils.areStringsEqual(str, this.mLocalStoragePath)) {
            z = false;
        } else {
            Map<String, AdobeDCXComposite> instanceCache = getInstanceCache();
            synchronized (instanceCache) {
                if (str != null) {
                    z = instanceCache.get(str) != null;
                } else {
                    z = false;
                }
                if (!z) {
                    if (this.mLocalStoragePath != null) {
                        instanceCache.remove(this.mLocalStoragePath);
                    }
                    if (str != null) {
                        instanceCache.put(str, this);
                    }
                    this.mLocalStoragePath = str;
                }
            }
            if (z) {
                throw new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorInstanceCacheConflict, String.format("A composite instance with the storage path %s does alreay exist.", str));
            }
        }
        return !z;
    }

    public URI getHref() {
        return getManifest() == null ? this.mHref : getManifest().getCompositeHref();
    }

    public void setHref(URI uri) {
        if (getManifest() == null) {
            this.mHref = uri;
        } else {
            getManifest().setCompositeHref(uri);
        }
    }

    public boolean isBound() {
        return getManifest() == null ? this.mHref != null : getManifest().isBound();
    }

    public AdobeCollaborationType getCollaborationType() {
        return getManifest() == null ? this.mCollaborationType : getManifest().getCollaborationType();
    }

    public boolean isShared() {
        return getCollaborationType() != AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
    }

    public boolean isReadOnly() {
        return getCollaborationRoleType() == AdobeCollaborationRoleType.ADOBE_COLLABORATION_ROLE_TYPE_VIEWER;
    }

    public void setCollaborationType(AdobeCollaborationType adobeCollaborationType) {
        if (getManifest() == null) {
            this.mCollaborationType = adobeCollaborationType;
        } else {
            getManifest().setCollaborationType(adobeCollaborationType);
        }
    }

    public AdobeCollaborationRoleType getCollaborationRoleType() {
        return getManifest() == null ? this.mCollaborationRoleType : getManifest().getCollaborationRoleType();
    }

    public void setCollaborationRoleType(AdobeCollaborationRoleType adobeCollaborationRoleType) {
        if (getManifest() == null) {
            this.mCollaborationRoleType = adobeCollaborationRoleType;
        } else {
            getManifest().setCollaborationRoleType(adobeCollaborationRoleType);
        }
    }

    public JSONObject getLinks() {
        return this.mLinks;
    }

    public void setLinks(JSONObject jSONObject) {
        this.mLinks = jSONObject;
    }

    public boolean hasLinks() {
        return this.mLinks != null;
    }

    public void setController(AdobeDCXController adobeDCXController) {
        if (!$assertionsDisabled && getController() != null && adobeDCXController != getController()) {
            throw new AssertionError("Reassigning the controller property is prohibited.");
        }
        if (adobeDCXController != null) {
            this.mController = new WeakReference<>(adobeDCXController);
        }
    }

    AdobeDCXController getController() {
        if (this.mController != null) {
            return this.mController.get();
        }
        return null;
    }

    public String getCommittedCompositeState() throws AdobeDCXException {
        if (this.mCurrent == null) {
            return null;
        }
        if (!this.mCurrent.isDirty()) {
            return this.mCurrent.getCompositeState();
        }
        if (this.mCommittedCompositeState != null) {
            return this.mCommittedCompositeState;
        }
        AdobeDCXCompositeBranch localCommitted = getLocalCommitted();
        if (localCommitted != null) {
            return localCommitted.getCompositeState();
        }
        return null;
    }

    public void setCommittedCompositeState(String str) {
        this.mCommittedCompositeState = str;
    }

    public String getCommittedCompositeArchivalState() throws AdobeDCXException {
        if (this.mCurrent == null) {
            return null;
        }
        if (!this.mCurrent.isDirty()) {
            return this.mCurrent.getCompositeArchivalState();
        }
        if (this.mCommittedCompositeArchivalState != null) {
            return this.mCommittedCompositeArchivalState;
        }
        AdobeDCXCompositeBranch localCommitted = getLocalCommitted();
        if (localCommitted != null) {
            return localCommitted.getCompositeArchivalState();
        }
        return null;
    }

    public void setCommittedCompositeArchivalState(String str) {
        this.mCommittedCompositeArchivalState = str;
    }

    public Set<AdobeDCXManifest> getActiveManifests() {
        Set<AdobeDCXManifest> set;
        synchronized (this.mActiveManifests) {
            set = (Set) ((HashSet) this.mActiveManifests).clone();
        }
        return set;
    }

    public void addManifestToActiveSnapshots(AdobeDCXManifest adobeDCXManifest) {
        if (!$assertionsDisabled && adobeDCXManifest == null) {
            throw new AssertionError("Manifest must not be null.");
        }
        synchronized (this.mActiveManifests) {
            this.mActiveManifests.add(adobeDCXManifest);
        }
    }

    public void removeManifestFromActiveSnapshots(AdobeDCXManifest adobeDCXManifest) {
        if (!$assertionsDisabled && adobeDCXManifest == null) {
            throw new AssertionError("Manifest must not be null.");
        }
        synchronized (this.mActiveManifests) {
            this.mActiveManifests.remove(adobeDCXManifest);
        }
    }

    public Set<String> getInflightLocalComponentFiles() {
        Set<String> set;
        synchronized (this.mInflightLocalComponentFiles) {
            set = (Set) ((HashSet) this.mInflightLocalComponentFiles).clone();
        }
        return set;
    }

    public void addPathToInflightLocalComponentFiles(String str) {
        synchronized (this.mInflightLocalComponentFiles) {
            String str2 = str.split(URIUtil.SLASH)[r0.length - 1];
            if (!$assertionsDisabled && this.mInflightLocalComponentFiles.contains(str2)) {
                throw new AssertionError("The component file should not already be contained in the set of inflight components.");
            }
            this.mInflightLocalComponentFiles.add(str2);
        }
    }

    public void removePathFromInflightLocalComponentFiles(String str) {
        synchronized (this.mInflightLocalComponentFiles) {
            String str2 = str.split(URIUtil.SLASH)[r0.length - 1];
            if (!$assertionsDisabled && !this.mInflightLocalComponentFiles.contains(str2)) {
                throw new AssertionError("The component file is unexpectedly missing from the set of inflight components.");
            }
            this.mInflightLocalComponentFiles.remove(str2);
        }
    }

    public AdobeDCXCompositeMutableBranch getCurrent() {
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile;
        if (this.mCurrent == null) {
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getCurrentManifestPath());
                try {
                    adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
                } catch (AdobeDCXException e2) {
                    e = e2;
                    AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e);
                }
            } catch (AdobeDCXException e3) {
                e = e3;
                adobeDCXManifestCreateManifestWithContentsOfFile = null;
            }
            if (adobeDCXManifestCreateManifestWithContentsOfFile != null) {
                this.mCurrent = AdobeDCXCompositeMutableBranch.createCompositeBranchWithComposite(this, adobeDCXManifestCreateManifestWithContentsOfFile);
                updateCurrentBranchCommittedDate();
            }
        }
        return this.mCurrent;
    }

    public void updateCurrentBranchWithManifest(AdobeDCXManifest adobeDCXManifest, boolean z) {
        if (adobeDCXManifest == null) {
            this.mCurrent = null;
            this.mCurrentBranchCommittedAtDate = null;
        } else if (this.mCurrent == null) {
            this.mCurrent = AdobeDCXCompositeMutableBranch.createCompositeBranchWithComposite(this, adobeDCXManifest);
        } else {
            this.mCurrent.setManifest(adobeDCXManifest);
        }
        if (adobeDCXManifest != null && z) {
            updateCurrentBranchCommittedDate();
        }
    }

    public AdobeDCXCompositeBranch getLocalCommitted() {
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile;
        if (this.mLocalCommitted == null) {
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getCurrentManifestPath());
            } catch (AdobeDCXException e2) {
                e = e2;
                adobeDCXManifestCreateManifestWithContentsOfFile = null;
            }
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
            } catch (AdobeDCXException e3) {
                e = e3;
                AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e);
            }
            if (adobeDCXManifestCreateManifestWithContentsOfFile != null) {
                this.mLocalCommitted = AdobeDCXCompositeBranch.getCompositeBranchWithComposite(this, adobeDCXManifestCreateManifestWithContentsOfFile);
            }
        }
        return this.mLocalCommitted;
    }

    void updateLocalBranch() {
        this.mLocalCommitted = null;
    }

    public AdobeDCXCompositeBranch getPulled() {
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile;
        if (this.mPulled == null) {
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getPulledManifestPath());
            } catch (AdobeDCXException e2) {
                e = e2;
                adobeDCXManifestCreateManifestWithContentsOfFile = null;
            }
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
            } catch (AdobeDCXException e3) {
                e = e3;
                AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e);
            }
            if (adobeDCXManifestCreateManifestWithContentsOfFile != null) {
                this.mPulled = AdobeDCXCompositeBranch.getCompositeBranchWithComposite(this, adobeDCXManifestCreateManifestWithContentsOfFile);
            }
        }
        return this.mPulled;
    }

    void updatePulledBranchWithManifest(AdobeDCXManifest adobeDCXManifest) {
        if (adobeDCXManifest == null) {
            this.mPulled = null;
        } else if (this.mPulled == null) {
            this.mPulled = AdobeDCXCompositeBranch.getCompositeBranchWithComposite(this, adobeDCXManifest);
        } else {
            this.mPulled.setManifest(adobeDCXManifest);
        }
    }

    public AdobeDCXCompositeBranch getPushed() {
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile;
        if (this.mPushed == null) {
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getPushedManifestPath());
            } catch (AdobeDCXException e2) {
                e = e2;
                adobeDCXManifestCreateManifestWithContentsOfFile = null;
            }
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
            } catch (AdobeDCXException e3) {
                e = e3;
                AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e);
            }
            if (adobeDCXManifestCreateManifestWithContentsOfFile != null) {
                this.mPushed = AdobeDCXCompositeBranch.getCompositeBranchWithComposite(this, adobeDCXManifestCreateManifestWithContentsOfFile);
            }
        }
        return this.mPushed;
    }

    void updatePushedBranchWithManifest(AdobeDCXManifest adobeDCXManifest) {
        if (adobeDCXManifest == null) {
            this.mPushed = null;
        } else if (this.mPushed == null) {
            this.mPushed = AdobeDCXCompositeBranch.getCompositeBranchWithComposite(this, adobeDCXManifest);
        } else {
            this.mPushed.setManifest(adobeDCXManifest);
        }
    }

    public AdobeDCXCompositeBranch getBase() {
        String baseManifestPath;
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile;
        if (this.mBase == null && (baseManifestPath = getBaseManifestPath()) != null) {
            try {
                adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(baseManifestPath);
                try {
                    adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
                } catch (AdobeDCXException e2) {
                    e = e2;
                    AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e);
                }
            } catch (AdobeDCXException e3) {
                e = e3;
                adobeDCXManifestCreateManifestWithContentsOfFile = null;
            }
            if (adobeDCXManifestCreateManifestWithContentsOfFile != null) {
                this.mBase = AdobeDCXCompositeBranch.getCompositeBranchWithComposite(this, adobeDCXManifestCreateManifestWithContentsOfFile);
            }
        }
        return this.mBase;
    }

    void updateBaseBranch() {
        this.mBase = null;
    }

    void updateCurrentBranchCommittedDate() {
        this.mCurrentBranchCommittedAtDate = new Date((System.currentTimeMillis() / 1000) * 1000);
    }

    void discardPushedManifest() {
        File file = new File(getPushedManifestPath());
        if (file.exists()) {
            file.delete();
            updatePushedBranchWithManifest(null);
        }
    }

    String getCurrentManifestPath() {
        if (this.mLocalStoragePath == null) {
            return null;
        }
        return this.mLocalStorage.getCurrentManifestPathForComposite(this);
    }

    String getPulledManifestPath() {
        if (this.mLocalStoragePath == null) {
            return null;
        }
        return this.mLocalStorage.pullManifestPathForComposite(this);
    }

    String getPulledManifestBasePath() {
        if (this.mLocalStoragePath == null) {
            return null;
        }
        return this.mLocalStorage.pullBaseManifestPathForComposite(this);
    }

    String getPushedManifestPath() {
        if (this.mLocalStoragePath == null) {
            return null;
        }
        return this.mLocalStorage.pushManifestPathForComposite(this);
    }

    String getPushedManifestBasePath() {
        if (this.mLocalStoragePath == null) {
            return null;
        }
        return this.mLocalStorage.pushBaseManifestPathForComposite(this);
    }

    String getBaseManifestPath() {
        if (this.mLocalStoragePath == null) {
            return null;
        }
        return this.mLocalStorage.getCurrentBaseManifestPathForComposite(this);
    }

    String getPushJournalPath() {
        if (this.mLocalStoragePath == null) {
            return null;
        }
        return this.mLocalStorage.pushJournalPathForComposite(this);
    }

    public String getClientDataPath() {
        if (this.mLocalStoragePath == null) {
            return null;
        }
        return this.mLocalStorage.getClientDataPathForComposite(this);
    }

    public String getClassicCurrentComponentsPath() {
        if (this.mLocalStorage instanceof AdobeDCXLocalStorageDirectories) {
            return FilenameUtils.getPathNoEndSeparator(this.mLocalStorage.getCurrentManifestPathForComposite(this));
        }
        return null;
    }

    public String getClassicPullComponentsPath() {
        if (this.mLocalStorage instanceof AdobeDCXLocalStorageDirectories) {
            return FilenameUtils.getPathNoEndSeparator(this.mLocalStorage.pullManifestPathForComposite(this));
        }
        return null;
    }

    public String getClassicPushComponentsPath() {
        if (this.mLocalStorage instanceof AdobeDCXLocalStorageDirectories) {
            return FilenameUtils.getPathNoEndSeparator(this.mLocalStorage.pushManifestPathForComposite(this));
        }
        return null;
    }

    public void resetBinding() throws AdobeDCXException {
        this.mHref = null;
        if (getManifest() != null) {
            getManifest().resetBinding();
        }
        discardEverythingButCurrent();
    }

    @Deprecated
    public void resetIdentity() {
        resetIdentityWithId(null);
    }

    public void resetIdentityWithId(String str) {
        this.mHref = null;
        if (getManifest() != null) {
            getManifest().resetIdentityWithId(str);
            this.mCompositeId = getManifest().getCompositeId();
        } else if (str == null) {
            this.mCompositeId = AdobeStorageUtils.generateUuid();
        } else {
            this.mCompositeId = str;
        }
        getCurrent().setCompositeArchivalState(AdobeDCXConstants.AdobeDCXCompositeArchivalStateActive);
        try {
            discardEverythingButCurrent();
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e2);
        }
        if (this.mCurrent != null && getCurrent().getMetadata() != null) {
            getMetadata().fixDerivedCompositeWithDocId(getCompositeId());
            getMetadata().removeLicenseInfo();
        }
    }

    boolean localComponentAssetsAreImmutable() {
        return this.mLocalStorage.isLocalComponentAssetsImmutable();
    }

    public boolean commitChanges() throws AdobeDCXException {
        AdobeDCXMutableMetadata metadata = null;
        String str = this.mCurrent != null ? this.mCurrent.getManifest().modified : null;
        if (this.mCurrent != null && this.mCurrent.getManifest().isDirty) {
            this.mCurrent.getManifest().modified = AdobeDCXManifest.getDateFormatter().format(new Date());
        }
        if (this.mCurrent != null && this.mCurrent.getManifest().isDirty) {
            metadata = getMetadata();
        } else if (getCurrent() != null && getCurrent().getLoadedMetadata() != null && getCurrent().getLoadedMetadata().isDirty()) {
            metadata = getMetadata();
        }
        if (metadata != null && (metadata.isDirty() || getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified))) {
            metadata.fixDerivedCompositeWithDocId(getCompositeId());
            metadata.appendSavedEvent();
            if (metadata.saveInCompositeBranch(getCurrent()) == null) {
                this.mCurrent.getManifest().modified = str;
                return false;
            }
        }
        if (getCurrent() == null || !getCurrent().writeManifestTo(getCurrentManifestPath())) {
            if (this.mCurrent != null) {
                this.mCurrent.getManifest().modified = str;
            }
            return false;
        }
        updateLocalBranch();
        String compositeState = getCurrent().getCompositeState();
        this.mCommittedCompositeState = compositeState;
        String compositeArchivalState = getCurrent().getCompositeArchivalState();
        this.mCommittedCompositeArchivalState = compositeArchivalState;
        updateCurrentBranchCommittedDate();
        AdobeDCXController controller = getController();
        if (controller != null && (compositeState.equals(AdobeDCXConstants.AdobeDCXAssetStateModified) || compositeState.equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete) || compositeArchivalState.equals(AdobeDCXConstants.AdobeDCXCompositeArchivalStatePending))) {
            controller.reportChangeToCompositeWithID(getCompositeId());
        }
        return true;
    }

    public AdobeDCXMutableMetadata getMetadata() {
        if (this.mCurrent == null) {
            return null;
        }
        AdobeDCXMutableMetadata adobeDCXMutableMetadata = (AdobeDCXMutableMetadata) this.mCurrent.getMetadata();
        if (adobeDCXMutableMetadata == null && this.mInitializeMetadataFromManifest) {
            AdobeDCXMutableMetadata adobeDCXMutableMetadata2 = new AdobeDCXMutableMetadata(this.mCurrent.getManifest());
            getCurrent().setMetadata(adobeDCXMutableMetadata2);
            return adobeDCXMutableMetadata2;
        }
        return adobeDCXMutableMetadata;
    }

    public AdobeDCXMutableMetadata createMetadataForRenditionWithType(String str) throws AdobeDCXException {
        AdobeDCXMutableMetadata adobeDCXMutableMetadata = new AdobeDCXMutableMetadata(getMetadata(), "converted", null);
        try {
            adobeDCXMutableMetadata.setPropertyWithPath(AdobeDCXMetadataPath.getFormat(), str);
        } catch (AdobeDCXMetadataException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeDCXComposite.class.getSimpleName(), null, e2);
        }
        return adobeDCXMutableMetadata;
    }

    public boolean removeLocalStorage() throws AdobeDCXException {
        String compositeId = getCompositeId();
        boolean zRemoveLocalFilesOfComposite = this.mLocalStorage.removeLocalFilesOfComposite(this);
        if (zRemoveLocalFilesOfComposite) {
            setLocalStoragePath(null);
        }
        AdobeDCXUtils.logAnalytics("csdk_android_dcx", "AdobeDCXComposite.removeLocalStorage", "composite deleted: " + compositeId + Arrays.toString(Thread.currentThread().getStackTrace()), this.mLocalStoragePath);
        return zRemoveLocalFilesOfComposite;
    }

    public static AdobeDCXComposite getCompositeFromCache(String str) {
        AdobeDCXComposite adobeDCXComposite;
        Map<String, AdobeDCXComposite> instanceCache = getInstanceCache();
        synchronized (instanceCache) {
            adobeDCXComposite = instanceCache.get(str);
        }
        return adobeDCXComposite;
    }

    public static void removeCompositeFromCache(String str) {
        Map<String, AdobeDCXComposite> instanceCache = getInstanceCache();
        synchronized (instanceCache) {
            instanceCache.remove(str);
        }
    }

    static void clearInstanceCache() {
        Map<String, AdobeDCXComposite> instanceCache = getInstanceCache();
        synchronized (instanceCache) {
            instanceCache.clear();
        }
    }

    public long removeUnusedLocalFiles() {
        if (this.mLocalStorage.isLocalComponentAssetsImmutable()) {
            return this.mLocalStorage.removeUnusedLocalFilesOfComposite(this);
        }
        return 0L;
    }

    public long getLocalStorageBytesConsumed() {
        int size;
        AdobeDCXCompositeBranch pushed;
        String str;
        long length;
        long j = 0;
        List<AdobeDCXComponent> allComponents = getCurrent() != null ? getCurrent().getAllComponents() : null;
        List<AdobeDCXComponent> allComponents2 = getBase() != null ? getBase().getAllComponents() : null;
        List<AdobeDCXComponent> allComponents3 = getPushed() != null ? getPushed().getAllComponents() : null;
        List<AdobeDCXComponent> allComponents4 = getPulled() != null ? getPulled().getAllComponents() : null;
        if (allComponents != null) {
            size = allComponents.size();
        } else {
            size = (allComponents4 != null ? allComponents4.size() : 0) + (allComponents2 != null ? allComponents2.size() : 0) + 0 + (allComponents3 != null ? allComponents3.size() : 0);
        }
        HashSet hashSet = new HashSet(size);
        ArrayList<List<AdobeDCXComponent>> arrayList = new ArrayList();
        if (allComponents != null) {
            arrayList.add(allComponents);
        }
        if (allComponents2 != null) {
            arrayList.add(allComponents2);
        }
        if (allComponents3 != null) {
            arrayList.add(allComponents3);
        }
        if (allComponents4 != null) {
            arrayList.add(allComponents4);
        }
        for (List<AdobeDCXComponent> list : arrayList) {
            if (list == allComponents) {
                pushed = getCurrent();
            } else if (list == allComponents2) {
                pushed = getBase();
            } else {
                pushed = list == allComponents3 ? getPushed() : getPulled();
            }
            if (pushed != null) {
                HashMap<String, String> mapExistingLocalStoragePathsForComponentsInBranch = getLocalStorage().existingLocalStoragePathsForComponentsInBranch(pushed);
                for (AdobeDCXComponent adobeDCXComponent : list) {
                    if (!pushed.isComponentUnmanaged(adobeDCXComponent) && (str = mapExistingLocalStoragePathsForComponentsInBranch.get(adobeDCXComponent.getComponentId())) != null && !hashSet.contains(str)) {
                        if (localComponentAssetsAreImmutable() && adobeDCXComponent.getLength() != -1) {
                            length = adobeDCXComponent.getLength();
                        } else {
                            length = new File(str).length();
                        }
                        j += length;
                        hashSet.add(str);
                    }
                }
            }
        }
        long length2 = 0;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(getCurrentManifestPath());
        arrayList2.add(getBaseManifestPath());
        arrayList2.add(getPushJournalPath());
        arrayList2.add(getPushedManifestPath());
        arrayList2.add(getPulledManifestPath());
        arrayList2.add(getPushedManifestBasePath());
        arrayList2.add(getPulledManifestBasePath());
        Iterator it = arrayList2.iterator();
        while (true) {
            long j2 = length2;
            if (it.hasNext()) {
                length2 = new File((String) it.next()).length() + j2;
            } else {
                return j + j2;
            }
        }
    }

    void requestDeletionOfUnsusedLocalFiles() {
        if (this.mAutoRemoveUnusedLocalFiles && this.mLocalStorage.isLocalComponentAssetsImmutable() && this.mDeleteFilesInBackgroundRequestCounter.incrementAndGet() == 1) {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite.1
                @Override // java.lang.Runnable
                public void run() {
                    if (AdobeDCXComposite.this.mLocalStorage.removeUnusedLocalFilesOfComposite(this) != -1) {
                        if (AdobeDCXComposite.this.mFileDeletionHandler != null) {
                            AdobeDCXComposite.this.mFileDeletionHandler.gcEndCallback(this);
                        }
                        boolean zCompareAndSet = false;
                        while (!zCompareAndSet) {
                            int iIntValue = AdobeDCXComposite.this.mDeleteFilesInBackgroundRequestCounter.intValue();
                            zCompareAndSet = AdobeDCXComposite.this.mDeleteFilesInBackgroundRequestCounter.compareAndSet(iIntValue, 0);
                            if (zCompareAndSet && iIntValue > 1) {
                                this.requestDeletionOfUnsusedLocalFiles();
                            }
                        }
                    }
                }
            }).start();
            if (this.mFileDeletionHandler != null) {
                this.mFileDeletionHandler.gcBeginCallback(this);
            }
        }
    }

    void updateLocalStorageDataInManifest(AdobeDCXManifest adobeDCXManifest, List<AdobeDCXManifest> list) {
        this.mLocalStorage.updateLocalStorageDataInManifest(adobeDCXManifest, list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long removeLocalFilesForComponentsWithIDs(ArrayList<String> arrayList, ArrayList<AdobeCSDKException> arrayList2) {
        if (!$assertionsDisabled && arrayList == null) {
            throw new AssertionError("componentIDs cannot be null");
        }
        ArrayList arrayList3 = new ArrayList();
        String metadataComponentAbsolutePath = AdobeDCXMetadata.getMetadataComponentAbsolutePath();
        AdobeDCXCompositeBranch localCommitted = getLocalCommitted();
        AdobeDCXCompositeBranch base = getBase();
        long j = 0;
        for (String str : arrayList) {
            AdobeDCXComponent componentWithId = getCurrent().getComponentWithId(str);
            AdobeDCXComponent componentWithId2 = localCommitted.getComponentWithId(str);
            AdobeDCXComponent componentWithId3 = base == null ? null : base.getComponentWithId(str);
            if (componentWithId == null || !componentWithId.getAbsolutePath().equals(metadataComponentAbsolutePath)) {
                if (componentWithId2 == null || !componentWithId2.getAbsolutePath().equals(metadataComponentAbsolutePath)) {
                    if (componentWithId3 == null || !componentWithId3.getAbsolutePath().equals(metadataComponentAbsolutePath)) {
                        if ((componentWithId != null && componentWithId.getState() != null && componentWithId.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) || (componentWithId2 != null && componentWithId2.getState() != null && componentWithId2.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified))) {
                            arrayList3.add(new AdobeDCXException(AdobeDCXErrorCode.AdobeDCXErrorCannotRemoveModifiedComponent, "Component with ID " + str + " cannot be evicted because it has local changes."));
                        } else {
                            ArrayList<C1Doublet> arrayList4 = new ArrayList(3);
                            if (componentWithId != null) {
                                arrayList4.add(new C1Doublet(componentWithId, getCurrent().getManifest()));
                            }
                            if (componentWithId2 != null) {
                                arrayList4.add(new C1Doublet(componentWithId2, localCommitted.getManifest()));
                            }
                            if (componentWithId3 != null) {
                                arrayList4.add(new C1Doublet(componentWithId3, base.getManifest()));
                            }
                            HashSet hashSet = new HashSet();
                            for (C1Doublet c1Doublet : arrayList4) {
                                AdobeDCXComponent adobeDCXComponent = (AdobeDCXComponent) c1Doublet.x;
                                AdobeDCXManifest adobeDCXManifest = (AdobeDCXManifest) c1Doublet.y;
                                if (adobeDCXManifest.getUCIDOfComponent(adobeDCXComponent) == null) {
                                    try {
                                        String pathOfComponent = getLocalStorage().getPathOfComponent(adobeDCXComponent, adobeDCXManifest, this, false);
                                        if (!hashSet.contains(pathOfComponent)) {
                                            File file = new File(pathOfComponent);
                                            long length = file.length();
                                            if (FileUtils.deleteQuietly(file)) {
                                                hashSet.add(pathOfComponent);
                                                j += length;
                                            }
                                        }
                                    } catch (AdobeDCXException e2) {
                                        arrayList3.add(e2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (arrayList2 != null && arrayList3.size() > 0) {
            arrayList2.addAll(arrayList3);
        }
        AdobeDCXController controller = getController();
        if (controller != null) {
            controller.reportLocalStorageChangeToCompositeWithID(getCompositeId());
        }
        return j;
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite$1Doublet, reason: invalid class name */
    class C1Doublet<X, Y> {
        public final X x;
        public final Y y;

        public C1Doublet(X x, Y y) {
            this.x = x;
            this.y = y;
        }
    }

    @SuppressLint({"Assert"})
    @Deprecated
    AdobeDCXComponent addComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest, AdobeDCXManifestNode adobeDCXManifestNode, AdobeDCXManifest adobeDCXManifest2, boolean z, String str) throws AdobeDCXException {
        AdobeDCXComponent adobeDCXComponentAddComponent;
        if (!$assertionsDisabled && adobeDCXComponent == null) {
            throw new AssertionError("Param 'component' must not be null");
        }
        if (!$assertionsDisabled && adobeDCXManifest == null) {
            throw new AssertionError("Param 'sourceManifest' must not be null");
        }
        if (!$assertionsDisabled && adobeDCXManifest.getCompositeId().compareTo(getCompositeId()) != 0) {
            throw new AssertionError("Param 'sourceManifest' must be a manifest of the composite");
        }
        if (!$assertionsDisabled && adobeDCXManifest2 == null) {
            throw new AssertionError("Param 'destManifest' must not be null");
        }
        if (!$assertionsDisabled && adobeDCXManifest2.getCompositeId().compareTo(getCompositeId()) != 0) {
            throw new AssertionError("Param 'destManifest' must be a manifest of the composite");
        }
        String uCIDOfComponent = adobeDCXManifest.getUCIDOfComponent(adobeDCXComponent);
        String pathOfComponent = !(uCIDOfComponent != null) ? this.mLocalStorage.getPathOfComponent(adobeDCXComponent, adobeDCXManifest, this, false) : null;
        if (z) {
            adobeDCXComponentAddComponent = adobeDCXManifest2.replaceComponent(adobeDCXComponent, adobeDCXManifest);
        } else if (adobeDCXManifestNode == null) {
            adobeDCXComponentAddComponent = adobeDCXManifest2.addComponent(adobeDCXComponent, adobeDCXManifest, str);
        } else {
            adobeDCXComponentAddComponent = adobeDCXManifest2.addComponent(adobeDCXComponent, adobeDCXManifest, adobeDCXManifestNode, str);
        }
        if (adobeDCXComponentAddComponent != null) {
            if (!this.mLocalStorage.updateComponent(adobeDCXComponentAddComponent.getMutableCopy(), adobeDCXManifest2, this, pathOfComponent)) {
                return null;
            }
            adobeDCXManifest2.setUCIDForComponent(uCIDOfComponent, adobeDCXComponentAddComponent);
        }
        return adobeDCXComponentAddComponent;
    }

    /* JADX WARN: Removed duplicated region for block: B:97:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent addComponent(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r9, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest r10, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r11, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode r12, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest r13, boolean r14, java.lang.String r15) throws com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite.addComponent(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest, boolean, java.lang.String):com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent");
    }

    AdobeDCXComponent removeComponent(AdobeDCXComponent adobeDCXComponent, AdobeDCXManifest adobeDCXManifest) {
        if (adobeDCXManifest == null) {
            adobeDCXManifest = getManifest();
        }
        AdobeDCXComponent adobeDCXComponentRemoveComponent = adobeDCXManifest.removeComponent(adobeDCXComponent);
        if (adobeDCXComponentRemoveComponent != null) {
            this.mLocalStorage.didRemoveComponent(adobeDCXComponentRemoveComponent, adobeDCXManifest);
            adobeDCXManifest.setSourceHref(null, adobeDCXComponentRemoveComponent);
            adobeDCXManifest.setUCIDForComponent(null, adobeDCXComponentRemoveComponent);
        }
        return adobeDCXComponentRemoveComponent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e6, code lost:
    
        throw r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01e7, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01ed, code lost:
    
        if (r6 >= r12.size()) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01ef, code lost:
    
        r2 = (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent) r12.get(r6);
        r3 = (java.lang.String) r13.get(r6);
        r4 = (java.lang.String) r15.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0201, code lost:
    
        if (r4 == null) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0213, code lost:
    
        if (r17.mLocalStorage.updateComponent(r2.getMutableCopy(), r24, r17, r4) != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0217, code lost:
    
        if (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite.$assertionsDisabled != false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0221, code lost:
    
        throw new java.lang.AssertionError("This call to updateComponentInBranchOrElement should never fail in this context.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0222, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0225, code lost:
    
        r24.setUCIDForComponent(null, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x022b, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x022f, code lost:
    
        r3 = r19.getAllComponents().get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0239, code lost:
    
        if (r3 == null) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x023b, code lost:
    
        r3 = r19.getUCIDOfComponent(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0241, code lost:
    
        if (r3 == null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0243, code lost:
    
        r24.setUCIDForComponent(r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0251, code lost:
    
        if (r20.equals(r17) != false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0253, code lost:
    
        r3 = r15.values().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x025f, code lost:
    
        if (r3.hasNext() == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0261, code lost:
    
        removePathFromInflightLocalComponentFiles((java.lang.String) r3.next());
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x026d, code lost:
    
        r2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x013a, code lost:
    
        if (r6 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0146, code lost:
    
        throw new com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode.AdobeDCXErrorComponentCopyFailure, "Attempted to copy a component that lacks both a local file and a server href.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0147, code lost:
    
        new com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite.C1cleanupCopiedComponentsDuetoError(r17).perform();
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0187, code lost:
    
        r12 = new java.util.ArrayList();
        r14 = new java.util.ArrayList();
        r13 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x019e, code lost:
    
        if (r20.equals(r17) != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01a0, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01a1, code lost:
    
        r5 = r24.insertChild(r18, r19, r21, r22, r25, r26, r27, r11, r12, r13, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01b5, code lost:
    
        r3 = r14.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01bd, code lost:
    
        if (r3.hasNext() == false) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01bf, code lost:
    
        r17.mLocalStorage.didRemoveComponent((com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent) r3.next(), r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01cf, code lost:
    
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01d1, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01da, code lost:
    
        if (r20.equals(r17) == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01dc, code lost:
    
        new com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite.C1cleanupCopiedComponentsDuetoError(r17).perform();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode addChild(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode r18, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest r19, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r20, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode r21, long r22, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest r24, boolean r25, java.lang.String r26, java.lang.String r27) throws com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException {
        /*
            Method dump skipped, instruction units count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite.addChild(com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode, long, com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest, boolean, java.lang.String, java.lang.String):com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode");
    }

    public boolean resolvePullWithBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) throws AdobeDCXException {
        boolean zInternalResolvePulledBranch = true;
        AdobeDCXException adobeDCXException = null;
        AdobeDCXController controller = getController();
        if (adobeDCXCompositeMutableBranch == null && !new File(getPulledManifestPath()).exists()) {
            if (controller != null) {
                controller.reportResolveFinishedForComposite(this, null);
            }
        } else {
            try {
                zInternalResolvePulledBranch = internalResolvePulledBranch(adobeDCXCompositeMutableBranch, true, null);
            } catch (AdobeDCXException e2) {
                adobeDCXException = e2;
                zInternalResolvePulledBranch = false;
            }
            if (controller != null) {
                controller.reportResolveFinishedForComposite(this, adobeDCXException);
            }
            if (adobeDCXException != null) {
                throw adobeDCXException;
            }
        }
        return zInternalResolvePulledBranch;
    }

    @Deprecated
    boolean acceptPulledBranch(boolean z, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) throws AdobeDCXException {
        if (!$assertionsDisabled && getController() != null) {
            throw new AssertionError("acceptPulledBranch is not supported when the controller property is non-null.");
        }
        if (new File(getPulledManifestPath()).exists()) {
            return internalResolvePulledBranch(null, z, adobeDCXSyncGroupMonitor);
        }
        return true;
    }

    @Deprecated
    boolean acceptPulledBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, boolean z, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) throws AdobeDCXException {
        if ($assertionsDisabled || getController() == null) {
            return internalResolvePulledBranch(adobeDCXCompositeMutableBranch, z, adobeDCXSyncGroupMonitor);
        }
        throw new AssertionError("acceptPulledBranch is not supported when the controller property is non-null.");
    }

    boolean internalResolvePulledBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, boolean z, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) throws AdobeDCXException {
        AdobeDCXCompositeBranch current = (adobeDCXCompositeMutableBranch == null || adobeDCXCompositeMutableBranch.getEtag().compareTo(getPulled().getEtag()) == 0) ? getCurrent() : getPulled();
        boolean zAcceptPulledManifest = true;
        if (adobeDCXCompositeMutableBranch != null) {
            if (!mergeMetadataToBranch(adobeDCXCompositeMutableBranch, current, getPulled())) {
                zAcceptPulledManifest = false;
            }
        } else {
            adobeDCXCompositeMutableBranch = getPulled().getMutableCopy();
        }
        if (zAcceptPulledManifest && current == getPulled() && adobeDCXCompositeMutableBranch != null) {
            adobeDCXCompositeMutableBranch.getManifest().setEtag(getPulled().getEtag());
        }
        if (zAcceptPulledManifest) {
            zAcceptPulledManifest = this.mLocalStorage.acceptPulledManifest(adobeDCXCompositeMutableBranch != null ? adobeDCXCompositeMutableBranch.getManifest() : null, this);
        }
        if (zAcceptPulledManifest && z) {
            AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getCurrentManifestPath());
            if (adobeDCXManifestCreateManifestWithContentsOfFile != null) {
                adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
                updateCurrentBranchWithManifest(adobeDCXManifestCreateManifestWithContentsOfFile, false);
            } else {
                zAcceptPulledManifest = false;
            }
        }
        if (zAcceptPulledManifest) {
            setCommittedCompositeState(adobeDCXCompositeMutableBranch.getManifest().getCompositeState());
        }
        setCommittedCompositeArchivalState(adobeDCXCompositeMutableBranch.getManifest().getCompositeArchivalState());
        if (zAcceptPulledManifest && adobeDCXSyncGroupMonitor != null) {
            adobeDCXSyncGroupMonitor.updateLocalAsset(adobeDCXSyncGroupMonitor.resourceForComposite(this), false);
        }
        if (zAcceptPulledManifest) {
            updateBaseBranch();
            updateLocalBranch();
            updatePulledBranchWithManifest(null);
            requestDeletionOfUnsusedLocalFiles();
        }
        return zAcceptPulledManifest;
    }

    public boolean acceptPush() throws AdobeDCXException {
        AdobeDCXException adobeDCXException;
        boolean z = true;
        if (!$assertionsDisabled && !localComponentAssetsAreImmutable()) {
            throw new AssertionError("acceptPushWithError is not supported by the local storage scheme used by this composite.");
        }
        AdobeDCXController controller = getController();
        if (!new File(getPushJournalPath()).exists() && !new File(getPushedManifestPath()).exists()) {
            if (controller != null) {
                controller.reportAcceptFinishedForComposite(this, null);
            }
        } else {
            if (getCurrent() == null || !getCurrent().isDirty()) {
                try {
                    if (mergePushedStateIntoBranch(getCurrent(), getCurrentManifestPath())) {
                        this.mCommittedCompositeState = getCurrent().getCompositeState();
                        this.mCommittedCompositeArchivalState = getCurrent().getCompositeArchivalState();
                        updateCurrentBranchCommittedDate();
                        updateLocalBranch();
                    } else {
                        z = false;
                    }
                    adobeDCXException = null;
                } catch (AdobeDCXException e2) {
                    adobeDCXException = e2;
                    z = false;
                }
            } else {
                try {
                    if (mergePushedStateIntoBranch(getLocalCommitted(), getCurrentManifestPath())) {
                        this.mCommittedCompositeState = getLocalCommitted().getCompositeState();
                        this.mCommittedCompositeArchivalState = getLocalCommitted().getCompositeArchivalState();
                        if (!mergePushedStateIntoBranch(getCurrent(), null)) {
                            z = false;
                        }
                    } else {
                        z = false;
                    }
                    adobeDCXException = null;
                } catch (AdobeDCXException e3) {
                    adobeDCXException = e3;
                    z = false;
                }
            }
            if (z && AdobeStorageFileUtils.moveFileAtomicallyFrom(getPushedManifestBasePath(), getBaseManifestPath())) {
                updateBaseBranch();
            } else {
                z = false;
            }
            File file = new File(getPushJournalPath());
            File file2 = new File(getPushedManifestPath());
            if ((z && file.exists() && !file.delete()) || (file2.exists() && !file2.delete())) {
                z = false;
            }
            if (z) {
                updatePushedBranchWithManifest(null);
                removeUnusedLocalFiles();
            }
            if (controller != null) {
                controller.reportAcceptFinishedForComposite(this, adobeDCXException);
            }
        }
        return z;
    }

    @Deprecated
    boolean acceptPushedBranch(boolean z, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) throws AdobeDCXException {
        if (!$assertionsDisabled && this.mController != null) {
            throw new AssertionError("acceptPushedBranchWithError is not supported when the controller property is non-null.");
        }
        File file = new File(this.mLocalStorage.pushJournalPathForComposite(this));
        File file2 = new File(this.mLocalStorage.pushManifestPathForComposite(this));
        if (file.exists() || file2.exists()) {
            return acceptPushedBranch(null, z, adobeDCXSyncGroupMonitor);
        }
        return true;
    }

    @Deprecated
    boolean acceptPushedBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, boolean z, AdobeDCXSyncGroupMonitor adobeDCXSyncGroupMonitor) throws AdobeDCXException {
        if (!$assertionsDisabled && this.mController != null) {
            throw new AssertionError("acceptPushedBranchWithError is not supported when the controller property is non-null.");
        }
        if (adobeDCXCompositeMutableBranch != null && adobeDCXCompositeMutableBranch.getEtag().compareTo(getPushed().getEtag()) != 0) {
            adobeDCXCompositeMutableBranch.getManifest().setEtag(getPushed().getEtag());
        }
        AdobeDCXManifest manifest = adobeDCXCompositeMutableBranch != null ? adobeDCXCompositeMutableBranch.getManifest() : null;
        boolean zAcceptPushedManifest_depcrecated = this.mLocalStorage.acceptPushedManifest_depcrecated(manifest, this);
        if (zAcceptPushedManifest_depcrecated && z) {
            if (manifest != null) {
                updateCurrentBranchWithManifest(manifest, true);
            } else {
                AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getCurrentManifestPath());
                adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
                updateCurrentBranchWithManifest(adobeDCXManifestCreateManifestWithContentsOfFile, false);
            }
        }
        if (zAcceptPushedManifest_depcrecated && adobeDCXSyncGroupMonitor != null) {
            adobeDCXSyncGroupMonitor.updateLocalAsset(adobeDCXSyncGroupMonitor.resourceForComposite(this), getManifest().getCompositeState().compareTo(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete) != 0);
        }
        if (zAcceptPushedManifest_depcrecated) {
            updateLocalBranch();
            updatePushedBranchWithManifest(null);
            requestDeletionOfUnsusedLocalFiles();
        }
        return zAcceptPushedManifest_depcrecated;
    }

    public boolean discardPulledBranch() throws AdobeDCXException {
        boolean zDiscardPullOfComposite = this.mLocalStorage.discardPullOfComposite(this);
        if (zDiscardPullOfComposite) {
            updatePulledBranchWithManifest(null);
            requestDeletionOfUnsusedLocalFiles();
            AdobeDCXController controller = getController();
            if (controller != null) {
                controller.reportDiscardedPulledBranchForCompositeWithID(getCompositeId());
            }
        }
        return zDiscardPullOfComposite;
    }

    public boolean discardPushedBranch() throws AdobeDCXException {
        boolean zDiscardPushOfComposite = this.mLocalStorage.discardPushOfComposite(this);
        if (zDiscardPushOfComposite) {
            updatePushedBranchWithManifest(null);
            requestDeletionOfUnsusedLocalFiles();
            AdobeDCXController controller = getController();
            if (controller != null) {
                controller.reportDiscardedPushedBranchForCompositeWithID(getCompositeId());
            }
        }
        return zDiscardPushOfComposite;
    }

    public boolean discardEverythingButCurrent() throws AdobeDCXException {
        return this.mLocalStorage.resetBindingOfComposite(this);
    }

    boolean revertCurrentBranch() throws AdobeDCXException {
        boolean z;
        AdobeDCXException adobeDCXExceptionCreateDCXError = null;
        if (new File(getCurrentManifestPath()).exists()) {
            updateCurrentBranchWithManifest(null, false);
            z = getCurrent() != null;
            if (!z) {
                adobeDCXExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidLocalManifest, String.format("An unexpected error occurred while trying to load %s.", getCurrentManifestPath()), null);
            }
        } else {
            adobeDCXExceptionCreateDCXError = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestFileNotFound, String.format("Manifest with path %s does not exist.", getCurrentManifestPath()), null);
            z = false;
        }
        if (adobeDCXExceptionCreateDCXError != null) {
            throw adobeDCXExceptionCreateDCXError;
        }
        return z;
    }

    void revertCurrentBranchWithHandlerQueue(Handler handler, final IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeDCXException> iAdobeGenericErrorCallback) {
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    boolean zRevertCurrentBranch = AdobeDCXComposite.this.revertCurrentBranch();
                    if (iAdobeGenericCompletionCallback != null) {
                        iAdobeGenericCompletionCallback.onCompletion(Boolean.valueOf(zRevertCurrentBranch));
                    }
                } catch (AdobeDCXException e2) {
                    if (iAdobeGenericErrorCallback != null) {
                        iAdobeGenericErrorCallback.onError(e2);
                    }
                }
            }
        };
        if (handler != null) {
            handler.post(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    public boolean revertCurrentBranchToBase() throws AdobeDCXException {
        AdobeDCXException e2 = null;
        boolean zCopyFileAtomicallyFrom = false;
        if (new File(getBaseManifestPath()).exists()) {
            zCopyFileAtomicallyFrom = AdobeStorageFileUtils.copyFileAtomicallyFrom(getBaseManifestPath(), getCurrentManifestPath());
            if (zCopyFileAtomicallyFrom) {
                try {
                    zCopyFileAtomicallyFrom = revertCurrentBranch();
                } catch (AdobeDCXException e3) {
                    e2 = e3;
                }
            }
        } else {
            e2 = AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestFileNotFound, String.format("Base branch manifest with path %s does not exist.", getBaseManifestPath()), null);
        }
        if (e2 != null) {
            throw e2;
        }
        return zCopyFileAtomicallyFrom;
    }

    public void revertCurrentBranchToBaseWithHandlerQueue(Handler handler, final IAdobeGenericCompletionCallback<Boolean> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeDCXException> iAdobeGenericErrorCallback) {
        Runnable runnable = new Runnable() { // from class: com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite.3
            @Override // java.lang.Runnable
            public void run() {
                boolean zRevertCurrentBranchToBase = false;
                AdobeDCXException e2 = null;
                try {
                    zRevertCurrentBranchToBase = AdobeDCXComposite.this.revertCurrentBranchToBase();
                } catch (AdobeDCXException e3) {
                    e2 = e3;
                }
                if (e2 != null && iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(e2);
                } else if (iAdobeGenericCompletionCallback != null) {
                    iAdobeGenericCompletionCallback.onCompletion(Boolean.valueOf(zRevertCurrentBranchToBase));
                }
            }
        };
        if (handler != null) {
            handler.post(runnable);
        } else {
            new Thread(runnable).start();
        }
    }

    boolean mergeMetadataToBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch, AdobeDCXCompositeBranch adobeDCXCompositeBranch, AdobeDCXCompositeBranch adobeDCXCompositeBranch2) throws AdobeDCXException {
        AdobeDCXComponent metadataComponentInBranchOrElement = AdobeDCXMetadata.getMetadataComponentInBranchOrElement(adobeDCXCompositeMutableBranch);
        AdobeDCXComponent metadataComponentInBranchOrElement2 = AdobeDCXMetadata.getMetadataComponentInBranchOrElement(adobeDCXCompositeBranch);
        if (metadataComponentInBranchOrElement != null && metadataComponentInBranchOrElement2 != null) {
            if (!metadataComponentInBranchOrElement.getEtag().equals(metadataComponentInBranchOrElement2.getEtag()) || adobeDCXCompositeMutableBranch.isMetadataModified() || adobeDCXCompositeBranch.isMetadataModified()) {
                if (adobeDCXCompositeMutableBranch.isMetadataModified() || adobeDCXCompositeBranch.isMetadataModified()) {
                    AdobeDCXMutableMetadata mutableMetadata = adobeDCXCompositeMutableBranch.getMutableMetadata();
                    AdobeDCXMetadata metadata = adobeDCXCompositeBranch.getMetadata();
                    AdobeDCXCompositeBranch base = getBase();
                    AdobeDCXMetadata metadata2 = base != null ? base.getMetadata() : null;
                    if (!$assertionsDisabled && metadata == null) {
                        throw new AssertionError("fromMetadata should be downloaded");
                    }
                    metadataComponentInBranchOrElement = (metadata == null || mutableMetadata == null || !(mutableMetadata.mergeMetadataFrom(metadata, metadata2) || mutableMetadata.isDirty())) ? metadataComponentInBranchOrElement : mutableMetadata.saveInCompositeBranch(adobeDCXCompositeMutableBranch);
                } else {
                    AdobeDCXComponent metadataComponentInBranchOrElement3 = AdobeDCXMetadata.getMetadataComponentInBranchOrElement(getBase());
                    if (metadataComponentInBranchOrElement3 != null && !metadataComponentInBranchOrElement3.getEtag().equals(metadataComponentInBranchOrElement2.getEtag()) && !adobeDCXCompositeMutableBranch.copyMetadataFrom(adobeDCXCompositeBranch, adobeDCXCompositeBranch2)) {
                        return false;
                    }
                }
                if (adobeDCXCompositeBranch == getPulled()) {
                    AdobeDCXMutableComponent mutableCopy = metadataComponentInBranchOrElement.getMutableCopy();
                    mutableCopy.setEtag(metadataComponentInBranchOrElement2.getEtag());
                    if (adobeDCXCompositeMutableBranch.updateComponent(mutableCopy, null, false) == null) {
                        return false;
                    }
                }
            } else {
                if (adobeDCXCompositeBranch.isMetadataModified() && !adobeDCXCompositeMutableBranch.copyMetadataFrom(adobeDCXCompositeBranch, adobeDCXCompositeBranch2)) {
                    return false;
                }
                if (adobeDCXCompositeMutableBranch.getLoadedMetadata() != null && adobeDCXCompositeMutableBranch.getLoadedMetadata().isDirty()) {
                    adobeDCXCompositeMutableBranch.getLoadedMetadata().saveInCompositeBranch(adobeDCXCompositeMutableBranch);
                }
            }
        }
        return true;
    }

    public long getOrdinal() {
        return this.mOrdinal;
    }

    public void setOrdinal(long j) {
        this.mOrdinal = j;
    }

    public boolean getInitializeMetadataFromManifest() {
        return this.mInitializeMetadataFromManifest;
    }

    public void setInitializeMetadataFromManifest(boolean z) {
        this.mInitializeMetadataFromManifest = z;
    }

    public boolean getAutoRemoveUnusedLocalFiles() {
        return this.mAutoRemoveUnusedLocalFiles;
    }

    public void setAutoRemoveUnusedLocalFiles(boolean z) {
        this.mAutoRemoveUnusedLocalFiles = z;
    }

    public boolean getLockImmutableComponents() {
        return this.mLockImmutableComponents;
    }

    void setLockImmutableComponents(boolean z) {
        this.mLockImmutableComponents = z;
    }

    IAdobeDCXLocalStorageProtocol getLocalStorage() {
        return this.mLocalStorage;
    }

    ArrayList<String> verifyLocalStorageOfBranchOrElement(AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, boolean z, boolean z2, String str) throws AdobeDCXException {
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2;
        String str2;
        JSONObject jSONObjectOptJSONObject;
        ArrayList<String> arrayList3;
        JSONObject jSONObject = (JSONObject) adobeDCXBranchCoreProtocol.getBranchCore().getManifest().get("local");
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("copyOnWrite#storageIds")) == null) {
            arrayList = null;
        } else {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            ArrayList<String> arrayList4 = null;
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (adobeDCXBranchCoreProtocol.getBranchCore().getManifest().getAllComponents().get(next) == null) {
                    String str3 = "Unknown component " + next + " has an entry in the local storage mapping.";
                    if (arrayList4 == null) {
                        arrayList3 = new ArrayList<>();
                        arrayList3.add(str3);
                    } else {
                        arrayList4.add(str3);
                        arrayList3 = arrayList4;
                    }
                } else {
                    arrayList3 = arrayList4;
                }
                arrayList4 = arrayList3;
            }
            arrayList = arrayList4;
        }
        if (z2) {
            Iterator<AdobeDCXComponent> it = adobeDCXBranchCoreProtocol.getBranchCore().getManifest().getAllComponents().values().iterator();
            while (true) {
                arrayList2 = arrayList;
                if (!it.hasNext()) {
                    break;
                }
                AdobeDCXComponent next2 = it.next();
                if (adobeDCXBranchCoreProtocol.getBranchCore().getPathForComponent(next2) == null) {
                    String str4 = "Component " + next2.getComponentId() + " doesn't have a local file.";
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                        arrayList2.add(str4);
                    } else {
                        arrayList2.add(str4);
                    }
                }
                arrayList = arrayList2;
            }
        } else {
            arrayList2 = arrayList;
        }
        if (z && arrayList2 != null) {
            if (str != null) {
                str2 = "Local storage of branch " + str + " of composite " + this.mCompositeId + " shows " + arrayList2.size() + " inconsistencies:";
            } else {
                str2 = "Local storage of manifest " + this.mCompositeId + " shows " + arrayList2.size() + " inconsistencies:";
            }
            arrayList2.add(0, str2);
            AdobeLogger.log(Level.INFO, AdobeDCXComposite.class.getSimpleName(), TextUtils.join("\n   ", arrayList2), null);
        }
        return arrayList2;
    }

    ArrayList<String> verifySourceHrefsOfBranchOrElement(AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, boolean z, String str) {
        ArrayList<String> arrayList;
        String str2;
        JSONObject jSONObjectOptJSONObject;
        String str3;
        ArrayList<String> arrayList2;
        JSONObject jSONObject = (JSONObject) adobeDCXBranchCoreProtocol.getBranchCore().getManifest().get("local");
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("componentS2SCopy#srcHref")) == null) {
            arrayList = null;
        } else {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            arrayList = null;
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                AdobeDCXComponent adobeDCXComponent = adobeDCXBranchCoreProtocol.getBranchCore().getManifest().getAllComponents().get(next);
                if (adobeDCXComponent == null) {
                    str3 = String.format("Unknown component %s has an entry in the sourceHref mapping.", next);
                } else {
                    str3 = adobeDCXComponent.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified) ? String.format("Component %s has an entry in the sourceHref mapping but its state is Unmodified", next) : null;
                }
                if (str3 == null) {
                    arrayList2 = arrayList;
                } else if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                } else {
                    arrayList.add(str3);
                    arrayList2 = arrayList;
                }
                arrayList = arrayList2;
            }
        }
        if (z && arrayList != null) {
            if (str != null) {
                str2 = String.format("SourceHref mapping of branch %s of composite %s shows %d inconsistencies:", str, getCompositeId(), Integer.valueOf(arrayList.size()));
            } else {
                str2 = String.format("SourceHref mapping of manifest %s shows %d inconsistencies:", getCompositeId(), Integer.valueOf(arrayList.size()));
            }
            arrayList.add(0, str2);
            AdobeLogger.log(Level.INFO, AdobeDCXComposite.class.getSimpleName(), TextUtils.join("\n   ", arrayList), null);
        }
        return arrayList;
    }

    void verifyBranchOrElement(AdobeDCXBranchCoreProtocol adobeDCXBranchCoreProtocol, boolean z, boolean z2, String str, ArrayList<String> arrayList) throws AdobeDCXException {
        if (adobeDCXBranchCoreProtocol != null) {
            ArrayList<String> arrayListVerifyIntegrityWithLogging = adobeDCXBranchCoreProtocol.getBranchCore().getManifest().verifyIntegrityWithLogging(z, str);
            if (arrayListVerifyIntegrityWithLogging != null) {
                arrayList.addAll(arrayListVerifyIntegrityWithLogging);
            }
            ArrayList<String> arrayListVerifyLocalStorageOfBranchOrElement = verifyLocalStorageOfBranchOrElement(adobeDCXBranchCoreProtocol, z, z2, str);
            if (arrayListVerifyLocalStorageOfBranchOrElement != null) {
                arrayList.addAll(arrayListVerifyLocalStorageOfBranchOrElement);
            }
            ArrayList<String> arrayListVerifySourceHrefsOfBranchOrElement = verifySourceHrefsOfBranchOrElement(adobeDCXBranchCoreProtocol, z, str);
            if (arrayListVerifySourceHrefsOfBranchOrElement != null) {
                arrayList.addAll(arrayListVerifySourceHrefsOfBranchOrElement);
            }
        }
    }

    ArrayList<String> verifyIntegrityWithLogging(boolean z, boolean z2) throws AdobeDCXException {
        ArrayList<String> arrayList = new ArrayList<>();
        verifyBranchOrElement(this.mCurrent, z, z2, "current", arrayList);
        verifyBranchOrElement(this.mLocalCommitted, z, z2, "local committed", arrayList);
        verifyBranchOrElement(this.mBase, z, z2, "base", arrayList);
        verifyBranchOrElement(this.mPulled, z, z2, "pulled", arrayList);
        verifyBranchOrElement(this.mPushed, z, z2, "pushed", arrayList);
        if (getCurrent() != null) {
            for (AdobeDCXElement adobeDCXElement : getCurrent().getPendingElements()) {
                verifyBranchOrElement(adobeDCXElement, z, z2, adobeDCXElement.getName(), arrayList);
            }
        }
        return arrayList;
    }

    @Deprecated
    AdobeDCXManifest copyCurrentManifest() throws AdobeDCXException {
        AdobeDCXManifest manifest = getManifest();
        if (manifest != null) {
            return manifest.getCopy();
        }
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getCurrentManifestPath());
        adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
        return adobeDCXManifestCreateManifestWithContentsOfFile;
    }

    public AdobeDCXManifest copyCommittedManifest() throws AdobeDCXException {
        if (this.mLocalCommitted == null) {
            AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getCurrentManifestPath());
            if (adobeDCXManifestCreateManifestWithContentsOfFile == null) {
                return null;
            }
            adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
            return adobeDCXManifestCreateManifestWithContentsOfFile;
        }
        return this.mLocalCommitted.getManifest().getCopy();
    }

    @Deprecated
    void setActivePushManifest(AdobeDCXManifest adobeDCXManifest) {
        this.mActivePushManifest = new WeakReference<>(adobeDCXManifest);
    }

    @Deprecated
    AdobeDCXManifest getActivePushManifest() {
        if (this.mActivePushManifest == null) {
            return null;
        }
        return this.mActivePushManifest.get();
    }

    private boolean mergePushedStateIntoBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch, String str) throws AdobeDCXException {
        boolean z;
        String uCIDOfComponent;
        String sourceHrefOfComponent;
        AdobeDCXPushJournal adobeDCXPushJournalJournalForCompositeFromFile = AdobeDCXPushJournal.journalForCompositeFromFile(this, getPushJournalPath());
        String compositeHref = adobeDCXPushJournalJournalForCompositeFromFile.getCompositeHref();
        if (getHref() != null && !compositeHref.equals(getHref().toString())) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorInvalidJournal, "Composite href in journal " + compositeHref + " doesn't match the href from the composite " + getHref().toString(), null, getPushJournalPath());
        }
        if (!adobeDCXPushJournalJournalForCompositeFromFile.isComplete()) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorIncompleteJournal, "Journal is not complete", null, getPushJournalPath());
        }
        AdobeDCXManifest adobeDCXManifestCreateManifestWithContentsOfFile = AdobeDCXManifest.createManifestWithContentsOfFile(getPushedManifestBasePath());
        if (adobeDCXManifestCreateManifestWithContentsOfFile == null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestReadFailure, null);
        }
        adobeDCXManifestCreateManifestWithContentsOfFile.setCompositeLinks(this.mLinks);
        AdobeDCXCompositeMutableBranch.createCompositeBranchWithComposite(this, adobeDCXManifestCreateManifestWithContentsOfFile);
        AdobeDCXCompositeMutableBranch mutableCopy = adobeDCXCompositeBranch != null ? adobeDCXCompositeBranch.getMutableCopy() : null;
        AdobeDCXManifest manifest = mutableCopy != null ? mutableCopy.getManifest() : null;
        if (adobeDCXCompositeBranch == null || manifest == null) {
            throw AdobeStorageErrorUtils.createDCXError(AdobeDCXErrorCode.AdobeDCXErrorManifestReadFailure, null);
        }
        if (adobeDCXPushJournalJournalForCompositeFromFile.isCompositeHasBeenDeleted()) {
            manifest.setCompositeState(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete);
        } else if (adobeDCXPushJournalJournalForCompositeFromFile.isCompositeHasBeenArchived()) {
            manifest.setCompositeArchivalState(AdobeDCXConstants.AdobeDCXCompositeArchivalStateArchived);
        } else {
            for (String str2 : adobeDCXPushJournalJournalForCompositeFromFile.getComponentIds()) {
                AdobeDCXComponent adobeDCXComponent = manifest.getAllComponents().get(str2);
                if (adobeDCXComponent != null) {
                    AdobeDCXMutableComponent uploadedComponent = adobeDCXPushJournalJournalForCompositeFromFile.getUploadedComponent(adobeDCXComponent);
                    if (uploadedComponent != null) {
                        if (adobeDCXComponent.getState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                            AdobeDCXComponent adobeDCXComponent2 = adobeDCXManifestCreateManifestWithContentsOfFile.getAllComponents().get(str2);
                            boolean z2 = !getLocalStorage().assetOfComponent(adobeDCXComponent, manifest, adobeDCXManifestCreateManifestWithContentsOfFile);
                            if (z2 && (sourceHrefOfComponent = manifest.getSourceHrefOfComponent(adobeDCXComponent)) != null) {
                                z2 = !sourceHrefOfComponent.equals(adobeDCXManifestCreateManifestWithContentsOfFile.getSourceHrefOfComponent(adobeDCXComponent2));
                            }
                            if (!z2 || (uCIDOfComponent = manifest.getUCIDOfComponent(adobeDCXComponent)) == null) {
                                z = z2;
                            } else {
                                z = !uCIDOfComponent.equals(adobeDCXManifestCreateManifestWithContentsOfFile.getUCIDOfComponent(adobeDCXComponent2));
                            }
                            if (z) {
                                uploadedComponent.setState(AdobeDCXConstants.AdobeDCXAssetStateModified);
                                uploadedComponent.setLength(adobeDCXComponent.getLength());
                            } else {
                                uploadedComponent.setState(AdobeDCXConstants.AdobeDCXAssetStateUnmodified);
                            }
                        } else if (adobeDCXComponent.getState().equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete)) {
                            uploadedComponent.setState(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete);
                        } else {
                            uploadedComponent.setState(AdobeDCXConstants.AdobeDCXAssetStateUnmodified);
                        }
                        manifest.updateComponent(uploadedComponent);
                    } else if (adobeDCXPushJournalJournalForCompositeFromFile.componentIsPendingDeletion(adobeDCXComponent)) {
                        AdobeDCXMutableComponent mutableCopy2 = adobeDCXComponent.getMutableCopy();
                        mutableCopy2.setState(AdobeDCXConstants.AdobeDCXAssetStateCommittedDelete);
                        manifest.updateComponent(mutableCopy2);
                    } else if (adobeDCXPushJournalJournalForCompositeFromFile.componentHasBeenDeleted(adobeDCXComponent)) {
                        removeComponent(adobeDCXComponent, manifest);
                    }
                }
            }
            adobeDCXPushJournalJournalForCompositeFromFile.updateManifestWithJournalEtagAndVersion(manifest);
            if (getHref() == null && compositeHref != null) {
                setHref(URI.create(compositeHref));
                manifest.setCompositeHref(URI.create(compositeHref));
            }
            if (compareSaveId(manifest.getSaveId(), adobeDCXManifestCreateManifestWithContentsOfFile.getSaveId()) && manifest.getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateModified)) {
                manifest.setCompositeState(adobeDCXCompositeBranch.getManifest().isDirty ? AdobeDCXConstants.AdobeDCXAssetStateModified : AdobeDCXConstants.AdobeDCXAssetStateUnmodified);
            }
        }
        if (str != null) {
            manifest.writeToFile(str, true);
        }
        adobeDCXCompositeBranch.setManifest(manifest);
        return true;
    }

    private boolean compareSaveId(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }
}

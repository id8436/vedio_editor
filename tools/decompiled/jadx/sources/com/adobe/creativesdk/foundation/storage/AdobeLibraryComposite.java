package com.adobe.creativesdk.foundation.storage;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.analytics.AdobeAnalyticsEventParams;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudEndpoint;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceSession;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXElement;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXIndexWrapper;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableManifestNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXNode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryAnalyticsConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryAnalyticsError;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryAnalyticsOperation;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCategory;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCollection;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeConstantsInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCompositeInternal;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableElement;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryMutableRepresentation;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibrarySyncManager;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryUtils;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSLibraryEvent;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.model.library.AdobeLibraryXferUtils;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageDCXServiceMapping;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeLibraryComposite {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final int ADOBE_LIBRARY_MAX_ELEMENTS = 1000;
    private static final String ADOBE_LIBRARY_PLIST_FILE_NAME = "library.plist";
    private static final String ADOBE_LIBRARY_RENDITION_CACHE_PREFIX = "<cache>";
    private static final String ADOBE_LIBRARY_RENDITION_LIBRARY_PREFIX = "<library>";
    protected AdobeCollaborationType mCollaboration;
    protected AdobeLibraryCollection mCollection;
    Date mCreateDate;
    protected AdobeDCXComposite mDcxComposite;
    private int mEditingOperationRefCount;
    protected AdobeDCXCompositeMutableBranch mLastCommittedBranch;
    private String mLibraryId;
    private ReentrantLock mLock;
    Date mModifiedDate;
    private JSONObject mRenditions;
    private String mRenditionsURL;

    static {
        $assertionsDisabled = !AdobeLibraryComposite.class.desiredAssertionStatus();
    }

    protected AdobeLibraryComposite(String str, AdobeLibraryCollection adobeLibraryCollection, String str2) throws AdobeLibraryException {
        initWithPath(str, adobeLibraryCollection, str2);
    }

    protected AdobeLibraryComposite(AdobeDCXComposite adobeDCXComposite, AdobeLibraryCollection adobeLibraryCollection, String str) throws AdobeLibraryException {
        initWithComposite(adobeDCXComposite, adobeLibraryCollection, str);
    }

    protected AdobeLibraryComposite(String str, AdobeLibraryCollection adobeLibraryCollection) throws AdobeLibraryException, AdobeDCXException {
        initWithName(str, adobeLibraryCollection);
    }

    protected AdobeDCXComposite getDcxComposite() {
        return this.mDcxComposite;
    }

    private String createLibraryFolder(String str) throws AdobeLibraryException {
        String rootLibrariesURL = this.mCollection.getRootLibrariesURL();
        if (rootLibrariesURL != null) {
            String strStringByAppendingLastPathComponentAndLastPathComponentIsDir = AdobeDCXUtils.stringByAppendingLastPathComponentAndLastPathComponentIsDir(rootLibrariesURL, str);
            if (!new File(strStringByAppendingLastPathComponentAndLastPathComponentIsDir).mkdirs()) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), "Failed to create library directory");
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLocalLibraryCreateFailure, null, strStringByAppendingLastPathComponentAndLastPathComponentIsDir, null);
            }
            return strStringByAppendingLastPathComponentAndLastPathComponentIsDir;
        }
        throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null);
    }

    private boolean createRenditionsFolder(String str) throws AdobeLibraryException {
        AdobeLibraryManager sharedInstance = AdobeLibraryManager.getSharedInstance();
        if (sharedInstance == null || !sharedInstance.isStarted()) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null);
        }
        String rootRenditionsURL = this.mCollection.getRootRenditionsURL();
        if (rootRenditionsURL == null) {
            return false;
        }
        this.mRenditionsURL = AdobeDCXUtils.stringByAppendingLastPathComponentAndLastPathComponentIsDir(rootRenditionsURL, str);
        if (!new File(this.mRenditionsURL).exists() && !new File(this.mRenditionsURL).mkdirs()) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), "Failed to create library renditions directory");
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLocalLibraryCreateFailure, null, this.mRenditionsURL, null);
        }
        return true;
    }

    boolean deleteRenditionsFolder(String str) {
        String rootRenditionsURL = this.mCollection.getRootRenditionsURL();
        if (rootRenditionsURL == null) {
            return false;
        }
        this.mRenditionsURL = AdobeDCXUtils.stringByAppendingLastPathComponentAndLastPathComponentIsDir(rootRenditionsURL, str);
        return FileUtils.deleteQuietly(new File(this.mRenditionsURL));
    }

    private String validateAndTrimName(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        String strTrim = str.trim();
        if (strTrim == null || strTrim.length() <= 0) {
            return null;
        }
        return strTrim;
    }

    void initWithName(String str, AdobeLibraryCollection adobeLibraryCollection) throws AdobeLibraryException, AdobeDCXException {
        AdobeDCXException adobeDCXException;
        AdobeDCXNode adobeDCXNodeInsertNode;
        AdobeDCXNode adobeDCXNodeInsertNode2;
        String strValidateAndTrimName = validateAndTrimName(str);
        if (strValidateAndTrimName == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
        }
        this.mCollection = adobeLibraryCollection;
        this.mEditingOperationRefCount = 0;
        this.mLock = new ReentrantLock();
        String strGenerateUuid = AdobeStorageUtils.generateUuid();
        String strCreateLibraryFolder = createLibraryFolder(strGenerateUuid);
        try {
            if (strCreateLibraryFolder.endsWith(URIUtil.SLASH)) {
                strCreateLibraryFolder = strCreateLibraryFolder.substring(0, strCreateLibraryFolder.lastIndexOf(URIUtil.SLASH));
            }
            this.mDcxComposite = AdobeDCXComposite.createCompositeWithName(strValidateAndTrimName, "application/vnd.adobe.library+dcx", null, strGenerateUuid, strCreateLibraryFolder, null);
            e = null;
        } catch (AdobeDCXException e2) {
            e = e2;
        }
        if (this.mDcxComposite == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryCreateFailure, e, null, null);
        }
        this.mDcxComposite.setInitializeMetadataFromManifest(false);
        this.mLibraryId = this.mDcxComposite.getCompositeId();
        AdobeDCXCompositeMutableBranch current = this.mDcxComposite.getCurrent();
        try {
            adobeDCXException = e;
            adobeDCXNodeInsertNode = current.insertNode(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeElementsNodeName, null, null, null, null, 0L);
        } catch (AdobeDCXException e3) {
            adobeDCXException = e3;
            adobeDCXNodeInsertNode = null;
        }
        if (adobeDCXNodeInsertNode == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryCreateFailure, adobeDCXException, null, null);
        }
        try {
            adobeDCXNodeInsertNode2 = current.insertNode(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoriesNodeName, null, null, null, null, 1L);
        } catch (AdobeDCXException e4) {
            adobeDCXException = e4;
            adobeDCXNodeInsertNode2 = null;
        }
        if (adobeDCXNodeInsertNode2 == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryCreateFailure, adobeDCXException, null, null);
        }
        current.setValue(1, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeVersionKey);
        long currentTimeInMilliseconds = AdobeLibraryUtils.getCurrentTimeInMilliseconds();
        current.setValue(Long.valueOf(currentTimeInMilliseconds), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCreatedKey);
        current.setValue(Long.valueOf(currentTimeInMilliseconds), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey);
        this.mLastCommittedBranch = this.mDcxComposite.getCurrent().getMutableCopy();
        commit();
        this.mRenditions = new JSONObject();
        createRenditionsFolder(strGenerateUuid);
    }

    void initWithPath(String str, AdobeLibraryCollection adobeLibraryCollection, String str2) throws AdobeLibraryException {
        this.mCollection = adobeLibraryCollection;
        this.mEditingOperationRefCount = 0;
        this.mLock = new ReentrantLock();
        try {
            this.mDcxComposite = AdobeDCXComposite.compositeStoredAt(str, null);
            this.mDcxComposite.setInitializeMetadataFromManifest(false);
            if (str2 == null) {
                str2 = this.mDcxComposite.getCompositeId();
            }
            this.mLibraryId = str2;
            createRenditionsFolder(this.mLibraryId);
            readLibraryPlist();
        } catch (AdobeDCXException e2) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryCreateFailure, e2, null, null);
        }
    }

    void initWithComposite(AdobeDCXComposite adobeDCXComposite, AdobeLibraryCollection adobeLibraryCollection, String str) throws AdobeLibraryException {
        if (adobeDCXComposite == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryCreateFailure, null, null, null);
        }
        this.mCollection = adobeLibraryCollection;
        this.mEditingOperationRefCount = 0;
        this.mLock = new ReentrantLock();
        this.mDcxComposite = adobeDCXComposite;
        this.mDcxComposite.setInitializeMetadataFromManifest(false);
        if (str == null) {
            str = this.mDcxComposite.getCompositeId();
        }
        this.mLibraryId = str;
        this.mRenditions = new JSONObject();
        if (this.mDcxComposite.getCurrent() != null) {
            this.mLastCommittedBranch = this.mDcxComposite.getCurrent().getMutableCopy();
        }
        createRenditionsFolder(this.mLibraryId);
    }

    void setLibraryId(String str) {
        this.mLock.lock();
        this.mLibraryId = str;
        this.mLock.unlock();
    }

    static AdobeLibraryComposite createlibraryWithName(String str, AdobeLibraryCollection adobeLibraryCollection) throws AdobeLibraryException {
        return new AdobeLibraryCompositeInternal(str, adobeLibraryCollection);
    }

    protected static AdobeLibraryComposite createlibraryWithPath(String str, AdobeLibraryCollection adobeLibraryCollection, String str2) throws AdobeLibraryException {
        return new AdobeLibraryCompositeInternal(str, adobeLibraryCollection, str2);
    }

    public String getName() {
        AdobeDCXCompositeMutableBranch current;
        this.mLock.lock();
        String name = null;
        try {
            if (this.mDcxComposite != null && (current = this.mDcxComposite.getCurrent()) != null) {
                name = current.getName();
            }
            return name;
        } finally {
            this.mLock.unlock();
        }
    }

    protected void setName(String str) throws AdobeLibraryException {
        if (!addErrorIfReadOnly()) {
            this.mLock.lock();
            try {
                if (this.mDcxComposite != null) {
                    beginChanges();
                    AdobeDCXCompositeMutableBranch current = this.mDcxComposite.getCurrent();
                    if (current != null) {
                        current.setName(validateAndTrimName(str));
                    }
                    try {
                        endChanges();
                    } catch (AdobeLibraryException e2) {
                        AdobeLogger.log(Level.ERROR, "AdobeLibraryComposite.setName", "failed in endChanges", e2);
                    }
                }
            } finally {
                this.mLock.unlock();
            }
        }
    }

    public AdobeCollaborationType getCollaboration() {
        return this.mDcxComposite != null ? this.mDcxComposite.getCollaborationType() : AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE;
    }

    public AdobeCollaborationRoleType getCollaborationRole() {
        return getDcxComposite().getCollaborationRoleType();
    }

    public void setCollaborationRole(AdobeCollaborationRoleType adobeCollaborationRoleType) {
        getDcxComposite().setCollaborationRoleType(adobeCollaborationRoleType);
    }

    public boolean isShared() {
        if (getDcxComposite() != null) {
            return getDcxComposite().isShared();
        }
        return false;
    }

    public boolean isReadOnly() {
        if (getDcxComposite() != null) {
            return getDcxComposite().isReadOnly();
        }
        return false;
    }

    public boolean isPublic() {
        if (this.mCollection != null) {
            return this.mCollection.isPublic();
        }
        return false;
    }

    public int getVersion() {
        int iIntValue;
        AdobeDCXCompositeMutableBranch current;
        Object obj;
        this.mLock.lock();
        try {
            if (this.mDcxComposite == null || (current = this.mDcxComposite.getCurrent()) == null || (obj = current.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeVersionKey)) == null) {
                iIntValue = 0;
            } else {
                iIntValue = ((Integer) obj).intValue();
            }
            return iIntValue;
        } finally {
            this.mLock.unlock();
        }
    }

    protected boolean hasUnsyncedChanges() {
        boolean z = false;
        this.mLock.lock();
        try {
            if (this.mDcxComposite != null) {
                if (!this.mDcxComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStateUnmodified)) {
                    z = true;
                }
            }
            return z;
        } finally {
            this.mLock.unlock();
        }
    }

    protected boolean isPendingDelete() {
        this.mLock.lock();
        boolean zEquals = false;
        try {
            if (this.mDcxComposite != null) {
                zEquals = this.mDcxComposite.getCurrent().getCompositeState().equals(AdobeDCXConstants.AdobeDCXAssetStatePendingDelete);
            }
            return zEquals;
        } finally {
            this.mLock.unlock();
        }
    }

    private String getLibraryFolderURL() {
        String rootLibrariesURL = this.mCollection.getRootLibrariesURL();
        if (rootLibrariesURL != null) {
            return AdobeDCXUtils.stringByAppendingLastPathComponentAndLastPathComponentIsDir(rootLibrariesURL, this.mLibraryId);
        }
        return null;
    }

    protected void lock() {
        this.mLock.lock();
    }

    protected void unlock() {
        this.mLock.unlock();
    }

    protected ReentrantLock getLock() {
        return this.mLock;
    }

    protected void refreshWithComposite(AdobeDCXComposite adobeDCXComposite, String str) {
        try {
            lock();
            if (adobeDCXComposite != null) {
                this.mDcxComposite = adobeDCXComposite;
                if (str == null) {
                    str = adobeDCXComposite.getCompositeId();
                }
                this.mLibraryId = str;
                if (this.mDcxComposite.getCurrent() != null) {
                    this.mLastCommittedBranch = this.mDcxComposite.getCurrent().getMutableCopy();
                }
            }
        } finally {
            unlock();
        }
    }

    void readLibraryPlist() {
        this.mLock.lock();
        try {
            String relativeTo = AdobeStorageLastPathComponentUtil.getRelativeTo(ADOBE_LIBRARY_PLIST_FILE_NAME, this.mRenditionsURL);
            if (new File(relativeTo).exists()) {
                try {
                    this.mRenditions = new JSONObject(new String(FileUtils.readFileToByteArray(new File(relativeTo)), "UTF-8")).optJSONObject("renditions");
                } catch (IOException | JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                }
            }
            if (this.mRenditions == null) {
                this.mRenditions = new JSONObject();
            }
        } finally {
            this.mLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean writeLibraryPlist() {
        /*
            r6 = this;
            r2 = 0
            java.util.concurrent.locks.ReentrantLock r0 = r6.mLock
            r0.lock()
            r0 = 1
            java.lang.String r1 = "library.plist"
            java.lang.String r3 = r6.mRenditionsURL     // Catch: java.lang.Throwable -> L50
            java.lang.String r1 = com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil.getRelativeTo(r1, r3)     // Catch: java.lang.Throwable -> L50
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L50
            r3.<init>()     // Catch: java.lang.Throwable -> L50
            java.lang.String r4 = "renditions"
            org.json.JSONObject r5 = r6.mRenditions     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L7b org.json.JSONException -> L93
            r3.put(r4, r5)     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L7b org.json.JSONException -> L93
            java.lang.String r3 = r3.toString()     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L7b org.json.JSONException -> L93
            java.io.File r4 = new java.io.File     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L7b org.json.JSONException -> L93
            r4.<init>(r1)     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L7b org.json.JSONException -> L93
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L7b org.json.JSONException -> L93
            r1.<init>(r4)     // Catch: java.io.IOException -> L57 java.lang.Throwable -> L7b org.json.JSONException -> L93
            java.nio.charset.Charset r2 = org.apache.commons.io.Charsets.UTF_8     // Catch: java.lang.Throwable -> L90 org.json.JSONException -> L95 java.io.IOException -> L98
            byte[] r2 = r3.getBytes(r2)     // Catch: java.lang.Throwable -> L90 org.json.JSONException -> L95 java.io.IOException -> L98
            r1.write(r2)     // Catch: java.lang.Throwable -> L90 org.json.JSONException -> L95 java.io.IOException -> L98
            r1.close()     // Catch: java.lang.Throwable -> L90 org.json.JSONException -> L95 java.io.IOException -> L98
            if (r1 == 0) goto L3c
            r1.close()     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L50
        L3c:
            java.util.concurrent.locks.ReentrantLock r1 = r6.mLock
            r1.unlock()
            return r0
        L42:
            r1 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r2 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L50
            java.lang.Class<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r3 = com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.class
            java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> L50
            r4 = 0
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r2, r3, r4, r1)     // Catch: java.lang.Throwable -> L50
            goto L3c
        L50:
            r0 = move-exception
            java.util.concurrent.locks.ReentrantLock r1 = r6.mLock
            r1.unlock()
            throw r0
        L57:
            r0 = move-exception
            r1 = r2
        L59:
            r2 = r1
        L5a:
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r1 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L7b
            java.lang.Class<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r3 = com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.class
            java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> L7b
            r4 = 0
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r1, r3, r4, r0)     // Catch: java.lang.Throwable -> L7b
            r0 = 0
            if (r2 == 0) goto L3c
            r2.close()     // Catch: java.lang.Throwable -> L50 java.io.IOException -> L6d
            goto L3c
        L6d:
            r1 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r2 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L50
            java.lang.Class<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r3 = com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.class
            java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> L50
            r4 = 0
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r2, r3, r4, r1)     // Catch: java.lang.Throwable -> L50
            goto L3c
        L7b:
            r0 = move-exception
        L7c:
            if (r2 == 0) goto L81
            r2.close()     // Catch: java.lang.Throwable -> L50 java.io.IOException -> L82
        L81:
            throw r0     // Catch: java.lang.Throwable -> L50
        L82:
            r1 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r2 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L50
            java.lang.Class<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r3 = com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.class
            java.lang.String r3 = r3.getSimpleName()     // Catch: java.lang.Throwable -> L50
            r4 = 0
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r2, r3, r4, r1)     // Catch: java.lang.Throwable -> L50
            goto L81
        L90:
            r0 = move-exception
            r2 = r1
            goto L7c
        L93:
            r0 = move-exception
            goto L5a
        L95:
            r0 = move-exception
            r2 = r1
            goto L5a
        L98:
            r0 = move-exception
            goto L59
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.writeLibraryPlist():boolean");
    }

    protected boolean deleteLibrary() throws AdobeLibraryException {
        lock();
        if (this.mDcxComposite != null) {
            if (this.mDcxComposite.isBound()) {
                try {
                    this.mDcxComposite.getCurrent().markCompositeForDeletion();
                    this.mDcxComposite.commitChanges();
                } catch (AdobeDCXException e2) {
                    AdobeLogger.log(Level.ERROR, "AdobeLibraryComposite.deleteLibrary", "library deletion failed", e2);
                }
            } else {
                try {
                    this.mDcxComposite.removeLocalStorage();
                    this.mDcxComposite = null;
                } catch (AdobeDCXException e3) {
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLocalLibraryDoesNotExist, e3, null, this.mDcxComposite.getClientDataPath());
                }
            }
        }
        deleteRenditionsFolder(this.mLibraryId);
        unlock();
        return true;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x0072 -> B:37:0x0016). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0074 -> B:37:0x0016). Please report as a decompilation issue!!! */
    void revertUnsyncedChanges(Handler handler, IAdobeGenericCompletionCallback<Void> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback) {
        if (!AdobeLibraryManager.getSharedInstance().isStarted()) {
            if (iAdobeGenericErrorCallback != null) {
                callErrorHandler(iAdobeGenericErrorCallback, handler, AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorStartupFailure, null, null, null));
                return;
            }
            return;
        }
        if (!AdobeDCXConstants.AdobeDCXAssetStateModified.equals((this.mDcxComposite == null || this.mDcxComposite.getCurrent() == null) ? null : this.mDcxComposite.getCurrent().getCompositeState())) {
            if (iAdobeGenericCompletionCallback != null) {
                callCompletionHandler(iAdobeGenericCompletionCallback, handler);
                return;
            }
            return;
        }
        AdobeLibrarySyncManager adobeLibrarySyncManager = this.mCollection != null ? this.mCollection._syncManager : null;
        if (adobeLibrarySyncManager != null && !adobeLibrarySyncManager.removeLibraryFromSyncQueues(getLibraryId())) {
            if (iAdobeGenericErrorCallback != null) {
                callErrorHandler(iAdobeGenericErrorCallback, handler, AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToSave, null, null, "Cannot revert. Library sync in progress"));
                return;
            }
            return;
        }
        try {
            if (this.mDcxComposite.revertCurrentBranchToBase()) {
                if (iAdobeGenericCompletionCallback != null) {
                    callCompletionHandler(iAdobeGenericCompletionCallback, handler);
                } else if (iAdobeGenericErrorCallback != null) {
                    callErrorHandler(iAdobeGenericErrorCallback, handler, AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToSave, null, null, null));
                }
            }
        } catch (AdobeDCXException e2) {
            if (iAdobeGenericErrorCallback != null) {
                callErrorHandler(iAdobeGenericErrorCallback, handler, AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToSave, e2, null, null));
            }
        }
    }

    protected static AdobeDCXNode getElementsDCXNodeOfCompositeBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) throws AdobeLibraryException {
        if (adobeDCXCompositeBranch == null) {
            return null;
        }
        List<AdobeDCXNode> childrenOfNode = adobeDCXCompositeBranch.getChildrenOfNode(null);
        if (childrenOfNode.isEmpty()) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryNotInitialized, null, null, null);
        }
        AdobeDCXNode adobeDCXNode = childrenOfNode.get(0);
        if (adobeDCXNode == null || !AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeElementsNodeName.equals(adobeDCXNode.getName())) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryNotInitialized, null, null, null);
        }
        return adobeDCXNode;
    }

    protected static AdobeDCXNode getRemovedElementsDCXNodeOfCompositeBranch(AdobeDCXCompositeMutableBranch adobeDCXCompositeMutableBranch) throws AdobeLibraryException {
        AdobeDCXNode adobeDCXNode;
        if (adobeDCXCompositeMutableBranch == null) {
            return null;
        }
        List<AdobeDCXNode> childrenOfNode = adobeDCXCompositeMutableBranch.getChildrenOfNode(null);
        if (childrenOfNode.isEmpty()) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryNotInitialized, null, null, null);
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= childrenOfNode.size()) {
                adobeDCXNode = null;
                break;
            }
            AdobeDCXNode adobeDCXNode2 = childrenOfNode.get(i2);
            if (adobeDCXNode2.getName().equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedElementsNodeName)) {
                adobeDCXNode = adobeDCXNode2;
                break;
            }
            i = i2 + 1;
        }
        if (adobeDCXNode == null) {
            try {
                return adobeDCXCompositeMutableBranch.appendNode(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRemovedElementsNodeName, null, null, null, null);
            } catch (AdobeDCXException e2) {
                AdobeLogger.log(Level.ERROR, "Unable to create removed elements child", e2.getMessage());
            }
        }
        return adobeDCXNode;
    }

    protected AdobeDCXNode getElementsNode() throws AdobeLibraryException {
        if (this.mDcxComposite == null || this.mDcxComposite.getCurrent() == null) {
            return null;
        }
        return getElementsDCXNodeOfCompositeBranch(this.mDcxComposite.getCurrent());
    }

    protected AdobeDCXNode getElementNode(AdobeLibraryElement adobeLibraryElement) {
        if (adobeLibraryElement == null) {
            return null;
        }
        if (adobeLibraryElement instanceof AdobeLibraryElementDCXNode) {
            return adobeLibraryElement.getDCXNode();
        }
        return this.mDcxComposite.getCurrent().getNodeWithId(adobeLibraryElement.getElementId());
    }

    public int getTotalElementCount() {
        List<AdobeDCXNode> childrenOfNode;
        this.mLock.lock();
        int size = 0;
        try {
            AdobeDCXNode elementsNode = getElementsNode();
            if (elementsNode != null && (childrenOfNode = this.mDcxComposite.getCurrent().getChildrenOfNode(elementsNode)) != null) {
                size = childrenOfNode.size();
            }
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.DEBUG, "AdobeLibraryComposite.getTotalElementCount", "count fetching failed", e2);
        } finally {
            this.mLock.unlock();
        }
        return size;
    }

    public int getCountOfElements(AdobeLibraryDelegate adobeLibraryDelegate) {
        ArrayList<AdobeLibraryElement> elements = getElements(adobeLibraryDelegate);
        if (elements == null) {
            return 0;
        }
        return elements.size();
    }

    public int getCountOfAllElements() {
        ArrayList<AdobeLibraryElement> allElements = getAllElements();
        if (allElements == null) {
            return 0;
        }
        return allElements.size();
    }

    public ArrayList<AdobeLibraryElement> getElements(AdobeLibraryDelegate adobeLibraryDelegate) {
        return getElements(true, adobeLibraryDelegate);
    }

    public ArrayList<AdobeLibraryElement> getAllElements() {
        return getElements(false, null);
    }

    ArrayList<AdobeLibraryElement> getElements(boolean z, AdobeLibraryDelegate adobeLibraryDelegate) {
        AdobeDCXNode elementsNode;
        ArrayList<AdobeLibraryElement> arrayList = null;
        lock();
        try {
            elementsNode = getElementsNode();
        } catch (AdobeLibraryException e2) {
            e = e2;
        }
        if (elementsNode != null) {
            List<AdobeDCXNode> childrenOfNode = this.mDcxComposite.getCurrent().getChildrenOfNode(elementsNode);
            if (childrenOfNode != null) {
                ArrayList<AdobeLibraryElement> arrayList2 = new ArrayList<>(childrenOfNode.size());
                try {
                    Iterator<AdobeDCXNode> it = childrenOfNode.iterator();
                    while (it.hasNext()) {
                        AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(it.next(), this);
                        if (!z || AdobeLibraryManager.getSharedInstance().isTypeInDelegateElementTypesFilter(adobeLibraryElementDCXNode.getType(), adobeLibraryDelegate)) {
                            arrayList2.add(adobeLibraryElementDCXNode);
                        }
                    }
                    arrayList = arrayList2;
                } catch (AdobeLibraryException e3) {
                    arrayList = arrayList2;
                    e = e3;
                    AdobeLogger.log(Level.ERROR, "AdobeLibraryComposite:getElements", "fetch failed", e);
                }
            }
            unlock();
        }
        return arrayList;
    }

    public AdobeLibraryElement getElementWithId(String str) {
        AdobeDCXNode nodeWithId;
        if (str == null || this.mDcxComposite == null || this.mDcxComposite.getCurrent() == null || (nodeWithId = this.mDcxComposite.getCurrent().getNodeWithId(str)) == null || !AdobeLibraryManager.getSharedInstance().isTypeInElementTypesFilter(nodeWithId.getType())) {
            return null;
        }
        return new AdobeLibraryElementDCXNode(nodeWithId, this);
    }

    boolean checkAndAddMatch(String str, String str2, boolean z, AdobeLibraryElement adobeLibraryElement, ArrayList<AdobeLibraryElement> arrayList) {
        if (str2 != null && str2.toLowerCase().contains(str.toLowerCase())) {
            if (z) {
                arrayList.add(adobeLibraryElement);
                return true;
            }
        } else if (!z) {
            return true;
        }
        return false;
    }

    public ArrayList<AdobeLibraryElement> getElementsWithFilter(AdobeLibraryElementFilter adobeLibraryElementFilter, AdobeLibraryDelegate adobeLibraryDelegate) {
        return getElementsWithFilter(adobeLibraryElementFilter, adobeLibraryDelegate, true);
    }

    public ArrayList<AdobeLibraryElement> getAllElementsWithFilter(AdobeLibraryElementFilter adobeLibraryElementFilter) {
        return getElementsWithFilter(adobeLibraryElementFilter, null, false);
    }

    public List<AdobeLibraryElement> getAllArchivedLibraryElements() {
        ArrayList arrayList = new ArrayList();
        try {
            Iterator<AdobeDCXNode> it = this.mDcxComposite.getCurrent().getChildrenOfNode(getRemovedElementsDCXNodeOfCompositeBranch(this.mDcxComposite.getCurrent())).iterator();
            while (it.hasNext()) {
                arrayList.add(new AdobeLibraryElementDCXNode(it.next(), this));
            }
        } catch (AdobeLibraryException e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    ArrayList<AdobeLibraryElement> getElementsWithFilter(AdobeLibraryElementFilter adobeLibraryElementFilter, AdobeLibraryDelegate adobeLibraryDelegate, boolean z) {
        boolean z2;
        AdobeDCXNode elementsNode = null;
        lock();
        try {
            elementsNode = getElementsNode();
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
        }
        ArrayList<AdobeLibraryElement> arrayList = new ArrayList<>();
        if (elementsNode == null) {
            unlock();
        } else {
            List<AdobeDCXNode> childrenOfNode = this.mDcxComposite.getCurrent().getChildrenOfNode(elementsNode);
            unlock();
            if (childrenOfNode != null) {
                Iterator<AdobeDCXNode> it = childrenOfNode.iterator();
                while (it.hasNext()) {
                    AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(it.next(), this);
                    if (!z || AdobeLibraryManager.getSharedInstance().isTypeInDelegateElementTypesFilter(adobeLibraryElementDCXNode.getType(), adobeLibraryDelegate)) {
                        if (adobeLibraryElementFilter.getName() != null) {
                            if (adobeLibraryElementDCXNode.getName() != null) {
                                if (!checkAndAddMatch(adobeLibraryElementFilter.getName(), adobeLibraryElementDCXNode.getName(), adobeLibraryElementFilter.isMatchAny(), adobeLibraryElementDCXNode, arrayList)) {
                                }
                            } else if (!adobeLibraryElementDCXNode.getType().equalsIgnoreCase(AdobeDesignLibraryUtils.AdobeDesignLibraryCharacterStyleElementType) || !checkAndAddMatch(adobeLibraryElementFilter.getName(), adobeLibraryElementDCXNode.getElementId(), adobeLibraryElementFilter.isMatchAny(), adobeLibraryElementDCXNode, arrayList)) {
                            }
                        }
                        if (adobeLibraryElementFilter.getType() == null || !checkAndAddMatch(adobeLibraryElementFilter.getType(), adobeLibraryElementDCXNode.getType(), adobeLibraryElementFilter.isMatchAny(), adobeLibraryElementDCXNode, arrayList)) {
                            if (adobeLibraryElementFilter.getContentTypes() != null) {
                                Iterator<AdobeLibraryRepresentation> it2 = adobeLibraryElementDCXNode.getRepresentations().iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        z2 = false;
                                        break;
                                    }
                                    if (adobeLibraryElementFilter.getContentTypes().contains(it2.next().getType())) {
                                        z2 = true;
                                        break;
                                    }
                                }
                                if (z2) {
                                    if (adobeLibraryElementFilter.isMatchAny()) {
                                        arrayList.add(adobeLibraryElementDCXNode);
                                    }
                                } else if (adobeLibraryElementFilter.isMatchAny()) {
                                }
                            }
                            if (!adobeLibraryElementFilter.isMatchAny()) {
                                arrayList.add(adobeLibraryElementDCXNode);
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    protected String getElementReference(AdobeLibraryElement adobeLibraryElement) {
        AdobeStorageSession adobeStorageSession;
        URL url;
        AdobeCloud adobeCloud = AdobeLibraryManager.getSharedInstance().mCloud;
        if (adobeCloud != null && (adobeStorageSession = (AdobeStorageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage)) != null) {
            String hrefForSyncGroup = adobeStorageSession.getHrefForSyncGroup(AdobeLibraryCompositeConstantsInternal.AdobeLibraryDCXGroupName);
            AdobeCloudEndpoint adobeCloudEndpoint = adobeCloud.getEndpoints().get(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
            if (adobeCloudEndpoint != null && (url = adobeCloudEndpoint.getServiceURLs().get("libraries")) != null) {
                return String.format("cloud-asset://%s/%s%s;node=%s", url.getHost(), hrefForSyncGroup, this.mLibraryId, adobeLibraryElement.getElementId());
            }
        }
        return null;
    }

    public AdobeLibraryElement addElementWithDCXElement(AdobeDCXElement adobeDCXElement) throws AdobeLibraryException, AdobeDCXException {
        AdobeDCXNode elementsNode;
        AdobeDCXNode adobeDCXNodeCopyNode;
        if (addErrorIfReadOnly()) {
            return null;
        }
        if (adobeDCXElement == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
        }
        AdobeDCXNode root = adobeDCXElement.getRoot();
        if (root.getType() == null || root.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCreatedKey) == null || root.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey) == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidElement, null, null, null);
        }
        try {
            elementsNode = getElementsNode();
            e = null;
        } catch (AdobeLibraryException e2) {
            e = e2;
            elementsNode = null;
        }
        if (elementsNode == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, e, null, null);
        }
        int size = this.mDcxComposite.getCurrent().getChildrenOfNode(elementsNode).size();
        if (size >= 1000) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryMaximumElementsReached, null, null, null);
        }
        AdobeLibraryAnalyticsError adobeLibraryAnalyticsError = new AdobeLibraryAnalyticsError(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementCreate, this, null, null);
        lock();
        beginChanges();
        String nodeId = root.getNodeId();
        if (this.mDcxComposite.getCurrent().getNodeWithId(nodeId) != null) {
            nodeId = AdobeStorageUtils.generateUuid();
        }
        try {
            adobeDCXNodeCopyNode = this.mDcxComposite.getCurrent().copyNode(root, elementsNode, size, nodeId, nodeId);
            e = e;
        } catch (AdobeDCXException e3) {
            e = e3;
            adobeDCXNodeCopyNode = null;
        }
        if (adobeDCXNodeCopyNode == null) {
            unlock();
            endChanges();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementCopyFailed, e, null, null);
            adobeLibraryAnalyticsError.trackAction(adobeLibraryExceptionCreateLibraryError);
            throw adobeLibraryExceptionCreateLibraryError;
        }
        AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(adobeDCXNodeCopyNode, this);
        unlock();
        endChanges();
        adobeLibraryAnalyticsError.trackAction(null);
        return adobeLibraryElementDCXNode;
    }

    protected AdobeLibraryElement addElement(String str, String str2) throws AdobeLibraryException, AdobeDCXException {
        AdobeDCXNode adobeDCXNodeAppendNode;
        if (addErrorIfReadOnly()) {
            return null;
        }
        String strGenerateUuid = AdobeStorageUtils.generateUuid();
        AdobeLibraryAnalyticsError adobeLibraryAnalyticsError = new AdobeLibraryAnalyticsError(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementCreate, this, null, null);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(strGenerateUuid, str, "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT, "");
        lock();
        beginChanges();
        AdobeDCXNode elementsNode = getElementsNode();
        if (elementsNode == null) {
            unlock();
            endChanges();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, null, null, null);
            adobeLibraryAnalyticsError.trackAction(adobeLibraryExceptionCreateLibraryError);
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            throw adobeLibraryExceptionCreateLibraryError;
        }
        if (this.mDcxComposite.getCurrent().getChildrenOfNode(elementsNode).size() >= 1000) {
            unlock();
            endChanges();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError2 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryMaximumElementsReached, null, null, null);
            adobeLibraryAnalyticsError.trackAction(adobeLibraryExceptionCreateLibraryError2);
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            throw adobeLibraryExceptionCreateLibraryError2;
        }
        try {
            adobeDCXNodeAppendNode = this.mDcxComposite.getCurrent().appendNode(str, strGenerateUuid, str2, strGenerateUuid, elementsNode);
            e = null;
        } catch (AdobeDCXException e2) {
            e = e2;
            adobeDCXNodeAppendNode = null;
        }
        if (adobeDCXNodeAppendNode != null) {
            Date date = new Date();
            adobeDCXNodeAppendNode.setValue(Long.valueOf(date.getTime()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCreatedKey);
            adobeDCXNodeAppendNode.setValue(Long.valueOf(date.getTime()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey);
            AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(adobeDCXNodeAppendNode, this);
            unlock();
            endChanges();
            adobeLibraryAnalyticsError.trackAction(null);
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
            return adobeLibraryElementDCXNode;
        }
        unlock();
        endChanges();
        AdobeLibraryException adobeLibraryExceptionCreateLibraryError3 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddElement, e, null, null);
        adobeLibraryAnalyticsError.trackAction(adobeLibraryExceptionCreateLibraryError3);
        adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
        throw adobeLibraryExceptionCreateLibraryError3;
    }

    protected AdobeLibraryElement insertElement(String str, String str2, int i, AdobeLibraryDelegate adobeLibraryDelegate) throws AdobeLibraryException, AdobeDCXException {
        AdobeDCXNode adobeDCXNodeInsertNode;
        if (addErrorIfReadOnly()) {
            return null;
        }
        ArrayList<AdobeLibraryElement> elements = getElements(adobeLibraryDelegate);
        int size = elements != null ? elements.size() : 0;
        if (i > size) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryIndexOutOfRange, null, null, null);
        }
        String strGenerateUuid = AdobeStorageUtils.generateUuid();
        AdobeLibraryAnalyticsError adobeLibraryAnalyticsError = new AdobeLibraryAnalyticsError(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementCreate, this, null, null);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(strGenerateUuid, str, "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT, "");
        lock();
        beginChanges();
        AdobeDCXNode elementsNode = null;
        try {
            elementsNode = getElementsNode();
            e = null;
        } catch (AdobeLibraryException e2) {
            e = e2;
        }
        if (elementsNode == null) {
            unlock();
            endChanges();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, e, null, null);
            adobeLibraryAnalyticsError.trackAction(adobeLibraryExceptionCreateLibraryError);
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            throw adobeLibraryExceptionCreateLibraryError;
        }
        if (this.mDcxComposite.getCurrent().getChildrenOfNode(elementsNode).size() >= 1000) {
            unlock();
            endChanges();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError2 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryMaximumElementsReached, null, null, null);
            adobeLibraryAnalyticsError.trackAction(adobeLibraryExceptionCreateLibraryError2);
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            throw adobeLibraryExceptionCreateLibraryError2;
        }
        AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
        adobeDCXIndexWrapper.index = 0L;
        if (i == size) {
            adobeDCXIndexWrapper.index = r4.size();
        } else {
            AdobeLibraryElement adobeLibraryElement = elements.get(i);
            if (!$assertionsDisabled && adobeLibraryElement == null) {
                throw new AssertionError("ERROR: insertElement: Can't find element to insert before.");
            }
            if (adobeLibraryElement != null) {
                this.mDcxComposite.getCurrent().findParentOfNode(adobeLibraryElement.getDCXNode(), adobeDCXIndexWrapper);
            }
        }
        try {
            adobeDCXNodeInsertNode = this.mDcxComposite.getCurrent().insertNode(str, strGenerateUuid, str2, strGenerateUuid, elementsNode, adobeDCXIndexWrapper.index);
            e = null;
        } catch (AdobeDCXException e3) {
            e = e3;
            adobeDCXNodeInsertNode = null;
        }
        if (adobeDCXNodeInsertNode != null) {
            long currentTimeInMilliseconds = AdobeLibraryUtils.getCurrentTimeInMilliseconds();
            adobeDCXNodeInsertNode.setValue(Long.valueOf(currentTimeInMilliseconds), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCreatedKey);
            adobeDCXNodeInsertNode.setValue(Long.valueOf(currentTimeInMilliseconds), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey);
            AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(adobeDCXNodeInsertNode, this);
            unlock();
            endChanges();
            adobeLibraryAnalyticsError.trackAction(null);
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
            return adobeLibraryElementDCXNode;
        }
        unlock();
        endChanges();
        AdobeLibraryException adobeLibraryExceptionCreateLibraryError3 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddElement, e, null, null);
        adobeLibraryAnalyticsError.trackAction(adobeLibraryExceptionCreateLibraryError3);
        adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
        throw adobeLibraryExceptionCreateLibraryError3;
    }

    public AdobeLibraryElement removeElement(AdobeLibraryElement adobeLibraryElement) throws AdobeLibraryException {
        if (addErrorIfReadOnly()) {
            return null;
        }
        AdobeLibraryAnalyticsOperation adobeLibraryAnalyticsOperation = new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementDelete, this, adobeLibraryElement, null);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppDelete.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(adobeLibraryElement.getElementId(), adobeLibraryElement.getName(), "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT, "");
        lock();
        beginChanges();
        removeRenditionCacheForElement(adobeLibraryElement.getElementId());
        AdobeDCXNode adobeDCXNodeRemoveNode = this.mDcxComposite.getCurrent().removeNode(getElementNode(adobeLibraryElement));
        if (adobeDCXNodeRemoveNode == null) {
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, null, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError);
            throw adobeLibraryExceptionCreateLibraryError;
        }
        this.mDcxComposite.removeUnusedLocalFiles();
        unlock();
        endChanges();
        adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
        adobeLibraryAnalyticsOperation.trackAction(null);
        return new AdobeLibraryElementDCXNode(adobeDCXNodeRemoveNode, null);
    }

    public AdobeLibraryElement archiveElement(AdobeLibraryElement adobeLibraryElement) throws AdobeLibraryException, AdobeDCXException {
        AdobeDCXNode adobeDCXNodeMoveNode;
        if (addErrorIfReadOnly()) {
            return null;
        }
        lock();
        beginChanges();
        try {
            adobeDCXNodeMoveNode = this.mDcxComposite.getCurrent().moveNode(getElementNode(adobeLibraryElement), getRemovedElementsNode(true), this.mDcxComposite.getCurrent().getChildrenOfNode(r2).size());
        } catch (AdobeDCXException e2) {
            AdobeLogger.log(Level.ERROR, "archive node failure", e2.getMessage());
            adobeDCXNodeMoveNode = null;
        }
        if (adobeDCXNodeMoveNode == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, null, null, null);
        }
        this.mDcxComposite.removeUnusedLocalFiles();
        unlock();
        endChanges();
        AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(adobeDCXNodeMoveNode, null);
        adobeLibraryElementDCXNode.updateTimestampOnRemove();
        return adobeLibraryElementDCXNode;
    }

    private AdobeDCXNode getRemovedElementsNode(boolean z) {
        if (this.mDcxComposite == null || this.mDcxComposite.getCurrent() == null) {
            return null;
        }
        try {
            return getRemovedElementsDCXNodeOfCompositeBranch(this.mDcxComposite.getCurrent());
        } catch (AdobeLibraryException e2) {
            AdobeLogger.log(Level.ERROR, "archive node failure", e2.getMessage());
            return null;
        }
    }

    protected AdobeLibraryElement moveElementAfter(AdobeLibraryElement adobeLibraryElement, AdobeLibraryElement adobeLibraryElement2) throws AdobeLibraryException {
        if (addErrorIfReadOnly()) {
            return null;
        }
        AdobeLibraryAnalyticsOperation adobeLibraryAnalyticsOperation = new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementMove, this, adobeLibraryElement, null);
        lock();
        beginChanges();
        try {
            AdobeDCXNode elementsNode = getElementsNode();
            AdobeDCXNode elementNode = getElementNode(adobeLibraryElement);
            AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
            if (elementNode == null || this.mDcxComposite.getCurrent().findParentOfNode(elementNode, adobeDCXIndexWrapper) == null) {
                unlock();
                endChanges();
                AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, null, null, null);
                adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError);
                throw adobeLibraryExceptionCreateLibraryError;
            }
            long j = adobeDCXIndexWrapper.index;
            AdobeDCXNode elementNode2 = getElementNode(adobeLibraryElement2);
            long j2 = 0;
            if (elementNode2 != null && this.mDcxComposite.getCurrent().findParentOfNode(elementNode2, adobeDCXIndexWrapper) != null) {
                j2 = adobeDCXIndexWrapper.index + 1;
            }
            if (j2 > j && j2 != 0) {
                j2--;
            }
            try {
                AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(this.mDcxComposite.getCurrent().moveNode(elementNode, elementsNode, j2), this);
                unlock();
                endChanges();
                adobeLibraryAnalyticsOperation.trackAction(null);
                return adobeLibraryElementDCXNode;
            } catch (AdobeDCXException e2) {
                unlock();
                endChanges();
                AdobeLibraryException adobeLibraryExceptionCreateLibraryError2 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, e2, null, null);
                adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError2);
                throw adobeLibraryExceptionCreateLibraryError2;
            }
        } catch (AdobeLibraryException e3) {
            unlock();
            endChanges();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError3 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, e3, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError3);
            throw adobeLibraryExceptionCreateLibraryError3;
        }
    }

    protected AdobeLibraryElement moveElementBefore(AdobeLibraryElement adobeLibraryElement, AdobeLibraryElement adobeLibraryElement2) throws AdobeLibraryException {
        if (addErrorIfReadOnly()) {
            return null;
        }
        AdobeLibraryAnalyticsOperation adobeLibraryAnalyticsOperation = new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementMove, this, adobeLibraryElement, null);
        lock();
        beginChanges();
        try {
            AdobeDCXNode elementsNode = getElementsNode();
            AdobeDCXNode elementNode = getElementNode(adobeLibraryElement);
            AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
            if (elementNode == null || this.mDcxComposite.getCurrent().findParentOfNode(elementNode, adobeDCXIndexWrapper) == null) {
                unlock();
                endChanges();
                AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, null, null, null);
                adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError);
                throw adobeLibraryExceptionCreateLibraryError;
            }
            long j = adobeDCXIndexWrapper.index;
            AdobeDCXNode elementNode2 = getElementNode(adobeLibraryElement2);
            long size = this.mDcxComposite.getCurrent().getChildrenOfNode(elementsNode).size();
            if (elementNode2 != null) {
                this.mDcxComposite.getCurrent().findParentOfNode(elementNode2, adobeDCXIndexWrapper);
                size = adobeDCXIndexWrapper.index;
            }
            if (size > j && size != 0) {
                size--;
            }
            try {
                AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(this.mDcxComposite.getCurrent().moveNode(elementNode, elementsNode, size), this);
                unlock();
                endChanges();
                adobeLibraryAnalyticsOperation.trackAction(null);
                return adobeLibraryElementDCXNode;
            } catch (AdobeDCXException e2) {
                unlock();
                endChanges();
                AdobeLibraryException adobeLibraryExceptionCreateLibraryError2 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, e2, null, null);
                adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError2);
                throw adobeLibraryExceptionCreateLibraryError2;
            }
        } catch (AdobeLibraryException e3) {
            unlock();
            endChanges();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError3 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, e3, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError3);
            throw adobeLibraryExceptionCreateLibraryError3;
        }
    }

    protected AdobeLibraryElement copyElement(AdobeLibraryElement adobeLibraryElement, AdobeLibraryComposite adobeLibraryComposite) throws AdobeLibraryException {
        AdobeDCXNode nodeWithId;
        if (addErrorIfReadOnly()) {
            return null;
        }
        AdobeLibraryAnalyticsOperation adobeLibraryAnalyticsOperation = new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementCopy, this, adobeLibraryElement, null);
        lock();
        if (adobeLibraryComposite == null) {
            adobeLibraryComposite = this;
        }
        if (adobeLibraryComposite == null || adobeLibraryComposite.getDcxComposite() == null || adobeLibraryComposite.getDcxComposite().getCurrent() == null) {
            unlock();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, null, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError);
            throw adobeLibraryExceptionCreateLibraryError;
        }
        AdobeDCXCompositeMutableBranch current = adobeLibraryComposite.getDcxComposite().getCurrent();
        if (adobeLibraryElement == null || current.getNodeWithId(adobeLibraryElement.getElementId()) == null) {
            unlock();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError2 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, null, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError2);
            throw adobeLibraryExceptionCreateLibraryError2;
        }
        try {
            AdobeDCXNode elementsNode = getElementsNode();
            int size = this.mDcxComposite.getCurrent().getChildrenOfNode(elementsNode).size();
            if (size >= 1000) {
                unlock();
                AdobeLibraryException adobeLibraryExceptionCreateLibraryError3 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryMaximumElementsReached, null, null, null);
                adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError3);
                throw adobeLibraryExceptionCreateLibraryError3;
            }
            beginChanges();
            String elementId = adobeLibraryElement.getElementId();
            if (adobeLibraryComposite == this || this.mDcxComposite.getCurrent().getNodeWithId(elementId) != null) {
                elementId = AdobeStorageUtils.generateUuid();
            }
            if (adobeLibraryElement instanceof AdobeLibraryElementDCXNode) {
                nodeWithId = adobeLibraryElement.getDCXNode();
            } else {
                nodeWithId = current.getNodeWithId(adobeLibraryElement.getElementId());
            }
            try {
                AdobeLibraryElementDCXNode adobeLibraryElementDCXNode = new AdobeLibraryElementDCXNode(this.mDcxComposite.getCurrent().copyNode(nodeWithId, elementsNode, size, elementId, elementId), this);
                unlock();
                endChanges();
                adobeLibraryAnalyticsOperation.trackAction(null);
                return adobeLibraryElementDCXNode;
            } catch (AdobeDCXException e2) {
                unlock();
                endChanges();
                AdobeLibraryException adobeLibraryExceptionCreateLibraryError4 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementCopyFailed, e2, null, null);
                adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError4);
                throw adobeLibraryExceptionCreateLibraryError4;
            }
        } catch (AdobeLibraryException e3) {
            unlock();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError5 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, e3, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError5);
            throw adobeLibraryExceptionCreateLibraryError5;
        }
    }

    protected AdobeDCXNode getDCXNodeForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) {
        return adobeLibraryRepresentation instanceof AdobeLibraryRepresentationDCXNode ? adobeLibraryRepresentation.getDCXNode() : this.mDcxComposite.getCurrent().getNodeWithId(adobeLibraryRepresentation.getRepresentationId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callCompletionHandler(final IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, Handler handler, final String str) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.1
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeGenericCompletionCallback.onCompletion(str);
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.2
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeGenericCompletionCallback.onCompletion(str);
                }
            }).start();
        }
    }

    private void callCompletionHandler(final IAdobeGenericCompletionCallback<Void> iAdobeGenericCompletionCallback, Handler handler) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.3
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeGenericCompletionCallback.onCompletion(null);
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.4
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeGenericCompletionCallback.onCompletion(null);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callErrorHandler(final IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, Handler handler, final AdobeLibraryException adobeLibraryException) {
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.5
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeGenericErrorCallback.onError(adobeLibraryException);
                }
            });
        } else {
            new Thread(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.6
                @Override // java.lang.Runnable
                public void run() {
                    iAdobeGenericErrorCallback.onError(adobeLibraryException);
                }
            }).start();
        }
    }

    public boolean getFilePathForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, Handler handler) {
        try {
            this.mLock.lock();
            return internalFilePathForRepresentation(adobeLibraryRepresentation, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler, null);
        } finally {
            this.mLock.unlock();
        }
    }

    protected boolean internalFilePathForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation, final IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, final Handler handler, ArrayList<AdobeNetworkHttpTaskHandle> arrayList) {
        AdobeDCXNode nodeWithId;
        String pathForComponent;
        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleDownloadRepresentation;
        if (adobeLibraryRepresentation == null) {
            callErrorHandler(iAdobeGenericErrorCallback, handler, new AdobeLibraryException(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, "Missing Representation"));
            return false;
        }
        AdobeDCXComponent component = adobeLibraryRepresentation.getComponent();
        if (component != null) {
            try {
                pathForComponent = this.mDcxComposite.getCurrent().getPathForComponent(component);
            } catch (AdobeDCXException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                pathForComponent = null;
            }
            if (pathForComponent != null) {
                if (iAdobeGenericCompletionCallback != null) {
                    callCompletionHandler(iAdobeGenericCompletionCallback, handler, pathForComponent);
                }
            } else {
                AdobeDCXNode adobeDCXNodeFindParentNodeOfComponent = this.mDcxComposite.getCurrent().findParentNodeOfComponent(adobeLibraryRepresentation.getComponent());
                AdobeLibrarySyncManager adobeLibrarySyncManager = this.mCollection != null ? this.mCollection._syncManager : null;
                if (adobeLibrarySyncManager != null) {
                    adobeNetworkHttpTaskHandleDownloadRepresentation = adobeLibrarySyncManager.downloadRepresentation(adobeLibraryRepresentation, adobeDCXNodeFindParentNodeOfComponent != null ? adobeDCXNodeFindParentNodeOfComponent.getNodeId() : null, this.mDcxComposite, this.mLibraryId, new IAdobeGenericRequestCallback<String, AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.7
                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeCancelCallback
                        public void onCancellation() {
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(String str) {
                            if (iAdobeGenericCompletionCallback != null) {
                                AdobeLibraryComposite.this.callCompletionHandler(iAdobeGenericCompletionCallback, handler, str);
                            }
                        }

                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeCSDKException adobeCSDKException) {
                            if (iAdobeGenericErrorCallback != null) {
                                AdobeLibraryComposite.this.callErrorHandler(iAdobeGenericErrorCallback, handler, AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorDownloadingRepresentationAsset, adobeCSDKException, null, null));
                            }
                        }

                        @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                        public void onProgress(double d2) {
                        }
                    });
                } else {
                    adobeNetworkHttpTaskHandleDownloadRepresentation = null;
                }
                if (adobeNetworkHttpTaskHandleDownloadRepresentation == null) {
                    return false;
                }
                if (arrayList != null) {
                    arrayList.add(adobeNetworkHttpTaskHandleDownloadRepresentation);
                }
            }
            return true;
        }
        if (adobeLibraryRepresentation.isExternalLink()) {
            if (adobeLibraryRepresentation instanceof AdobeLibraryRepresentationDCXNode) {
                nodeWithId = adobeLibraryRepresentation.getDCXNode();
            } else {
                nodeWithId = this.mDcxComposite.getCurrent().getNodeWithId(adobeLibraryRepresentation.getRepresentationId());
            }
            AdobeDCXNode adobeDCXNodeFindParentOfNode = this.mDcxComposite.getCurrent().findParentOfNode(nodeWithId, null);
            if (adobeDCXNodeFindParentOfNode != null) {
                final String nodeId = adobeDCXNodeFindParentOfNode.getNodeId();
                final String representationId = adobeLibraryRepresentation.getRepresentationId();
                final JSONObject elementRenditions = getElementRenditions(nodeId);
                try {
                    String strOptString = elementRenditions.optString(representationId, null);
                    if (strOptString != null) {
                        if (strOptString.startsWith(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkFailedToDownload)) {
                            if (iAdobeGenericErrorCallback != null) {
                                callErrorHandler(iAdobeGenericErrorCallback, handler, new AdobeLibraryException(AdobeLibraryErrorCode.AdobeLibraryErrorDownloadingRepresentationAsset));
                            }
                            return false;
                        }
                        if (iAdobeGenericCompletionCallback != null) {
                            callCompletionHandler(iAdobeGenericCompletionCallback, handler, AdobeDCXUtils.stringByAppendingLastPathComponent(this.mRenditionsURL, strOptString));
                        }
                    } else {
                        if (!AdobeLibraryManager.getSharedInstance().isSyncEnabled()) {
                            if (iAdobeGenericErrorCallback != null) {
                                callErrorHandler(iAdobeGenericErrorCallback, handler, new AdobeLibraryException(AdobeLibraryErrorCode.AdobeLibraryErrorSyncNotEnabled));
                            }
                            return false;
                        }
                        String str = (String) adobeLibraryRepresentation.getNode().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkContentTypeKey);
                        String str2 = (String) adobeLibraryRepresentation.getNode().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkURLKey);
                        if (!AdobeLibraryXferUtils.validateURL(str2)) {
                            elementRenditions.put(representationId, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkFailedToDownload);
                            if (iAdobeGenericErrorCallback != null) {
                                callErrorHandler(iAdobeGenericErrorCallback, handler, new AdobeLibraryException(AdobeLibraryErrorCode.AdobeLibraryErrorDownloadingRepresentationAsset));
                            }
                            return false;
                        }
                        final String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(AdobeDCXUtils.stringByAppendingLastPathComponent(this.mRenditionsURL, nodeId), representationId), AdobeStorageUtils.generateUuid());
                        String extensionForMimeType = AdobeAssetFileExtensions.getExtensionForMimeType(str);
                        if (extensionForMimeType != null) {
                            strStringByAppendingLastPathComponent = strStringByAppendingLastPathComponent + "." + extensionForMimeType;
                        }
                        AdobeNetworkHttpTaskHandle adobeNetworkHttpTaskHandleDownloadExternalFile = AdobeLibraryXferUtils.getSharedInstance().downloadExternalFile(new URL(str2), strStringByAppendingLastPathComponent, new IAdobeGenericCompletionCallback<Void>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.8
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(Void r5) {
                                try {
                                    elementRenditions.put(representationId, nodeId + URIUtil.SLASH + representationId + URIUtil.SLASH + strStringByAppendingLastPathComponent.substring(strStringByAppendingLastPathComponent.lastIndexOf(URIUtil.SLASH) + 1));
                                    AdobeLibraryComposite.this.writeLibraryPlist();
                                    if (iAdobeGenericCompletionCallback != null) {
                                        AdobeLibraryComposite.this.callCompletionHandler(iAdobeGenericCompletionCallback, handler, strStringByAppendingLastPathComponent);
                                    }
                                } catch (JSONException e3) {
                                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e3);
                                }
                            }
                        }, new IAdobeGenericErrorCallback<AdobeNetworkException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.9
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(AdobeNetworkException adobeNetworkException) {
                                if (AdobeLibraryXferUtils.isUnrecoverableError((AdobeNetworkHttpResponse) adobeNetworkException.getData().get(AdobeNetworkException.getKeyForResponse()))) {
                                    try {
                                        elementRenditions.put(representationId, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkFailedToDownload);
                                        AdobeLibraryComposite.this.writeLibraryPlist();
                                    } catch (JSONException e3) {
                                        AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e3);
                                    }
                                }
                                if (iAdobeGenericErrorCallback != null) {
                                    AdobeLibraryComposite.this.callErrorHandler(iAdobeGenericErrorCallback, handler, new AdobeLibraryException(AdobeLibraryErrorCode.AdobeLibraryErrorDownloadingRepresentationAsset));
                                }
                            }
                        });
                        if (adobeNetworkHttpTaskHandleDownloadExternalFile == null) {
                            return false;
                        }
                        if (arrayList != null) {
                            arrayList.add(adobeNetworkHttpTaskHandleDownloadExternalFile);
                        }
                    }
                } catch (MalformedURLException | JSONException e3) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e3);
                }
            }
            return true;
        }
        if (iAdobeGenericErrorCallback != null) {
            callErrorHandler(iAdobeGenericErrorCallback, handler, AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorRepresentationHasNoFile, null, null, null));
        }
        return false;
    }

    public boolean haveLocalFileForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) {
        return localFilePathForRepresentation(adobeLibraryRepresentation) != null;
    }

    String localFilePathForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) {
        String pathForComponent = null;
        this.mLock.lock();
        try {
            if (adobeLibraryRepresentation.isExternalLink()) {
                String strOptString = getElementRenditions(this.mDcxComposite.getCurrent().findParentOfNode(getDCXNodeForRepresentation(adobeLibraryRepresentation), null).getNodeId()).optString(adobeLibraryRepresentation.getRepresentationId(), null);
                if (strOptString == null || strOptString.startsWith(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkFailedToDownload)) {
                    strOptString = null;
                }
                pathForComponent = strOptString;
            } else {
                AdobeDCXComponent component = adobeLibraryRepresentation.getComponent();
                if (component != null) {
                    try {
                        pathForComponent = this.mDcxComposite.getCurrent().getPathForComponent(component);
                    } catch (AdobeDCXException e2) {
                        AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                    }
                }
            }
            return pathForComponent;
        } finally {
            this.mLock.unlock();
        }
    }

    protected boolean shouldDownloadExternalAssetForRepresentation(AdobeDCXNode adobeDCXNode) {
        lock();
        if (adobeDCXNode.getType().equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryRepresentationLinkType)) {
            String strOptString = getElementRenditions(this.mDcxComposite.getCurrent().findParentOfNode(adobeDCXNode, new AdobeDCXIndexWrapper()).getNodeId()).optString(adobeDCXNode.getNodeId());
            unlock();
            return strOptString == null;
        }
        unlock();
        return false;
    }

    protected boolean removeRenditionCacheForElement(String str) {
        if (getElementWithId(str) == null) {
            return false;
        }
        if (this.mRenditions == null) {
            return true;
        }
        this.mLock.lock();
        try {
            JSONObject jSONObjectOptJSONObject = this.mRenditions.optJSONObject(str);
            if (jSONObjectOptJSONObject != null) {
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String strOptString = jSONObjectOptJSONObject.optString(itKeys.next());
                    if (strOptString != null && strOptString.charAt(0) != '/') {
                        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(this.mRenditionsURL, strOptString);
                        if (!FileUtils.deleteQuietly(new File(strStringByAppendingLastPathComponent))) {
                            AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), "Failed to delete rendition cache: " + strStringByAppendingLastPathComponent, null);
                        }
                    }
                }
            }
            this.mRenditions.remove(str);
            this.mLock.unlock();
            writeLibraryPlist();
            return true;
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    public boolean getRenditionPath(String str, int i, boolean z, IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback, Handler handler) {
        return internalGetRenditionPath(str, i, z, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler, null);
    }

    JSONObject getElementRenditions(String str) {
        this.mLock.lock();
        try {
            JSONObject jSONObjectOptJSONObject = this.mRenditions.optJSONObject(str);
            if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
                try {
                    this.mRenditions.put(str, jSONObjectOptJSONObject);
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                }
            }
            return jSONObjectOptJSONObject;
        } finally {
            this.mLock.unlock();
        }
    }

    protected boolean downloadRenditionFromExternalLink(final AdobeLibraryElement adobeLibraryElement, AdobeLibraryRepresentation adobeLibraryRepresentation, int i, final Handler handler, final IAdobeGenericCompletionCallback<String> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeLibraryException> iAdobeGenericErrorCallback) {
        String renditionQueryParamsForEndpoint;
        final boolean zEquals = adobeLibraryRepresentation.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary);
        URI contentURLForRepresentation = getContentURLForRepresentation(adobeLibraryRepresentation);
        if (contentURLForRepresentation != null && (renditionQueryParamsForEndpoint = AdobeLibraryUtils.getRenditionQueryParamsForEndpoint(contentURLForRepresentation.getHost(), i)) != null) {
            String str = new StringBuilder().append(contentURLForRepresentation.getPath()).append(contentURLForRepresentation.getQuery()).toString() != null ? "&" : "?" + renditionQueryParamsForEndpoint;
            String str2 = (String) adobeLibraryRepresentation.getNode().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkContentTypeKey);
            try {
                if (AdobeLibraryXferUtils.validateURL(str)) {
                    String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(this.mRenditionsURL, adobeLibraryElement.getElementId());
                    File file = new File(strStringByAppendingLastPathComponent);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    final String string = Integer.toString(i);
                    final String strStringByAppendingLastPathComponent2 = AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, string);
                    final String extensionForMimeType = AdobeAssetFileExtensions.getExtensionForMimeType(str2);
                    if (extensionForMimeType != null) {
                        strStringByAppendingLastPathComponent2 = strStringByAppendingLastPathComponent2 + "." + extensionForMimeType;
                    }
                    if (AdobeLibraryXferUtils.getSharedInstance().downloadExternalFile(contentURLForRepresentation.toURL(), strStringByAppendingLastPathComponent2, new IAdobeGenericCompletionCallback<Void>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.10
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Void r5) {
                            try {
                                AdobeLibraryComposite.this.getElementRenditions(adobeLibraryElement.getElementId()).put(string, AdobeLibraryComposite.ADOBE_LIBRARY_RENDITION_CACHE_PREFIX + adobeLibraryElement.getElementId() + URIUtil.SLASH + string + "." + extensionForMimeType);
                                AdobeLibraryComposite.this.writeLibraryPlist();
                                AdobeLibraryComposite.this.callCompletionHandler(iAdobeGenericCompletionCallback, handler, strStringByAppendingLastPathComponent2);
                            } catch (JSONException e2) {
                                AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                            }
                        }
                    }, new IAdobeGenericErrorCallback<AdobeNetworkException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.11
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                        public void onError(AdobeNetworkException adobeNetworkException) {
                            Exception networkException;
                            AdobeLibraryRepresentation next;
                            AdobeNetworkHttpResponse adobeNetworkHttpResponse = (AdobeNetworkHttpResponse) adobeNetworkException.getData().get(AdobeNetworkException.getKeyForResponse());
                            if (AdobeLibraryXferUtils.isUnrecoverableError(adobeNetworkHttpResponse)) {
                                int statusCode = adobeNetworkHttpResponse.getStatusCode();
                                if (statusCode == 400 || statusCode == 403) {
                                    if (zEquals) {
                                        Iterator<AdobeLibraryRepresentation> it = AdobeLibraryComposite.this.getRepresentationsForElement(adobeLibraryElement).iterator();
                                        while (true) {
                                            if (!it.hasNext()) {
                                                next = null;
                                                break;
                                            }
                                            next = it.next();
                                            if (next.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypeRendition) && next.isExternalLink()) {
                                                break;
                                            }
                                        }
                                        if (next != null && AdobeLibraryComposite.this.getFilePathForRepresentation(next, iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, handler)) {
                                            return;
                                        }
                                    }
                                    networkException = adobeNetworkHttpResponse.getNetworkException();
                                } else {
                                    networkException = null;
                                }
                                try {
                                    AdobeLibraryComposite.this.getElementRenditions(adobeLibraryElement.getElementId()).put(string, AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkFailedToDownload + (networkException != null ? networkException.toString() : ""));
                                    AdobeLibraryComposite.this.writeLibraryPlist();
                                } catch (JSONException e2) {
                                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                                }
                            }
                            if (iAdobeGenericErrorCallback != null) {
                                AdobeLibraryComposite.this.callErrorHandler(iAdobeGenericErrorCallback, handler, new AdobeLibraryException(AdobeLibraryErrorCode.AdobeLibraryErrorDownloadingRepresentationAsset));
                            }
                        }
                    }) != null) {
                        return true;
                    }
                }
            } catch (MalformedURLException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a2, code lost:
    
        internalFilePathForRepresentation(r9, new com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.AnonymousClass12(r20), new com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.AnonymousClass13(r20), null, r27);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean internalGetRenditionPath(final java.lang.String r21, int r22, boolean r23, final com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback<java.lang.String> r24, final com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback<com.adobe.creativesdk.foundation.storage.AdobeLibraryException> r25, final android.os.Handler r26, java.util.ArrayList<com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle> r27) {
        /*
            Method dump skipped, instruction units count: 714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.internalGetRenditionPath(java.lang.String, int, boolean, com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback, com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback, android.os.Handler, java.util.ArrayList):boolean");
    }

    Bitmap getResizedBitmap(Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i / width, i2 / height);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean writeToFile(android.graphics.Bitmap r7, java.lang.String r8) throws java.lang.Throwable {
        /*
            r6 = this;
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L43
            r1.<init>(r8)     // Catch: java.lang.Exception -> L21 java.lang.Throwable -> L43
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            r3 = 100
            r7.compress(r0, r3, r1)     // Catch: java.lang.Throwable -> L58 java.lang.Exception -> L5a
            r0 = 1
            if (r1 == 0) goto L13
            r1.close()     // Catch: java.io.IOException -> L14
        L13:
            return r0
        L14:
            r1 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.Class<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r4 = com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.class
            java.lang.String r4 = r4.getSimpleName()
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r2, r1)
            goto L13
        L21:
            r0 = move-exception
            r1 = r2
        L23:
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG     // Catch: java.lang.Throwable -> L58
            java.lang.Class<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r4 = com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.class
            java.lang.String r4 = r4.getSimpleName()     // Catch: java.lang.Throwable -> L58
            r5 = 0
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r5, r0)     // Catch: java.lang.Throwable -> L58
            r0 = 0
            if (r1 == 0) goto L13
            r1.close()     // Catch: java.io.IOException -> L36
            goto L13
        L36:
            r1 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.Class<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r4 = com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.class
            java.lang.String r4 = r4.getSimpleName()
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r2, r1)
            goto L13
        L43:
            r0 = move-exception
            r1 = r2
        L45:
            if (r1 == 0) goto L4a
            r1.close()     // Catch: java.io.IOException -> L4b
        L4a:
            throw r0
        L4b:
            r1 = move-exception
            com.adobe.creativesdk.foundation.internal.utils.logging.Level r3 = com.adobe.creativesdk.foundation.internal.utils.logging.Level.DEBUG
            java.lang.Class<com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite> r4 = com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.class
            java.lang.String r4 = r4.getSimpleName()
            com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger.log(r3, r4, r2, r1)
            goto L4a
        L58:
            r0 = move-exception
            goto L45
        L5a:
            r0 = move-exception
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.writeToFile(android.graphics.Bitmap, java.lang.String):boolean");
    }

    public String getRenditionPathFromCache(String str, int i, boolean z) throws AdobeLibraryException {
        if (getElementWithId(str) == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
        }
        return internalGetRenditionPathFromCache(str, i, z);
    }

    private String internalGetRenditionPathFromCache(String str, int i, boolean z) {
        String strOptString;
        String string = z ? "full" : Integer.toString(i);
        JSONObject elementRenditions = getElementRenditions(str);
        if (elementRenditions == null || (strOptString = elementRenditions.optString(string, null)) == null) {
            return null;
        }
        if (strOptString.charAt(0) != '/') {
            if (strOptString.startsWith(ADOBE_LIBRARY_RENDITION_LIBRARY_PREFIX)) {
                return AdobeDCXUtils.stringByAppendingLastPathComponent(getLibraryFolderURL(), strOptString.substring(ADOBE_LIBRARY_RENDITION_LIBRARY_PREFIX.length()));
            }
            if (strOptString.startsWith(ADOBE_LIBRARY_RENDITION_CACHE_PREFIX)) {
                return AdobeDCXUtils.stringByAppendingLastPathComponent(this.mRenditionsURL, strOptString.substring(ADOBE_LIBRARY_RENDITION_CACHE_PREFIX.length()));
            }
            if (!strOptString.startsWith(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkFailedToDownload)) {
                return AdobeDCXUtils.stringByAppendingLastPathComponent(this.mRenditionsURL, strOptString);
            }
            return strOptString;
        }
        return strOptString;
    }

    public boolean setRenditionCache(String str, String str2, int i, boolean z, boolean z2) throws AdobeLibraryException {
        if (getElementWithId(str) == null || str2 == null || str2.length() <= 0 || (!z && i <= 0)) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
        }
        if (new File(str2).exists()) {
            String string = z ? "full" : Integer.toString(i);
            JSONObject elementRenditions = getElementRenditions(str);
            if (z2) {
                String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(this.mRenditionsURL, str);
                if (!new File(strStringByAppendingLastPathComponent).mkdirs()) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), "Failed to create element renditions directory", null);
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLocalLibraryCreateFailure, null, strStringByAppendingLastPathComponent, null);
                }
                String str3 = AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, string) + '.' + FilenameUtils.getExtension(str2);
                File file = new File(str3);
                if (file.exists()) {
                    FileUtils.deleteQuietly(file);
                }
                try {
                    FileUtils.copyFile(new File(str2), new File(str3));
                    try {
                        elementRenditions.put(string, str + URIUtil.SLASH + string + "." + FilenameUtils.getExtension(str2));
                    } catch (JSONException e2) {
                        AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                    }
                } catch (IOException e3) {
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorCopyingRenditionFile, e3, str2, null);
                }
            } else {
                try {
                    elementRenditions.put(string, str2);
                } catch (JSONException e4) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e4);
                }
            }
            writeLibraryPlist();
            return true;
        }
        throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, str2, null);
    }

    public boolean setRenditionCache(String str, Bitmap bitmap, boolean z) throws AdobeLibraryException {
        if (getElementWithId(str) == null || bitmap == null) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorBadParameter, null, null, null);
        }
        JSONObject elementRenditions = getElementRenditions(str);
        String string = z ? "full" : Integer.toString(bitmap.getWidth() > bitmap.getHeight() ? bitmap.getWidth() : bitmap.getHeight());
        String str2 = string + ".png";
        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(this.mRenditionsURL, str);
        if (!new File(strStringByAppendingLastPathComponent).mkdirs()) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), "Failed to create element renditions directory", null);
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLocalLibraryCreateFailure, null, strStringByAppendingLastPathComponent, null);
        }
        String strStringByAppendingLastPathComponent2 = AdobeDCXUtils.stringByAppendingLastPathComponent(strStringByAppendingLastPathComponent, str2);
        File file = new File(strStringByAppendingLastPathComponent2);
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(strStringByAppendingLastPathComponent2));
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
                try {
                    elementRenditions.put(string, str + URIUtil.SLASH + string + ".png");
                } catch (JSONException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                }
                writeLibraryPlist();
                return true;
            } catch (IOException e3) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e3);
                return false;
            }
        } catch (FileNotFoundException e4) {
            AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e4);
            return false;
        }
    }

    private boolean commit() throws AdobeLibraryException {
        boolean zCommitChanges = false;
        if (addErrorIfReadOnly()) {
            return false;
        }
        updateModified();
        try {
            zCommitChanges = this.mDcxComposite.commitChanges();
            e = null;
        } catch (AdobeDCXException e2) {
            e = e2;
        }
        if (!zCommitChanges) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToSave, e, null, null);
        }
        this.mCollection.libraryChanged(this);
        this.mLastCommittedBranch = this.mDcxComposite.getCurrent().getMutableCopy();
        return true;
    }

    protected void beginChanges() {
        this.mEditingOperationRefCount++;
    }

    protected boolean endChanges() throws AdobeLibraryException {
        if (this.mEditingOperationRefCount > 0) {
            int i = this.mEditingOperationRefCount - 1;
            this.mEditingOperationRefCount = i;
            if (i == 0) {
                commit();
                return true;
            }
            return true;
        }
        throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryEndWithoutBegin, null, null, null);
    }

    protected boolean discardChanges() {
        this.mLock.lock();
        this.mDcxComposite.updateCurrentBranchWithManifest(null, false);
        this.mEditingOperationRefCount = 0;
        this.mLock.unlock();
        return true;
    }

    public double created() {
        Object obj = this.mDcxComposite.getCurrent().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCreatedKey);
        if ($assertionsDisabled || obj != null) {
            return ((Number) obj).doubleValue() / 1000.0d;
        }
        throw new AssertionError("Library created time cannot be null");
    }

    public double getModified() {
        Object obj = this.mDcxComposite.getCurrent().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey);
        if ($assertionsDisabled || obj != null) {
            return ((Number) obj).doubleValue() / 1000.0d;
        }
        throw new AssertionError("Library modified time cannot be null");
    }

    void updateModified() {
        this.mDcxComposite.getCurrent().setValue(Long.valueOf(AdobeLibraryUtils.getCurrentTimeInMilliseconds()), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeModifiedKey);
    }

    @Deprecated
    void elementRepresentationsChanged(AdobeLibraryMutableElement adobeLibraryMutableElement, AdobeLibraryRepresentation adobeLibraryRepresentation) {
        if (adobeLibraryMutableElement == null) {
            adobeLibraryMutableElement = getMutableElementOfRepresentation(adobeLibraryRepresentation);
        }
        if (adobeLibraryMutableElement != null) {
            adobeLibraryMutableElement.updateModified();
            try {
                this.mDcxComposite.getCurrent().updateChild(adobeLibraryMutableElement.getNode());
            } catch (AdobeDCXException e2) {
                AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
            }
            removeRenditionCacheForElement(adobeLibraryMutableElement.getElementId());
        }
    }

    @Deprecated
    AdobeLibraryMutableElement getMutableElementOfRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) {
        AdobeDCXManifestNode adobeDCXManifestNodeFindParentOfComponent;
        if (adobeLibraryRepresentation.getNode() != null) {
            adobeDCXManifestNodeFindParentOfComponent = this.mDcxComposite.getCurrent().findParentOfChild(adobeLibraryRepresentation.getNode(), new AdobeDCXIndexWrapper());
        } else {
            adobeDCXManifestNodeFindParentOfComponent = null;
        }
        if (adobeLibraryRepresentation.getComponent() != null) {
            adobeDCXManifestNodeFindParentOfComponent = this.mDcxComposite.getCurrent().findParentOfComponent(adobeLibraryRepresentation.getComponent());
        }
        if (adobeDCXManifestNodeFindParentOfComponent != null) {
            return new AdobeLibraryMutableElement(adobeDCXManifestNodeFindParentOfComponent.getMutableCopy());
        }
        return null;
    }

    @Deprecated
    URI getContentURLForRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) {
        if (adobeLibraryRepresentation.isExternalLink()) {
            return URI.create((String) adobeLibraryRepresentation.getNode().get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeRepresentationLinkURLKey));
        }
        AdobeStorageResourceItem adobeStorageResourceItemResourceForComponent = AdobeStorageDCXServiceMapping.resourceForComponent(adobeLibraryRepresentation.getComponent(), this.mDcxComposite, null, false);
        AdobeCloudServiceSession adobeCloudServiceSession = this.mCollection != null ? (AdobeCloudServiceSession) this.mCollection._syncManager.serviceSession() : null;
        if (adobeCloudServiceSession != null) {
            AdobeNetworkHttpService serviceForSchemaId = adobeCloudServiceSession.getServiceForSchemaId("libraries");
            if (adobeStorageResourceItemResourceForComponent != null && serviceForSchemaId != null) {
                try {
                    return new URI(AdobeStorageLastPathComponentUtil.getRelativeTo(adobeStorageResourceItemResourceForComponent.href.toString(), serviceForSchemaId.baseURL().toString()));
                } catch (URISyntaxException e2) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                    return null;
                }
            }
        }
        return null;
    }

    @Deprecated
    static AdobeDCXManifestNode getElementsNodeOfComposite(AdobeDCXComposite adobeDCXComposite) throws AdobeLibraryException {
        return getElementsNodeOfCompositeBranch(adobeDCXComposite.getCurrent());
    }

    @Deprecated
    protected static AdobeDCXManifestNode getElementsNodeOfCompositeBranch(AdobeDCXCompositeBranch adobeDCXCompositeBranch) throws AdobeLibraryException {
        if (adobeDCXCompositeBranch == null) {
            return null;
        }
        List<AdobeDCXManifestNode> childrenOf = adobeDCXCompositeBranch.getChildrenOf(null);
        if (childrenOf.size() < 2) {
            return null;
        }
        AdobeDCXManifestNode adobeDCXManifestNode = childrenOf.get(0);
        if (adobeDCXManifestNode == null || !adobeDCXManifestNode.getName().equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeElementsNodeName)) {
            return null;
        }
        return adobeDCXManifestNode;
    }

    @Deprecated
    protected AdobeLibraryElement addElement(AdobeLibraryElement adobeLibraryElement) throws AdobeLibraryException {
        AdobeLibraryAnalyticsOperation adobeLibraryAnalyticsOperation = new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementCreate, this, adobeLibraryElement, null);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(adobeLibraryElement.getElementId(), adobeLibraryElement.getName(), "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT, "");
        lock();
        beginChanges();
        AdobeDCXManifestNode elementsNodeOfComposite = getElementsNodeOfComposite(this.mDcxComposite);
        if (elementsNodeOfComposite == null) {
            unlock();
            endChanges();
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, null, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError);
            throw adobeLibraryExceptionCreateLibraryError;
        }
        if (this.mDcxComposite.getCurrent().getChildrenOf(elementsNodeOfComposite).size() >= 1000) {
            unlock();
            endChanges();
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError2 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryMaximumElementsReached, null, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError2);
            throw adobeLibraryExceptionCreateLibraryError2;
        }
        try {
            AdobeDCXManifestNode adobeDCXManifestNodeAddChild = this.mDcxComposite.getCurrent().addChild(adobeLibraryElement.getNode(), elementsNodeOfComposite);
            AdobeLibraryElement adobeLibraryElement2 = adobeDCXManifestNodeAddChild != null ? new AdobeLibraryElement(adobeDCXManifestNodeAddChild) : null;
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
            unlock();
            endChanges();
            adobeLibraryAnalyticsOperation.trackAction(null);
            return adobeLibraryElement2;
        } catch (AdobeDCXException e2) {
            unlock();
            endChanges();
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError3 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddElement, e2, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError3);
            throw adobeLibraryExceptionCreateLibraryError3;
        }
    }

    @Deprecated
    protected AdobeLibraryElement insertElement(AdobeLibraryElement adobeLibraryElement, int i, AdobeLibraryDelegate adobeLibraryDelegate) throws AdobeLibraryException {
        ArrayList<AdobeLibraryElement> elements = getElements(adobeLibraryDelegate);
        int size = elements != null ? elements.size() : 0;
        if (i > size) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryIndexOutOfRange, null, null, null);
        }
        lock();
        beginChanges();
        AdobeLibraryAnalyticsOperation adobeLibraryAnalyticsOperation = new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryCreate, this, adobeLibraryElement, null);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(adobeLibraryElement.getElementId(), adobeLibraryElement.getName(), "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT, "");
        AdobeDCXManifestNode elementsNodeOfComposite = getElementsNodeOfComposite(this.mDcxComposite);
        if (elementsNodeOfComposite == null) {
            unlock();
            endChanges();
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidLibraryComposite, null, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError);
            throw adobeLibraryExceptionCreateLibraryError;
        }
        List<AdobeDCXManifestNode> childrenOf = this.mDcxComposite.getCurrent().getChildrenOf(elementsNodeOfComposite);
        if (childrenOf.size() >= 1000) {
            unlock();
            endChanges();
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError2 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryMaximumElementsReached, null, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError2);
            throw adobeLibraryExceptionCreateLibraryError2;
        }
        long size2 = 0;
        if (i == size) {
            size2 = childrenOf.size();
        } else {
            AdobeLibraryElement adobeLibraryElement2 = elements.get(i);
            if (adobeLibraryElement2 != null) {
                AdobeDCXIndexWrapper adobeDCXIndexWrapper = new AdobeDCXIndexWrapper();
                this.mDcxComposite.getCurrent().findParentOfChild(adobeLibraryElement2.getNode(), adobeDCXIndexWrapper);
                size2 = adobeDCXIndexWrapper.index;
            }
        }
        try {
            AdobeDCXManifestNode adobeDCXManifestNodeInsertChild = this.mDcxComposite.getCurrent().insertChild(adobeLibraryElement.getNode(), elementsNodeOfComposite, size2);
            if (adobeDCXManifestNodeInsertChild != null) {
                unlock();
                endChanges();
                adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
                adobeLibraryAnalyticsOperation.trackAction(null);
                return new AdobeLibraryElement(adobeDCXManifestNodeInsertChild);
            }
            unlock();
            endChanges();
            adobeLibraryAnalyticsOperation.trackAction(null);
            return null;
        } catch (AdobeDCXException e2) {
            unlock();
            endChanges();
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError3 = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddElement, e2, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError3);
            throw adobeLibraryExceptionCreateLibraryError3;
        }
    }

    @Deprecated
    protected AdobeLibraryElement updateElement(AdobeLibraryMutableElement adobeLibraryMutableElement) throws AdobeLibraryException {
        AdobeLibraryAnalyticsOperation adobeLibraryAnalyticsOperation = new AdobeLibraryAnalyticsOperation(AdobeLibraryAnalyticsConstants.AdobeAnalyticsEventLibraryElementUpdate, this, adobeLibraryMutableElement, null);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppUpdate.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(adobeLibraryMutableElement.getElementId(), adobeLibraryMutableElement.getName(), "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_ELEMENT, "");
        lock();
        beginChanges();
        adobeLibraryMutableElement.updateModified();
        try {
            AdobeDCXManifestNode adobeDCXManifestNodeUpdateChild = this.mDcxComposite.getCurrent().updateChild(adobeLibraryMutableElement.getNode());
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
            unlock();
            endChanges();
            adobeLibraryAnalyticsOperation.trackAction(null);
            return new AdobeLibraryElement(adobeDCXManifestNodeUpdateChild);
        } catch (AdobeDCXException e2) {
            unlock();
            endChanges();
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            AdobeLibraryException adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, e2, null, null);
            adobeLibraryAnalyticsOperation.trackAction(adobeLibraryExceptionCreateLibraryError);
            throw adobeLibraryExceptionCreateLibraryError;
        }
    }

    @Deprecated
    public ArrayList<AdobeLibraryRepresentation> getRepresentationsForElement(AdobeLibraryElement adobeLibraryElement) {
        lock();
        AdobeDCXManifestNode node = adobeLibraryElement.getNode();
        if (node != null && this.mDcxComposite != null) {
            List<AdobeDCXManifestNode> childrenOf = this.mDcxComposite.getCurrent().getChildrenOf(node);
            List<AdobeDCXComponent> componentsOf = this.mDcxComposite.getCurrent().getComponentsOf(node);
            ArrayList<AdobeLibraryRepresentation> arrayList = new ArrayList<>((componentsOf != null ? componentsOf.size() : 0) + (childrenOf != null ? childrenOf.size() : 0));
            if (childrenOf != null) {
                Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
                while (it.hasNext()) {
                    AdobeLibraryRepresentation adobeLibraryRepresentation = new AdobeLibraryRepresentation(it.next());
                    if (adobeLibraryRepresentation != null) {
                        arrayList.add(adobeLibraryRepresentation);
                    }
                }
            }
            if (componentsOf != null) {
                Iterator<AdobeDCXComponent> it2 = componentsOf.iterator();
                while (it2.hasNext()) {
                    AdobeLibraryRepresentation adobeLibraryRepresentation2 = new AdobeLibraryRepresentation(it2.next());
                    if (adobeLibraryRepresentation2 != null) {
                        arrayList.add(adobeLibraryRepresentation2);
                    }
                }
            }
            unlock();
            return arrayList;
        }
        return null;
    }

    @Deprecated
    public AdobeLibraryRepresentation getRepresentationWithId(String str) {
        lock();
        AdobeLibraryRepresentation adobeLibraryRepresentation = null;
        if (str != null) {
            AdobeDCXComponent componentWithId = this.mDcxComposite.getCurrent().getComponentWithId(str);
            if (componentWithId != null) {
                adobeLibraryRepresentation = new AdobeLibraryRepresentation(componentWithId);
            } else {
                AdobeDCXManifestNode childWithId = this.mDcxComposite.getCurrent().getChildWithId(str);
                if (childWithId != null) {
                    adobeLibraryRepresentation = new AdobeLibraryRepresentation(childWithId);
                }
            }
        }
        unlock();
        return adobeLibraryRepresentation;
    }

    @Deprecated
    public AdobeLibraryRepresentation getFirstRepresentationOfType(String str, AdobeLibraryElement adobeLibraryElement) {
        AdobeLibraryRepresentation adobeLibraryRepresentation;
        List<AdobeDCXManifestNode> childrenOf;
        lock();
        AdobeLibraryRepresentation adobeLibraryRepresentation2 = null;
        AdobeDCXManifestNode node = adobeLibraryElement.getNode();
        if (node == null) {
            adobeLibraryRepresentation = null;
        } else {
            List<AdobeDCXComponent> componentsOf = this.mDcxComposite.getCurrent().getComponentsOf(node);
            if (componentsOf != null) {
                Iterator<AdobeDCXComponent> it = componentsOf.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AdobeDCXComponent next = it.next();
                    String type = next.getType();
                    if (type != null && type.equals(str)) {
                        adobeLibraryRepresentation2 = new AdobeLibraryRepresentation(next);
                        break;
                    }
                }
            }
            if (adobeLibraryRepresentation2 != null || (childrenOf = this.mDcxComposite.getCurrent().getChildrenOf(node)) == null) {
                adobeLibraryRepresentation = adobeLibraryRepresentation2;
            } else {
                for (AdobeDCXManifestNode adobeDCXManifestNode : childrenOf) {
                    String type2 = adobeDCXManifestNode.getType();
                    if (type2 != null && type2.equals(str)) {
                        adobeLibraryRepresentation = new AdobeLibraryRepresentation(adobeDCXManifestNode);
                        break;
                    }
                }
                adobeLibraryRepresentation = adobeLibraryRepresentation2;
            }
        }
        unlock();
        return adobeLibraryRepresentation;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0086  */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation getPrimaryRepresentationForElement(com.adobe.creativesdk.foundation.storage.AdobeLibraryElement r7) {
        /*
            r6 = this;
            r6.lock()
            r1 = 0
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode r3 = r7.getNode()
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r0 = r6.mDcxComposite
            if (r0 == 0) goto L8a
            if (r3 == 0) goto L8a
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r0 = r6.mDcxComposite
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch r0 = r0.getCurrent()
            java.util.List r0 = r0.getComponentsOf(r3)
            if (r0 == 0) goto L88
            java.util.Iterator r2 = r0.iterator()
        L1e:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L88
            java.lang.Object r0 = r2.next()
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent r0 = (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent) r0
            java.lang.String r4 = r0.getRelationship()
            if (r4 == 0) goto L1e
            java.lang.String r5 = "primary"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L1e
            com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation r1 = new com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
            r1.<init>(r0)
            r2 = r1
        L3f:
            if (r2 != 0) goto L86
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComposite r0 = r6.mDcxComposite
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXCompositeMutableBranch r0 = r0.getCurrent()
            java.util.List r0 = r0.getChildrenOf(r3)
            if (r0 == 0) goto L86
            java.util.Iterator r3 = r0.iterator()
        L51:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L86
            java.lang.Object r0 = r3.next()
            com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode r0 = (com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifestNode) r0
            java.lang.String r1 = "library#rel"
            java.lang.Object r1 = r0.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            if (r1 != 0) goto L71
            java.lang.String r1 = "relationship"
            java.lang.Object r1 = r0.get(r1)
            java.lang.String r1 = (java.lang.String) r1
        L71:
            if (r1 == 0) goto L51
            java.lang.String r4 = "primary"
            boolean r1 = r1.equals(r4)
            if (r1 == 0) goto L51
            com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation r1 = new com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation
            r1.<init>(r0)
            r0 = r1
        L82:
            r6.unlock()
            return r0
        L86:
            r0 = r2
            goto L82
        L88:
            r2 = r1
            goto L3f
        L8a:
            r0 = r1
            goto L82
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.getPrimaryRepresentationForElement(com.adobe.creativesdk.foundation.storage.AdobeLibraryElement):com.adobe.creativesdk.foundation.storage.AdobeLibraryRepresentation");
    }

    @Deprecated
    protected AdobeLibraryRepresentation addRepresentation(AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation, AdobeLibraryElement adobeLibraryElement) throws AdobeLibraryException {
        AdobeLibraryRepresentation adobeLibraryRepresentation;
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppCreate.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(adobeLibraryMutableRepresentation.getRepresentationId(), adobeLibraryMutableRepresentation.getRelationship(), "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_REPRESENTATON, Integer.toString(adobeLibraryMutableRepresentation.getHeight() * adobeLibraryMutableRepresentation.getWidth()));
        if (adobeLibraryElement == null || adobeLibraryElement.getNode() == null) {
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementDoesNotExist, null, null, null);
        }
        ArrayList<AdobeLibraryRepresentation> representationsForElement = getRepresentationsForElement(adobeLibraryElement);
        if ((representationsForElement == null || representationsForElement.isEmpty()) && !adobeLibraryMutableRepresentation.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementMustHaveOnePrimaryRepresentation, null, null, null);
        }
        if (adobeLibraryMutableRepresentation.getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary) && representationsForElement != null && !representationsForElement.isEmpty()) {
            Iterator<AdobeLibraryRepresentation> it = representationsForElement.iterator();
            while (it.hasNext()) {
                if (it.next().getRelationship().equals(AdobeLibraryRepresentation.AdobeLibraryRepresentationRelationshipTypePrimary)) {
                    adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorElementMustHaveOnePrimaryRepresentation, null, null, null);
                }
            }
        }
        lock();
        beginChanges();
        if (adobeLibraryMutableRepresentation.getNode() != null) {
            try {
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild = this.mDcxComposite.getCurrent().addChild(adobeLibraryMutableRepresentation.getNode(), adobeLibraryElement.getNode());
                if (adobeDCXManifestNodeAddChild != null) {
                    elementRepresentationsChanged(new AdobeLibraryMutableElement(adobeLibraryElement.getNode().getMutableCopy()), adobeLibraryMutableRepresentation);
                    adobeLibraryRepresentation = new AdobeLibraryRepresentation(adobeDCXManifestNodeAddChild);
                } else {
                    unlock();
                    endChanges();
                    adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddRepresentation, null, null, null);
                }
            } catch (AdobeDCXException e2) {
                unlock();
                endChanges();
                adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddRepresentation, e2, null, null);
            }
        } else {
            adobeLibraryRepresentation = null;
        }
        if (adobeLibraryRepresentation == null && adobeLibraryMutableRepresentation.getComponent() != null) {
            try {
                AdobeDCXComponent adobeDCXComponentAddComponent = this.mDcxComposite.getCurrent().addComponent(adobeLibraryMutableRepresentation.getComponent(), adobeLibraryElement.getNode(), adobeLibraryMutableRepresentation.mFilePath, true, adobeLibraryMutableRepresentation.mSourceHref);
                elementRepresentationsChanged(new AdobeLibraryMutableElement(adobeLibraryElement.getNode().getMutableCopy()), adobeLibraryMutableRepresentation);
                adobeLibraryRepresentation = new AdobeLibraryRepresentation(adobeDCXComponentAddComponent);
            } catch (AdobeDCXException e3) {
                unlock();
                endChanges();
                adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddRepresentation, e3, adobeLibraryMutableRepresentation.mFilePath != null ? adobeLibraryMutableRepresentation.mFilePath : adobeLibraryMutableRepresentation.mSourceHref, null);
            }
        }
        unlock();
        endChanges();
        if (adobeLibraryRepresentation == null) {
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddRepresentation, null, adobeLibraryMutableRepresentation.mFilePath, null);
        }
        adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
        return adobeLibraryRepresentation;
    }

    @Deprecated
    protected AdobeLibraryRepresentation updateRepresentation(AdobeLibraryMutableRepresentation adobeLibraryMutableRepresentation) throws AdobeLibraryException {
        AdobeLibraryRepresentation adobeLibraryRepresentation;
        AdobeLibraryMutableElement mutableElementOfRepresentation = getMutableElementOfRepresentation(adobeLibraryMutableRepresentation);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppUpdate.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(adobeLibraryMutableRepresentation.getRepresentationId(), adobeLibraryMutableRepresentation.getRelationship(), "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_REPRESENTATON, Integer.toString(adobeLibraryMutableRepresentation.getHeight() * adobeLibraryMutableRepresentation.getWidth()));
        lock();
        beginChanges();
        if (adobeLibraryMutableRepresentation.getNode() != null) {
            try {
                AdobeDCXManifestNode adobeDCXManifestNodeUpdateChild = this.mDcxComposite.getCurrent().updateChild(adobeLibraryMutableRepresentation.getNode());
                elementRepresentationsChanged(mutableElementOfRepresentation, adobeLibraryMutableRepresentation);
                adobeLibraryRepresentation = new AdobeLibraryRepresentation(adobeDCXManifestNodeUpdateChild);
            } catch (AdobeDCXException e2) {
                unlock();
                endChanges();
                adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorRepresentationDoesNotExist, e2, null, null);
            }
        } else {
            adobeLibraryRepresentation = null;
        }
        if (adobeLibraryRepresentation == null) {
            AdobeDCXComponent component = adobeLibraryMutableRepresentation.getComponent();
            if (component != null) {
                try {
                    component = this.mDcxComposite.getCurrent().updateComponent(component, null, true);
                } catch (AdobeDCXException e3) {
                    unlock();
                    endChanges();
                    adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
                    throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorRepresentationDoesNotExist, e3, null, null);
                }
            }
            elementRepresentationsChanged(mutableElementOfRepresentation, adobeLibraryMutableRepresentation);
            adobeLibraryRepresentation = new AdobeLibraryRepresentation(component);
        }
        unlock();
        endChanges();
        adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
        return adobeLibraryRepresentation;
    }

    @Deprecated
    protected AdobeLibraryRepresentation removeRepresentation(AdobeLibraryRepresentation adobeLibraryRepresentation) throws AdobeLibraryException {
        AdobeLibraryRepresentation adobeLibraryRepresentation2;
        AdobeDCXComponent adobeDCXComponentRemoveComponent;
        AdobeDCXManifestNode adobeDCXManifestNodeRemoveChild;
        AdobeLibraryMutableElement mutableElementOfRepresentation = getMutableElementOfRepresentation(adobeLibraryRepresentation);
        AdobeAnalyticsETSLibraryEvent adobeAnalyticsETSLibraryEvent = new AdobeAnalyticsETSLibraryEvent(AdobeAnalyticsEventParams.Type.AdobeEventTypeAppDelete.getValue());
        adobeAnalyticsETSLibraryEvent.trackContentInfo(adobeLibraryRepresentation.getRepresentationId(), adobeLibraryRepresentation.getRelationship(), "", AdobeAnalyticsETSEvent.ADOBE_ETS_ENVIRONMENT_CONTENT_TYPE_LIBRARY_REPRESENTATON, Integer.toString(adobeLibraryRepresentation.getHeight() * adobeLibraryRepresentation.getWidth()));
        lock();
        beginChanges();
        if (adobeLibraryRepresentation.getNode() == null || (adobeDCXManifestNodeRemoveChild = this.mDcxComposite.getCurrent().removeChild(adobeLibraryRepresentation.getNode())) == null) {
            adobeLibraryRepresentation2 = null;
        } else {
            elementRepresentationsChanged(mutableElementOfRepresentation, adobeLibraryRepresentation);
            adobeLibraryRepresentation2 = new AdobeLibraryRepresentation(adobeDCXManifestNodeRemoveChild);
        }
        if (adobeLibraryRepresentation2 == null && adobeLibraryRepresentation.getComponent() != null && (adobeDCXComponentRemoveComponent = this.mDcxComposite.getCurrent().removeComponent(adobeLibraryRepresentation.getComponent())) != null) {
            elementRepresentationsChanged(mutableElementOfRepresentation, adobeLibraryRepresentation);
            this.mDcxComposite.removeUnusedLocalFiles();
            adobeLibraryRepresentation2 = new AdobeLibraryRepresentation(adobeDCXComponentRemoveComponent);
        }
        unlock();
        endChanges();
        if (adobeLibraryRepresentation2 == null) {
            adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_FAIL);
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorRepresentationDoesNotExist, null, null, null);
        }
        adobeAnalyticsETSLibraryEvent.endAndTrackEventWithErrorCode(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS);
        return adobeLibraryRepresentation2;
    }

    AdobeDCXManifestNode getCategoriesNode() {
        if (this.mDcxComposite == null) {
            return null;
        }
        List<AdobeDCXManifestNode> childrenOf = this.mDcxComposite.getCurrent().getChildrenOf(null);
        if (childrenOf.size() < 2) {
            return null;
        }
        AdobeDCXManifestNode adobeDCXManifestNode = childrenOf.get(1);
        if (adobeDCXManifestNode == null || !adobeDCXManifestNode.getName().equals(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoriesNodeName)) {
            return null;
        }
        return adobeDCXManifestNode;
    }

    protected ArrayList<AdobeLibraryCategory> getCategories() {
        ArrayList<AdobeLibraryCategory> arrayList = null;
        this.mLock.lock();
        try {
            AdobeDCXManifestNode categoriesNode = getCategoriesNode();
            if (categoriesNode != null) {
                List<AdobeDCXManifestNode> childrenOf = this.mDcxComposite.getCurrent().getChildrenOf(categoriesNode);
                if (childrenOf != null) {
                    ArrayList<AdobeLibraryCategory> arrayList2 = new ArrayList<>(childrenOf.size());
                    Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
                    while (it.hasNext()) {
                        arrayList2.add(new AdobeLibraryCategory(it.next()));
                    }
                    arrayList = arrayList2;
                }
            }
            return arrayList;
        } finally {
            this.mLock.unlock();
        }
    }

    protected AdobeLibraryCategory getCategoryWithId(String str) {
        AdobeLibraryCategory adobeLibraryCategory = null;
        this.mLock.lock();
        if (str != null) {
            try {
                AdobeDCXManifestNode childWithId = this.mDcxComposite.getCurrent().getChildWithId(str);
                if (childWithId != null) {
                    adobeLibraryCategory = new AdobeLibraryCategory(childWithId);
                }
            } finally {
                this.mLock.unlock();
            }
        }
        return adobeLibraryCategory;
    }

    protected AdobeLibraryCategory addCategory(AdobeLibraryCategory adobeLibraryCategory, boolean z) throws AdobeLibraryException {
        AdobeDCXManifestNode elementsNodeOfComposite;
        AdobeLibraryException adobeLibraryException;
        AdobeDCXMutableManifestNode mutableCopy;
        AdobeLibraryException adobeLibraryExceptionCreateLibraryError = null;
        this.mLock.lock();
        try {
            beginChanges();
            AdobeDCXManifestNode categoriesNode = getCategoriesNode();
            if (categoriesNode == null) {
                endChanges();
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryNotInitialized, null, null, null);
            }
            try {
                AdobeDCXManifestNode adobeDCXManifestNodeAddChild = this.mDcxComposite.getCurrent().addChild(adobeLibraryCategory.getNode(), categoriesNode);
                AdobeLibraryCategory adobeLibraryCategory2 = adobeDCXManifestNodeAddChild != null ? new AdobeLibraryCategory(adobeDCXManifestNodeAddChild) : null;
                if (adobeLibraryCategory2 != null && z) {
                    try {
                        elementsNodeOfComposite = getElementsNodeOfComposite(this.mDcxComposite);
                    } catch (AdobeLibraryException e2) {
                        AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, e2);
                        elementsNodeOfComposite = null;
                    }
                    if (elementsNodeOfComposite == null) {
                        endChanges();
                        return null;
                    }
                    List<AdobeDCXManifestNode> childrenOf = this.mDcxComposite.getCurrent().getChildrenOf(elementsNodeOfComposite);
                    if (childrenOf != null) {
                        Iterator<AdobeDCXManifestNode> it = childrenOf.iterator();
                        while (true) {
                            adobeLibraryException = adobeLibraryExceptionCreateLibraryError;
                            if (!it.hasNext()) {
                                break;
                            }
                            AdobeDCXManifestNode next = it.next();
                            if (next.get(AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoryKey) != null || (mutableCopy = next.getMutableCopy()) == null) {
                                adobeLibraryExceptionCreateLibraryError = adobeLibraryException;
                            } else {
                                mutableCopy.setValue(adobeLibraryCategory2.getCategoryId(), AdobeLibraryCompositeConstantsInternal.AdobeLibraryCompositeCategoryKey);
                                try {
                                    this.mDcxComposite.getCurrent().updateChild(mutableCopy);
                                    adobeLibraryExceptionCreateLibraryError = adobeLibraryException;
                                } catch (AdobeDCXException e3) {
                                    adobeLibraryExceptionCreateLibraryError = AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddCategory, e3, null, mutableCopy.getNodeId());
                                }
                            }
                        }
                        adobeLibraryExceptionCreateLibraryError = adobeLibraryException;
                    }
                }
                if (adobeLibraryExceptionCreateLibraryError != null) {
                    AdobeLogger.log(Level.DEBUG, AdobeLibraryComposite.class.getSimpleName(), null, adobeLibraryExceptionCreateLibraryError);
                }
                this.mLock.unlock();
                endChanges();
                return adobeLibraryCategory2;
            } catch (AdobeDCXException e4) {
                endChanges();
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorLibraryFailedToAddCategory, e4, null, null);
            }
        } finally {
            this.mLock.unlock();
        }
    }

    protected AdobeLibraryCategory addCategory(AdobeLibraryCategory adobeLibraryCategory) throws AdobeLibraryException {
        return addCategory(adobeLibraryCategory, false);
    }

    protected AdobeLibraryCategory updateCategory(AdobeLibraryCategory adobeLibraryCategory) throws AdobeLibraryException {
        this.mLock.lock();
        try {
            beginChanges();
            try {
                AdobeLibraryCategory adobeLibraryCategory2 = new AdobeLibraryCategory(this.mDcxComposite.getCurrent().updateChild(adobeLibraryCategory.getNode()));
                this.mLock.unlock();
                endChanges();
                return adobeLibraryCategory2;
            } catch (AdobeDCXException e2) {
                endChanges();
                throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorCategoryDoesNotExist, e2, null, null);
            }
        } catch (Throwable th) {
            this.mLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCategory removeCategory(com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCategory r7, boolean r8, java.lang.String r9) throws com.adobe.creativesdk.foundation.storage.AdobeLibraryException {
        /*
            Method dump skipped, instruction units count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite.removeCategory(com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCategory, boolean, java.lang.String):com.adobe.creativesdk.foundation.adobeinternal.storage.library.AdobeLibraryCategory");
    }

    public String getLibraryId() {
        return this.mLibraryId;
    }

    public boolean addErrorIfReadOnly() throws AdobeLibraryException {
        if (isReadOnly()) {
            throw AdobeLibraryUtils.createLibraryError(AdobeLibraryErrorCode.AdobeLibraryErrorNoWriteAccess, null, null, null);
        }
        return false;
    }
}

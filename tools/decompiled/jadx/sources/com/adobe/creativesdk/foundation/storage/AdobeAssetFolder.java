package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXConstants;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.auth.AdobeAuthException;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCache;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHitLocation;
import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheOptions;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFolderInternal;
import com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderByProperty;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderRelation;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStoragePagingMode;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageSessionEditCallback;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageLastPathComponentUtil;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetFolder extends AdobeAsset implements UploadDestination<AdobeAssetFolder> {
    private static final String CACHENAME = "com.adobe.cc.storage";
    private static final String T = AdobeAssetFolder.class.getSimpleName();
    protected AdobeStorageResourceCollection asrCollection;
    protected boolean firstPageLoaded;
    private int itemsFetchedSoFar;
    private String latestModifiedAssetFileCreated;
    private long latestModifiedAssetFileHeight;
    private String latestModifiedAssetFileId;
    private String latestModifiedAssetFileMd5;
    private String latestModifiedAssetFileModified;
    private String latestModifiedAssetFileName;
    private int latestModifiedAssetFilePages;
    private long latestModifiedAssetFileSize;
    private String latestModifiedAssetFileType;
    private long latestModifiedAssetFileWidth;
    private int numFiles;
    private int numFolders;

    static /* synthetic */ int access$108(AdobeAssetFolder adobeAssetFolder) {
        int i = adobeAssetFolder.numFolders;
        adobeAssetFolder.numFolders = i + 1;
        return i;
    }

    static /* synthetic */ int access$208(AdobeAssetFolder adobeAssetFolder) {
        int i = adobeAssetFolder.numFiles;
        adobeAssetFolder.numFiles = i + 1;
        return i;
    }

    public boolean isFirstPageLoaded() {
        return this.firstPageLoaded;
    }

    protected void setFirstPageLoaded(boolean z) {
        this.firstPageLoaded = z;
    }

    public AdobeCollaborationType getCollaborationType() {
        return this.asrCollection == null ? AdobeCollaborationType.ADOBE_COLLABORATION_TYPE_PRIVATE : this.asrCollection.collaboration;
    }

    public boolean isShared() {
        if (this.asrCollection != null) {
            return this.asrCollection.isShared();
        }
        return false;
    }

    public boolean isReadOnly() {
        if (this.asrCollection != null) {
            return this.asrCollection.isReadOnly();
        }
        return false;
    }

    protected void setShared(boolean z) {
    }

    public boolean hasNextPage() {
        return (this.firstPageLoaded && this.asrCollection.isComplete()) ? false : true;
    }

    public void getNextPage(int i, final IAdobeAssetFolderNextPageCallback iAdobeAssetFolderNextPageCallback) {
        resourceCollection().setLimit(i);
        resourceCollection().etag = null;
        IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler = new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.1
            @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
            public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection) {
                if (adobeStorageResourceCollection != null) {
                    AdobeAssetFolder.this.asrCollection = adobeStorageResourceCollection;
                    AdobeAssetFolder.this.firstPageLoaded = true;
                    ArrayList<AdobeAsset> arrayList = new ArrayList<>();
                    ArrayList<AdobeStorageResource> children = adobeStorageResourceCollection.getChildren();
                    if (children != null) {
                        for (AdobeStorageResource adobeStorageResource : children) {
                            if (adobeStorageResource instanceof AdobeStorageResourceCollection) {
                                arrayList.add(new AdobeAssetFolderInternal((AdobeStorageResourceCollection) adobeStorageResource, AdobeAssetFolder.this.asrCollection));
                            } else if (adobeStorageResource instanceof AdobeStorageResourceItem) {
                                if (((AdobeStorageResourceItem) adobeStorageResource).type.equals(AdobeAssetMimeTypes.MIMETYPE_PHOTOSHOP.getMimeType())) {
                                    arrayList.add(new AdobeAssetPSDFile((AdobeStorageResourceItem) adobeStorageResource, AdobeAssetFolder.this.asrCollection));
                                } else {
                                    arrayList.add(new AdobeAssetFileInternal((AdobeStorageResourceItem) adobeStorageResource, AdobeAssetFolder.this.asrCollection));
                                }
                            }
                        }
                    }
                    iAdobeAssetFolderNextPageCallback.onCompletion(arrayList, adobeStorageResourceCollection.getNumChildren());
                }
            }

            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
                if (adobeAssetException != null) {
                    iAdobeAssetFolderNextPageCallback.onError(adobeAssetException);
                }
            }
        };
        AdobeStorageSession session = getSession();
        if (session == null) {
            HashMap map = new HashMap();
            map.put("error_description", "Either session or cloud end point is not present");
            iAdobeAssetFolderNextPageCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorNotEntitledToService, map));
            return;
        }
        session.getDirectory(resourceCollection(), this.firstPageLoaded ? AdobeStoragePagingMode.AdobeStorageNextPageReplace : AdobeStoragePagingMode.AdobeStorageFirstPage, iAdobeStorageCollectionRequestCompletionHandler);
    }

    public void resetPaging() {
        this.firstPageLoaded = false;
    }

    public void resetPagingOrderedByField(AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        this.firstPageLoaded = false;
        resourceCollection().setOrderBy(getStorageOrderByProperty(adobeAssetFolderOrderBy));
        resourceCollection().setOrder(getStorageOrderRelation(adobeAssetFolderOrderDirection));
    }

    public String getDescription() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.GUID != null) {
                jSONObject.put("guid", this.GUID);
            }
            if (this.etag != null) {
                jSONObject.put("etag", this.etag);
            }
            if (this.href != null) {
                jSONObject.put("href", this.href);
            }
            if (this.parentHref != null) {
                jSONObject.put("parent-href", this.parentHref);
            }
            if (this.name != null) {
                jSONObject.put("name", this.name);
            }
            if (this.creationDate != null) {
                jSONObject.put("created", this.creationDate.toString());
            }
            if (this.modificationDate != null) {
                jSONObject.put(AdobeDCXConstants.AdobeDCXAssetStateModified, this.modificationDate.toString());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static AdobeAssetFolder getRoot() {
        return rootInCloud(AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
    }

    public static AdobeAssetFolder getRootOrderedByField(AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        return rootInCloud(AdobeCloudManager.getSharedCloudManager().getDefaultCloud(), getStorageOrderByProperty(adobeAssetFolderOrderBy), getStorageOrderRelation(adobeAssetFolderOrderDirection));
    }

    public static AdobeAssetFolder getFolderFromHref(URI uri) {
        return getFolderFromHref(uri, AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
    }

    public static AdobeAssetFolder getFolderFromHref(URI uri, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        return getFolderFromHref(uri, AdobeCloudManager.getSharedCloudManager().getDefaultCloud(), adobeAssetFolderOrderBy, adobeAssetFolderOrderDirection);
    }

    public static AdobeAssetFolder getFolderFromDirectHref(URI uri, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        AdobeAssetFolderInternal adobeAssetFolderInternal;
        Exception e2;
        if (uri == null) {
            return null;
        }
        try {
            adobeAssetFolderInternal = new AdobeAssetFolderInternal(AdobeStorageResourceCollection.collectionFromHref(uri), getStorageOrderByProperty(adobeAssetFolderOrderBy), getStorageOrderRelation(adobeAssetFolderOrderDirection), new URI(AdobeStorageLastPathComponentUtil.stringByDeletingLastPathComponent(uri.getRawPath())));
            try {
                adobeAssetFolderInternal.setCloud(AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
                return adobeAssetFolderInternal;
            } catch (Exception e3) {
                e2 = e3;
                e2.printStackTrace();
                return adobeAssetFolderInternal;
            }
        } catch (Exception e4) {
            adobeAssetFolderInternal = null;
            e2 = e4;
        }
    }

    public static void create(String str, AdobeAssetFolder adobeAssetFolder, IAdobeGenericCompletionCallback<AdobeAssetFolder> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        create(str, adobeAssetFolder, AdobeCloudManager.getSharedCloudManager().getDefaultCloud(), iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
    }

    public void delete(AdobeStorageSession adobeStorageSession, final IAdobeStorageSessionEditCallback iAdobeStorageSessionEditCallback) {
        if (adobeStorageSession != null) {
            adobeStorageSession.deleteDirectory(resourceCollection(), true, true, new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.2
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
                public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection) {
                    if (adobeStorageResourceCollection != null) {
                        AdobeAssetFolder.this.asrCollection = adobeStorageResourceCollection;
                        iAdobeStorageSessionEditCallback.onComplete();
                    } else {
                        iAdobeStorageSessionEditCallback.onError(null);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeAssetException adobeAssetException) {
                    if (adobeAssetException != null) {
                        iAdobeStorageSessionEditCallback.onError(adobeAssetException);
                    }
                }
            });
        }
    }

    protected AdobeAssetFolder(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageOrderByProperty adobeStorageOrderByProperty, AdobeStorageOrderRelation adobeStorageOrderRelation, URI uri) {
        this.itemsFetchedSoFar = 0;
        this.numFolders = 0;
        this.numFiles = 0;
        this.latestModifiedAssetFileType = null;
        this.latestModifiedAssetFileName = null;
        this.latestModifiedAssetFileId = null;
        this.latestModifiedAssetFileCreated = null;
        this.latestModifiedAssetFileModified = null;
        this.latestModifiedAssetFileMd5 = null;
        this.latestModifiedAssetFileSize = 0L;
        this.latestModifiedAssetFilePages = 0;
        this.latestModifiedAssetFileHeight = 0L;
        this.latestModifiedAssetFileWidth = 0L;
        this.asrCollection = adobeStorageResourceCollection;
        this.GUID = adobeStorageResourceCollection.internalID;
        this.href = adobeStorageResourceCollection.href;
        this.etag = adobeStorageResourceCollection.etag;
        this.name = adobeStorageResourceCollection.name;
        this.mCloud = adobeStorageResourceCollection.getCloud();
        this.parentHref = uri;
        this.creationDate = AdobeStorageUtils.convertStringToDate(adobeStorageResourceCollection.created);
        this.modificationDate = AdobeStorageUtils.convertStringToDate(adobeStorageResourceCollection.modified);
        this.links = adobeStorageResourceCollection.links;
        this.asrCollection.setOrderBy(adobeStorageOrderByProperty);
        this.asrCollection.setOrder(adobeStorageOrderRelation);
        this.firstPageLoaded = false;
    }

    protected AdobeAssetFolder(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        this(adobeStorageResourceCollection, adobeStorageResourceCollection2.getOrderBy(), adobeStorageResourceCollection2.getOrder(), adobeStorageResourceCollection2.href);
    }

    protected AdobeAssetFolder() {
        this.itemsFetchedSoFar = 0;
        this.numFolders = 0;
        this.numFiles = 0;
        this.latestModifiedAssetFileType = null;
        this.latestModifiedAssetFileName = null;
        this.latestModifiedAssetFileId = null;
        this.latestModifiedAssetFileCreated = null;
        this.latestModifiedAssetFileModified = null;
        this.latestModifiedAssetFileMd5 = null;
        this.latestModifiedAssetFileSize = 0L;
        this.latestModifiedAssetFilePages = 0;
        this.latestModifiedAssetFileHeight = 0L;
        this.latestModifiedAssetFileWidth = 0L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdobeStorageResourceCollection resourceCollection() {
        if (this.asrCollection == null) {
            this.asrCollection = AdobeStorageResourceCollection.collectionFromHref(this.href);
            this.asrCollection.name = this.name;
            this.asrCollection.etag = this.etag;
            this.asrCollection.internalID = this.GUID;
            this.asrCollection.setCloud(getCloud());
        }
        return this.asrCollection;
    }

    protected static AdobeStorageOrderByProperty getStorageOrderByProperty(AdobeAssetFolderOrderBy adobeAssetFolderOrderBy) {
        switch (adobeAssetFolderOrderBy) {
        }
        return AdobeStorageOrderByProperty.ADOBE_STORAGE_ORDER_BY_NAME;
    }

    protected static AdobeStorageOrderRelation getStorageOrderRelation(AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        switch (adobeAssetFolderOrderDirection) {
        }
        return AdobeStorageOrderRelation.ADOBE_STORAGE_ORDER_ASCENDING;
    }

    protected static AdobeAssetFolder rootInCloud(AdobeCloud adobeCloud) {
        return rootInCloud(adobeCloud, AdobeStorageOrderByProperty.ADOBE_STORAGE_ORDER_BY_NAME, AdobeStorageOrderRelation.ADOBE_STORAGE_ORDER_ASCENDING);
    }

    protected static AdobeAssetFolder rootInCloud(AdobeCloud adobeCloud, AdobeStorageOrderByProperty adobeStorageOrderByProperty, AdobeStorageOrderRelation adobeStorageOrderRelation) {
        try {
            AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(new URI("/files/"));
            adobeStorageResourceCollectionCollectionFromHref.setCloud(adobeCloud);
            return new AdobeAssetFolderInternal(adobeStorageResourceCollectionCollectionFromHref, adobeStorageOrderByProperty, adobeStorageOrderRelation, null);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    protected static AdobeAssetFolder getFolderFromHref(URI uri, AdobeCloud adobeCloud) {
        return getFolderFromHref(uri, adobeCloud, AdobeAssetFolderOrderBy.ADOBE_ASSET_FOLDER_ORDER_BY_NAME, AdobeAssetFolderOrderDirection.ADOBE_ASSET_FOLDER_ORDER_ASCENDING);
    }

    protected static AdobeAssetFolder getFolderFromHref(URI uri, AdobeCloud adobeCloud, AdobeAssetFolderOrderBy adobeAssetFolderOrderBy, AdobeAssetFolderOrderDirection adobeAssetFolderOrderDirection) {
        AdobeAssetFolderInternal adobeAssetFolderInternal;
        Exception e2;
        if (uri == null) {
            return null;
        }
        String rawPath = uri.getRawPath();
        if (rawPath.startsWith(URIUtil.SLASH)) {
            rawPath = rawPath.substring(1);
        }
        if (rawPath.endsWith(URIUtil.SLASH)) {
            rawPath = rawPath.substring(0, rawPath.length() - 1);
        }
        try {
            URI uri2 = new URI(String.format("/files/%s/", rawPath));
            adobeAssetFolderInternal = new AdobeAssetFolderInternal(AdobeStorageResourceCollection.collectionFromHref(uri2), getStorageOrderByProperty(adobeAssetFolderOrderBy), getStorageOrderRelation(adobeAssetFolderOrderDirection), new URI(AdobeStorageLastPathComponentUtil.stringByDeletingLastPathComponent(uri2.getRawPath())));
            try {
                adobeAssetFolderInternal.setCloud(adobeCloud);
                return adobeAssetFolderInternal;
            } catch (Exception e3) {
                e2 = e3;
                e2.printStackTrace();
                return adobeAssetFolderInternal;
            }
        } catch (Exception e4) {
            adobeAssetFolderInternal = null;
            e2 = e4;
        }
    }

    protected static void create(String str, AdobeAssetFolder adobeAssetFolder, AdobeCloud adobeCloud, final IAdobeGenericCompletionCallback<AdobeAssetFolder> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        String strConcat;
        if (!AdobeUXAuthManagerRestricted.getSharedAuthManagerRestricted().checkAndCallErrorIfNotAuthenticated(new IAdobeGenericErrorCallback<AdobeAuthException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.3
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAuthException adobeAuthException) {
                if (iAdobeGenericErrorCallback != null) {
                    iAdobeGenericErrorCallback.onError(adobeAuthException);
                }
            }
        }, "Update requires an authenticated user.") && adobeAssetFolder != null) {
            String validatedAssetName = AdobeAsset.getValidatedAssetName(str);
            if (validatedAssetName == null) {
                HashMap map = new HashMap();
                map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, "Illegal Characters in name");
                map.put("AdobeNetworkHTTPStatus", 400);
                iAdobeGenericErrorCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure, map));
                return;
            }
            String rawPath = adobeAssetFolder.href.getRawPath();
            if (rawPath.endsWith(URIUtil.SLASH)) {
                strConcat = rawPath.concat(validatedAssetName);
            } else {
                strConcat = rawPath.concat(URIUtil.SLASH).concat(validatedAssetName);
            }
            try {
                AdobeStorageResourceCollection adobeStorageResourceCollectionCollectionFromHref = AdobeStorageResourceCollection.collectionFromHref(new URI(strConcat.concat(URIUtil.SLASH)));
                IAdobeStorageCollectionRequestCompletionHandler iAdobeStorageCollectionRequestCompletionHandler = new IAdobeStorageCollectionRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.4
                    @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.IAdobeStorageCollectionRequestCompletionHandler
                    public void onComplete(AdobeStorageResourceCollection adobeStorageResourceCollection) {
                        if (adobeStorageResourceCollection != null) {
                            iAdobeGenericCompletionCallback.onCompletion(new AdobeAssetFolderInternal(adobeStorageResourceCollection, AdobeAssetFolder.this.resourceCollection()));
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                    public void onError(AdobeAssetException adobeAssetException) {
                        if (adobeAssetException != null) {
                            iAdobeGenericErrorCallback.onError(adobeAssetException);
                        }
                    }
                };
                AdobeStorageSession adobeStorageSession = (AdobeStorageSession) adobeCloud.getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeStorage);
                if (adobeStorageSession != null) {
                    adobeStorageSession.createDirectory(adobeStorageResourceCollectionCollectionFromHref, iAdobeStorageCollectionRequestCompletionHandler);
                }
            } catch (URISyntaxException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination
    @Deprecated
    public boolean isSameLocation(AdobeAssetFolder adobeAssetFolder) {
        return getHref().toString().equalsIgnoreCase(adobeAssetFolder.getHref().toString());
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.UploadDestination
    @Deprecated
    public String getId() {
        String string = getHref().toString();
        String strSubstring = (string == null || string.length() <= 0 || string.charAt(string.length() + (-1)) != '/') ? null : string.substring(0, string.length() - 1);
        int iLastIndexOf = strSubstring != null ? strSubstring.lastIndexOf(URIUtil.SLASH) + 1 : string.lastIndexOf(URIUtil.SLASH) + 1;
        int length = getHref().toString().length();
        if (string != null) {
            return string.substring(iLastIndexOf, length);
        }
        return null;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetFolder) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        return super.hashCode();
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder$1outerClass, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class C1outerClass {
        Handler handler = null;

        C1outerClass() {
        }
    }

    @Deprecated
    public void getPageData(final IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        final C1outerClass c1outerClass = new C1outerClass();
        try {
            c1outerClass.handler = new Handler();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!AdobeCommonCache.getSharedInstance().getDataFromGUID(this.GUID, "PAGE_RESOURCE_COLLECTION_DATA", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), CACHENAME, new AdobeCommonCacheHandler<byte[]>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.5
            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onHit(final byte[] bArr, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation) {
                AdobeCommonCache.getSharedInstance().getDictionaryFromGUID(AdobeAssetFolder.this.getGUID(), "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeAssetFolder.CACHENAME, new AdobeCommonCacheHandler<Map<String, Object>>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.5.1
                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onHit(Map<String, Object> map, AdobeCommonCacheHitLocation adobeCommonCacheHitLocation2) {
                        String str = (String) map.get("etag");
                        if (str != null && str.equals(AdobeAssetFolder.this.etag)) {
                            try {
                                iAdobeGenericCompletionCallback.onCompletion(new JSONObject(new String(bArr)));
                                return;
                            } catch (JSONException e3) {
                                iAdobeGenericErrorCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse));
                                e3.printStackTrace();
                                return;
                            }
                        }
                        AdobeCommonCache.getSharedInstance().removeSetWithGUID(AdobeAssetFolder.this.GUID, AdobeAssetFolder.CACHENAME);
                        AdobeAssetFolder.this.getPageDataFromServer(iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
                    public void onMiss() {
                        AdobeAssetFolder.this.getPageDataFromServer(iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
                    }
                }, c1outerClass.handler);
            }

            @Override // com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheHandler
            public void onMiss() {
                AdobeAssetFolder.this.getPageDataFromServer(iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback);
            }
        }, c1outerClass.handler)) {
            AdobeLogger.log(Level.ERROR, "AdobeAssetFile:GetRenditionFromCache", String.format("Rendition request for %s ended in error.", this.href));
            iAdobeGenericErrorCallback.onError(null);
        }
    }

    /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder$6, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class AnonymousClass6 implements IAdobeGenericCompletionCallback<String> {
        final /* synthetic */ IAdobeGenericCompletionCallback val$completionCallback;
        final /* synthetic */ IAdobeGenericErrorCallback val$errorCallback;
        final /* synthetic */ Handler val$handler;

        AnonymousClass6(Handler handler, IAdobeGenericErrorCallback iAdobeGenericErrorCallback, IAdobeGenericCompletionCallback iAdobeGenericCompletionCallback) {
            this.val$handler = handler;
            this.val$errorCallback = iAdobeGenericErrorCallback;
            this.val$completionCallback = iAdobeGenericCompletionCallback;
        }

        /* JADX INFO: renamed from: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder$6$1, reason: invalid class name */
        class AnonymousClass1 implements Runnable {
            final /* synthetic */ String val$jsonDataStr;

            AnonymousClass1(String str) {
                this.val$jsonDataStr = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                int length;
                try {
                    JSONObject jSONObject = new JSONObject(this.val$jsonDataStr);
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("children");
                    if (jSONArrayOptJSONArray != null) {
                        boolean z = false;
                        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                            String strOptString = jSONObjectOptJSONObject.optString("type");
                            if (strOptString.equals("application/vnd.adobe.directory+json")) {
                                AdobeAssetFolder.access$108(AdobeAssetFolder.this);
                            } else {
                                AdobeAssetFolder.access$208(AdobeAssetFolder.this);
                            }
                            if (!z && jSONObjectOptJSONObject.optString("renderable").equals("true")) {
                                AdobeAssetFolder.this.latestModifiedAssetFileName = jSONObjectOptJSONObject.optString("name");
                                AdobeAssetFolder.this.latestModifiedAssetFileType = strOptString;
                                AdobeAssetFolder.this.latestModifiedAssetFileSize = jSONObjectOptJSONObject.optLong(AdobeCommunityConstants.AdobeCommunityResourceSizeKey, 0L);
                                AdobeAssetFolder.this.latestModifiedAssetFileMd5 = jSONObjectOptJSONObject.optString(AdobeCommunityConstants.AdobeCommunityResourceMD5Key);
                                AdobeAssetFolder.this.latestModifiedAssetFileId = jSONObjectOptJSONObject.optString("id");
                                AdobeAssetFolder.this.latestModifiedAssetFileCreated = jSONObjectOptJSONObject.optString("created");
                                AdobeAssetFolder.this.latestModifiedAssetFileModified = jSONObjectOptJSONObject.optString(AdobeDCXConstants.AdobeDCXAssetStateModified);
                                AdobeAssetFolder.this.latestModifiedAssetFilePages = jSONObjectOptJSONObject.optInt(AdobeStorageSession.PAGES, 1);
                                AdobeAssetFolder.this.latestModifiedAssetFileHeight = jSONObjectOptJSONObject.optLong("height", 0L);
                                AdobeAssetFolder.this.latestModifiedAssetFileWidth = jSONObjectOptJSONObject.optLong("width", 0L);
                                z = true;
                            }
                        }
                        AdobeAssetFolder.this.itemsFetchedSoFar += jSONArrayOptJSONArray.length();
                    }
                    if (jSONObject.has("total_children")) {
                        length = jSONObject.optInt("total_children");
                    } else {
                        length = jSONObject.optJSONArray("children") != null ? jSONObject.optJSONArray("children").length() : 0;
                    }
                    if (AdobeAssetFolder.this.itemsFetchedSoFar < length) {
                        AdobeAssetFolder.this.pageDataFetchHelper(new IAdobeGenericCompletionCallback<JSONObject>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.6.1.1
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                            public void onCompletion(JSONObject jSONObject2) {
                            }
                        }, new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.6.1.2
                            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                            public void onError(final AdobeAssetException adobeAssetException) {
                                if (AnonymousClass6.this.val$handler != null) {
                                    AnonymousClass6.this.val$handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.6.1.2.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            AnonymousClass6.this.val$errorCallback.onError(adobeAssetException);
                                        }
                                    });
                                } else {
                                    AnonymousClass6.this.val$errorCallback.onError(adobeAssetException);
                                }
                            }
                        }, AnonymousClass6.this.val$handler);
                        return;
                    }
                    final JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("num_files", AdobeAssetFolder.this.numFiles);
                    jSONObject2.put("num_folders", AdobeAssetFolder.this.numFolders);
                    jSONObject2.put("name", AdobeAssetFolder.this.latestModifiedAssetFileName);
                    jSONObject2.put("type", AdobeAssetFolder.this.latestModifiedAssetFileType);
                    jSONObject2.put(AdobeCommunityConstants.AdobeCommunityResourceSizeKey, AdobeAssetFolder.this.latestModifiedAssetFileSize);
                    jSONObject2.put(AdobeCommunityConstants.AdobeCommunityResourceMD5Key, AdobeAssetFolder.this.latestModifiedAssetFileMd5);
                    jSONObject2.put("id", AdobeAssetFolder.this.latestModifiedAssetFileId);
                    jSONObject2.put("created", AdobeAssetFolder.this.latestModifiedAssetFileCreated);
                    jSONObject2.put(AdobeDCXConstants.AdobeDCXAssetStateModified, AdobeAssetFolder.this.latestModifiedAssetFileModified);
                    jSONObject2.put(BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER, AdobeAssetFolder.this.latestModifiedAssetFilePages);
                    jSONObject2.put("height", AdobeAssetFolder.this.latestModifiedAssetFileHeight);
                    jSONObject2.put("width", AdobeAssetFolder.this.latestModifiedAssetFileWidth);
                    AdobeCommonCache.getSharedInstance().addData(jSONObject2.toString().getBytes(), AdobeAssetFolder.this.getGUID(), "PAGE_RESOURCE_COLLECTION_DATA", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeAssetFolder.CACHENAME, new IAdobeGenericCompletionCallback<Boolean>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.6.1.3
                        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                        public void onCompletion(Boolean bool) {
                            if (bool.booleanValue()) {
                                if (AdobeAssetFolder.this.etag != null) {
                                    HashMap map = new HashMap();
                                    map.put(AdobeDCXConstants.AdobeDCXAssetStateModified, AdobeAssetFolder.this.modificationDate);
                                    map.put("etag", AdobeAssetFolder.this.etag);
                                    AdobeCommonCache.getSharedInstance().addDictionary(map, AdobeAssetFolder.this.getGUID(), "modified-data", EnumSet.of(AdobeCommonCacheOptions.AdobeCommonCacheKeepInMemoryCache, AdobeCommonCacheOptions.AdobeCommonCacheKeepOnDiskCache), AdobeAssetFolder.CACHENAME);
                                    return;
                                }
                                return;
                            }
                            AdobeLogger.log(Level.ERROR, "AdobeAssetFolder:getPageDataFromServer", String.format("Adding to caches is failed for %s", AdobeAssetFolder.this.href));
                        }
                    });
                    if (AnonymousClass6.this.val$handler != null) {
                        AnonymousClass6.this.val$handler.post(new Runnable() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.6.1.4
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass6.this.val$completionCallback.onCompletion(jSONObject2);
                            }
                        });
                    } else {
                        AnonymousClass6.this.val$completionCallback.onCompletion(jSONObject2);
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
        public void onCompletion(String str) {
            new Thread(new AnonymousClass1(str)).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pageDataFetchHelper(IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback, Handler handler) {
        getSession().getDirectoryForPageData(resourceCollection(), this.itemsFetchedSoFar == 0 ? AdobeStoragePagingMode.AdobeStorageFirstPage : AdobeStoragePagingMode.AdobeStorageNextPageReplace, new AnonymousClass6(handler, iAdobeGenericErrorCallback, iAdobeGenericCompletionCallback), new IAdobeGenericErrorCallback<AdobeAssetException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetFolder.7
            @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
            public void onError(AdobeAssetException adobeAssetException) {
            }
        }, handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getPageDataFromServer(IAdobeGenericCompletionCallback<JSONObject> iAdobeGenericCompletionCallback, IAdobeGenericErrorCallback<AdobeAssetException> iAdobeGenericErrorCallback) {
        resetPaging();
        resourceCollection().setLimit(1000);
        this.itemsFetchedSoFar = 0;
        this.numFiles = 0;
        this.numFolders = 0;
        pageDataFetchHelper(iAdobeGenericCompletionCallback, iAdobeGenericErrorCallback, new Handler());
    }
}

package com.adobe.creativesdk.foundation.storage;

import com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback;
import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloud;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderByProperty;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageOrderRelation;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResource;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.internal.utils.logging.AdobeLogger;
import com.adobe.creativesdk.foundation.internal.utils.logging.Level;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetPackage extends AdobeAssetFolder {
    private AdobeStorageResourceCollection asrCollection;
    private AdobeDCXManifest manifest;
    private boolean metadataLoaded;

    protected void setManifest(AdobeDCXManifest adobeDCXManifest) {
        this.manifest = adobeDCXManifest;
    }

    protected void setAsrCollection(AdobeStorageResourceCollection adobeStorageResourceCollection) {
        this.asrCollection = adobeStorageResourceCollection;
    }

    protected void setMetadataLoaded(boolean z) {
        this.metadataLoaded = z;
    }

    @Deprecated
    public AdobeDCXManifest getManifest() {
        return this.manifest;
    }

    protected AdobeStorageResourceCollection getAsrCollection() {
        return this.asrCollection;
    }

    public boolean isMetadataLoaded() {
        return this.metadataLoaded;
    }

    protected AdobeAssetPackage() {
        this.metadataLoaded = false;
    }

    public void reloadMetadata(IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        this.metadataLoaded = false;
        loadMetadata(iAdobeRequestCompletionCallback, iAdobeGenericErrorCallback);
    }

    public void loadMetadata(final IAdobeRequestCompletionCallback iAdobeRequestCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        if (isMetadataLoaded()) {
            iAdobeRequestCompletionCallback.onCompletion();
        } else {
            final WeakReference weakReference = new WeakReference(this);
            loadDCXManifest(new IAdobeGenericCompletionCallback<AdobeDCXManifest>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPackage.1
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericCompletionCallback
                public void onCompletion(AdobeDCXManifest adobeDCXManifest) {
                    ((AdobeAssetPackage) weakReference.get()).manifest = adobeDCXManifest;
                    ((AdobeAssetPackage) weakReference.get()).metadataLoaded = true;
                    iAdobeRequestCompletionCallback.onCompletion();
                }
            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPackage.2
                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                public void onError(AdobeCSDKException adobeCSDKException) {
                    AdobeLogger.log(Level.ERROR, "AdobeAssetPackage.loadMetadata", String.format("Failed to get the manifest for %s.", AdobeAssetPackage.this.GUID));
                    iAdobeGenericErrorCallback.onError(adobeCSDKException);
                }
            });
        }
    }

    void loadDCXManifest(final IAdobeGenericCompletionCallback<AdobeDCXManifest> iAdobeGenericCompletionCallback, final IAdobeGenericErrorCallback<AdobeCSDKException> iAdobeGenericErrorCallback) {
        AdobeStorageResource adobeStorageResource = new AdobeStorageResource();
        adobeStorageResource.href = URI.create(String.format("%s%s", this.href, "manifest"));
        AdobeStorageSession session = getSession();
        if (session != null) {
            AdobeNetworkHttpRequest adobeNetworkHttpRequestRequestFor = session.requestFor(adobeStorageResource, AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodGET, null, false);
            final WeakReference weakReference = new WeakReference(this);
            session.getResponseFor(adobeNetworkHttpRequestRequestFor, null, null, new AdobeStorageSession.IStorageResponseCallback() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetPackage.3
                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onComplete(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                    AdobeAssetPackage adobeAssetPackage = (AdobeAssetPackage) weakReference.get();
                    if (adobeNetworkHttpResponse.getStatusCode() == 404) {
                        Object[] objArr = new Object[1];
                        objArr[0] = adobeAssetPackage != null ? adobeAssetPackage.getDescription() : "";
                        String str = String.format("The requested manifest for package %s not found. This is most likely due to an empty asset package (no manifest).", objArr);
                        if (iAdobeGenericErrorCallback != null) {
                            iAdobeGenericErrorCallback.onError(new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorFileReadFailure, new HashMap()));
                            return;
                        } else {
                            AdobeLogger.log(Level.ERROR, "AdobeAssetPackage.loadDCXManifest", str);
                            return;
                        }
                    }
                    try {
                        AdobeDCXManifest adobeDCXManifest = new AdobeDCXManifest(adobeNetworkHttpResponse.getDataString());
                        if (adobeAssetPackage != null) {
                            adobeAssetPackage.GUID = adobeDCXManifest.getCompositeId();
                            adobeAssetPackage.name = adobeDCXManifest.getName();
                        }
                        if (iAdobeGenericCompletionCallback != null) {
                            iAdobeGenericCompletionCallback.onCompletion(adobeDCXManifest);
                        }
                    } catch (AdobeDCXException e2) {
                        iAdobeGenericErrorCallback.onError(e2);
                    }
                }

                @Override // com.adobe.creativesdk.foundation.internal.storage.model.services.AdobeStorageSession.IStorageResponseCallback
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeGenericErrorCallback.onError(adobeNetworkException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                }
            });
        }
    }

    protected AdobeAssetPackage(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageResourceCollection adobeStorageResourceCollection2) {
        this(adobeStorageResourceCollection, adobeStorageResourceCollection2 != null ? adobeStorageResourceCollection2.getOrderBy() : AdobeStorageOrderByProperty.ADOBE_STORAGE_ORDER_BY_NAME, adobeStorageResourceCollection2 != null ? adobeStorageResourceCollection2.getOrder() : AdobeStorageOrderRelation.ADOBE_STORAGE_ORDER_ASCENDING, adobeStorageResourceCollection2 != null ? adobeStorageResourceCollection2.href : null);
    }

    protected AdobeAssetPackage(AdobeStorageResourceCollection adobeStorageResourceCollection, AdobeStorageOrderByProperty adobeStorageOrderByProperty, AdobeStorageOrderRelation adobeStorageOrderRelation, URI uri) {
        this.asrCollection = adobeStorageResourceCollection;
        this.GUID = adobeStorageResourceCollection.internalID;
        this.href = adobeStorageResourceCollection.href;
        this.etag = adobeStorageResourceCollection.etag;
        this.name = adobeStorageResourceCollection.name;
        this.parentHref = uri;
        this.creationDate = AdobeStorageUtils.convertStringToDate(adobeStorageResourceCollection.created);
        this.modificationDate = AdobeStorageUtils.convertStringToDate(adobeStorageResourceCollection.modified);
        if (this.creationDate == null && this.modificationDate != null) {
            this.creationDate = this.modificationDate;
        }
        this.asrCollection.setOrderBy(adobeStorageOrderByProperty);
        this.asrCollection.setOrder(adobeStorageOrderRelation);
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetFolder
    protected AdobeStorageResourceCollection resourceCollection() {
        if (this.asrCollection == null) {
            this.asrCollection = AdobeStorageResourceCollection.collectionFromHref(this.href);
            this.asrCollection.name = this.name;
            this.asrCollection.internalID = this.GUID;
            this.asrCollection.href = this.href;
            this.asrCollection.etag = this.etag;
            this.asrCollection.setCloud(getCloud());
        }
        return this.asrCollection;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAsset
    protected void setCloud(AdobeCloud adobeCloud) {
        this.mCloud = adobeCloud;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetPackage) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.storage.AdobeAssetFolder, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        return super.hashCode();
    }
}

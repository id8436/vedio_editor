package com.adobe.creativesdk.foundation.storage;

import android.os.Handler;
import android.support.annotation.NonNull;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudServiceType;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOperation;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOutputDispositionType;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageOutputParameters;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.AdobeImageSession;
import com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler;
import com.adobe.creativesdk.foundation.adobeinternal.storage.agc.AdobeAGCImageComponents;
import com.adobe.creativesdk.foundation.adobeinternal.storage.agc.AdobeAGCManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXUtils;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceItem;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeAssetIllustratorFile extends AdobeAssetFileInternal {
    AdobeNetworkHttpTaskHandle createAIRequest;

    public static AdobeAssetIllustratorFile create(String str, AdobeAssetFolder adobeAssetFolder, ArrayList<AdobeAssetFile> arrayList, boolean z, IAdobeGenericRequestCallback<AdobeAssetIllustratorFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        String validatedAssetName = AdobeAsset.getValidatedAssetName(str);
        if (validatedAssetName == null) {
            return null;
        }
        try {
            AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(new URI(AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetFolder.href.toString(), validatedAssetName)));
            adobeStorageResourceItemResourceFromHref.name = validatedAssetName;
            AdobeAssetIllustratorFile adobeAssetIllustratorFile = new AdobeAssetIllustratorFile(adobeStorageResourceItemResourceFromHref, adobeAssetFolder.resourceCollection());
            adobeAssetIllustratorFile.internalCreate(str, adobeAssetFolder, arrayList, z, iAdobeGenericRequestCallback, handler);
            return adobeAssetIllustratorFile;
        } catch (URISyntaxException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void create(String str, @NonNull AdobeAssetFolder adobeAssetFolder, AdobeAGCManifest adobeAGCManifest, AdobeAGCImageComponents adobeAGCImageComponents, boolean z, final IAdobeGenericRequestCallback<AdobeAssetIllustratorFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        String string = adobeAssetFolder.getHref().toString();
        if (!string.endsWith(URIUtil.SLASH)) {
            string = string + URIUtil.SLASH;
        }
        final AdobeStorageResourceItem adobeStorageResourceItemResourceFromHref = AdobeStorageResourceItem.resourceFromHref(string.concat(str));
        AdobeAssetIllustratorFile adobeAssetIllustratorFile = new AdobeAssetIllustratorFile(adobeStorageResourceItemResourceFromHref, AdobeStorageResourceCollection.collectionFromHref(adobeAssetFolder.getHref()));
        adobeAssetIllustratorFile.setCloud(adobeAssetFolder.getCloud());
        adobeAssetIllustratorFile.setCreationDate(new Date());
        adobeStorageResourceItemResourceFromHref.type = AdobeAssetFileExtensions.kAdobeMimeTypeIllustrator;
        adobeAssetIllustratorFile.type = AdobeAssetFileExtensions.kAdobeMimeTypeIllustrator;
        if (adobeAssetFolder.getCloud() != null) {
            ((AdobeImageSession) adobeAssetFolder.getCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeImage)).createAI(adobeStorageResourceItemResourceFromHref, adobeAGCManifest, adobeAGCImageComponents, z, handler, new IAdobeImageRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetIllustratorFile.1
                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
                public void onComplete(AdobeImageOperation adobeImageOperation) {
                    AdobeAssetIllustratorFile.this.etag = adobeStorageResourceItemResourceFromHref.etag;
                    iAdobeGenericRequestCallback.onCompletion(AdobeAssetIllustratorFile.this);
                }

                @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
                public void onError(AdobeNetworkException adobeNetworkException) {
                    iAdobeGenericRequestCallback.onError(adobeNetworkException);
                }

                @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
                public void onProgress(double d2) {
                    iAdobeGenericRequestCallback.onProgress(d2);
                }
            });
        } else {
            iAdobeGenericRequestCallback.onError(null);
        }
    }

    private AdobeAssetIllustratorFile internalCreate(String str, AdobeAssetFolder adobeAssetFolder, ArrayList<AdobeAssetFile> arrayList, boolean z, final IAdobeGenericRequestCallback<AdobeAssetIllustratorFile, AdobeCSDKException> iAdobeGenericRequestCallback, Handler handler) {
        AdobeImageSession adobeImageSession = adobeAssetFolder != null ? (AdobeImageSession) adobeAssetFolder.getCloud().getSessionForService(AdobeCloudServiceType.AdobeCloudServiceTypeImage) : null;
        if (adobeImageSession == null) {
            return null;
        }
        String strStringByAppendingLastPathComponent = AdobeDCXUtils.stringByAppendingLastPathComponent(adobeAssetFolder.href.toString(), str);
        AdobeImageOutputParameters adobeImageOutputParameters = new AdobeImageOutputParameters();
        adobeImageOutputParameters.disposition = AdobeImageOutputDispositionType.AdobeImageOutputDispositionReference;
        adobeImageOutputParameters.location = strStringByAppendingLastPathComponent;
        adobeImageOutputParameters.overwrite = z;
        ArrayList arrayList2 = new ArrayList();
        Iterator<AdobeAssetFile> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(AdobeStorageResourceItem.resourceFromHref(it.next().getHref()));
        }
        this.createAIRequest = adobeImageSession.createAI(adobeImageOutputParameters, arrayList2, new IAdobeImageRequestCompletionHandler() { // from class: com.adobe.creativesdk.foundation.storage.AdobeAssetIllustratorFile.2
            @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
            public void onComplete(AdobeImageOperation adobeImageOperation) {
                AdobeAnalyticsSDKReporter.trackSharingAction(AdobeAnalyticsSDKReporter.AdobeAnalyticsShareTypeProductSaves, "Creative Cloud");
                iAdobeGenericRequestCallback.onCompletion(this);
            }

            @Override // com.adobe.creativesdk.foundation.adobeinternal.imageservice.IAdobeImageRequestCompletionHandler
            public void onError(AdobeNetworkException adobeNetworkException) {
                if (adobeNetworkException.getErrorCode() == AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorCancelled) {
                    iAdobeGenericRequestCallback.onCancellation();
                } else {
                    iAdobeGenericRequestCallback.onError(adobeNetworkException);
                }
            }

            @Override // com.adobe.creativesdk.foundation.storage.IAdobeProgressCallback
            public void onProgress(double d2) {
                iAdobeGenericRequestCallback.onProgress(d2);
            }
        }, handler);
        return this;
    }

    private AdobeAssetIllustratorFile(AdobeStorageResourceItem adobeStorageResourceItem, AdobeStorageResourceCollection adobeStorageResourceCollection) {
        super(adobeStorageResourceItem, adobeStorageResourceCollection);
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal, com.adobe.creativesdk.foundation.storage.AdobeAssetFile, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public boolean equals(Object obj) {
        if (obj instanceof AdobeAssetIllustratorFile) {
            return super.equals(obj);
        }
        return false;
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.AdobeAssetFileInternal, com.adobe.creativesdk.foundation.storage.AdobeAssetFile, com.adobe.creativesdk.foundation.storage.AdobeAsset
    public int hashCode() {
        return super.hashCode();
    }
}

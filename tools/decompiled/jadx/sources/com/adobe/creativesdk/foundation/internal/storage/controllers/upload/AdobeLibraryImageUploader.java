package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback;
import com.adobe.creativesdk.foundation.adobeinternal.cloud.AdobeCloudManager;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXManifest;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIMSEnvironment;
import com.adobe.creativesdk.foundation.internal.auth.AdobeAuthIdentityManagementService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequest;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestMethod;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpService;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpTaskHandle;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkRequestPriority;
import com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler;
import com.adobe.creativesdk.foundation.internal.storage.asset.AdobeAssetLibraryInternal;
import com.adobe.creativesdk.foundation.internal.storage.model.resources.AdobeStorageResourceCollection;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetLibrary;
import com.adobe.creativesdk.foundation.storage.AdobeDesignLibraryUtils;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryComposite;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryElement;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryException;
import com.adobe.creativesdk.foundation.storage.AdobeLibraryManager;
import com.adobe.creativesdk.foundation.storage.IAdobeGenericRequestCallback;
import com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import org.apache.commons.io.FilenameUtils;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeLibraryImageUploader implements Uploader<AdobeDCXManifest> {
    private AdobeNetworkHttpTaskHandle requestHandler;
    AdobeLibraryComposite libraryComposite = null;
    AdobeLibraryElement imageElement = null;

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.Uploader
    public void startUpload(AdobeUploadAssetData adobeUploadAssetData, AdobeDCXManifest adobeDCXManifest, IAdobeGenericRequestCallback iAdobeGenericRequestCallback) throws AdobeDCXException {
        String path = adobeUploadAssetData.getLocalAssetURL().getPath();
        try {
            AdobeLibraryElement adobeLibraryElementAddImage = AdobeDesignLibraryUtils.addImage(path, FilenameUtils.getBaseName(path), AdobeLibraryManager.getSharedInstance().getLibraryWithId(adobeDCXManifest.getCompositeId()));
            if (adobeLibraryElementAddImage != null) {
                iAdobeGenericRequestCallback.onCompletion(adobeLibraryElementAddImage);
            } else {
                iAdobeGenericRequestCallback.onError(new AdobeLibraryException(AdobeLibraryErrorCode.AdobeLibraryErrorInvalidElement));
            }
        } catch (AdobeLibraryException e2) {
            iAdobeGenericRequestCallback.onError(e2);
        }
    }

    public void createLibrary(String str, final IAdobeGenericRequestCallback<AdobeAssetLibrary, AdobeCSDKException> iAdobeGenericRequestCallback) {
        try {
            AdobeNetworkHttpRequest adobeNetworkHttpRequest = new AdobeNetworkHttpRequest(new URL(getLibraryServiceEndPoint() + "/libraries"), AdobeNetworkHttpRequestMethod.AdobeNetworkHttpRequestMethodPOST, new HashMap());
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("name", str);
                jSONObject.put("type", "application/vnd.adobe.library+dcx");
                jSONObject.put("state", AdobePSDCompositeConstants.AdobePSDCompositeLayerBlendOptionsModeNormal);
                try {
                    adobeNetworkHttpRequest.setBody(jSONObject.toString().getBytes("UTF-8"));
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
                adobeNetworkHttpRequest.setRequestProperty("x-api-key", "AdobeStockClient1");
                adobeNetworkHttpRequest.setRequestProperty("Authorization", "Bearer " + AdobeAuthIdentityManagementService.getSharedInstance().getAccessToken());
                adobeNetworkHttpRequest.setRequestProperty("Content-Type", "application/json");
                this.requestHandler = new AdobeNetworkHttpService("", "", null).getResponseForDataRequest(adobeNetworkHttpRequest, AdobeNetworkRequestPriority.NORMAL, new IAdobeNetworkCompletionHandler() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeLibraryImageUploader.1
                    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                    public void onSuccess(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
                        try {
                            final AdobeAssetLibraryInternal adobeAssetLibraryInternal = new AdobeAssetLibraryInternal(AdobeStorageResourceCollection.collectionFromHref(new URI("assets/adobe-libraries/" + AdobeStorageUtils.JSONObjectWithData(adobeNetworkHttpResponse.getDataString()).getString("id") + URIUtil.SLASH)), AdobeStorageResourceCollection.collectionFromHref(new URI("assets/adobe-libraries/")));
                            adobeAssetLibraryInternal.setCloud(AdobeCloudManager.getSharedCloudManager().getDefaultCloud());
                            adobeAssetLibraryInternal.loadMetadata(new IAdobeRequestCompletionCallback() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeLibraryImageUploader.1.1
                                @Override // com.adobe.creativesdk.foundation.storage.IAdobeRequestCompletionCallback
                                public void onCompletion() {
                                    iAdobeGenericRequestCallback.onCompletion(adobeAssetLibraryInternal);
                                }
                            }, new IAdobeGenericErrorCallback<AdobeCSDKException>() { // from class: com.adobe.creativesdk.foundation.internal.storage.controllers.upload.AdobeLibraryImageUploader.1.2
                                @Override // com.adobe.creativesdk.foundation.IAdobeGenericErrorCallback
                                public void onError(AdobeCSDKException adobeCSDKException) {
                                    iAdobeGenericRequestCallback.onError(adobeCSDKException);
                                }
                            });
                        } catch (URISyntaxException e3) {
                            e3.printStackTrace();
                        } catch (JSONException e4) {
                            e4.printStackTrace();
                        }
                    }

                    @Override // com.adobe.creativesdk.foundation.internal.net.IAdobeNetworkCompletionHandler
                    public void onError(AdobeNetworkException adobeNetworkException) {
                        iAdobeGenericRequestCallback.onError(adobeNetworkException);
                    }
                }, null);
            } catch (JSONException e3) {
                iAdobeGenericRequestCallback.onError(new AdobeNetworkException(AdobeNetworkException.AdobeNetworkErrorCode.AdobeNetworkErrorBadRequest));
            }
        } catch (MalformedURLException e4) {
            e4.printStackTrace();
        }
    }

    private String getLibraryStorageEndPoint() {
        if (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS) {
            return "https://cc-api-storage-stage.adobe.io/assets/adobe-libraries/";
        }
        return "https://cc-api-storage.adobe.io/assets/adobe-libraries/";
    }

    private String getLibraryServiceEndPoint() {
        if (AdobeAuthIdentityManagementService.getSharedInstance().getEnvironment() == AdobeAuthIMSEnvironment.AdobeAuthIMSEnvironmentStageUS) {
            return "https://cc-api-assets-stage.adobe.io";
        }
        return "https://cc-api-assets.adobe.io";
    }

    @Override // com.adobe.creativesdk.foundation.internal.storage.controllers.upload.Uploader
    public void cancelUpload() {
        if (this.libraryComposite != null && this.imageElement != null) {
            try {
                this.libraryComposite.removeElement(this.imageElement);
            } catch (AdobeLibraryException e2) {
                e2.printStackTrace();
            }
        }
    }
}

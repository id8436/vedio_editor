package com.adobe.creativesdk.foundation.adobeinternal.storage.cloudupload;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXMutableComponent;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.storage.model.util.AdobeStorageErrorUtils;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class UploadComponentResponse {
    public AdobeDCXMutableComponent component;
    public AdobeCSDKException error;

    public UploadComponentResponse(AdobeDCXMutableComponent adobeDCXMutableComponent, AdobeCSDKException adobeCSDKException) {
        this.component = adobeDCXMutableComponent;
        this.error = adobeCSDKException;
    }

    public static UploadComponentResponse updateComponentWithUploadResponse(AdobeNetworkHttpResponse adobeNetworkHttpResponse, AdobeDCXComponent adobeDCXComponent, long j, JSONObject jSONObject, Exception exc) {
        AdobeAssetException adobeAssetExceptionCreateStorageError;
        Map<String, List<String>> headers = adobeNetworkHttpResponse.getHeaders();
        String str = headers.containsKey("content-md5") ? headers.get("content-md5").get(0) : null;
        String strOptString = jSONObject.optString("etag");
        String strOptString2 = jSONObject.optString(AdobeCommunityConstants.AdobeCommunityResourceVersionKey);
        if (strOptString == null) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "missing property 'etag'");
        } else if (strOptString2 == null) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "missing property 'version'");
        } else if (j < 0) {
            adobeAssetExceptionCreateStorageError = AdobeStorageErrorUtils.createStorageError(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, "could not read file length");
        } else {
            AdobeDCXMutableComponent mutableCopy = adobeDCXComponent.getMutableCopy();
            mutableCopy.setVersion(strOptString2);
            mutableCopy.setEtag(strOptString);
            mutableCopy.setMd5(str);
            if (mutableCopy.getLength() < 0) {
                mutableCopy.setLength(j);
            }
            return new UploadComponentResponse(mutableCopy, null);
        }
        if (adobeAssetExceptionCreateStorageError != null && exc == null) {
            return new UploadComponentResponse(null, adobeAssetExceptionCreateStorageError);
        }
        return new UploadComponentResponse(null, adobeAssetExceptionCreateStorageError);
    }
}

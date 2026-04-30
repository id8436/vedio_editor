package com.adobe.creativesdk.foundation.internal.util;

import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobePhotoErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobePhotoException;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobePhotoErrUtils {
    public static AdobePhotoException createPhotoError(AdobePhotoErrorCode adobePhotoErrorCode, URL url, Object obj, int i, Object obj2) {
        if (obj == null) {
            obj = "[no data]";
        }
        HashMap map = new HashMap();
        if (url != null) {
            map.put(AdobeAssetKeys.ADOBE_ASSET_REQUEST_URL_STRING_KEY, url);
        }
        map.put("AdobeNetworkHTTPStatus", Integer.valueOf(i));
        map.put(AdobeAssetKeys.ADOBE_ASSET_RESPONSE_DATA_KEY, obj);
        if (obj2 != null) {
            map.put(AdobeAssetKeys.ADOBE_ASSET_RESPONSE_HEADERS_KEY, obj2);
        }
        return new AdobePhotoException(adobePhotoErrorCode, map, null);
    }

    public static AdobePhotoException createPhotoError(AdobePhotoErrorCode adobePhotoErrorCode, String str) {
        if (str == null) {
            return new AdobePhotoException(adobePhotoErrorCode);
        }
        HashMap map = new HashMap();
        map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, str);
        return new AdobePhotoException(adobePhotoErrorCode, map, null);
    }

    public static AdobeCSDKException createErrorWithCode(AdobeCSDKException adobeCSDKException, HashMap<String, Object> map) {
        if (adobeCSDKException.getClass().equals(AdobeNetworkException.class)) {
            return new AdobeNetworkException(((AdobeNetworkException) adobeCSDKException).getErrorCode(), map, null);
        }
        if (adobeCSDKException.getClass().equals(AdobePhotoException.class)) {
            return new AdobePhotoException(((AdobePhotoException) adobeCSDKException).getErrorCode(), map, null);
        }
        if (adobeCSDKException.getClass().equals(AdobeDCXException.class)) {
            return new AdobePhotoException(((AdobePhotoException) adobeCSDKException).getErrorCode(), map, null);
        }
        return new AdobePhotoException(AdobePhotoErrorCode.ADOBE_PHOTO_ERROR_UNEXPECTED_RESPONSE, map, null);
    }
}

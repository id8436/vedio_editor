package com.adobe.creativesdk.foundation.internal.storage.model.util;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360ErrorCode;
import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Exception;
import com.adobe.creativesdk.foundation.adobeinternal.net.AdobeNetworkReachabilityUtil;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXErrorCode;
import com.adobe.creativesdk.foundation.adobeinternal.storage.dcx.AdobeDCXException;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFErrorCode;
import com.adobe.creativesdk.foundation.internal.ucf.AdobeUCFException;
import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import com.adobe.creativesdk.foundation.network.AdobeNetworkException;
import com.adobe.creativesdk.foundation.storage.AdobeAssetErrorCode;
import com.adobe.creativesdk.foundation.storage.AdobeAssetException;
import java.net.SocketException;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeStorageErrorUtils {
    public static AdobeAssetException createStorageError(AdobeAssetErrorCode adobeAssetErrorCode, URL url, Object obj, int i, Object obj2) {
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
        return new AdobeAssetException(adobeAssetErrorCode, map, null);
    }

    public static AdobeAssetException createStorageError(AdobeAssetErrorCode adobeAssetErrorCode, String str) {
        if (str == null) {
            return new AdobeAssetException(adobeAssetErrorCode);
        }
        HashMap map = new HashMap();
        map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, str);
        return new AdobeAssetException(adobeAssetErrorCode, map, null);
    }

    public static AdobeCSDKException createErrorWithCode(AdobeCSDKException adobeCSDKException, HashMap<String, Object> map) {
        if (adobeCSDKException.getClass().equals(AdobeNetworkException.class)) {
            return new AdobeNetworkException(((AdobeNetworkException) adobeCSDKException).getErrorCode(), map, null);
        }
        if (adobeCSDKException.getClass().equals(AdobeAssetException.class)) {
            return new AdobeAssetException(((AdobeAssetException) adobeCSDKException).getErrorCode(), map, null);
        }
        if (adobeCSDKException.getClass().equals(AdobeDCXException.class)) {
            return new AdobeDCXException(((AdobeDCXException) adobeCSDKException).getErrorCode(), null, map, null);
        }
        return new AdobeAssetException(AdobeAssetErrorCode.AdobeAssetErrorUnexpectedResponse, map, null);
    }

    public static AdobeDCXException createDCXError(AdobeDCXErrorCode adobeDCXErrorCode, String str) {
        return new AdobeDCXException(adobeDCXErrorCode, str, null);
    }

    public static AdobeDCXException createDCXError(AdobeDCXErrorCode adobeDCXErrorCode, String str, Exception exc) {
        return new AdobeDCXException(adobeDCXErrorCode, str, exc);
    }

    public static AdobeDCXException createDCXError(AdobeDCXErrorCode adobeDCXErrorCode, String str, Exception exc, String str2) {
        HashMap map = new HashMap();
        map.put(AdobeCSDKException.AdobeErrorPathKey, str2);
        return new AdobeDCXException(adobeDCXErrorCode, str, map, exc);
    }

    public static Adobe360Exception create360Error(Adobe360ErrorCode adobe360ErrorCode, String str) {
        return new Adobe360Exception(adobe360ErrorCode, str, null);
    }

    public static Adobe360Exception create360Error(Adobe360ErrorCode adobe360ErrorCode, String str, Exception exc) {
        return new Adobe360Exception(adobe360ErrorCode, str, exc);
    }

    public static AdobeUCFException createUCFError(AdobeUCFErrorCode adobeUCFErrorCode, String str) {
        return new AdobeUCFException(adobeUCFErrorCode, str, null);
    }

    public static AdobeUCFException createUCFError(AdobeUCFErrorCode adobeUCFErrorCode, String str, Exception exc) {
        return new AdobeUCFException(adobeUCFErrorCode, str, exc);
    }

    public static void verifyArgument(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void verifyState(boolean z, String str) {
        if (!z) {
            throw new IllegalStateException(str);
        }
    }

    public static boolean isErrorDueToOffline(AdobeNetworkHttpResponse adobeNetworkHttpResponse) {
        return (AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext() != null && !AdobeNetworkReachabilityUtil.isOnline()) || (adobeNetworkHttpResponse.getStatusCode() == 404 && (adobeNetworkHttpResponse.getNetworkException() instanceof SocketException));
    }
}

package com.adobe.creativesdk.foundation.internal.entitlement;

import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementErrorCode;
import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementException;
import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpResponse;
import com.adobe.creativesdk.foundation.internal.utils.AdobeCSDKException;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeEntitlementErrorUtils {
    private AdobeEntitlementErrorUtils() {
    }

    public static AdobeEntitlementException errorWithCode(AdobeEntitlementErrorCode adobeEntitlementErrorCode, String str) {
        return new AdobeEntitlementException(adobeEntitlementErrorCode, str, null, null);
    }

    public static AdobeEntitlementException errorWithCode(AdobeEntitlementErrorCode adobeEntitlementErrorCode, Exception exc, String str) {
        return new AdobeEntitlementException(adobeEntitlementErrorCode, str, null, exc);
    }

    public static AdobeEntitlementException errorWithCode(AdobeEntitlementErrorCode adobeEntitlementErrorCode, Exception exc, String str, String str2) {
        HashMap map = new HashMap();
        if (str != null) {
            map.put(AdobeCSDKException.AdobeErrorPathKey, str);
        }
        return new AdobeEntitlementException(adobeEntitlementErrorCode, str2, map, exc);
    }

    public static AdobeEntitlementException errorWithCode(AdobeEntitlementErrorCode adobeEntitlementErrorCode, AdobeNetworkHttpResponse adobeNetworkHttpResponse, String str) {
        return errorWithCode(adobeEntitlementErrorCode, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders(), null, str);
    }

    public static AdobeEntitlementException errorWithCode(AdobeEntitlementErrorCode adobeEntitlementErrorCode, AdobeNetworkHttpResponse adobeNetworkHttpResponse, Exception exc, String str) {
        return errorWithCode(adobeEntitlementErrorCode, adobeNetworkHttpResponse.getUrl(), adobeNetworkHttpResponse.getDataBytes(), adobeNetworkHttpResponse.getStatusCode(), adobeNetworkHttpResponse.getHeaders(), exc, str);
    }

    public static AdobeEntitlementException errorWithCode(AdobeEntitlementErrorCode adobeEntitlementErrorCode, HashMap<String, Object> map) {
        return new AdobeEntitlementException(adobeEntitlementErrorCode, null, map, null);
    }

    public static AdobeEntitlementException errorWithCode(AdobeEntitlementErrorCode adobeEntitlementErrorCode, URL url, Object obj, int i, Object obj2, Exception exc, String str) {
        if (obj == null) {
            obj = "[no data]";
        }
        HashMap map = new HashMap();
        if (url != null) {
            map.put(AdobeEntitlementException.AdobeNetworkRequestURLStringKey, url);
        }
        map.put("AdobeNetworkHTTPStatus", Integer.valueOf(i));
        if (obj != null) {
            map.put(AdobeEntitlementException.AdobeNetworkResponseDataKey, obj);
        }
        if (obj2 != null) {
            map.put(AdobeEntitlementException.AdobeNetworkResponseHeadersKey, obj2);
        }
        return new AdobeEntitlementException(adobeEntitlementErrorCode, str, map, exc);
    }
}

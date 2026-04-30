package com.adobe.creativesdk.foundation.internal.sendtodesktop;

import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import com.adobe.creativesdk.foundation.sendtodesktop.AdobeSendToDesktopErrorCode;
import com.adobe.creativesdk.foundation.sendtodesktop.AdobeSendToDesktopException;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeSendToDesktopErrorUtils {
    public static AdobeSendToDesktopException createSendToDesktopError(AdobeSendToDesktopErrorCode adobeSendToDesktopErrorCode, String str, String str2) {
        if (str == null) {
            return new AdobeSendToDesktopException(adobeSendToDesktopErrorCode, null, str2);
        }
        HashMap map = new HashMap();
        map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, str);
        return new AdobeSendToDesktopException(adobeSendToDesktopErrorCode, map, null);
    }

    public static AdobeSendToDesktopException createSendToDesktopError(AdobeSendToDesktopErrorCode adobeSendToDesktopErrorCode, URL url, Object obj, int i, Object obj2, String str) {
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
        return new AdobeSendToDesktopException(adobeSendToDesktopErrorCode, map, str);
    }
}

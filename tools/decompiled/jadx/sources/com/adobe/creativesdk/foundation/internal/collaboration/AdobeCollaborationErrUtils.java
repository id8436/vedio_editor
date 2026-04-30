package com.adobe.creativesdk.foundation.internal.collaboration;

import com.adobe.creativesdk.foundation.internal.utils.AdobeAssetKeys;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCollaborationErrUtils {
    private AdobeCollaborationErrUtils() {
    }

    public static AdobeCollaborationException createCollaborationError(AdobeCollaborationErrorCode adobeCollaborationErrorCode, String str, String str2) {
        if (str == null) {
            return new AdobeCollaborationException(adobeCollaborationErrorCode, null, str2);
        }
        HashMap map = new HashMap();
        map.put(AdobeAssetKeys.ADOBE_ASSET_DETAILS_STRING_KEY, str);
        return new AdobeCollaborationException(adobeCollaborationErrorCode, map, null);
    }

    public static AdobeCollaborationException createCollaborationError(AdobeCollaborationErrorCode adobeCollaborationErrorCode, URL url, Object obj, int i, Object obj2) {
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
        return new AdobeCollaborationException(adobeCollaborationErrorCode, map, null);
    }
}

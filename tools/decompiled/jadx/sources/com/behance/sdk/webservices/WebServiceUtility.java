package com.behance.sdk.webservices;

import com.behance.sdk.BehanceSDK;
import com.behance.sdk.util.BehanceSDKConstants;
import d.ai;

/* JADX INFO: loaded from: classes2.dex */
public class WebServiceUtility {
    private static final String PATH_DELIMITER = "/";

    public static String baseApiUrl() {
        return "https://cc-api-behance.adobe.io/v2";
    }

    public static String pathConcat(String... strArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("/");
        for (String str : strArr) {
            sb.append(str);
            sb.append("/");
        }
        return sb.toString();
    }

    public static String addApiKey(String str) {
        return ai.e(str).p().a(BehanceSDKConstants.ADOBE_API_CLIENT_ID_PARAM, BehanceSDK.getInstance().getClientId()).c().toString();
    }
}

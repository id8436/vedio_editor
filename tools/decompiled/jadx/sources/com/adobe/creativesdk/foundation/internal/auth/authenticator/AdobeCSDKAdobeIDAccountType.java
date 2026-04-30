package com.adobe.creativesdk.foundation.internal.auth.authenticator;

import com.adobe.creativesdk.foundation.adobeinternal.auth.AdobeUXAuthManagerRestricted;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKAdobeIDAccountType {
    public static final String ADOBEID_ACCOUNT_TYPE_CC = "com.adobe.creativesdk.foundation.auth.adobeID.CC";
    public static final String ADOBEID_ACCOUNT_TYPE_DC = "com.adobe.creativesdk.foundation.auth.adobeID.DC";
    public static final String ADOBEID_AUTHTOKEN_TYPE = "AdobeID access";

    public static String getAccountType() {
        return AdobeUXAuthManagerRestricted.getAccessGroupAccountType();
    }

    public static boolean isCCApplicationV2() {
        return getAccountType().equals(ADOBEID_ACCOUNT_TYPE_CC);
    }

    public static boolean isDCApplication() {
        return getAccountType().equals(ADOBEID_ACCOUNT_TYPE_DC);
    }

    public static boolean shouldUseSharedAccount() {
        return isCCApplicationV2() || isDCApplication();
    }
}

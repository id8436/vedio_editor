package com.behance.sdk.enums;

/* JADX INFO: loaded from: classes.dex */
public enum BehanceSDKSocialAccountType {
    FACEBOOK,
    TWITTER;

    public static BehanceSDKSocialAccountType fromName(String str) {
        if (str != null && str.length() > 0) {
            for (BehanceSDKSocialAccountType behanceSDKSocialAccountType : values()) {
                if (behanceSDKSocialAccountType.name().equals(str)) {
                    return behanceSDKSocialAccountType;
                }
            }
        }
        return null;
    }
}

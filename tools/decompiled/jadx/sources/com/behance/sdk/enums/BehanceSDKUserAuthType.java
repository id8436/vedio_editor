package com.behance.sdk.enums;

/* JADX INFO: loaded from: classes2.dex */
public enum BehanceSDKUserAuthType {
    BEHANCE_LOGIN,
    ADOBE_LOGIN;

    public static BehanceSDKUserAuthType fromName(String str) {
        if (str != null && str.length() > 0) {
            for (BehanceSDKUserAuthType behanceSDKUserAuthType : values()) {
                if (behanceSDKUserAuthType.name().equals(str)) {
                    return behanceSDKUserAuthType;
                }
            }
        }
        return null;
    }
}

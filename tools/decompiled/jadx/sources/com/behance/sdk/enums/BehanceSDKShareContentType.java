package com.behance.sdk.enums;

/* JADX INFO: loaded from: classes2.dex */
public enum BehanceSDKShareContentType {
    PROJECT,
    USER,
    COLLECTION,
    CURATED_GALLERY,
    IMAGE,
    TEAM;

    public static BehanceSDKShareContentType fromString(String str) {
        if (str != null && str.length() > 0) {
            for (BehanceSDKShareContentType behanceSDKShareContentType : values()) {
                if (behanceSDKShareContentType.name().equals(str)) {
                    return behanceSDKShareContentType;
                }
            }
        }
        return PROJECT;
    }
}

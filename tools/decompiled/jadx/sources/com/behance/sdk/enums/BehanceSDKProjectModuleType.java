package com.behance.sdk.enums;

/* JADX INFO: loaded from: classes.dex */
public enum BehanceSDKProjectModuleType {
    IMAGE,
    TEXT,
    EMBED,
    AUDIO,
    VIDEO,
    MEDIA_COLLECTION,
    UNKNOWN;

    public static BehanceSDKProjectModuleType fromString(String str) {
        if (str != null) {
            for (BehanceSDKProjectModuleType behanceSDKProjectModuleType : values()) {
                if (behanceSDKProjectModuleType.name().equalsIgnoreCase(str)) {
                    return behanceSDKProjectModuleType;
                }
            }
        }
        return null;
    }
}

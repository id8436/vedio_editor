package com.behance.sdk.enums;

/* JADX INFO: loaded from: classes2.dex */
public enum BehanceSDKCuratedGalleryType {
    ORGANIZATION,
    SERVED_SITE;

    public static BehanceSDKCuratedGalleryType fromName(String str) {
        if (str != null && str.length() > 0) {
            for (BehanceSDKCuratedGalleryType behanceSDKCuratedGalleryType : values()) {
                if (behanceSDKCuratedGalleryType.name().equals(str)) {
                    return behanceSDKCuratedGalleryType;
                }
            }
        }
        return null;
    }
}

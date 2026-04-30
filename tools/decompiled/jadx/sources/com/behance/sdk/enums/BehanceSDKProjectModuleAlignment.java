package com.behance.sdk.enums;

/* JADX INFO: loaded from: classes.dex */
public enum BehanceSDKProjectModuleAlignment {
    LEFT,
    RIGHT,
    CENTER;

    public static BehanceSDKProjectModuleAlignment fromString(String str) {
        if (str != null) {
            for (BehanceSDKProjectModuleAlignment behanceSDKProjectModuleAlignment : values()) {
                if (behanceSDKProjectModuleAlignment.name().equalsIgnoreCase(str)) {
                    return behanceSDKProjectModuleAlignment;
                }
            }
        }
        return null;
    }
}

package com.behance.sdk.enums;

/* JADX INFO: loaded from: classes2.dex */
public enum BehanceSDKProjectsTimeSpan {
    ALL("all"),
    WEEK("week"),
    MONTH("month"),
    TODAY("today");

    private String actualValue;

    BehanceSDKProjectsTimeSpan(String str) {
        this.actualValue = str;
    }

    public static BehanceSDKProjectsTimeSpan fromName(String str) {
        for (BehanceSDKProjectsTimeSpan behanceSDKProjectsTimeSpan : values()) {
            if (behanceSDKProjectsTimeSpan.name().equalsIgnoreCase(str)) {
                return behanceSDKProjectsTimeSpan;
            }
        }
        return null;
    }

    public static BehanceSDKProjectsTimeSpan fromName(String str, BehanceSDKProjectsTimeSpan behanceSDKProjectsTimeSpan) {
        BehanceSDKProjectsTimeSpan behanceSDKProjectsTimeSpanFromName = fromName(str);
        return behanceSDKProjectsTimeSpanFromName != null ? behanceSDKProjectsTimeSpanFromName : behanceSDKProjectsTimeSpan;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.actualValue;
    }
}

package com.google.android.exoplayer.util;

/* JADX INFO: loaded from: classes2.dex */
public class VerboseLogUtil {
    private static volatile boolean enableAllTags;
    private static volatile String[] enabledTags;

    private VerboseLogUtil() {
    }

    public static void setEnabledTags(String... strArr) {
        enabledTags = strArr;
        enableAllTags = false;
    }

    public static void setEnableAllTags(boolean z) {
        enableAllTags = z;
    }

    public static boolean isTagEnabled(String str) {
        if (enableAllTags) {
            return true;
        }
        String[] strArr = enabledTags;
        if (strArr == null || strArr.length == 0) {
            return false;
        }
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean areAllTagsEnabled() {
        return enableAllTags;
    }
}

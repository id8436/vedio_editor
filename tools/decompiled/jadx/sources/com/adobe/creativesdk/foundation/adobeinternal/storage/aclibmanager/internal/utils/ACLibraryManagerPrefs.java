package com.adobe.creativesdk.foundation.adobeinternal.storage.aclibmanager.internal.utils;

import android.content.SharedPreferences;
import com.adobe.creativesdk.foundation.internal.common.AdobeCommonApplicationContextHolder;

/* JADX INFO: loaded from: classes.dex */
public class ACLibraryManagerPrefs {
    private static final String ACLIBMGR_LAST_LIB_ID = "aclibmgr_lastusersel_libid";
    private static final String ACLIBMGR_PREFS = "aclibmgr_prefs";

    private static SharedPreferences getSharedPreference() {
        return AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext().getSharedPreferences(ACLIBMGR_PREFS, 0);
    }

    private static String getPreferenceValue(String str) {
        return getPreferenceValue(str, null);
    }

    private static String getPreferenceValue(String str, String str2) {
        return getSharedPreference().getString(str, str2);
    }

    public static String getLastUserSelectedLibraryId() {
        return getPreferenceValue(ACLIBMGR_LAST_LIB_ID);
    }

    public static void setUserSelectedLibraryId(String str) {
    }
}

package com.behance.sdk.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.behance.sdk.enums.BehanceSDKPreferenceTypeLong;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKSharedPreferencesManager {
    private static final String BEHANCE_SDK_APP_SHARED_PREFERENCES_KEY = "BEHANCE_SDK_APP_SHARED_PREFERENCES_KEY";
    private static BehanceSDKSharedPreferencesManager instance;
    private SharedPreferences sharedPreferences;

    private BehanceSDKSharedPreferencesManager(Context context) {
        if (this.sharedPreferences == null) {
            this.sharedPreferences = context.getSharedPreferences(BEHANCE_SDK_APP_SHARED_PREFERENCES_KEY, 0);
        }
    }

    public static BehanceSDKSharedPreferencesManager getInstance(Context context) {
        if (instance == null) {
            instance = new BehanceSDKSharedPreferencesManager(context);
        }
        return instance;
    }

    public boolean clearAppPreferences() {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.clear();
        return editorEdit.commit();
    }

    public long getLongPreference(BehanceSDKPreferenceTypeLong behanceSDKPreferenceTypeLong) {
        return getLongPreference(behanceSDKPreferenceTypeLong, 0L);
    }

    public long getLongPreference(BehanceSDKPreferenceTypeLong behanceSDKPreferenceTypeLong, long j) {
        return this.sharedPreferences.getLong(behanceSDKPreferenceTypeLong.name(), j);
    }

    public boolean savePreference(BehanceSDKPreferenceTypeLong behanceSDKPreferenceTypeLong, long j) {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.putLong(behanceSDKPreferenceTypeLong.name(), j);
        return editorEdit.commit();
    }

    public void removePreference(BehanceSDKPreferenceTypeLong behanceSDKPreferenceTypeLong) {
        SharedPreferences.Editor editorEdit = this.sharedPreferences.edit();
        editorEdit.remove(behanceSDKPreferenceTypeLong.name());
        editorEdit.apply();
    }
}

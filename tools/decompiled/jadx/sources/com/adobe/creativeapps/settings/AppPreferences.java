package com.adobe.creativeapps.settings;

import android.content.SharedPreferences;
import com.adobe.creativeapps.settings.utils.UserProfileHandler;

/* JADX INFO: loaded from: classes.dex */
public class AppPreferences {
    private static SharedPreferences.Editor mEditor;
    private static AppPreferences mSharedInstance;
    private static SharedPreferences mSharedPreference;
    public static String ID_PROFILE_FIRST_NAME = "%s_PROFILE_FIRST_NAME";
    public static String ID_PROFILE_LAST_NAME = "%s_PROFILE_LAST_NAME";
    public static String ID_PROFILE_OCCUPATION = "%s_PROFILE_OCCUPATION";
    public static String ID_PROFILE_COMPANY = "%s_PROFILE_COMPANY";
    public static String ID_PROFILE_ADDRESS = "%s_PROFILE_ADDRESS";

    public static AppPreferences getSharedInstance() {
        if (mSharedInstance == null) {
            synchronized (AppPreferences.class) {
                if (mSharedInstance == null) {
                    mSharedInstance = new AppPreferences();
                    mSharedPreference = UserProfileHandler.mContext.getSharedPreferences("App_UserPreferences", 0);
                    mEditor = mSharedPreference.edit();
                }
            }
        }
        return mSharedInstance;
    }

    public void setPreference(String str, String str2) {
        mEditor.putString(str, str2).apply();
    }

    public String getPreference(String str, String str2) {
        return mSharedPreference.getString(str, str2);
    }

    public void setPreference(String str, boolean z) {
        mEditor.putBoolean(str, z).apply();
    }

    public boolean getPreference(String str, boolean z) {
        return mSharedPreference.getBoolean(str, z);
    }
}

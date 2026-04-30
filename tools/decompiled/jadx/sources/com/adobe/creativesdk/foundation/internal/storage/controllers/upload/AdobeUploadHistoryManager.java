package com.adobe.creativesdk.foundation.internal.storage.controllers.upload;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeUploadHistoryManager {
    private static String T = AdobeUploadHistoryManager.class.getSimpleName();
    private static String mPreferenceFileKey = "Adobe_CC_Upload_History_Shared_Preference";
    private static Context mContext = null;

    public static void setContext(Context context) {
        mContext = context;
    }

    public static void storeSessionData(ArrayList<AdobeUploadAssetData> arrayList) {
        if (mContext == null) {
            Log.e(T, "Cannot Store Session Data . Context is null");
            return;
        }
        SharedPreferences.Editor editorEdit = mContext.getSharedPreferences(mPreferenceFileKey, 0).edit();
        for (AdobeUploadAssetData adobeUploadAssetData : arrayList) {
            editorEdit.putBoolean(adobeUploadAssetData.getLocalAssetURL().getPath(), adobeUploadAssetData.isUploadSuccess());
        }
        editorEdit.commit();
    }

    public static Map<String, ?> getStoredSessionData() {
        if (mContext == null) {
            return null;
        }
        SharedPreferences sharedPreferences = mContext.getSharedPreferences(mPreferenceFileKey, 0);
        Map<String, ?> all = sharedPreferences.getAll();
        sharedPreferences.edit().clear().commit();
        return all;
    }

    public static void clearHistory() {
        mContext.getSharedPreferences(mPreferenceFileKey, 0).edit().clear().commit();
    }
}

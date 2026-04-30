package com.adobe.creativesdk.foundation.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import com.adobe.creativesdk.foundation.internal.storage.controllers.AdobeUXAssetBrowserCommonTypes;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCommonLearnedSettings {
    private static final String COLLECTION_SORT_TYPE_KEY = "lastCollectionSortType";
    private static final String SHARE_FILE_PROVIDE_AUTHORITY = "shareFileProvider";
    private static final String SORT_STATE_KEY = "lastSortState";
    private static final String SORT_TYPE_KEY = "lastSortType";
    private static final String VISUAL_LAYOUT_KEY = "VisualLayout";

    private static Context getContext() {
        return AdobeCommonApplicationContextHolder.getSharedApplicationContextHolder().getApplicationContext();
    }

    private static SharedPreferences getCommonLearnedPreference() {
        return getContext().getSharedPreferences("CommonLearnedSettings", 0);
    }

    private static String getPreference(String str, String str2) {
        return getCommonLearnedPreference().getString(str, str2);
    }

    private static void CommitPreference(String str, String str2) {
        SharedPreferences.Editor editorEdit = getCommonLearnedPreference().edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
    }

    public static void setLastVisualLayout(AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout adobeUXAssetBrowserVisualLayout) {
        CommitPreference(VISUAL_LAYOUT_KEY, adobeUXAssetBrowserVisualLayout.toString());
    }

    public static AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout lastVisualLayout() {
        return AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.valueOf(getPreference(VISUAL_LAYOUT_KEY, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserVisualLayout.ADOBE_STORAGE_VISUAL_LAYOUT_WATERFALL.toString()));
    }

    public static void setLastSortType(AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType adobeUXAssetBrowserSortType) {
        CommitPreference(SORT_TYPE_KEY, adobeUXAssetBrowserSortType.toString());
    }

    public static AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType lastSortType() {
        return AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.valueOf(getPreference(SORT_TYPE_KEY, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_TIME.toString()));
    }

    public static void setLastSortState(AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState adobeUXAssetBrowserSortState) {
        CommitPreference(SORT_STATE_KEY, adobeUXAssetBrowserSortState.toString());
    }

    public static AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType lastCollectionSortType() {
        return AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType.valueOf(getPreference(COLLECTION_SORT_TYPE_KEY, AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType.ADOBE_PHOTO_SORT_TYPE_TIME.toString()));
    }

    public static void setLastCollectionSortType(AdobeUXAssetBrowserCommonTypes.AdobePhotoSortType adobePhotoSortType) {
        CommitPreference(COLLECTION_SORT_TYPE_KEY, adobePhotoSortType.toString());
    }

    public static AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState lastSortState() {
        String preference;
        if (lastSortType() == AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortType.SORT_TYPE_TIME) {
            preference = getPreference(SORT_STATE_KEY, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.SORT_STATE_DESCENDING.toString());
        } else {
            preference = getPreference(SORT_STATE_KEY, AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.SORT_STATE_ASCENDING.toString());
        }
        return AdobeUXAssetBrowserCommonTypes.AdobeUXAssetBrowserSortState.valueOf(preference);
    }

    public static void setFileProvideAuthority(String str) {
        CommitPreference(SHARE_FILE_PROVIDE_AUTHORITY, str);
    }

    public static String getFileProvideAuthority() {
        return getPreference(SHARE_FILE_PROVIDE_AUTHORITY, null);
    }

    public static boolean lastSortTypeSetByUser() {
        return getPreference(SORT_TYPE_KEY, null) != null;
    }

    public static boolean lastVisualSetByUser() {
        return getPreference(VISUAL_LAYOUT_KEY, null) != null;
    }

    public static boolean lastSortStateSetByUser() {
        return getPreference(SORT_STATE_KEY, null) != null;
    }
}

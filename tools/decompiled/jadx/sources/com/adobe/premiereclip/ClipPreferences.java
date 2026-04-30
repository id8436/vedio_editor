package com.adobe.premiereclip;

import android.content.Context;
import android.content.SharedPreferences;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.project.sequence.Sequence;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class ClipPreferences {
    public static final String AUTO_FIRST_TIME = "AUTO_FIRST_TIME";
    public static final String AUTO_SEQUENCE = "AUTO_SEQUENCE";
    public static final String AUTO_SHARE = "AUTO_SHARE";
    public static final String COACHMARK_FIRST_TIME = "COACHMARK_FIRST_TIME";
    public static final String COACHMARK_SECOND_TIME = "COACHMARK_SECOND_TIME";
    public static final String COMMUNITY_FEED_GROUP = "COMMUNITY_FEED_GROUP";
    public static final String COMMUNITY_FEED_LAST_QUERY_TIMESTAMP = "COMMUNITY_FEED_LAST_QUERY_TIMESTAMP";
    public static final String COMMUNITY_FEED_TITLE = "COMMUNITY_FEED_TITLE";
    public static final String COMMUNITY_FEED_URL = "COMMUNITY_FEED_URL";
    public static final String DEFAULT_EXPORT_RES_SET_KEY = "DEFAULT_EXPORT_RES_SET";
    public static final String DEVICE_MEDIA_SOURCE = "GALLERY_MEDIA_SOURCE";
    public static final String DROPBOX_ACCESS_KEY = "ACCESS_KEY";
    public static final String DROPBOX_ACCESS_SECRET = "ACCESS_SECRET";
    public static final String EXPORT_RES_KEY = "EXPORT_RES";
    public static final String FREEFORM_ADJUST = "FREEFORM_ADJUST";
    public static final String FREEFORM_EDIT_PROJECT = "FREEFORM_EDIT_PROJECT";
    public static final String FREEFORM_EMPTY = "FREEFORM_EMPTY";
    public static final String FREEFORM_REORDER = "FREEFORM_REORDER";
    public static final String FREEFORM_SHARE = "FREEFORM_SHARE";
    public static final String FREEFORM_TRIM2 = "FREEFORM_TRIM2";
    public static final String FREEFORM_TWOFINGER = "FREEFORM_TWOFINGER";
    public static final String GOOGLE_ACCOUNT_NAME = "googleAccount";
    public static final String NOTIFICATION_GROUP = "NOTIFICATION_GROUP";
    public static final String NOTIFICATION_LAST_QUERY_TIMESTAMP = "NOTIFICATION_LAST_QUERY_TIMESTAMP";
    public static final String NOTIFICATION_PREVIEW = "NOTIFICATION_PREVIEW";
    public static final String NOTIFICATION_SCHEDULE_TIME_MILLIS = "NOTIFICATION_SCHEDULE_TIME_MILLIS";
    public static final String NOTIFICATION_TIME_MILLIS = "NOTIFICATION_TIME_MILLIS";
    public static final String ORGANIZER_BROWSE = "ORGANIZER_BROWSE";
    public static final String ORGANIZER_PLUS_BUTTON = "ORGANIZER_PLUS_BUTTON";
    public static final String SYNC_DIALOG_USERS_LIST = "usersSyncDialog";
    private static ClipPreferences instance;
    private SharedPreferences.Editor editor;
    private SharedPreferences sharedPreferences;

    public ClipPreferences() {
    }

    private ClipPreferences(Context context) {
        this.sharedPreferences = context.getSharedPreferences(context.getString(R.string.preferenceFile), 0);
        this.editor = this.sharedPreferences.edit();
    }

    public static ClipPreferences getInstance(Context context) {
        if (instance == null) {
            instance = new ClipPreferences(context);
        }
        return instance;
    }

    public int getExportResolution() {
        return this.sharedPreferences.getInt(EXPORT_RES_KEY, Sequence.EXPORT_HD_HEIGHT);
    }

    public boolean isDefaultExportResolutionSet() {
        return this.sharedPreferences.getBoolean(DEFAULT_EXPORT_RES_SET_KEY, false);
    }

    public void setExportResolution(int i) {
        this.editor.putInt(EXPORT_RES_KEY, i).commit();
    }

    public void setDefaultExportResolution(boolean z) {
        this.editor.putBoolean(DEFAULT_EXPORT_RES_SET_KEY, z).commit();
    }

    public void setNotificationTime(long j) {
        this.editor.putLong(NOTIFICATION_TIME_MILLIS, j);
        this.editor.commit();
    }

    public long getNotificationTime() {
        return this.sharedPreferences.getLong(NOTIFICATION_TIME_MILLIS, 0L);
    }

    public void setNotificationScheduleTime(long j) {
        this.editor.putLong(NOTIFICATION_SCHEDULE_TIME_MILLIS, j);
        this.editor.commit();
    }

    public long getNotificationScheduleTime() {
        return this.sharedPreferences.getLong(NOTIFICATION_SCHEDULE_TIME_MILLIS, 0L);
    }

    public void setDeviceSource(String str) {
        setString(DEVICE_MEDIA_SOURCE, str);
    }

    public String getDeviceSource() {
        return getString(DEVICE_MEDIA_SOURCE, GalleryActivity.SOURCE_DEVICE);
    }

    public void setPreference(String str, boolean z) {
        this.editor.putBoolean(str, z).commit();
    }

    public boolean getPreference(String str, boolean z) {
        return this.sharedPreferences.getBoolean(str, z);
    }

    public boolean contains(String str) {
        return this.sharedPreferences.contains(str);
    }

    public void resetCoachmarks() {
        setPreference(ORGANIZER_PLUS_BUTTON, true);
        setPreference(ORGANIZER_BROWSE, true);
        setPreference(FREEFORM_TRIM2, true);
        setPreference(FREEFORM_REORDER, true);
        setPreference(FREEFORM_ADJUST, true);
        setPreference(FREEFORM_EDIT_PROJECT, true);
        setPreference(FREEFORM_SHARE, true);
        setPreference(FREEFORM_EMPTY, true);
        setPreference(AUTO_FIRST_TIME, true);
        setPreference(AUTO_SEQUENCE, true);
        setPreference(AUTO_SHARE, true);
        setPreference(FREEFORM_TWOFINGER, true);
    }

    public String getString(String str, String str2) {
        return this.sharedPreferences.getString(str, str2);
    }

    public void setString(String str, String str2) {
        this.editor.putString(str, str2).apply();
    }

    public long getLong(String str, long j) {
        return this.sharedPreferences.getLong(str, j);
    }

    public void setLong(String str, long j) {
        this.editor.putLong(str, j).apply();
    }

    public boolean getBoolean(String str, boolean z) {
        return this.sharedPreferences.getBoolean(str, z);
    }

    public void setBoolean(String str, boolean z) {
        this.editor.putBoolean(str, z).apply();
    }

    public void removePreference(String str) {
        this.editor.remove(str).apply();
    }

    public void setListOfUsers(String str, Set<String> set) {
        this.editor.putStringSet(str, set).apply();
    }

    public Set<String> getListOfUsers(String str, Set<String> set) {
        return this.sharedPreferences.getStringSet(str, set);
    }
}

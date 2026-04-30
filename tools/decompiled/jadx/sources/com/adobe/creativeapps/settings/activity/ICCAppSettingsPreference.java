package com.adobe.creativeapps.settings.activity;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes.dex */
public interface ICCAppSettingsPreference {
    void changeCloud();

    void defaultBumper();

    void didTapSettingsLink(String str);

    Bitmap generateBumperPreview(String str, int i, int i2);

    String getBugName();

    String getBugPath();

    boolean getBugState();

    String getBumperName();

    String getBumperPath();

    boolean getBumperState();

    int getExportResolution();

    void handleLogout();

    boolean isBumperPremiereClip();

    void linkDropbox();

    void onRequestMedia();

    void openBugPreferenceFragment();

    void openBumperPreferenceFragment();

    void pickUserAccount();

    void resetBrandingPreferences();

    void sendUsageReport(boolean z);

    void setBugState(boolean z);

    void setBumperState(boolean z);

    void setCoachMarkEnabled(boolean z);

    void setExportResolution(int i);

    void setSyncEnabledOnlyOnWifi(boolean z);

    void showLinkUnlinkDialog(boolean z, String str);

    void showLogoutDialog();

    void unlinkDropbox();
}

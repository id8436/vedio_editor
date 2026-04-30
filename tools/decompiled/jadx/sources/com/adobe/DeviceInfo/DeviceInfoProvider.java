package com.adobe.DeviceInfo;

import android.content.ContextWrapper;
import android.provider.Settings;

/* JADX INFO: loaded from: classes.dex */
public class DeviceInfoProvider {
    public static String getUniqueDeviceID(ContextWrapper contextWrapper) {
        return DeviceInfoCipher.getSharedCipher().encrypt(Settings.Secure.getString(contextWrapper.getContentResolver(), "android_id"));
    }
}

package com.adobe.creativesdk.foundation.internal.storage.controllers;

import com.adobe.creativesdk.foundation.internal.common.AdobeCommonLearnedSettings;

/* JADX INFO: loaded from: classes.dex */
public class AdobeUXAssetViewerPreferences {
    private static String _appIdentifierKey = "177FCAA1-70EA-4FD7-B016-19D56F387C64";

    private static synchronized boolean isAppRecognized(String str) {
        return _appIdentifierKey.equalsIgnoreCase(str);
    }

    public static synchronized boolean enableAssetViewerMenu(String str, String str2) {
        boolean z;
        if (isAppRecognized(str)) {
            AdobeCommonLearnedSettings.setFileProvideAuthority(str2);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    static synchronized boolean isMenuEnabled() {
        return AdobeCommonLearnedSettings.getFileProvideAuthority() != null;
    }

    static synchronized String getFileProvideAuthority() {
        return AdobeCommonLearnedSettings.getFileProvideAuthority();
    }
}

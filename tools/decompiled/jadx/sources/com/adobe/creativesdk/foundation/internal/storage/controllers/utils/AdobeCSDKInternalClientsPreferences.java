package com.adobe.creativesdk.foundation.internal.storage.controllers.utils;

/* JADX INFO: loaded from: classes2.dex */
public class AdobeCSDKInternalClientsPreferences {
    private static boolean _sShouldEnableMyAccountsOption = false;

    public static boolean hasClientPreferenceToEnableMyAccountOption() {
        return _sShouldEnableMyAccountsOption;
    }

    public static void setClientPreferenceEnableMyAccount(boolean z) {
        _sShouldEnableMyAccountsOption = z;
    }
}

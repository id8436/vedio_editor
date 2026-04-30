package com.dropbox.core.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Auth {
    public static void startOAuth2Authentication(Context context, String str) {
        startOAuth2Authentication(context, str, null, null, null);
    }

    public static void startOAuth2Authentication(Context context, String str, String str2, String[] strArr, String str3) {
        if (AuthActivity.checkAppBeforeAuth(context, str, true)) {
            if (strArr != null && Arrays.asList(strArr).contains(str2)) {
                throw new IllegalArgumentException("desiredUid cannot be present in alreadyAuthedUids");
            }
            Intent intentMakeIntent = AuthActivity.makeIntent(context, str, str2, strArr, str3, "www.dropbox.com", "1");
            if (!(context instanceof Activity)) {
                intentMakeIntent.addFlags(268435456);
            }
            context.startActivity(intentMakeIntent);
        }
    }

    public static String getOAuth2Token() {
        Intent intent = AuthActivity.result;
        if (intent == null) {
            return null;
        }
        String stringExtra = intent.getStringExtra(AuthActivity.EXTRA_ACCESS_TOKEN);
        String stringExtra2 = intent.getStringExtra("ACCESS_SECRET");
        String stringExtra3 = intent.getStringExtra(AuthActivity.EXTRA_UID);
        if (stringExtra == null || stringExtra.equals("") || stringExtra2 == null || stringExtra2.equals("") || stringExtra3 == null || stringExtra3.equals("")) {
            return null;
        }
        return stringExtra2;
    }

    public static String getUid() {
        Intent intent = AuthActivity.result;
        if (intent == null) {
            return null;
        }
        String stringExtra = intent.getStringExtra(AuthActivity.EXTRA_ACCESS_TOKEN);
        String stringExtra2 = intent.getStringExtra("ACCESS_SECRET");
        String stringExtra3 = intent.getStringExtra(AuthActivity.EXTRA_UID);
        if (stringExtra == null || stringExtra.equals("") || stringExtra2 == null || stringExtra2.equals("") || stringExtra3 == null || stringExtra3.equals("")) {
            return null;
        }
        return stringExtra3;
    }
}

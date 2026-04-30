package com.facebook.login;

import com.adobe.creativesdk.foundation.adobeinternal.adobe360.Adobe360Constants;
import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsETSEvent;

/* JADX INFO: compiled from: LoginClient.java */
/* JADX INFO: loaded from: classes2.dex */
enum m {
    SUCCESS(AdobeAnalyticsETSEvent.ADOBE_ETS_VALUE_ERROR_CODE_SUCCESS),
    CANCEL("cancel"),
    ERROR(Adobe360Constants.kAdobe360SatusError);


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3006d;

    m(String str) {
        this.f3006d = str;
    }

    String a() {
        return this.f3006d;
    }
}

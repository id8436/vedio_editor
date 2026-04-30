package com.adobe.creativesdk.foundation.internal.pushnotification.delegates;

/* JADX INFO: loaded from: classes.dex */
public interface IAdobeNotificationInterface {
    String getAdobeAppID();

    String getAndroidID();

    String getDeviceType();

    String getFullPackageName();

    void registerGCM(IAdobeGoogleRegistrationCallback iAdobeGoogleRegistrationCallback);
}

package com.adobe.creativesdk.foundation.internal.auth.authenticator;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public class AdobeCSDKAdobeIDAuthenticatorServiceCC extends Service {
    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        initializeAuthenticatorService();
    }

    private void initializeAuthenticatorService() {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new AdobeCSDKAdobeIDAuthenticatorCC(this).getIBinder();
    }
}

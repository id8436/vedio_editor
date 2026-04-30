package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import com.google.android.gms.common.GooglePlayServicesUtil;

/* JADX INFO: compiled from: AdvertisingInfoServiceStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
class i implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3938a;

    i(Context context) {
        this.f3938a = context.getApplicationContext();
    }

    @Override // com.twitter.sdk.android.core.internal.m
    public e a() {
        e eVar = null;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            com.twitter.sdk.android.core.v.h().a("Twitter", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
        } else {
            try {
                this.f3938a.getPackageManager().getPackageInfo(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, 0);
                k kVar = new k();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    try {
                    } catch (Exception e2) {
                        com.twitter.sdk.android.core.v.h().b("Twitter", "Exception in binding to Google Play Service to capture AdvertisingId", e2);
                    } finally {
                        this.f3938a.unbindService(kVar);
                    }
                    if (this.f3938a.bindService(intent, kVar, 1)) {
                        l lVar = new l(kVar.a());
                        eVar = new e(lVar.a(), lVar.b());
                    } else {
                        com.twitter.sdk.android.core.v.h().a("Twitter", "Could not bind to Google Play Service to capture AdvertisingId");
                    }
                } catch (Throwable th) {
                    com.twitter.sdk.android.core.v.h().a("Twitter", "Could not bind to Google Play Service to capture AdvertisingId", th);
                }
            } catch (PackageManager.NameNotFoundException e3) {
                com.twitter.sdk.android.core.v.h().a("Twitter", "Unable to find Google Play Services package name");
            } catch (Exception e4) {
                com.twitter.sdk.android.core.v.h().a("Twitter", "Unable to determine if Google Play Services is available", e4);
            }
        }
        return eVar;
    }
}

package com.twitter.sdk.android.core.internal;

import android.content.Context;

/* JADX INFO: compiled from: AdvertisingInfoReflectionStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
class h implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3937a;

    h(Context context) {
        this.f3937a = context.getApplicationContext();
    }

    boolean a(Context context) {
        try {
            return ((Integer) Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", Context.class).invoke(null, context)).intValue() == 0;
        } catch (Exception e2) {
            return false;
        }
    }

    @Override // com.twitter.sdk.android.core.internal.m
    public e a() {
        if (a(this.f3937a)) {
            return new e(b(), c());
        }
        return null;
    }

    private String b() {
        try {
            return (String) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("getId", new Class[0]).invoke(d(), new Object[0]);
        } catch (Exception e2) {
            com.twitter.sdk.android.core.v.h().b("Twitter", "Could not call getId on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return null;
        }
    }

    private boolean c() {
        try {
            return ((Boolean) Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info").getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(d(), new Object[0])).booleanValue();
        } catch (Exception e2) {
            com.twitter.sdk.android.core.v.h().b("Twitter", "Could not call isLimitAdTrackingEnabled on com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            return false;
        }
    }

    private Object d() {
        try {
            return Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f3937a);
        } catch (Exception e2) {
            com.twitter.sdk.android.core.v.h().b("Twitter", "Could not call getAdvertisingIdInfo on com.google.android.gms.ads.identifier.AdvertisingIdClient");
            return null;
        }
    }
}

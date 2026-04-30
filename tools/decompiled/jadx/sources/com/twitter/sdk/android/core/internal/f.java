package com.twitter.sdk.android.core.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: compiled from: AdvertisingInfoProvider.java */
/* JADX INFO: loaded from: classes3.dex */
class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.b.b f3934b;

    f(Context context, com.twitter.sdk.android.core.internal.b.b bVar) {
        this.f3933a = context.getApplicationContext();
        this.f3934b = bVar;
    }

    e a() {
        e eVarB = b();
        if (c(eVarB)) {
            com.twitter.sdk.android.core.v.h().a("Twitter", "Using AdvertisingInfo from Preference Store");
            a(eVarB);
            return eVarB;
        }
        e eVarE = e();
        b(eVarE);
        return eVarE;
    }

    private void a(e eVar) {
        new Thread(new g(this, eVar)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CommitPrefEdits"})
    public void b(e eVar) {
        if (c(eVar)) {
            this.f3934b.a(this.f3934b.b().putString("advertising_id", eVar.f3931a).putBoolean("limit_ad_tracking_enabled", eVar.f3932b));
        } else {
            this.f3934b.a(this.f3934b.b().remove("advertising_id").remove("limit_ad_tracking_enabled"));
        }
    }

    private e b() {
        return new e(this.f3934b.a().getString("advertising_id", ""), this.f3934b.a().getBoolean("limit_ad_tracking_enabled", false));
    }

    private m c() {
        return new h(this.f3933a);
    }

    private m d() {
        return new i(this.f3933a);
    }

    private boolean c(e eVar) {
        return (eVar == null || TextUtils.isEmpty(eVar.f3931a)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e e() {
        e eVarA = c().a();
        if (!c(eVarA)) {
            eVarA = d().a();
            if (!c(eVarA)) {
                com.twitter.sdk.android.core.v.h().a("Twitter", "AdvertisingInfo not present");
            } else {
                com.twitter.sdk.android.core.v.h().a("Twitter", "Using AdvertisingInfo from Service Provider");
            }
        } else {
            com.twitter.sdk.android.core.v.h().a("Twitter", "Using AdvertisingInfo from Reflection Provider");
        }
        return eVarA;
    }
}

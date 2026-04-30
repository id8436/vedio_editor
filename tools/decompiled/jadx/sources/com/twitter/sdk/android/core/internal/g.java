package com.twitter.sdk.android.core.internal;

/* JADX INFO: compiled from: AdvertisingInfoProvider.java */
/* JADX INFO: loaded from: classes3.dex */
class g implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f3935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f3936b;

    g(f fVar, e eVar) {
        this.f3936b = fVar;
        this.f3935a = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        e eVarE = this.f3936b.e();
        if (!this.f3935a.equals(eVarE)) {
            com.twitter.sdk.android.core.v.h().a("Twitter", "Asychronously getting Advertising Info and storing it to preferences");
            this.f3936b.b(eVarE);
        }
    }
}

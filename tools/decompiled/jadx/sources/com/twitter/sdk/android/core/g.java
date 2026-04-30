package com.twitter.sdk.android.core;

import com.twitter.sdk.android.core.internal.oauth.OAuth2Service;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: GuestSessionProvider.java */
/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OAuth2Service f3872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final u<e> f3873b;

    public g(OAuth2Service oAuth2Service, u<e> uVar) {
        this.f3872a = oAuth2Service;
        this.f3873b = uVar;
    }

    public synchronized e a() {
        e eVar;
        eVar = (e) this.f3873b.b();
        if (!b(eVar)) {
            b();
            eVar = (e) this.f3873b.b();
        }
        return eVar;
    }

    public synchronized e a(e eVar) {
        e eVar2 = (e) this.f3873b.b();
        if (eVar != null && eVar.equals(eVar2)) {
            b();
        }
        return (e) this.f3873b.b();
    }

    void b() {
        v.h().a("GuestSessionProvider", "Refreshing expired guest session.");
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f3872a.a(new h(this, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e2) {
            this.f3873b.c(0L);
        }
    }

    boolean b(e eVar) {
        return (eVar == null || eVar.a() == null || eVar.a().b()) ? false : true;
    }
}

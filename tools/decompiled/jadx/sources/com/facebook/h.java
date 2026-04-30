package com.facebook;

import java.util.Date;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: AccessTokenManager.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements aq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ AccessToken f2259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ AtomicBoolean f2260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ i f2261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ Set f2262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ Set f2263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ d f2264f;

    h(d dVar, AccessToken accessToken, AtomicBoolean atomicBoolean, i iVar, Set set, Set set2) {
        this.f2264f = dVar;
        this.f2259a = accessToken;
        this.f2260b = atomicBoolean;
        this.f2261c = iVar;
        this.f2262d = set;
        this.f2263e = set2;
    }

    @Override // com.facebook.aq
    public void a(ap apVar) {
        if (d.a().b() != null && d.a().b().i() == this.f2259a.i()) {
            try {
                if (this.f2260b.get() || this.f2261c.f2271a != null || this.f2261c.f2272b != 0) {
                    d.a().a(new AccessToken(this.f2261c.f2271a != null ? this.f2261c.f2271a : this.f2259a.b(), this.f2259a.h(), this.f2259a.i(), this.f2260b.get() ? this.f2262d : this.f2259a.d(), this.f2260b.get() ? this.f2263e : this.f2259a.e(), this.f2259a.f(), this.f2261c.f2272b != 0 ? new Date(((long) this.f2261c.f2272b) * 1000) : this.f2259a.c(), new Date()));
                }
            } finally {
                this.f2264f.f1924e.set(false);
            }
        }
    }
}

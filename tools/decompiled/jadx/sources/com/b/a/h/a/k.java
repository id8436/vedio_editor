package com.b.a.h.a;

/* JADX INFO: compiled from: ViewAnimationFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class k<R> implements f<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f1183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d<R> f1184b;

    k(j jVar) {
        this.f1183a = jVar;
    }

    @Override // com.b.a.h.a.f
    public d<R> a(boolean z, boolean z2) {
        if (z || !z2) {
            return g.b();
        }
        if (this.f1184b == null) {
            this.f1184b = new i(this.f1183a);
        }
        return this.f1184b;
    }
}

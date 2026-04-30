package com.b.a;

import com.b.a.d.c.s;

/* JADX INFO: compiled from: RequestManager.java */
/* JADX INFO: loaded from: classes2.dex */
public final class o<A, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s<A, T> f1254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class<T> f1255c;

    o(l lVar, s<A, T> sVar, Class<T> cls) {
        this.f1253a = lVar;
        this.f1254b = sVar;
        this.f1255c = cls;
    }

    public o<A, T>.p a(A a2) {
        return new p(a2);
    }

    /* JADX INFO: compiled from: RequestManager.java */
    public final class p {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final A f1257b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Class<A> f1258c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f1259d = true;

        p(A a2) {
            this.f1257b = a2;
            this.f1258c = l.b(a2);
        }

        public <Z> g<A, T, Z> a(Class<Z> cls) {
            g<A, T, Z> gVar = (g) o.this.f1253a.f1249f.a(new g(o.this.f1253a.f1244a, o.this.f1253a.f1248e, this.f1258c, o.this.f1254b, o.this.f1255c, cls, o.this.f1253a.f1247d, o.this.f1253a.f1245b, o.this.f1253a.f1249f));
            if (this.f1259d) {
                gVar.b(this.f1257b);
            }
            return gVar;
        }
    }
}

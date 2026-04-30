package com.facebook.imagepipeline.e;

import android.net.Uri;
import com.facebook.imagepipeline.k.by;
import com.facebook.imagepipeline.k.cl;
import com.facebook.imagepipeline.k.cy;
import com.facebook.imagepipeline.k.cz;
import com.facebook.imagepipeline.k.df;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: ProducerSequenceFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2550c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2551d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2552e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2553f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f2554g;
    Map<cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>, cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>> h = new HashMap();
    Map<cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>, cl<Void>> i = new HashMap();
    private final r j;
    private final by k;
    private final boolean l;
    private final boolean m;
    private final cy n;
    private final boolean o;
    private cl<com.facebook.imagepipeline.h.d> p;

    public s(r rVar, by byVar, boolean z, boolean z2, cy cyVar, boolean z3) {
        this.j = rVar;
        this.k = byVar;
        this.l = z;
        this.m = z2;
        this.n = cyVar;
        this.o = z3;
    }

    public cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> a(com.facebook.imagepipeline.l.a aVar) {
        cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVarB = b(aVar);
        if (aVar.o() != null) {
            return f(clVarB);
        }
        return clVarB;
    }

    private cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> b(com.facebook.imagepipeline.l.a aVar) {
        com.facebook.d.d.k.a(aVar);
        Uri uriB = aVar.b();
        com.facebook.d.d.k.a(uriB, "Uri is null.");
        if (com.facebook.d.m.f.a(uriB)) {
            return a();
        }
        if (com.facebook.d.m.f.b(uriB)) {
            if (com.facebook.d.f.a.a(com.facebook.d.f.a.b(uriB.getPath()))) {
                return d();
            }
            return c();
        }
        if (com.facebook.d.m.f.c(uriB)) {
            return e();
        }
        if (com.facebook.d.m.f.f(uriB)) {
            return g();
        }
        if (com.facebook.d.m.f.g(uriB)) {
            return f();
        }
        if (com.facebook.d.m.f.h(uriB)) {
            return h();
        }
        throw new IllegalArgumentException("Unsupported uri scheme! Uri is: " + a(uriB));
    }

    private synchronized cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> a() {
        if (this.f2548a == null) {
            this.f2548a = b(b());
        }
        return this.f2548a;
    }

    private synchronized cl<com.facebook.imagepipeline.h.d> b() {
        if (this.p == null) {
            this.p = r.a(c(this.j.a(this.k)));
            this.p = this.j.a(this.p, this.l, this.o);
        }
        return this.p;
    }

    private synchronized cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> c() {
        if (this.f2549b == null) {
            this.f2549b = a(this.j.f());
        }
        return this.f2549b;
    }

    private synchronized cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> d() {
        if (this.f2550c == null) {
            this.f2550c = e(this.j.h());
        }
        return this.f2550c;
    }

    private synchronized cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> e() {
        if (this.f2551d == null) {
            this.f2551d = a(this.j.c(), new df[]{this.j.d(), this.j.e()});
        }
        return this.f2551d;
    }

    private synchronized cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f() {
        if (this.f2552e == null) {
            this.f2552e = a(this.j.g());
        }
        return this.f2552e;
    }

    private synchronized cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> g() {
        if (this.f2553f == null) {
            this.f2553f = a(this.j.b());
        }
        return this.f2553f;
    }

    private synchronized cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> h() {
        if (this.f2554g == null) {
            cl<com.facebook.imagepipeline.h.d> clVarA = this.j.a();
            if (com.facebook.d.n.d.f1994a && (!this.m || com.facebook.d.n.d.f1997d == null)) {
                clVarA = this.j.n(clVarA);
            }
            r rVar = this.j;
            this.f2554g = b(this.j.a(r.a(clVarA), true, this.o));
        }
        return this.f2554g;
    }

    private cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> a(cl<com.facebook.imagepipeline.h.d> clVar) {
        return a(clVar, new df[]{this.j.e()});
    }

    private cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> a(cl<com.facebook.imagepipeline.h.d> clVar, df<com.facebook.imagepipeline.h.d>[] dfVarArr) {
        return b(b(c(clVar), dfVarArr));
    }

    private cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> b(cl<com.facebook.imagepipeline.h.d> clVar) {
        return e(this.j.e(clVar));
    }

    private cl<com.facebook.imagepipeline.h.d> c(cl<com.facebook.imagepipeline.h.d> clVar) {
        if (com.facebook.d.n.d.f1994a && (!this.m || com.facebook.d.n.d.f1997d == null)) {
            clVar = this.j.n(clVar);
        }
        return this.j.i(this.j.j(d(clVar)));
    }

    private cl<com.facebook.imagepipeline.h.d> d(cl<com.facebook.imagepipeline.h.d> clVar) {
        return this.j.f(this.j.h(this.j.g(clVar)));
    }

    private cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> e(cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        return this.j.b(this.j.a(this.j.c(this.j.d(clVar)), this.n));
    }

    private cl<com.facebook.imagepipeline.h.d> b(cl<com.facebook.imagepipeline.h.d> clVar, df<com.facebook.imagepipeline.h.d>[] dfVarArr) {
        cz czVarM = this.j.m(this.j.a(r.a(clVar), true, this.o));
        r rVar = this.j;
        return r.a(a(dfVarArr), czVarM);
    }

    private cl<com.facebook.imagepipeline.h.d> a(df<com.facebook.imagepipeline.h.d>[] dfVarArr) {
        return this.j.a(this.j.a(dfVarArr), true, this.o);
    }

    private synchronized cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> f(cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        if (!this.h.containsKey(clVar)) {
            this.h.put(clVar, this.j.k(this.j.l(clVar)));
        }
        return this.h.get(clVar);
    }

    private static String a(Uri uri) {
        String strValueOf = String.valueOf(uri);
        return strValueOf.length() > 30 ? strValueOf.substring(0, 30) + "..." : strValueOf;
    }
}

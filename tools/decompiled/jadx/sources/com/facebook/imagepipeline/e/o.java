package com.facebook.imagepipeline.e;

import android.content.Context;
import android.os.Build;
import android.support.v4.util.Pools;
import com.facebook.c.b.ab;
import com.facebook.imagepipeline.c.ad;
import com.facebook.imagepipeline.c.x;
import com.facebook.imagepipeline.c.z;
import com.facebook.imagepipeline.k.bl;
import com.facebook.imagepipeline.k.bm;
import com.facebook.imagepipeline.k.ca;
import com.facebook.imagepipeline.k.cy;
import com.facebook.imagepipeline.memory.ah;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: compiled from: ImagePipelineFactory.java */
/* JADX INFO: loaded from: classes2.dex */
@NotThreadSafe
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static o f2531a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cy f2532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f2533c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.facebook.imagepipeline.c.m<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> f2534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> f2535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.facebook.imagepipeline.c.m<com.facebook.c.a.f, ah> f2536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ad<com.facebook.c.a.f, ah> f2537g;
    private com.facebook.imagepipeline.c.g h;
    private ab i;
    private com.facebook.imagepipeline.g.c j;
    private g k;
    private r l;
    private s m;
    private com.facebook.imagepipeline.c.g n;
    private ab o;
    private bl p;
    private com.facebook.imagepipeline.b.f q;
    private com.facebook.imagepipeline.j.e r;
    private com.facebook.imagepipeline.a.a.b s;

    public static o a() {
        return (o) com.facebook.d.d.k.a(f2531a, "ImagePipelineFactory was not initialized!");
    }

    public static void a(Context context) {
        a(h.a(context).a());
    }

    public static void a(h hVar) {
        f2531a = new o(hVar);
    }

    public o(h hVar) {
        this.f2533c = (h) com.facebook.d.d.k.a(hVar);
        this.f2532b = new cy(hVar.i().e());
    }

    public com.facebook.imagepipeline.a.a.b b() {
        if (this.s == null) {
            this.s = com.facebook.imagepipeline.a.a.c.a(i(), this.f2533c.i());
        }
        return this.s;
    }

    public com.facebook.imagepipeline.c.m<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> c() {
        if (this.f2534d == null) {
            this.f2534d = com.facebook.imagepipeline.c.a.a(this.f2533c.b(), this.f2533c.n(), i(), this.f2533c.v().a());
        }
        return this.f2534d;
    }

    public ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> d() {
        if (this.f2535e == null) {
            this.f2535e = com.facebook.imagepipeline.c.c.a(c(), this.f2533c.j());
        }
        return this.f2535e;
    }

    public com.facebook.imagepipeline.c.m<com.facebook.c.a.f, ah> e() {
        if (this.f2536f == null) {
            this.f2536f = x.a(this.f2533c.h(), this.f2533c.n(), i());
        }
        return this.f2536f;
    }

    public ad<com.facebook.c.a.f, ah> f() {
        if (this.f2537g == null) {
            this.f2537g = z.a(e(), this.f2533c.j());
        }
        return this.f2537g;
    }

    private com.facebook.imagepipeline.g.c m() {
        com.facebook.imagepipeline.a.a.d dVarA;
        if (this.j == null) {
            if (this.f2533c.k() != null) {
                this.j = this.f2533c.k();
            } else {
                if (b() != null) {
                    dVarA = b().a();
                } else {
                    dVarA = null;
                }
                if (this.f2533c.u() == null) {
                    this.j = new com.facebook.imagepipeline.g.a(dVarA, j(), this.f2533c.a());
                } else {
                    this.j = new com.facebook.imagepipeline.g.a(dVarA, j(), this.f2533c.a(), this.f2533c.u().a());
                    com.facebook.g.e.a().a(this.f2533c.u().b());
                }
            }
        }
        return this.j;
    }

    private com.facebook.imagepipeline.c.g n() {
        if (this.h == null) {
            this.h = new com.facebook.imagepipeline.c.g(g(), this.f2533c.p().e(), this.f2533c.p().f(), this.f2533c.i().a(), this.f2533c.i().b(), this.f2533c.j());
        }
        return this.h;
    }

    public ab g() {
        if (this.i == null) {
            this.i = this.f2533c.f().a(this.f2533c.m());
        }
        return this.i;
    }

    public g h() {
        if (this.k == null) {
            this.k = new g(p(), this.f2533c.r(), this.f2533c.l(), d(), f(), n(), q(), this.f2533c.c(), this.f2532b, com.facebook.d.d.n.a(false));
        }
        return this.k;
    }

    public static com.facebook.imagepipeline.b.f a(com.facebook.imagepipeline.memory.ad adVar, com.facebook.imagepipeline.j.e eVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new com.facebook.imagepipeline.b.a(adVar.a());
        }
        if (Build.VERSION.SDK_INT >= 11) {
            return new com.facebook.imagepipeline.b.e(new com.facebook.imagepipeline.b.b(adVar.e()), eVar);
        }
        return new com.facebook.imagepipeline.b.c();
    }

    public com.facebook.imagepipeline.b.f i() {
        if (this.q == null) {
            this.q = a(this.f2533c.p(), j());
        }
        return this.q;
    }

    public static com.facebook.imagepipeline.j.e a(com.facebook.imagepipeline.memory.ad adVar, boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            int iC = adVar.c();
            return new com.facebook.imagepipeline.j.a(adVar.a(), iC, new Pools.SynchronizedPool(iC));
        }
        if (z && Build.VERSION.SDK_INT < 19) {
            return new com.facebook.imagepipeline.j.c();
        }
        return new com.facebook.imagepipeline.j.d(adVar.b());
    }

    public com.facebook.imagepipeline.j.e j() {
        if (this.r == null) {
            this.r = a(this.f2533c.p(), this.f2533c.v().e());
        }
        return this.r;
    }

    private r o() {
        if (this.l == null) {
            this.l = new r(this.f2533c.d(), this.f2533c.p().g(), m(), this.f2533c.q(), this.f2533c.g(), this.f2533c.s(), this.f2533c.v().f(), this.f2533c.i(), this.f2533c.p().e(), d(), f(), n(), q(), l(), this.f2533c.c(), i(), this.f2533c.v().b());
        }
        return this.l;
    }

    private s p() {
        if (this.m == null) {
            this.m = new s(o(), this.f2533c.o(), this.f2533c.s(), this.f2533c.v().e(), this.f2532b, this.f2533c.v().d());
        }
        return this.m;
    }

    public ab k() {
        if (this.o == null) {
            this.o = this.f2533c.f().a(this.f2533c.t());
        }
        return this.o;
    }

    private com.facebook.imagepipeline.c.g q() {
        if (this.n == null) {
            this.n = new com.facebook.imagepipeline.c.g(k(), this.f2533c.p().e(), this.f2533c.p().f(), this.f2533c.i().a(), this.f2533c.i().b(), this.f2533c.j());
        }
        return this.n;
    }

    public bl l() {
        if (this.p == null) {
            this.p = this.f2533c.v().c() ? new bm(this.f2533c.d(), this.f2533c.i().a(), this.f2533c.i().b()) : new ca();
        }
        return this.p;
    }
}

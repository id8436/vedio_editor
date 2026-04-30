package com.facebook.imagepipeline.e;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import com.facebook.imagepipeline.c.ab;
import com.facebook.imagepipeline.c.ae;
import com.facebook.imagepipeline.c.ah;
import com.facebook.imagepipeline.c.t;
import com.facebook.imagepipeline.c.u;
import com.facebook.imagepipeline.c.v;
import com.facebook.imagepipeline.k.ai;
import com.facebook.imagepipeline.k.by;
import com.facebook.imagepipeline.memory.aa;
import com.facebook.imagepipeline.memory.ad;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ImagePipelineConfig.java */
/* JADX INFO: loaded from: classes.dex */
public class h {
    private static k x = new k(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final com.facebook.imagepipeline.a.a.d f2500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bitmap.Config f2501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.d.d.m<ae> f2502c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.c.k f2503d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f2504e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f2505f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final f f2506g;
    private final com.facebook.d.d.m<ae> h;
    private final e i;
    private final ab j;

    @Nullable
    private final com.facebook.imagepipeline.g.c k;
    private final com.facebook.d.d.m<Boolean> l;
    private final com.facebook.c.b.l m;
    private final com.facebook.d.g.b n;
    private final by o;

    @Nullable
    private final com.facebook.imagepipeline.b.f p;
    private final ad q;
    private final com.facebook.imagepipeline.g.e r;
    private final Set<com.facebook.imagepipeline.i.b> s;
    private final boolean t;
    private final com.facebook.c.b.l u;

    @Nullable
    private final com.facebook.imagepipeline.g.d v;
    private final l w;

    /* synthetic */ h(j jVar, i iVar) {
        this(jVar);
    }

    private h(j jVar) {
        com.facebook.imagepipeline.c.k kVarA;
        ab abVarI;
        com.facebook.d.g.b bVarA;
        ad adVar;
        com.facebook.d.n.b bVarA2;
        this.w = jVar.w.a();
        this.f2500a = jVar.f2508a;
        this.f2502c = jVar.f2510c == null ? new t((ActivityManager) jVar.f2512e.getSystemService("activity")) : jVar.f2510c;
        this.f2501b = jVar.f2509b == null ? Bitmap.Config.ARGB_8888 : jVar.f2509b;
        if (jVar.f2511d == null) {
            kVarA = u.a();
        } else {
            kVarA = jVar.f2511d;
        }
        this.f2503d = kVarA;
        this.f2504e = (Context) com.facebook.d.d.k.a(jVar.f2512e);
        this.f2506g = jVar.u == null ? new b(new d()) : jVar.u;
        this.f2505f = jVar.f2513f;
        this.h = jVar.f2514g == null ? new v() : jVar.f2514g;
        if (jVar.i == null) {
            abVarI = ah.i();
        } else {
            abVarI = jVar.i;
        }
        this.j = abVarI;
        this.k = jVar.j;
        this.l = jVar.k == null ? new i(this) : jVar.k;
        this.m = jVar.l == null ? b(jVar.f2512e) : jVar.l;
        if (jVar.m == null) {
            bVarA = com.facebook.d.g.c.a();
        } else {
            bVarA = jVar.m;
        }
        this.n = bVarA;
        this.o = jVar.n == null ? new ai() : jVar.n;
        this.p = jVar.o;
        if (jVar.p == null) {
            adVar = new ad(aa.i().a());
        } else {
            adVar = jVar.p;
        }
        this.q = adVar;
        this.r = jVar.q == null ? new com.facebook.imagepipeline.g.g() : jVar.q;
        this.s = jVar.r == null ? new HashSet<>() : jVar.r;
        this.t = jVar.s;
        this.u = jVar.t == null ? this.m : jVar.t;
        this.v = jVar.v;
        this.i = jVar.h == null ? new a(this.q.c()) : jVar.h;
        com.facebook.d.n.b bVarH = this.w.h();
        if (bVarH != null) {
            a(bVarH, this.w, new com.facebook.imagepipeline.b.d(p()));
        } else if (this.w.e() && com.facebook.d.n.d.f1994a && (bVarA2 = com.facebook.d.n.d.a()) != null) {
            a(bVarA2, this.w, new com.facebook.imagepipeline.b.d(p()));
        }
    }

    private static void a(com.facebook.d.n.b bVar, l lVar, com.facebook.d.n.a aVar) {
        com.facebook.d.n.d.f1997d = bVar;
        com.facebook.d.n.c cVarG = lVar.g();
        if (cVarG != null) {
            bVar.a(cVarG);
        }
        if (aVar != null) {
            bVar.a(aVar);
        }
    }

    private static com.facebook.c.b.l b(Context context) {
        return com.facebook.c.b.l.a(context).a();
    }

    public Bitmap.Config a() {
        return this.f2501b;
    }

    public com.facebook.d.d.m<ae> b() {
        return this.f2502c;
    }

    public com.facebook.imagepipeline.c.k c() {
        return this.f2503d;
    }

    public Context d() {
        return this.f2504e;
    }

    public static k e() {
        return x;
    }

    public f f() {
        return this.f2506g;
    }

    public boolean g() {
        return this.f2505f;
    }

    public com.facebook.d.d.m<ae> h() {
        return this.h;
    }

    public e i() {
        return this.i;
    }

    public ab j() {
        return this.j;
    }

    @Nullable
    public com.facebook.imagepipeline.g.c k() {
        return this.k;
    }

    public com.facebook.d.d.m<Boolean> l() {
        return this.l;
    }

    public com.facebook.c.b.l m() {
        return this.m;
    }

    public com.facebook.d.g.b n() {
        return this.n;
    }

    public by o() {
        return this.o;
    }

    public ad p() {
        return this.q;
    }

    public com.facebook.imagepipeline.g.e q() {
        return this.r;
    }

    public Set<com.facebook.imagepipeline.i.b> r() {
        return Collections.unmodifiableSet(this.s);
    }

    public boolean s() {
        return this.t;
    }

    public com.facebook.c.b.l t() {
        return this.u;
    }

    @Nullable
    public com.facebook.imagepipeline.g.d u() {
        return this.v;
    }

    public l v() {
        return this.w;
    }

    public static j a(Context context) {
        return new j(context, null);
    }
}

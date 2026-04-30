package com.facebook.imagepipeline.e;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import com.facebook.imagepipeline.c.ad;
import com.facebook.imagepipeline.c.ai;
import com.facebook.imagepipeline.c.w;
import com.facebook.imagepipeline.k.aa;
import com.facebook.imagepipeline.k.ae;
import com.facebook.imagepipeline.k.af;
import com.facebook.imagepipeline.k.as;
import com.facebook.imagepipeline.k.at;
import com.facebook.imagepipeline.k.au;
import com.facebook.imagepipeline.k.av;
import com.facebook.imagepipeline.k.bb;
import com.facebook.imagepipeline.k.bc;
import com.facebook.imagepipeline.k.bd;
import com.facebook.imagepipeline.k.bg;
import com.facebook.imagepipeline.k.bl;
import com.facebook.imagepipeline.k.bw;
import com.facebook.imagepipeline.k.by;
import com.facebook.imagepipeline.k.cb;
import com.facebook.imagepipeline.k.cd;
import com.facebook.imagepipeline.k.cl;
import com.facebook.imagepipeline.k.cp;
import com.facebook.imagepipeline.k.cv;
import com.facebook.imagepipeline.k.cy;
import com.facebook.imagepipeline.k.cz;
import com.facebook.imagepipeline.k.dd;
import com.facebook.imagepipeline.k.df;
import com.facebook.imagepipeline.k.dh;
import com.facebook.imagepipeline.k.x;
import com.facebook.imagepipeline.memory.ah;
import com.facebook.imagepipeline.memory.aj;

/* JADX INFO: compiled from: ProducerFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ContentResolver f2541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Resources f2542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AssetManager f2543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.j f2544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.facebook.imagepipeline.g.c f2545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.facebook.imagepipeline.g.e f2546f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f2547g;
    private final boolean h;
    private final boolean i;
    private final e j;
    private final aj k;
    private final com.facebook.imagepipeline.c.g l;
    private final com.facebook.imagepipeline.c.g m;
    private final w n;
    private final ad<com.facebook.c.a.f, ah> o;
    private final ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> p;
    private final com.facebook.imagepipeline.c.k q;
    private bl r;
    private final com.facebook.imagepipeline.b.f s;

    public r(Context context, com.facebook.imagepipeline.memory.j jVar, com.facebook.imagepipeline.g.c cVar, com.facebook.imagepipeline.g.e eVar, boolean z, boolean z2, boolean z3, e eVar2, aj ajVar, ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> adVar, ad<com.facebook.c.a.f, ah> adVar2, com.facebook.imagepipeline.c.g gVar, com.facebook.imagepipeline.c.g gVar2, bl blVar, com.facebook.imagepipeline.c.k kVar, com.facebook.imagepipeline.b.f fVar, int i) {
        this.f2541a = context.getApplicationContext().getContentResolver();
        this.f2542b = context.getApplicationContext().getResources();
        this.f2543c = context.getApplicationContext().getAssets();
        this.f2544d = jVar;
        this.f2545e = cVar;
        this.f2546f = eVar;
        this.f2547g = z;
        this.h = z2;
        this.i = z3;
        this.j = eVar2;
        this.k = ajVar;
        this.p = adVar;
        this.o = adVar2;
        this.l = gVar;
        this.m = gVar2;
        this.r = blVar;
        this.q = kVar;
        this.s = fVar;
        if (i > 0) {
            this.n = new com.facebook.imagepipeline.c.aj(gVar, gVar2, kVar, i);
        } else {
            this.n = new ai(gVar, gVar2, kVar);
        }
    }

    public static com.facebook.imagepipeline.k.a a(cl<com.facebook.imagepipeline.h.d> clVar) {
        return new com.facebook.imagepipeline.k.a(clVar);
    }

    public com.facebook.imagepipeline.k.h b(cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        return new com.facebook.imagepipeline.k.h(this.p, this.q, clVar);
    }

    public com.facebook.imagepipeline.k.i c(cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        return new com.facebook.imagepipeline.k.i(this.q, clVar);
    }

    public com.facebook.imagepipeline.k.j d(cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        return new com.facebook.imagepipeline.k.j(this.p, this.q, clVar);
    }

    public static com.facebook.imagepipeline.k.l a(cl<com.facebook.imagepipeline.h.d> clVar, cl<com.facebook.imagepipeline.h.d> clVar2) {
        return new com.facebook.imagepipeline.k.l(clVar, clVar2);
    }

    public com.facebook.imagepipeline.k.p a() {
        return new com.facebook.imagepipeline.k.p(this.k);
    }

    public com.facebook.imagepipeline.k.q e(cl<com.facebook.imagepipeline.h.d> clVar) {
        return new com.facebook.imagepipeline.k.q(this.f2544d, this.j.c(), this.f2545e, this.f2546f, this.f2547g, this.h, this.i, clVar);
    }

    public x f(cl<com.facebook.imagepipeline.h.d> clVar) {
        return new x(clVar, this.n);
    }

    public aa g(cl<com.facebook.imagepipeline.h.d> clVar) {
        return new aa(clVar, this.n);
    }

    public bg h(cl<com.facebook.imagepipeline.h.d> clVar) {
        return new bg(this.l, this.m, this.q, this.r, clVar);
    }

    public ae i(cl<com.facebook.imagepipeline.h.d> clVar) {
        return new ae(this.q, clVar);
    }

    public af j(cl<com.facebook.imagepipeline.h.d> clVar) {
        return new af(this.o, this.q, clVar);
    }

    public as b() {
        return new as(this.j.a(), this.k, this.f2543c);
    }

    public at c() {
        return new at(this.j.a(), this.k, this.f2541a);
    }

    public au d() {
        return new au(this.j.a(), this.k, this.f2541a);
    }

    public av e() {
        return new av(this.j.a(), this.k, this.f2541a);
    }

    public dd a(df<com.facebook.imagepipeline.h.d>[] dfVarArr) {
        return new dd(dfVarArr);
    }

    public bb f() {
        return new bb(this.j.a(), this.k);
    }

    public bc g() {
        return new bc(this.j.a(), this.k, this.f2542b);
    }

    public bd h() {
        return new bd(this.j.a());
    }

    public bw a(by byVar) {
        return new bw(this.k, this.f2544d, byVar);
    }

    public cb k(cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        return new cb(this.p, this.q, clVar);
    }

    public cd l(cl<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> clVar) {
        return new cd(clVar, this.s, this.j.d());
    }

    public cp a(cl<com.facebook.imagepipeline.h.d> clVar, boolean z, boolean z2) {
        return new cp(this.j.d(), this.k, z && !this.f2547g, clVar, z2);
    }

    public <T> cv<T> a(cl<T> clVar, cy cyVar) {
        return new cv<>(clVar, cyVar);
    }

    public <T> cz<T> m(cl<T> clVar) {
        return new cz<>(5, this.j.e(), clVar);
    }

    public dh n(cl<com.facebook.imagepipeline.h.d> clVar) {
        return new dh(this.j.d(), this.k, clVar);
    }
}

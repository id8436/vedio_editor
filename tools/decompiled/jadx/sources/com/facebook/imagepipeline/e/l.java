package com.facebook.imagepipeline.e;

/* JADX INFO: compiled from: ImagePipelineExperiments.java */
/* JADX INFO: loaded from: classes2.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f2516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f2517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f2518c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.d.d.m<Boolean> f2519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.facebook.d.n.c f2520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f2521f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.d.n.b f2522g;
    private final boolean h;
    private final boolean i;

    /* synthetic */ l(n nVar, j jVar, m mVar) {
        this(nVar, jVar);
    }

    private l(n nVar, j jVar) {
        this.f2516a = nVar.f2525b;
        this.f2517b = nVar.f2526c;
        this.f2518c = nVar.f2527d;
        if (nVar.f2528e == null) {
            this.f2519d = new m(this);
        } else {
            this.f2519d = nVar.f2528e;
        }
        this.f2520e = nVar.f2529f;
        this.f2521f = nVar.f2530g;
        this.f2522g = nVar.h;
        this.h = nVar.i;
        this.i = nVar.j;
    }

    public boolean a() {
        return this.f2518c;
    }

    public int b() {
        return this.f2516a;
    }

    public boolean c() {
        return this.f2519d.b().booleanValue();
    }

    public boolean d() {
        return this.i;
    }

    public boolean e() {
        return this.f2517b;
    }

    public boolean f() {
        return this.f2521f;
    }

    public com.facebook.d.n.c g() {
        return this.f2520e;
    }

    public com.facebook.d.n.b h() {
        return this.f2522g;
    }
}

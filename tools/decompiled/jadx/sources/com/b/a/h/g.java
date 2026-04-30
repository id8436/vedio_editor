package com.b.a.h;

/* JADX INFO: compiled from: ThumbnailRequestCoordinator.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements c, d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f1208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f1209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f1210c;

    public g() {
        this(null);
    }

    public g(d dVar) {
        this.f1210c = dVar;
    }

    public void a(c cVar, c cVar2) {
        this.f1208a = cVar;
        this.f1209b = cVar2;
    }

    @Override // com.b.a.h.d
    public boolean a(c cVar) {
        return j() && (cVar.equals(this.f1208a) || !this.f1208a.h());
    }

    private boolean j() {
        return this.f1210c == null || this.f1210c.a(this);
    }

    @Override // com.b.a.h.d
    public boolean b(c cVar) {
        return k() && cVar.equals(this.f1208a) && !c();
    }

    private boolean k() {
        return this.f1210c == null || this.f1210c.b(this);
    }

    @Override // com.b.a.h.d
    public boolean c() {
        return l() || h();
    }

    @Override // com.b.a.h.d
    public void c(c cVar) {
        if (!cVar.equals(this.f1209b)) {
            if (this.f1210c != null) {
                this.f1210c.c(this);
            }
            if (!this.f1209b.g()) {
                this.f1209b.d();
            }
        }
    }

    private boolean l() {
        return this.f1210c != null && this.f1210c.c();
    }

    @Override // com.b.a.h.c
    public void b() {
        if (!this.f1209b.f()) {
            this.f1209b.b();
        }
        if (!this.f1208a.f()) {
            this.f1208a.b();
        }
    }

    @Override // com.b.a.h.c
    public void e() {
        this.f1208a.e();
        this.f1209b.e();
    }

    @Override // com.b.a.h.c
    public void d() {
        this.f1209b.d();
        this.f1208a.d();
    }

    @Override // com.b.a.h.c
    public boolean f() {
        return this.f1208a.f();
    }

    @Override // com.b.a.h.c
    public boolean g() {
        return this.f1208a.g() || this.f1209b.g();
    }

    @Override // com.b.a.h.c
    public boolean h() {
        return this.f1208a.h() || this.f1209b.h();
    }

    @Override // com.b.a.h.c
    public boolean i() {
        return this.f1208a.i();
    }

    @Override // com.b.a.h.c
    public void a() {
        this.f1208a.a();
        this.f1209b.a();
    }
}

package com.a.a.a;

/* JADX INFO: compiled from: ConsumerManager.java */
/* JADX INFO: loaded from: classes.dex */
class m implements Runnable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final com.a.a.a.g.d f602g = new n();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final com.a.a.a.g.h f603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.a.a.a.g.e f604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final com.a.a.a.g.c f605c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final com.a.a.a.k.b f606d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f608f;
    final com.a.a.a.g.f h = new o(this);

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f603a.a(f602g);
    }

    public m(com.a.a.a.g.e eVar, com.a.a.a.g.h hVar, com.a.a.a.g.c cVar, com.a.a.a.k.b bVar) {
        this.f603a = hVar;
        this.f605c = cVar;
        this.f604b = eVar;
        this.f606d = bVar;
        this.f608f = bVar.a();
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f603a.a(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.a.a.a.g.a.e eVar) {
        switch (eVar.c()) {
            case 1:
                this.f603a.a();
                break;
            case 2:
                com.a.a.a.f.b.a("Consumer has been poked.", new Object[0]);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.a.a.a.g.a.i iVar) {
        com.a.a.a.f.b.a("running job %s", iVar.c().getClass().getSimpleName());
        s sVarC = iVar.c();
        int iA = sVarC.a(sVarC.d(), this.f606d);
        com.a.a.a.g.a.j jVar = (com.a.a.a.g.a.j) this.f605c.a(com.a.a.a.g.a.j.class);
        jVar.a(sVarC);
        jVar.a(iA);
        jVar.a(this);
        this.f604b.a(jVar);
    }
}

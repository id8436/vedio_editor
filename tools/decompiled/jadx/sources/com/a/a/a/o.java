package com.a.a.a;

/* JADX INFO: compiled from: ConsumerManager.java */
/* JADX INFO: loaded from: classes.dex */
class o extends com.a.a.a.g.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f609a;

    o(m mVar) {
        this.f609a = mVar;
    }

    @Override // com.a.a.a.g.f
    public void a(com.a.a.a.g.b bVar) {
        switch (bVar.f497a) {
            case RUN_JOB:
                this.f609a.a((com.a.a.a.g.a.i) bVar);
                this.f609a.f608f = this.f609a.f606d.a();
                this.f609a.a();
                break;
            case COMMAND:
                this.f609a.a((com.a.a.a.g.a.e) bVar);
                break;
        }
    }

    @Override // com.a.a.a.g.f
    public void b() {
        com.a.a.a.f.b.a("consumer manager on idle", new Object[0]);
        com.a.a.a.g.a.g gVar = (com.a.a.a.g.a.g) this.f609a.f605c.a(com.a.a.a.g.a.g.class);
        gVar.a(this.f609a);
        gVar.a(this.f609a.f608f);
        this.f609a.f604b.a(gVar);
    }
}

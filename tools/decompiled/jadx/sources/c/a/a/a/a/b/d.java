package c.a.a.a.a.b;

/* JADX INFO: compiled from: AdvertisingInfoProvider.java */
/* JADX INFO: loaded from: classes.dex */
class d extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f153a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f154b;

    d(c cVar, b bVar) {
        this.f154b = cVar;
        this.f153a = bVar;
    }

    @Override // c.a.a.a.a.b.l
    public void onRun() {
        b bVarE = this.f154b.e();
        if (!this.f153a.equals(bVarE)) {
            c.a.a.a.f.h().a("Fabric", "Asychronously getting Advertising Info and storing it to preferences");
            this.f154b.b(bVarE);
        }
    }
}

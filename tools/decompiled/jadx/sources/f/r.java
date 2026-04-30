package f;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
class r<T> implements j<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ j f4860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ q f4861b;

    r(q qVar, j jVar) {
        this.f4861b = qVar;
        this.f4860a = jVar;
    }

    @Override // f.j
    public void onResponse(g<T> gVar, av<T> avVar) {
        this.f4861b.f4858a.execute(new s(this, avVar));
    }

    @Override // f.j
    public void onFailure(g<T> gVar, Throwable th) {
        this.f4861b.f4858a.execute(new t(this, th));
    }
}

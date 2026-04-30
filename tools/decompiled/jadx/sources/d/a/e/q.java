package d.a.e;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
class q extends d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f4426a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ b f4427c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ j f4428d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    q(j jVar, String str, Object[] objArr, int i, b bVar) {
        super(str, objArr);
        this.f4428d = jVar;
        this.f4426a = i;
        this.f4427c = bVar;
    }

    @Override // d.a.b
    public void b() {
        this.f4428d.i.a(this.f4426a, this.f4427c);
        synchronized (this.f4428d) {
            this.f4428d.r.remove(Integer.valueOf(this.f4426a));
        }
    }
}

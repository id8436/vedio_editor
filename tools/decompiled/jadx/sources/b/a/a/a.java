package b.a.a;

/* JADX INFO: compiled from: AsyncPoster.java */
/* JADX INFO: loaded from: classes.dex */
class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f56a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f57b;

    a(c cVar) {
        this.f57b = cVar;
    }

    public void a(p pVar, Object obj) {
        this.f56a.a(k.a(pVar, obj));
        this.f57b.b().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        k kVarA = this.f56a.a();
        if (kVarA == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f57b.a(kVarA);
    }
}

package f;

/* JADX INFO: compiled from: ExecutorCallAdapterFactory.java */
/* JADX INFO: loaded from: classes3.dex */
class t implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Throwable f4864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ r f4865b;

    t(r rVar, Throwable th) {
        this.f4865b = rVar;
        this.f4864a = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4865b.f4860a.onFailure(this.f4865b.f4861b, this.f4864a);
    }
}

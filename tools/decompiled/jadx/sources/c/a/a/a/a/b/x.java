package c.a.a.a.a.b;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes.dex */
class x extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ w f182b;

    x(w wVar, Runnable runnable) {
        this.f182b = wVar;
        this.f181a = runnable;
    }

    @Override // c.a.a.a.a.b.l
    public void onRun() {
        this.f181a.run();
    }
}

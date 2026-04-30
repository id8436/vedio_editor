package c.a.a.a.a.c;

/* JADX INFO: compiled from: AsyncTask.java */
/* JADX INFO: loaded from: classes.dex */
class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f216b;

    i(h hVar, Runnable runnable) {
        this.f216b = hVar;
        this.f215a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f215a.run();
        } finally {
            this.f216b.a();
        }
    }
}

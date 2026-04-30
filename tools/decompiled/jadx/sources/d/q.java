package d;

/* JADX INFO: compiled from: ConnectionPool.java */
/* JADX INFO: loaded from: classes3.dex */
class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ p f4670a;

    q(p pVar) {
        this.f4670a = pVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            long jA = this.f4670a.a(System.nanoTime());
            if (jA == -1) {
                return;
            }
            if (jA > 0) {
                long j = jA / 1000000;
                long j2 = jA - (j * 1000000);
                synchronized (this.f4670a) {
                    try {
                        this.f4670a.wait(j, (int) j2);
                    } catch (InterruptedException e2) {
                    }
                }
            }
        }
    }
}

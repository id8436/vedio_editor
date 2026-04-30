package b.a.a;

/* JADX INFO: compiled from: PendingPostQueue.java */
/* JADX INFO: loaded from: classes.dex */
final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private k f93a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f94b;

    l() {
    }

    synchronized void a(k kVar) {
        if (kVar == null) {
            throw new NullPointerException("null cannot be enqueued");
        }
        if (this.f94b != null) {
            this.f94b.f92c = kVar;
            this.f94b = kVar;
        } else if (this.f93a == null) {
            this.f94b = kVar;
            this.f93a = kVar;
        } else {
            throw new IllegalStateException("Head present, but no tail");
        }
        notifyAll();
    }

    synchronized k a() {
        k kVar;
        kVar = this.f93a;
        if (this.f93a != null) {
            this.f93a = this.f93a.f92c;
            if (this.f93a == null) {
                this.f94b = null;
            }
        }
        return kVar;
    }

    synchronized k a(int i) throws InterruptedException {
        if (this.f93a == null) {
            wait(i);
        }
        return a();
    }
}

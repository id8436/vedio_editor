package b.a.a;

/* JADX INFO: compiled from: Subscription.java */
/* JADX INFO: loaded from: classes.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final n f106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    volatile boolean f108d = true;

    p(Object obj, n nVar, int i) {
        this.f105a = obj;
        this.f106b = nVar;
        this.f107c = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f105a == pVar.f105a && this.f106b.equals(pVar.f106b);
    }

    public int hashCode() {
        return this.f105a.hashCode() + this.f106b.f102d.hashCode();
    }
}

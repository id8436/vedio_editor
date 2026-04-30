package c.a.a.a;

import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: Fabric.java */
/* JADX INFO: loaded from: classes.dex */
class h implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final CountDownLatch f377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ f f379c;

    h(f fVar, int i) {
        this.f379c = fVar;
        this.f378b = i;
        this.f377a = new CountDownLatch(this.f378b);
    }

    @Override // c.a.a.a.l
    public void a(Object obj) {
        this.f377a.countDown();
        if (this.f377a.getCount() == 0) {
            this.f379c.n.set(true);
            this.f379c.i.a(this.f379c);
        }
    }

    @Override // c.a.a.a.l
    public void a(Exception exc) {
        this.f379c.i.a(exc);
    }
}

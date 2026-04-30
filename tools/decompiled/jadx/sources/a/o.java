package a;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: Task.java */
/* JADX INFO: loaded from: classes.dex */
final class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f37a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ t f38b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ j f39c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ l f40d;

    o(g gVar, t tVar, j jVar, l lVar) {
        this.f37a = gVar;
        this.f38b = tVar;
        this.f39c = jVar;
        this.f40d = lVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f37a != null && this.f37a.a()) {
            this.f38b.c();
            return;
        }
        try {
            this.f38b.b(this.f39c.a(this.f40d));
        } catch (CancellationException e2) {
            this.f38b.c();
        } catch (Exception e3) {
            this.f38b.b(e3);
        }
    }
}

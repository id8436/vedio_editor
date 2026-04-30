package a;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: Task.java */
/* JADX INFO: loaded from: classes.dex */
final class r implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f46a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ t f47b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ Callable f48c;

    r(g gVar, t tVar, Callable callable) {
        this.f46a = gVar;
        this.f47b = tVar;
        this.f48c = callable;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f46a != null && this.f46a.a()) {
            this.f47b.c();
            return;
        }
        try {
            this.f47b.b(this.f48c.call());
        } catch (CancellationException e2) {
            this.f47b.c();
        } catch (Exception e3) {
            this.f47b.b(e3);
        }
    }
}

package a;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: Task.java */
/* JADX INFO: loaded from: classes.dex */
final class p implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f41a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ t f42b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ j f43c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ l f44d;

    p(g gVar, t tVar, j jVar, l lVar) {
        this.f41a = gVar;
        this.f42b = tVar;
        this.f43c = jVar;
        this.f44d = lVar;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0026 -> B:18:0x0011). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0036 -> B:18:0x0011). Please report as a decompilation issue!!! */
    @Override // java.lang.Runnable
    public void run() {
        if (this.f41a != null && this.f41a.a()) {
            this.f42b.c();
            return;
        }
        try {
            l lVar = (l) this.f43c.a(this.f44d);
            if (lVar == null) {
                this.f42b.b((Object) null);
            } else {
                lVar.a((j) new q(this));
            }
        } catch (CancellationException e2) {
            this.f42b.c();
        } catch (Exception e3) {
            this.f42b.b(e3);
        }
    }
}

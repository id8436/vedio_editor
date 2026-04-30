package b.a.a;

import android.util.Log;

/* JADX INFO: compiled from: BackgroundPoster.java */
/* JADX INFO: loaded from: classes.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f58a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f59b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f60c;

    b(c cVar) {
        this.f59b = cVar;
    }

    public void a(p pVar, Object obj) {
        k kVarA = k.a(pVar, obj);
        synchronized (this) {
            this.f58a.a(kVarA);
            if (!this.f60c) {
                this.f60c = true;
                this.f59b.b().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        k kVarA;
        while (true) {
            try {
                kVarA = this.f58a.a(1000);
            } catch (InterruptedException e2) {
                Log.w("Event", Thread.currentThread().getName() + " was interruppted", e2);
                return;
            } finally {
                this.f60c = false;
            }
            if (kVarA == null) {
                synchronized (this) {
                    kVarA = this.f58a.a();
                    if (kVarA == null) {
                        this.f60c = false;
                        return;
                    }
                    Log.w("Event", Thread.currentThread().getName() + " was interruppted", e2);
                    return;
                }
            }
            this.f59b.a(kVarA);
        }
    }
}

package c.a.a.a.a.d;

import android.content.Context;

/* JADX INFO: compiled from: TimeBasedFileRollOverRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public class o implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k f248b;

    public o(Context context, k kVar) {
        this.f247a = context;
        this.f248b = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            c.a.a.a.a.b.m.a(this.f247a, "Performing time based file roll over.");
            if (!this.f248b.rollFileOver()) {
                this.f248b.cancelTimeBasedFileRollOver();
            }
        } catch (Exception e2) {
            c.a.a.a.a.b.m.a(this.f247a, "Failed to roll over file", e2);
        }
    }
}

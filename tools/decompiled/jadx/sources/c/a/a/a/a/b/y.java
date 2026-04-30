package c.a.a.a.a.b;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: ExecutorUtils.java */
/* JADX INFO: loaded from: classes.dex */
final class y extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ExecutorService f184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ long f185c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ TimeUnit f186d;

    y(String str, ExecutorService executorService, long j, TimeUnit timeUnit) {
        this.f183a = str;
        this.f184b = executorService;
        this.f185c = j;
        this.f186d = timeUnit;
    }

    @Override // c.a.a.a.a.b.l
    public void onRun() {
        try {
            c.a.a.a.f.h().a("Fabric", "Executing shutdown hook for " + this.f183a);
            this.f184b.shutdown();
            if (!this.f184b.awaitTermination(this.f185c, this.f186d)) {
                c.a.a.a.f.h().a("Fabric", this.f183a + " did not shut down in the allocated time. Requesting immediate shutdown.");
                this.f184b.shutdownNow();
            }
        } catch (InterruptedException e2) {
            c.a.a.a.f.h().a("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", this.f183a));
            this.f184b.shutdownNow();
        }
    }
}

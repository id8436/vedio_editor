package a;

import java.io.Closeable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: compiled from: CancellationTokenSource.java */
/* JADX INFO: loaded from: classes.dex */
public class i implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f15a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<h> f16b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledFuture<?> f17c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f18d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f19e;

    public boolean a() {
        boolean z;
        synchronized (this.f15a) {
            b();
            z = this.f18d;
        }
        return z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f15a) {
            if (!this.f19e) {
                c();
                Iterator<h> it = this.f16b.iterator();
                while (it.hasNext()) {
                    it.next().close();
                }
                this.f16b.clear();
                this.f19e = true;
            }
        }
    }

    void a(h hVar) {
        synchronized (this.f15a) {
            b();
            this.f16b.remove(hVar);
        }
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(a()));
    }

    private void b() {
        if (this.f19e) {
            throw new IllegalStateException("Object already closed");
        }
    }

    private void c() {
        if (this.f17c != null) {
            this.f17c.cancel(true);
            this.f17c = null;
        }
    }
}

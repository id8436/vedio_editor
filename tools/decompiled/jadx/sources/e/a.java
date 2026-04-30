package e;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: AsyncTimeout.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends ac {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    static a f4700b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private a f4703f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f4704g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f4699a = TimeUnit.SECONDS.toMillis(60);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f4701d = TimeUnit.MILLISECONDS.toNanos(f4699a);

    public final void c() {
        if (this.f4702e) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long jB_ = b_();
        boolean zC_ = c_();
        if (jB_ != 0 || zC_) {
            this.f4702e = true;
            a(this, jB_, zC_);
        }
    }

    private static synchronized void a(a aVar, long j, boolean z) {
        if (f4700b == null) {
            f4700b = new a();
            new d().start();
        }
        long jNanoTime = System.nanoTime();
        if (j != 0 && z) {
            aVar.f4704g = Math.min(j, aVar.d() - jNanoTime) + jNanoTime;
        } else if (j != 0) {
            aVar.f4704g = jNanoTime + j;
        } else if (z) {
            aVar.f4704g = aVar.d();
        } else {
            throw new AssertionError();
        }
        long jB = aVar.b(jNanoTime);
        a aVar2 = f4700b;
        while (aVar2.f4703f != null && jB >= aVar2.f4703f.b(jNanoTime)) {
            aVar2 = aVar2.f4703f;
        }
        aVar.f4703f = aVar2.f4703f;
        aVar2.f4703f = aVar;
        if (aVar2 == f4700b) {
            a.class.notify();
        }
    }

    public final boolean a_() {
        if (!this.f4702e) {
            return false;
        }
        this.f4702e = false;
        return a(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        r0.f4703f = r3.f4703f;
        r3.f4703f = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static synchronized boolean a(e.a r3) {
        /*
            java.lang.Class<e.a> r1 = e.a.class
            monitor-enter(r1)
            e.a r0 = e.a.f4700b     // Catch: java.lang.Throwable -> L1a
        L5:
            if (r0 == 0) goto L18
            e.a r2 = r0.f4703f     // Catch: java.lang.Throwable -> L1a
            if (r2 != r3) goto L15
            e.a r2 = r3.f4703f     // Catch: java.lang.Throwable -> L1a
            r0.f4703f = r2     // Catch: java.lang.Throwable -> L1a
            r0 = 0
            r3.f4703f = r0     // Catch: java.lang.Throwable -> L1a
            r0 = 0
        L13:
            monitor-exit(r1)
            return r0
        L15:
            e.a r0 = r0.f4703f     // Catch: java.lang.Throwable -> L1a
            goto L5
        L18:
            r0 = 1
            goto L13
        L1a:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.a(e.a):boolean");
    }

    private long b(long j) {
        return this.f4704g - j;
    }

    protected void a() {
    }

    public final aa a(aa aaVar) {
        return new b(this, aaVar);
    }

    public final ab a(ab abVar) {
        return new c(this, abVar);
    }

    final void a(boolean z) throws IOException {
        if (a_() && z) {
            throw a((IOException) null);
        }
    }

    final IOException b(IOException iOException) throws IOException {
        return !a_() ? iOException : a(iOException);
    }

    protected IOException a(@Nullable IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @Nullable
    static a e() throws InterruptedException {
        a aVar = f4700b.f4703f;
        if (aVar == null) {
            long jNanoTime = System.nanoTime();
            a.class.wait(f4699a);
            if (f4700b.f4703f != null || System.nanoTime() - jNanoTime < f4701d) {
                return null;
            }
            return f4700b;
        }
        long jB = aVar.b(System.nanoTime());
        if (jB > 0) {
            long j = jB / 1000000;
            a.class.wait(j, (int) (jB - (1000000 * j)));
            return null;
        }
        f4700b.f4703f = aVar.f4703f;
        aVar.f4703f = null;
        return aVar;
    }
}

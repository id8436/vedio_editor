package e;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Timeout.java */
/* JADX INFO: loaded from: classes3.dex */
public class ac {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ac f4705c = new ad();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f4707b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4708d;

    public ac a(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.f4708d = timeUnit.toNanos(j);
        return this;
    }

    public long b_() {
        return this.f4708d;
    }

    public boolean c_() {
        return this.f4706a;
    }

    public long d() {
        if (this.f4706a) {
            return this.f4707b;
        }
        throw new IllegalStateException("No deadline");
    }

    public ac a(long j) {
        this.f4706a = true;
        this.f4707b = j;
        return this;
    }

    public ac d_() {
        this.f4708d = 0L;
        return this;
    }

    public ac f() {
        this.f4706a = false;
        return this;
    }

    public void g() throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.f4706a && this.f4707b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }
}

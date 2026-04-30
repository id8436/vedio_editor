package e;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: RealBufferedSink.java */
/* JADX INFO: loaded from: classes3.dex */
final class u implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4744a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final aa f4745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f4746c;

    u(aa aaVar) {
        if (aaVar == null) {
            throw new NullPointerException("sink == null");
        }
        this.f4745b = aaVar;
    }

    @Override // e.i, e.j
    public f c() {
        return this.f4744a;
    }

    @Override // e.aa
    public void a_(f fVar, long j) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.a_(fVar, j);
        v();
    }

    @Override // e.i
    public i b(k kVar) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.b(kVar);
        return v();
    }

    @Override // e.i
    public i b(String str) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.b(str);
        return v();
    }

    @Override // e.i
    public i b(String str, Charset charset) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.b(str, charset);
        return v();
    }

    @Override // e.i
    public i c(byte[] bArr) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.c(bArr);
        return v();
    }

    @Override // e.i
    public i c(byte[] bArr, int i, int i2) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.c(bArr, i, i2);
        return v();
    }

    @Override // e.i
    public long a(ab abVar) throws IOException {
        if (abVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long jA = abVar.a(this.f4744a, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (jA != -1) {
                j += jA;
                v();
            } else {
                return j;
            }
        }
    }

    @Override // e.i
    public i i(int i) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.i(i);
        return v();
    }

    @Override // e.i
    public i h(int i) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.h(i);
        return v();
    }

    @Override // e.i
    public i g(int i) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.g(i);
        return v();
    }

    @Override // e.i
    public i l(long j) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.l(j);
        return v();
    }

    @Override // e.i
    public i k(long j) throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        this.f4744a.k(j);
        return v();
    }

    @Override // e.i
    public i v() throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        long jH = this.f4744a.h();
        if (jH > 0) {
            this.f4745b.a_(this.f4744a, jH);
        }
        return this;
    }

    @Override // e.i, e.aa, java.io.Flushable
    public void flush() throws IOException {
        if (this.f4746c) {
            throw new IllegalStateException("closed");
        }
        if (this.f4744a.f4718b > 0) {
            this.f4745b.a_(this.f4744a, this.f4744a.f4718b);
        }
        this.f4745b.flush();
    }

    @Override // e.aa, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (!this.f4746c) {
            Throwable th = null;
            try {
                if (this.f4744a.f4718b > 0) {
                    this.f4745b.a_(this.f4744a, this.f4744a.f4718b);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                this.f4745b.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                }
            }
            this.f4746c = true;
            if (th != null) {
                ae.a(th);
            }
        }
    }

    @Override // e.aa
    public ac a() {
        return this.f4745b.a();
    }

    public String toString() {
        return "buffer(" + this.f4745b + ")";
    }
}

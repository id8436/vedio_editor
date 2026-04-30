package e;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: RealBufferedSource.java */
/* JADX INFO: loaded from: classes3.dex */
final class v implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f4747a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ab f4748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f4749c;

    v(ab abVar) {
        if (abVar == null) {
            throw new NullPointerException("source == null");
        }
        this.f4748b = abVar;
    }

    @Override // e.j
    public f c() {
        return this.f4747a;
    }

    @Override // e.ab
    public long a(f fVar, long j) throws IOException {
        if (fVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f4749c) {
            throw new IllegalStateException("closed");
        }
        if (this.f4747a.f4718b == 0 && this.f4748b.a(this.f4747a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.f4747a.a(fVar, Math.min(j, this.f4747a.f4718b));
    }

    @Override // e.j
    public boolean f() throws IOException {
        if (this.f4749c) {
            throw new IllegalStateException("closed");
        }
        return this.f4747a.f() && this.f4748b.a(this.f4747a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
    }

    @Override // e.j
    public void a(long j) throws IOException {
        if (!b(j)) {
            throw new EOFException();
        }
    }

    public boolean b(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f4749c) {
            throw new IllegalStateException("closed");
        }
        while (this.f4747a.f4718b < j) {
            if (this.f4748b.a(this.f4747a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // e.j
    public byte i() throws IOException {
        a(1L);
        return this.f4747a.i();
    }

    @Override // e.j
    public k c(long j) throws IOException {
        a(j);
        return this.f4747a.c(j);
    }

    @Override // e.j
    public byte[] r() throws IOException {
        this.f4747a.a(this.f4748b);
        return this.f4747a.r();
    }

    @Override // e.j
    public byte[] g(long j) throws IOException {
        a(j);
        return this.f4747a.g(j);
    }

    @Override // e.j
    public void a(byte[] bArr) throws IOException {
        try {
            a(bArr.length);
            this.f4747a.a(bArr);
        } catch (EOFException e2) {
            int i = 0;
            while (this.f4747a.f4718b > 0) {
                int iA = this.f4747a.a(bArr, i, (int) this.f4747a.f4718b);
                if (iA == -1) {
                    throw new AssertionError();
                }
                i += iA;
            }
            throw e2;
        }
    }

    @Override // e.j
    public long a(aa aaVar) throws IOException {
        if (aaVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j = 0;
        while (this.f4748b.a(this.f4747a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long jH = this.f4747a.h();
            if (jH > 0) {
                j += jH;
                aaVar.a_(this.f4747a, jH);
            }
        }
        if (this.f4747a.b() > 0) {
            long jB = j + this.f4747a.b();
            aaVar.a_(this.f4747a, this.f4747a.b());
            return jB;
        }
        return j;
    }

    @Override // e.j
    public String a(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f4747a.a(this.f4748b);
        return this.f4747a.a(charset);
    }

    @Override // e.j
    public String q() throws IOException {
        return e(Long.MAX_VALUE);
    }

    @Override // e.j
    public String e(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long jA = a((byte) 10, 0L, j2);
        if (jA != -1) {
            return this.f4747a.f(jA);
        }
        if (j2 < Long.MAX_VALUE && b(j2) && this.f4747a.b(j2 - 1) == 13 && b(1 + j2) && this.f4747a.b(j2) == 10) {
            return this.f4747a.f(j2);
        }
        f fVar = new f();
        this.f4747a.a(fVar, 0L, Math.min(32L, this.f4747a.b()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f4747a.b(), j) + " content=" + fVar.o().e() + (char) 8230);
    }

    @Override // e.j
    public short j() throws IOException {
        a(2L);
        return this.f4747a.j();
    }

    @Override // e.j
    public short l() throws IOException {
        a(2L);
        return this.f4747a.l();
    }

    @Override // e.j
    public int k() throws IOException {
        a(4L);
        return this.f4747a.k();
    }

    @Override // e.j
    public int m() throws IOException {
        a(4L);
        return this.f4747a.m();
    }

    @Override // e.j
    public long n() throws IOException {
        a(1L);
        for (int i = 0; b(i + 1); i++) {
            byte b2 = this.f4747a.b(i);
            if ((b2 < 48 || b2 > 57) && ((b2 < 97 || b2 > 102) && (b2 < 65 || b2 > 70))) {
                if (i == 0) {
                    throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(b2)));
                }
                return this.f4747a.n();
            }
        }
        return this.f4747a.n();
    }

    @Override // e.j
    public void h(long j) throws IOException {
        if (this.f4749c) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            if (this.f4747a.f4718b == 0 && this.f4748b.a(this.f4747a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.f4747a.b());
            this.f4747a.h(jMin);
            j -= jMin;
        }
    }

    @Override // e.j
    public long a(byte b2) throws IOException {
        return a(b2, 0L, Long.MAX_VALUE);
    }

    public long a(byte b2, long j, long j2) throws IOException {
        if (this.f4749c) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        long jMax = j;
        while (jMax < j2) {
            long jA = this.f4747a.a(b2, jMax, j2);
            if (jA == -1) {
                long j3 = this.f4747a.f4718b;
                if (j3 >= j2 || this.f4748b.a(this.f4747a, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1L;
                }
                jMax = Math.max(jMax, j3);
            } else {
                return jA;
            }
        }
        return -1L;
    }

    @Override // e.j
    public boolean a(long j, k kVar) throws IOException {
        return a(j, kVar, 0, kVar.g());
    }

    public boolean a(long j, k kVar, int i, int i2) throws IOException {
        if (this.f4749c) {
            throw new IllegalStateException("closed");
        }
        if (j < 0 || i < 0 || i2 < 0 || kVar.g() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = ((long) i3) + j;
            if (!b(1 + j2) || this.f4747a.b(j2) != kVar.a(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // e.j
    public InputStream g() {
        return new w(this);
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f4749c) {
            this.f4749c = true;
            this.f4748b.close();
            this.f4747a.s();
        }
    }

    @Override // e.ab
    public ac a() {
        return this.f4748b.a();
    }

    public String toString() {
        return "buffer(" + this.f4748b + ")";
    }
}

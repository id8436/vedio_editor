package e;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: GzipSource.java */
/* JADX INFO: loaded from: classes3.dex */
public final class o implements ab {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f4730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Inflater f4731c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f4732d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4729a = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CRC32 f4733e = new CRC32();

    public o(ab abVar) {
        if (abVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.f4731c = new Inflater(true);
        this.f4730b = q.a(abVar);
        this.f4732d = new p(this.f4730b, this.f4731c);
    }

    @Override // e.ab
    public long a(f fVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f4729a == 0) {
            b();
            this.f4729a = 1;
        }
        if (this.f4729a == 1) {
            long j2 = fVar.f4718b;
            long jA = this.f4732d.a(fVar, j);
            if (jA != -1) {
                a(fVar, j2, jA);
                return jA;
            }
            this.f4729a = 2;
        }
        if (this.f4729a == 2) {
            c();
            this.f4729a = 3;
            if (!this.f4730b.f()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    private void b() throws IOException {
        this.f4730b.a(10L);
        byte b2 = this.f4730b.c().b(3L);
        boolean z = ((b2 >> 1) & 1) == 1;
        if (z) {
            a(this.f4730b.c(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f4730b.j());
        this.f4730b.h(8L);
        if (((b2 >> 2) & 1) == 1) {
            this.f4730b.a(2L);
            if (z) {
                a(this.f4730b.c(), 0L, 2L);
            }
            short sL = this.f4730b.c().l();
            this.f4730b.a(sL);
            if (z) {
                a(this.f4730b.c(), 0L, sL);
            }
            this.f4730b.h(sL);
        }
        if (((b2 >> 3) & 1) == 1) {
            long jA = this.f4730b.a((byte) 0);
            if (jA == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.f4730b.c(), 0L, 1 + jA);
            }
            this.f4730b.h(1 + jA);
        }
        if (((b2 >> 4) & 1) == 1) {
            long jA2 = this.f4730b.a((byte) 0);
            if (jA2 == -1) {
                throw new EOFException();
            }
            if (z) {
                a(this.f4730b.c(), 0L, 1 + jA2);
            }
            this.f4730b.h(1 + jA2);
        }
        if (z) {
            a("FHCRC", this.f4730b.l(), (short) this.f4733e.getValue());
            this.f4733e.reset();
        }
    }

    private void c() throws IOException {
        a("CRC", this.f4730b.m(), (int) this.f4733e.getValue());
        a("ISIZE", this.f4730b.m(), (int) this.f4731c.getBytesWritten());
    }

    @Override // e.ab
    public ac a() {
        return this.f4730b.a();
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4732d.close();
    }

    private void a(f fVar, long j, long j2) {
        x xVar = fVar.f4717a;
        while (j >= xVar.f4753c - xVar.f4752b) {
            j -= (long) (xVar.f4753c - xVar.f4752b);
            xVar = xVar.f4756f;
        }
        while (j2 > 0) {
            int i = (int) (((long) xVar.f4752b) + j);
            int iMin = (int) Math.min(xVar.f4753c - i, j2);
            this.f4733e.update(xVar.f4751a, i, iMin);
            j2 -= (long) iMin;
            xVar = xVar.f4756f;
            j = 0;
        }
    }

    private void a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }
}

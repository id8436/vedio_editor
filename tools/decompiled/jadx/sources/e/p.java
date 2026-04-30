package e;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: InflaterSource.java */
/* JADX INFO: loaded from: classes3.dex */
public final class p implements ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f4734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Inflater f4735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4737d;

    p(j jVar, Inflater inflater) {
        if (jVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f4734a = jVar;
        this.f4735b = inflater;
    }

    @Override // e.ab
    public long a(f fVar, long j) throws IOException {
        boolean zB;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f4737d) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return 0L;
        }
        do {
            zB = b();
            try {
                x xVarE = fVar.e(1);
                int iInflate = this.f4735b.inflate(xVarE.f4751a, xVarE.f4753c, 8192 - xVarE.f4753c);
                if (iInflate > 0) {
                    xVarE.f4753c += iInflate;
                    fVar.f4718b += (long) iInflate;
                    return iInflate;
                }
                if (this.f4735b.finished() || this.f4735b.needsDictionary()) {
                    c();
                    if (xVarE.f4752b == xVarE.f4753c) {
                        fVar.f4717a = xVarE.a();
                        y.a(xVarE);
                    }
                    return -1L;
                }
            } catch (DataFormatException e2) {
                throw new IOException(e2);
            }
        } while (!zB);
        throw new EOFException("source exhausted prematurely");
    }

    public boolean b() throws IOException {
        if (!this.f4735b.needsInput()) {
            return false;
        }
        c();
        if (this.f4735b.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f4734a.f()) {
            return true;
        }
        x xVar = this.f4734a.c().f4717a;
        this.f4736c = xVar.f4753c - xVar.f4752b;
        this.f4735b.setInput(xVar.f4751a, xVar.f4752b, this.f4736c);
        return false;
    }

    private void c() throws IOException {
        if (this.f4736c != 0) {
            int remaining = this.f4736c - this.f4735b.getRemaining();
            this.f4736c -= remaining;
            this.f4734a.h(remaining);
        }
    }

    @Override // e.ab
    public ac a() {
        return this.f4734a.a();
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f4737d) {
            this.f4735b.end();
            this.f4737d = true;
            this.f4734a.close();
        }
    }
}

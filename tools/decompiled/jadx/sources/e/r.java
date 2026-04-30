package e;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: Okio.java */
/* JADX INFO: loaded from: classes3.dex */
final class r implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f4739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ OutputStream f4740b;

    r(ac acVar, OutputStream outputStream) {
        this.f4739a = acVar;
        this.f4740b = outputStream;
    }

    @Override // e.aa
    public void a_(f fVar, long j) throws IOException {
        ae.a(fVar.f4718b, 0L, j);
        while (j > 0) {
            this.f4739a.g();
            x xVar = fVar.f4717a;
            int iMin = (int) Math.min(j, xVar.f4753c - xVar.f4752b);
            this.f4740b.write(xVar.f4751a, xVar.f4752b, iMin);
            xVar.f4752b += iMin;
            j -= (long) iMin;
            fVar.f4718b -= (long) iMin;
            if (xVar.f4752b == xVar.f4753c) {
                fVar.f4717a = xVar.a();
                y.a(xVar);
            }
        }
    }

    @Override // e.aa, java.io.Flushable
    public void flush() throws IOException {
        this.f4740b.flush();
    }

    @Override // e.aa, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4740b.close();
    }

    @Override // e.aa
    public ac a() {
        return this.f4739a;
    }

    public String toString() {
        return "sink(" + this.f4740b + ")";
    }
}

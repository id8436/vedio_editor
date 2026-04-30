package e;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: Okio.java */
/* JADX INFO: loaded from: classes3.dex */
final class s implements ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f4741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ InputStream f4742b;

    s(ac acVar, InputStream inputStream) {
        this.f4741a = acVar;
        this.f4742b = inputStream;
    }

    @Override // e.ab
    public long a(f fVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        try {
            this.f4741a.g();
            x xVarE = fVar.e(1);
            int i = this.f4742b.read(xVarE.f4751a, xVarE.f4753c, (int) Math.min(j, 8192 - xVarE.f4753c));
            if (i == -1) {
                return -1L;
            }
            xVarE.f4753c += i;
            fVar.f4718b += (long) i;
            return i;
        } catch (AssertionError e2) {
            if (q.a(e2)) {
                throw new IOException(e2);
            }
            throw e2;
        }
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f4742b.close();
    }

    @Override // e.ab
    public ac a() {
        return this.f4741a;
    }

    public String toString() {
        return "source(" + this.f4742b + ")";
    }
}

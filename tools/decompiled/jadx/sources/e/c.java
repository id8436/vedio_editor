package e;

import java.io.IOException;

/* JADX INFO: compiled from: AsyncTimeout.java */
/* JADX INFO: loaded from: classes3.dex */
class c implements ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f4712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f4713b;

    c(a aVar, ab abVar) {
        this.f4713b = aVar;
        this.f4712a = abVar;
    }

    @Override // e.ab
    public long a(f fVar, long j) throws IOException {
        this.f4713b.c();
        try {
            try {
                long jA = this.f4712a.a(fVar, j);
                this.f4713b.a(true);
                return jA;
            } catch (IOException e2) {
                throw this.f4713b.b(e2);
            }
        } catch (Throwable th) {
            this.f4713b.a(false);
            throw th;
        }
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            try {
                this.f4712a.close();
                this.f4713b.a(true);
            } catch (IOException e2) {
                throw this.f4713b.b(e2);
            }
        } catch (Throwable th) {
            this.f4713b.a(false);
            throw th;
        }
    }

    @Override // e.ab
    public ac a() {
        return this.f4713b;
    }

    public String toString() {
        return "AsyncTimeout.source(" + this.f4712a + ")";
    }
}

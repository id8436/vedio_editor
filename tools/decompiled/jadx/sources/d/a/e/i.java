package d.a.e;

import java.io.IOException;

/* JADX INFO: compiled from: Http2Codec.java */
/* JADX INFO: loaded from: classes3.dex */
class i extends e.m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f4394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ h f4395c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    i(h hVar, e.ab abVar) {
        super(abVar);
        this.f4395c = hVar;
        this.f4393a = false;
        this.f4394b = 0L;
    }

    @Override // e.m, e.ab
    public long a(e.f fVar, long j) throws IOException {
        try {
            long jA = b().a(fVar, j);
            if (jA > 0) {
                this.f4394b += jA;
            }
            return jA;
        } catch (IOException e2) {
            a(e2);
            throw e2;
        }
    }

    @Override // e.m, e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        a(null);
    }

    private void a(IOException iOException) {
        if (!this.f4393a) {
            this.f4393a = true;
            this.f4395c.f4392a.a(false, (d.a.c.d) this.f4395c, this.f4394b, iOException);
        }
    }
}

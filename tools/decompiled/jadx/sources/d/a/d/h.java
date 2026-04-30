package d.a.d;

import java.io.IOException;

/* JADX INFO: compiled from: Http1Codec.java */
/* JADX INFO: loaded from: classes3.dex */
class h extends c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ a f4307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4308f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    h(a aVar) {
        super(aVar);
        this.f4307e = aVar;
    }

    @Override // d.a.d.c, e.ab
    public long a(e.f fVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f4292b) {
            throw new IllegalStateException("closed");
        }
        if (this.f4308f) {
            return -1L;
        }
        long jA = super.a(fVar, j);
        if (jA != -1) {
            return jA;
        }
        this.f4308f = true;
        a(true, (IOException) null);
        return -1L;
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f4292b) {
            if (!this.f4308f) {
                a(false, (IOException) null);
            }
            this.f4292b = true;
        }
    }
}

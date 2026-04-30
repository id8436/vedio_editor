package d.a.d;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Http1Codec.java */
/* JADX INFO: loaded from: classes3.dex */
class g extends c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ a f4305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f4306f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    g(a aVar, long j) throws IOException {
        super(aVar);
        this.f4305e = aVar;
        this.f4306f = j;
        if (this.f4306f == 0) {
            a(true, (IOException) null);
        }
    }

    @Override // d.a.d.c, e.ab
    public long a(e.f fVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f4292b) {
            throw new IllegalStateException("closed");
        }
        if (this.f4306f == 0) {
            return -1L;
        }
        long jA = super.a(fVar, Math.min(this.f4306f, j));
        if (jA == -1) {
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            a(false, (IOException) protocolException);
            throw protocolException;
        }
        this.f4306f -= jA;
        if (this.f4306f == 0) {
            a(true, (IOException) null);
        }
        return jA;
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f4292b) {
            if (this.f4306f != 0 && !d.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, (IOException) null);
            }
            this.f4292b = true;
        }
    }
}

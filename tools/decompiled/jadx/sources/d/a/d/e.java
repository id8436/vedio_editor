package d.a.d;

import d.ai;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Http1Codec.java */
/* JADX INFO: loaded from: classes3.dex */
class e extends c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ a f4298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ai f4299f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f4300g;
    private boolean h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(a aVar, ai aiVar) {
        super(aVar);
        this.f4298e = aVar;
        this.f4300g = -1L;
        this.h = true;
        this.f4299f = aiVar;
    }

    @Override // d.a.d.c, e.ab
    public long a(e.f fVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f4292b) {
            throw new IllegalStateException("closed");
        }
        if (!this.h) {
            return -1L;
        }
        if (this.f4300g == 0 || this.f4300g == -1) {
            b();
            if (!this.h) {
                return -1L;
            }
        }
        long jA = super.a(fVar, Math.min(j, this.f4300g));
        if (jA == -1) {
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            a(false, (IOException) protocolException);
            throw protocolException;
        }
        this.f4300g -= jA;
        return jA;
    }

    private void b() throws IOException {
        if (this.f4300g != -1) {
            this.f4298e.f4287c.q();
        }
        try {
            this.f4300g = this.f4298e.f4287c.n();
            String strTrim = this.f4298e.f4287c.q().trim();
            if (this.f4300g < 0 || !(strTrim.isEmpty() || strTrim.startsWith(";"))) {
                throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f4300g + strTrim + "\"");
            }
            if (this.f4300g == 0) {
                this.h = false;
                d.a.c.g.a(this.f4298e.f4285a.f(), this.f4299f, this.f4298e.d());
                a(true, (IOException) null);
            }
        } catch (NumberFormatException e2) {
            throw new ProtocolException(e2.getMessage());
        }
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f4292b) {
            if (this.h && !d.a.c.a(this, 100, TimeUnit.MILLISECONDS)) {
                a(false, (IOException) null);
            }
            this.f4292b = true;
        }
    }
}

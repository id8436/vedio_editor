package d.a.d;

import e.aa;
import e.ac;
import e.n;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: compiled from: Http1Codec.java */
/* JADX INFO: loaded from: classes3.dex */
final class f implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f4301a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f4302b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4303c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4304d;

    f(a aVar, long j) {
        this.f4301a = aVar;
        this.f4302b = new n(this.f4301a.f4288d.a());
        this.f4304d = j;
    }

    @Override // e.aa
    public ac a() {
        return this.f4302b;
    }

    @Override // e.aa
    public void a_(e.f fVar, long j) throws IOException {
        if (this.f4303c) {
            throw new IllegalStateException("closed");
        }
        d.a.c.a(fVar.b(), 0L, j);
        if (j > this.f4304d) {
            throw new ProtocolException("expected " + this.f4304d + " bytes but received " + j);
        }
        this.f4301a.f4288d.a_(fVar, j);
        this.f4304d -= j;
    }

    @Override // e.aa, java.io.Flushable
    public void flush() throws IOException {
        if (!this.f4303c) {
            this.f4301a.f4288d.flush();
        }
    }

    @Override // e.aa, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f4303c) {
            this.f4303c = true;
            if (this.f4304d > 0) {
                throw new ProtocolException("unexpected end of stream");
            }
            this.f4301a.a(this.f4302b);
            this.f4301a.f4289e = 3;
        }
    }
}

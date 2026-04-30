package d.a.d;

import e.aa;
import e.ac;
import e.n;
import java.io.IOException;

/* JADX INFO: compiled from: Http1Codec.java */
/* JADX INFO: loaded from: classes3.dex */
final class d implements aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f4295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f4296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4297c;

    d(a aVar) {
        this.f4295a = aVar;
        this.f4296b = new n(this.f4295a.f4288d.a());
    }

    @Override // e.aa
    public ac a() {
        return this.f4296b;
    }

    @Override // e.aa
    public void a_(e.f fVar, long j) throws IOException {
        if (this.f4297c) {
            throw new IllegalStateException("closed");
        }
        if (j != 0) {
            this.f4295a.f4288d.k(j);
            this.f4295a.f4288d.b("\r\n");
            this.f4295a.f4288d.a_(fVar, j);
            this.f4295a.f4288d.b("\r\n");
        }
    }

    @Override // e.aa, java.io.Flushable
    public synchronized void flush() throws IOException {
        if (!this.f4297c) {
            this.f4295a.f4288d.flush();
        }
    }

    @Override // e.aa, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (!this.f4297c) {
            this.f4297c = true;
            this.f4295a.f4288d.b("0\r\n\r\n");
            this.f4295a.a(this.f4296b);
            this.f4295a.f4289e = 3;
        }
    }
}

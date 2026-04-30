package d.a.e;

import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: compiled from: Http2Stream.java */
/* JADX INFO: loaded from: classes3.dex */
final class ad implements e.ab {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final /* synthetic */ boolean f4323c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f4324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f4325b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ ab f4326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.f f4327e = new e.f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e.f f4328f = new e.f();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f4329g;

    static {
        f4323c = !ab.class.desiredAssertionStatus();
    }

    ad(ab abVar, long j) {
        this.f4326d = abVar;
        this.f4329g = j;
    }

    @Override // e.ab
    public long a(e.f fVar, long j) throws IOException {
        long jA;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        synchronized (this.f4326d) {
            b();
            c();
            if (this.f4328f.b() == 0) {
                jA = -1;
            } else {
                jA = this.f4328f.a(fVar, Math.min(j, this.f4328f.b()));
                this.f4326d.f4311a += jA;
                if (this.f4326d.f4311a >= this.f4326d.f4314d.l.d() / 2) {
                    this.f4326d.f4314d.a(this.f4326d.f4313c, this.f4326d.f4311a);
                    this.f4326d.f4311a = 0L;
                }
                synchronized (this.f4326d.f4314d) {
                    this.f4326d.f4314d.j += jA;
                    if (this.f4326d.f4314d.j >= this.f4326d.f4314d.l.d() / 2) {
                        this.f4326d.f4314d.a(0, this.f4326d.f4314d.j);
                        this.f4326d.f4314d.j = 0L;
                    }
                }
            }
        }
        return jA;
    }

    private void b() throws IOException {
        this.f4326d.f4316f.c();
        while (this.f4328f.b() == 0 && !this.f4325b && !this.f4324a && this.f4326d.h == null) {
            try {
                this.f4326d.l();
            } finally {
                this.f4326d.f4316f.b();
            }
        }
    }

    void a(e.j jVar, long j) throws IOException {
        boolean z;
        boolean z2;
        if (!f4323c && Thread.holdsLock(this.f4326d)) {
            throw new AssertionError();
        }
        while (j > 0) {
            synchronized (this.f4326d) {
                z = this.f4325b;
                z2 = this.f4328f.b() + j > this.f4329g;
            }
            if (z2) {
                jVar.h(j);
                this.f4326d.b(b.FLOW_CONTROL_ERROR);
                return;
            }
            if (z) {
                jVar.h(j);
                return;
            }
            long jA = jVar.a(this.f4327e, j);
            if (jA == -1) {
                throw new EOFException();
            }
            j -= jA;
            synchronized (this.f4326d) {
                boolean z3 = this.f4328f.b() == 0;
                this.f4328f.a((e.ab) this.f4327e);
                if (z3) {
                    this.f4326d.notifyAll();
                }
            }
        }
    }

    @Override // e.ab
    public e.ac a() {
        return this.f4326d.f4316f;
    }

    @Override // e.ab, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f4326d) {
            this.f4324a = true;
            this.f4328f.s();
            this.f4326d.notifyAll();
        }
        this.f4326d.j();
    }

    private void c() throws IOException {
        if (this.f4324a) {
            throw new IOException("stream closed");
        }
        if (this.f4326d.h != null) {
            throw new am(this.f4326d.h);
        }
    }
}

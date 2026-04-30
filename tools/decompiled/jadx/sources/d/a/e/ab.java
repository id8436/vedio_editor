package d.a.e;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: Http2Stream.java */
/* JADX INFO: loaded from: classes3.dex */
public final class ab {
    static final /* synthetic */ boolean i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f4312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4313c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final j f4314d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final ac f4315e;
    private final List<c> j;
    private List<c> k;
    private boolean l;
    private final ad m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f4311a = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final ae f4316f = new ae(this);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ae f4317g = new ae(this);
    b h = null;

    static {
        i = !ab.class.desiredAssertionStatus();
    }

    ab(int i2, j jVar, boolean z, boolean z2, List<c> list) {
        if (jVar == null) {
            throw new NullPointerException("connection == null");
        }
        if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        }
        this.f4313c = i2;
        this.f4314d = jVar;
        this.f4312b = jVar.m.d();
        this.m = new ad(this, jVar.l.d());
        this.f4315e = new ac(this);
        this.m.f4325b = z2;
        this.f4315e.f4320b = z;
        this.j = list;
    }

    public int a() {
        return this.f4313c;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean b() {
        /*
            r2 = this;
            r0 = 0
            monitor-enter(r2)
            d.a.e.b r1 = r2.h     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L8
        L6:
            monitor-exit(r2)
            return r0
        L8:
            d.a.e.ad r1 = r2.m     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.f4325b     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L14
            d.a.e.ad r1 = r2.m     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.f4324a     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L24
        L14:
            d.a.e.ac r1 = r2.f4315e     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.f4320b     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L20
            d.a.e.ac r1 = r2.f4315e     // Catch: java.lang.Throwable -> L26
            boolean r1 = r1.f4319a     // Catch: java.lang.Throwable -> L26
            if (r1 == 0) goto L24
        L20:
            boolean r1 = r2.l     // Catch: java.lang.Throwable -> L26
            if (r1 != 0) goto L6
        L24:
            r0 = 1
            goto L6
        L26:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a.e.ab.b():boolean");
    }

    public boolean c() {
        return this.f4314d.f4397b == ((this.f4313c & 1) == 1);
    }

    public synchronized List<c> d() throws IOException {
        List<c> list;
        if (!c()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.f4316f.c();
        while (this.k == null && this.h == null) {
            try {
                l();
            } catch (Throwable th) {
                this.f4316f.b();
                throw th;
            }
        }
        this.f4316f.b();
        list = this.k;
        if (list != null) {
            this.k = null;
        } else {
            throw new am(this.h);
        }
        return list;
    }

    public e.ac e() {
        return this.f4316f;
    }

    public e.ac f() {
        return this.f4317g;
    }

    public e.ab g() {
        return this.m;
    }

    public e.aa h() {
        synchronized (this) {
            if (!this.l && !c()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f4315e;
    }

    public void a(b bVar) throws IOException {
        if (d(bVar)) {
            this.f4314d.b(this.f4313c, bVar);
        }
    }

    public void b(b bVar) {
        if (d(bVar)) {
            this.f4314d.a(this.f4313c, bVar);
        }
    }

    private boolean d(b bVar) {
        if (!i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            if (this.h != null) {
                return false;
            }
            if (this.m.f4325b && this.f4315e.f4320b) {
                return false;
            }
            this.h = bVar;
            notifyAll();
            this.f4314d.b(this.f4313c);
            return true;
        }
    }

    void a(List<c> list) {
        boolean zB = true;
        if (!i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.l = true;
            if (this.k == null) {
                this.k = list;
                zB = b();
                notifyAll();
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(this.k);
                arrayList.add(null);
                arrayList.addAll(list);
                this.k = arrayList;
            }
        }
        if (!zB) {
            this.f4314d.b(this.f4313c);
        }
    }

    void a(e.j jVar, int i2) throws IOException {
        if (!i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        this.m.a(jVar, i2);
    }

    void i() {
        boolean zB;
        if (!i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            this.m.f4325b = true;
            zB = b();
            notifyAll();
        }
        if (!zB) {
            this.f4314d.b(this.f4313c);
        }
    }

    synchronized void c(b bVar) {
        if (this.h == null) {
            this.h = bVar;
            notifyAll();
        }
    }

    void j() throws IOException {
        boolean z;
        boolean zB;
        if (!i && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        synchronized (this) {
            z = !this.m.f4325b && this.m.f4324a && (this.f4315e.f4320b || this.f4315e.f4319a);
            zB = b();
        }
        if (z) {
            a(b.CANCEL);
        } else if (!zB) {
            this.f4314d.b(this.f4313c);
        }
    }

    void a(long j) {
        this.f4312b += j;
        if (j > 0) {
            notifyAll();
        }
    }

    void k() throws IOException {
        if (this.f4315e.f4319a) {
            throw new IOException("stream closed");
        }
        if (this.f4315e.f4320b) {
            throw new IOException("stream finished");
        }
        if (this.h != null) {
            throw new am(this.h);
        }
    }

    void l() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e2) {
            throw new InterruptedIOException();
        }
    }
}

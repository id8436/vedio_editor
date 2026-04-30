package d.a.e;

import android.support.v7.widget.ActivityChooserView;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes3.dex */
public final class j implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final ExecutorService f4396a;
    static final /* synthetic */ boolean s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f4397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final s f4398c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final String f4400e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f4401f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f4402g;
    boolean h;
    final aj i;
    long k;
    final Socket o;
    final af p;
    final u q;
    private final ExecutorService t;
    private Map<Integer, ai> u;
    private int v;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Map<Integer, ab> f4399d = new LinkedHashMap();
    long j = 0;
    al l = new al();
    final al m = new al();
    boolean n = false;
    final Set<Integer> r = new LinkedHashSet();

    static {
        s = !j.class.desiredAssertionStatus();
        f4396a = new ThreadPoolExecutor(0, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60L, TimeUnit.SECONDS, new SynchronousQueue(), d.a.c.a("OkHttp Http2Connection", true));
    }

    j(r rVar) {
        this.i = rVar.f4434f;
        this.f4397b = rVar.f4435g;
        this.f4398c = rVar.f4433e;
        this.f4402g = rVar.f4435g ? 1 : 2;
        if (rVar.f4435g) {
            this.f4402g += 2;
        }
        this.v = rVar.f4435g ? 1 : 2;
        if (rVar.f4435g) {
            this.l.a(7, 16777216);
        }
        this.f4400e = rVar.f4430b;
        this.t = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), d.a.c.a(d.a.c.a("OkHttp %s Push Observer", this.f4400e), true));
        this.m.a(7, 65535);
        this.m.a(5, 16384);
        this.k = this.m.d();
        this.o = rVar.f4429a;
        this.p = new af(rVar.f4432d, this.f4397b);
        this.q = new u(this, new y(rVar.f4431c, this.f4397b));
    }

    synchronized ab a(int i) {
        return this.f4399d.get(Integer.valueOf(i));
    }

    synchronized ab b(int i) {
        ab abVarRemove;
        abVarRemove = this.f4399d.remove(Integer.valueOf(i));
        notifyAll();
        return abVarRemove;
    }

    public synchronized int a() {
        return this.m.c(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    public ab a(List<c> list, boolean z) throws IOException {
        return b(0, list, z);
    }

    private ab b(int i, List<c> list, boolean z) throws IOException {
        int i2;
        ab abVar;
        boolean z2;
        boolean z3 = !z;
        synchronized (this.p) {
            synchronized (this) {
                if (this.h) {
                    throw new a();
                }
                i2 = this.f4402g;
                this.f4402g += 2;
                abVar = new ab(i2, this, z3, false, list);
                z2 = !z || this.k == 0 || abVar.f4312b == 0;
                if (abVar.b()) {
                    this.f4399d.put(Integer.valueOf(i2), abVar);
                }
            }
            if (i == 0) {
                this.p.a(z3, i2, i, list);
            } else {
                if (this.f4397b) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
                this.p.a(i, i2, list);
            }
        }
        if (z2) {
            this.p.b();
        }
        return abVar;
    }

    public void a(int i, boolean z, e.f fVar, long j) throws IOException {
        int iMin;
        if (j == 0) {
            this.p.a(z, i, fVar, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (this.k <= 0) {
                    try {
                        if (!this.f4399d.containsKey(Integer.valueOf(i))) {
                            throw new IOException("stream closed");
                        }
                        wait();
                    } catch (InterruptedException e2) {
                        throw new InterruptedIOException();
                    }
                }
                iMin = Math.min((int) Math.min(j, this.k), this.p.c());
                this.k -= (long) iMin;
            }
            j -= (long) iMin;
            this.p.a(z && j == 0, i, fVar, iMin);
        }
    }

    void a(long j) {
        this.k += j;
        if (j > 0) {
            notifyAll();
        }
    }

    void a(int i, b bVar) {
        f4396a.execute(new k(this, "OkHttp %s stream %d", new Object[]{this.f4400e, Integer.valueOf(i)}, i, bVar));
    }

    void b(int i, b bVar) throws IOException {
        this.p.a(i, bVar);
    }

    void a(int i, long j) {
        f4396a.execute(new l(this, "OkHttp Window Update %s stream %d", new Object[]{this.f4400e, Integer.valueOf(i)}, i, j));
    }

    void a(boolean z, int i, int i2, ai aiVar) {
        f4396a.execute(new m(this, "OkHttp %s ping %08x%08x", new Object[]{this.f4400e, Integer.valueOf(i), Integer.valueOf(i2)}, z, i, i2, aiVar));
    }

    void b(boolean z, int i, int i2, ai aiVar) throws IOException {
        synchronized (this.p) {
            if (aiVar != null) {
                aiVar.a();
                this.p.a(z, i, i2);
            } else {
                this.p.a(z, i, i2);
            }
        }
    }

    synchronized ai c(int i) {
        return this.u != null ? this.u.remove(Integer.valueOf(i)) : null;
    }

    public void b() throws IOException {
        this.p.b();
    }

    public void a(b bVar) throws IOException {
        synchronized (this.p) {
            synchronized (this) {
                if (!this.h) {
                    this.h = true;
                    this.p.a(this.f4401f, bVar, d.a.c.f4253a);
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(b.NO_ERROR, b.CANCEL);
    }

    void a(b bVar, b bVar2) throws IOException {
        IOException iOException;
        ab[] abVarArr;
        ai[] aiVarArr;
        if (!s && Thread.holdsLock(this)) {
            throw new AssertionError();
        }
        try {
            a(bVar);
            iOException = null;
        } catch (IOException e2) {
            iOException = e2;
        }
        synchronized (this) {
            if (this.f4399d.isEmpty()) {
                abVarArr = null;
            } else {
                ab[] abVarArr2 = (ab[]) this.f4399d.values().toArray(new ab[this.f4399d.size()]);
                this.f4399d.clear();
                abVarArr = abVarArr2;
            }
            if (this.u != null) {
                ai[] aiVarArr2 = (ai[]) this.u.values().toArray(new ai[this.u.size()]);
                this.u = null;
                aiVarArr = aiVarArr2;
            } else {
                aiVarArr = null;
            }
        }
        if (abVarArr != null) {
            IOException iOException2 = iOException;
            for (ab abVar : abVarArr) {
                try {
                    abVar.a(bVar2);
                } catch (IOException e3) {
                    if (iOException2 != null) {
                        iOException2 = e3;
                    }
                }
            }
            iOException = iOException2;
        }
        if (aiVarArr != null) {
            for (ai aiVar : aiVarArr) {
                aiVar.c();
            }
        }
        try {
            this.p.close();
            e = iOException;
        } catch (IOException e4) {
            e = e4;
            if (iOException != null) {
                e = iOException;
            }
        }
        try {
            this.o.close();
        } catch (IOException e5) {
            e = e5;
        }
        if (e != null) {
            throw e;
        }
    }

    public void c() throws IOException {
        a(true);
    }

    void a(boolean z) throws IOException {
        if (z) {
            this.p.a();
            this.p.b(this.l);
            if (this.l.d() != 65535) {
                this.p.a(0, r0 - 65535);
            }
        }
        new Thread(this.q).start();
    }

    public synchronized boolean d() {
        return this.h;
    }

    boolean d(int i) {
        return i != 0 && (i & 1) == 0;
    }

    void a(int i, List<c> list) {
        synchronized (this) {
            if (this.r.contains(Integer.valueOf(i))) {
                a(i, b.PROTOCOL_ERROR);
            } else {
                this.r.add(Integer.valueOf(i));
                this.t.execute(new n(this, "OkHttp %s Push Request[%s]", new Object[]{this.f4400e, Integer.valueOf(i)}, i, list));
            }
        }
    }

    void a(int i, List<c> list, boolean z) {
        this.t.execute(new o(this, "OkHttp %s Push Headers[%s]", new Object[]{this.f4400e, Integer.valueOf(i)}, i, list, z));
    }

    void a(int i, e.j jVar, int i2, boolean z) throws IOException {
        e.f fVar = new e.f();
        jVar.a(i2);
        jVar.a(fVar, i2);
        if (fVar.b() != i2) {
            throw new IOException(fVar.b() + " != " + i2);
        }
        this.t.execute(new p(this, "OkHttp %s Push Data[%s]", new Object[]{this.f4400e, Integer.valueOf(i)}, i, fVar, i2, z));
    }

    void c(int i, b bVar) {
        this.t.execute(new q(this, "OkHttp %s Push Reset[%s]", new Object[]{this.f4400e, Integer.valueOf(i)}, i, bVar));
    }
}

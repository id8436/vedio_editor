package d.a.b;

import d.am;
import d.ar;
import d.bi;
import d.p;
import d.z;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Socket;
import java.util.List;

/* JADX INFO: compiled from: StreamAllocation.java */
/* JADX INFO: loaded from: classes3.dex */
public final class h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final /* synthetic */ boolean f4245d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d.a f4246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d.g f4247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final z f4248c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g f4249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private bi f4250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p f4251g;
    private final Object h;
    private final f i;
    private int j;
    private c k;
    private boolean l;
    private boolean m;
    private boolean n;
    private d.a.c.d o;

    static {
        f4245d = !h.class.desiredAssertionStatus();
    }

    public h(p pVar, d.a aVar, d.g gVar, z zVar, Object obj) {
        this.f4251g = pVar;
        this.f4246a = aVar;
        this.f4247b = gVar;
        this.f4248c = zVar;
        this.i = new f(aVar, h(), gVar, zVar);
        this.h = obj;
    }

    public d.a.c.d a(ar arVar, am amVar, boolean z) {
        try {
            d.a.c.d dVarA = a(amVar.b(), amVar.c(), amVar.d(), arVar.r(), z).a(arVar, amVar, this);
            synchronized (this.f4251g) {
                this.o = dVarA;
            }
            return dVarA;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    private c a(int i, int i2, int i3, boolean z, boolean z2) throws Throwable {
        c cVarA;
        while (true) {
            cVarA = a(i, i2, i3, z);
            synchronized (this.f4251g) {
                if (cVarA.f4228b != 0) {
                    if (cVarA.a(z2)) {
                        break;
                    }
                    d();
                } else {
                    break;
                }
            }
        }
        return cVarA;
    }

    private c a(int i, int i2, int i3, boolean z) throws Throwable {
        c cVar;
        Socket socketG;
        c cVar2;
        boolean z2 = false;
        c cVar3 = null;
        bi biVar = null;
        synchronized (this.f4251g) {
            if (this.m) {
                throw new IllegalStateException("released");
            }
            if (this.o != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.n) {
                throw new IOException("Canceled");
            }
            cVar = this.k;
            socketG = g();
            if (this.k != null) {
                cVar3 = this.k;
                cVar = null;
            }
            if (!this.l) {
                cVar = null;
            }
            if (cVar3 == null) {
                d.a.a.f4187a.a(this.f4251g, this.f4246a, this, null);
                if (this.k != null) {
                    z2 = true;
                    cVar3 = this.k;
                } else {
                    biVar = this.f4250f;
                }
            }
        }
        d.a.c.a(socketG);
        if (cVar != null) {
            this.f4248c.b(this.f4247b, cVar);
        }
        if (z2) {
            this.f4248c.a(this.f4247b, cVar3);
        }
        if (cVar3 != null) {
            return cVar3;
        }
        boolean z3 = false;
        if (biVar == null && (this.f4249e == null || !this.f4249e.a())) {
            z3 = true;
            this.f4249e = this.i.b();
        }
        synchronized (this.f4251g) {
            if (this.n) {
                throw new IOException("Canceled");
            }
            if (z3) {
                List<bi> listC = this.f4249e.c();
                int size = listC.size();
                for (int i4 = 0; i4 < size; i4++) {
                    bi biVar2 = listC.get(i4);
                    d.a.a.f4187a.a(this.f4251g, this.f4246a, this, biVar2);
                    if (this.k != null) {
                        z2 = true;
                        c cVar4 = this.k;
                        this.f4250f = biVar2;
                        cVar2 = cVar4;
                        break;
                    }
                }
                cVar2 = cVar3;
            } else {
                cVar2 = cVar3;
            }
            if (!z2) {
                bi biVarB = biVar == null ? this.f4249e.b() : biVar;
                this.f4250f = biVarB;
                this.j = 0;
                cVar2 = new c(this.f4251g, biVarB);
                a(cVar2, false);
            }
        }
        if (z2) {
            this.f4248c.a(this.f4247b, cVar2);
            return cVar2;
        }
        cVar2.a(i, i2, i3, z, this.f4247b, this.f4248c);
        h().b(cVar2.a());
        Socket socket = null;
        synchronized (this.f4251g) {
            this.l = true;
            d.a.a.f4187a.b(this.f4251g, cVar2);
            if (cVar2.e()) {
                Socket socketA = d.a.a.f4187a.a(this.f4251g, this.f4246a, this);
                cVar2 = this.k;
                socket = socketA;
            }
        }
        d.a.c.a(socket);
        this.f4248c.a(this.f4247b, cVar2);
        return cVar2;
    }

    private Socket g() {
        if (!f4245d && !Thread.holdsLock(this.f4251g)) {
            throw new AssertionError();
        }
        c cVar = this.k;
        if (cVar == null || !cVar.f4227a) {
            return null;
        }
        return a(false, false, true);
    }

    public void a(boolean z, d.a.c.d dVar, long j, IOException iOException) {
        c cVar;
        Socket socketA;
        boolean z2;
        this.f4248c.b(this.f4247b, j);
        synchronized (this.f4251g) {
            if (dVar != null) {
                if (dVar == this.o) {
                    if (!z) {
                        this.k.f4228b++;
                    }
                    cVar = this.k;
                    socketA = a(z, false, true);
                    if (this.k != null) {
                        cVar = null;
                    }
                    z2 = this.m;
                }
            }
            throw new IllegalStateException("expected " + this.o + " but was " + dVar);
        }
        d.a.c.a(socketA);
        if (cVar != null) {
            this.f4248c.b(this.f4247b, cVar);
        }
        if (iOException != null) {
            this.f4248c.a(this.f4247b, iOException);
        } else if (z2) {
            this.f4248c.g(this.f4247b);
        }
    }

    public d.a.c.d a() {
        d.a.c.d dVar;
        synchronized (this.f4251g) {
            dVar = this.o;
        }
        return dVar;
    }

    private d h() {
        return d.a.a.f4187a.a(this.f4251g);
    }

    public synchronized c b() {
        return this.k;
    }

    public void c() {
        c cVar;
        Socket socketA;
        synchronized (this.f4251g) {
            cVar = this.k;
            socketA = a(false, true, false);
            if (this.k != null) {
                cVar = null;
            }
        }
        d.a.c.a(socketA);
        if (cVar != null) {
            this.f4248c.b(this.f4247b, cVar);
        }
    }

    public void d() {
        c cVar;
        Socket socketA;
        synchronized (this.f4251g) {
            cVar = this.k;
            socketA = a(true, false, false);
            if (this.k != null) {
                cVar = null;
            }
        }
        d.a.c.a(socketA);
        if (cVar != null) {
            this.f4248c.b(this.f4247b, cVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.net.Socket a(boolean r5, boolean r6, boolean r7) {
        /*
            r4 = this;
            r2 = 1
            r1 = 0
            boolean r0 = d.a.b.h.f4245d
            if (r0 != 0) goto L14
            d.p r0 = r4.f4251g
            boolean r0 = java.lang.Thread.holdsLock(r0)
            if (r0 != 0) goto L14
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        L14:
            if (r7 == 0) goto L18
            r4.o = r1
        L18:
            if (r6 == 0) goto L1c
            r4.m = r2
        L1c:
            d.a.b.c r0 = r4.k
            if (r0 == 0) goto L60
            if (r5 == 0) goto L26
            d.a.b.c r0 = r4.k
            r0.f4227a = r2
        L26:
            d.a.c.d r0 = r4.o
            if (r0 != 0) goto L60
            boolean r0 = r4.m
            if (r0 != 0) goto L34
            d.a.b.c r0 = r4.k
            boolean r0 = r0.f4227a
            if (r0 == 0) goto L60
        L34:
            d.a.b.c r0 = r4.k
            r4.b(r0)
            d.a.b.c r0 = r4.k
            java.util.List<java.lang.ref.Reference<d.a.b.h>> r0 = r0.f4230d
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L61
            d.a.b.c r0 = r4.k
            long r2 = java.lang.System.nanoTime()
            r0.f4231e = r2
            d.a.a r0 = d.a.a.f4187a
            d.p r2 = r4.f4251g
            d.a.b.c r3 = r4.k
            boolean r0 = r0.a(r2, r3)
            if (r0 == 0) goto L61
            d.a.b.c r0 = r4.k
            java.net.Socket r0 = r0.c()
        L5d:
            r4.k = r1
            r1 = r0
        L60:
            return r1
        L61:
            r0 = r1
            goto L5d
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a.b.h.a(boolean, boolean, boolean):java.net.Socket");
    }

    public void e() {
        d.a.c.d dVar;
        c cVar;
        synchronized (this.f4251g) {
            this.n = true;
            dVar = this.o;
            cVar = this.k;
        }
        if (dVar != null) {
            dVar.c();
        } else if (cVar != null) {
            cVar.b();
        }
    }

    public void a(IOException iOException) {
        c cVar;
        Socket socketA;
        boolean z = false;
        boolean z2 = true;
        synchronized (this.f4251g) {
            if (iOException instanceof d.a.e.am) {
                d.a.e.am amVar = (d.a.e.am) iOException;
                if (amVar.f4351a == d.a.e.b.REFUSED_STREAM) {
                    this.j++;
                }
                if (amVar.f4351a != d.a.e.b.REFUSED_STREAM || this.j > 1) {
                    this.f4250f = null;
                    z = true;
                }
                z2 = z;
            } else if (this.k == null || (this.k.e() && !(iOException instanceof d.a.e.a))) {
                z2 = false;
            } else if (this.k.f4228b == 0) {
                if (this.f4250f != null && iOException != null) {
                    this.i.a(this.f4250f, iOException);
                }
                this.f4250f = null;
            }
            cVar = this.k;
            socketA = a(z2, false, true);
            if (this.k != null || !this.l) {
                cVar = null;
            }
        }
        d.a.c.a(socketA);
        if (cVar != null) {
            this.f4248c.b(this.f4247b, cVar);
        }
    }

    public void a(c cVar, boolean z) {
        if (!f4245d && !Thread.holdsLock(this.f4251g)) {
            throw new AssertionError();
        }
        if (this.k != null) {
            throw new IllegalStateException();
        }
        this.k = cVar;
        this.l = z;
        cVar.f4230d.add(new i(this, this.h));
    }

    private void b(c cVar) {
        int size = cVar.f4230d.size();
        for (int i = 0; i < size; i++) {
            if (cVar.f4230d.get(i).get() == this) {
                cVar.f4230d.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public Socket a(c cVar) {
        if (!f4245d && !Thread.holdsLock(this.f4251g)) {
            throw new AssertionError();
        }
        if (this.o != null || this.k.f4230d.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<h> reference = this.k.f4230d.get(0);
        Socket socketA = a(true, false, false);
        this.k = cVar;
        cVar.f4230d.add(reference);
        return socketA;
    }

    public boolean f() {
        return this.f4250f != null || (this.f4249e != null && this.f4249e.a()) || this.i.a();
    }

    public String toString() {
        c cVarB = b();
        return cVarB != null ? cVarB.toString() : this.f4246a.toString();
    }
}

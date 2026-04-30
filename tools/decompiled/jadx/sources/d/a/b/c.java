package d.a.b;

import com.google.gdata.data.Category;
import d.a.e.ab;
import d.a.e.j;
import d.a.e.s;
import d.af;
import d.ai;
import d.am;
import d.ar;
import d.au;
import d.ax;
import d.ay;
import d.bi;
import d.o;
import d.p;
import d.r;
import d.z;
import e.q;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import org.mortbay.jetty.HttpHeaders;

/* JADX INFO: compiled from: RealConnection.java */
/* JADX INFO: loaded from: classes3.dex */
public final class c extends s implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f4227a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4228b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4229c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<Reference<h>> f4230d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f4231e = Long.MAX_VALUE;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p f4232g;
    private final bi h;
    private Socket i;
    private Socket j;
    private af k;
    private au l;
    private j m;
    private e.j n;
    private e.i o;

    public c(p pVar, bi biVar) {
        this.f4232g = pVar;
        this.h = biVar;
    }

    public void a(int i, int i2, int i3, boolean z, d.g gVar, z zVar) throws Throwable {
        e eVar;
        if (this.l != null) {
            throw new IllegalStateException("already connected");
        }
        List<r> listF = this.h.a().f();
        b bVar = new b(listF);
        if (this.h.a().i() == null) {
            if (!listF.contains(r.f4673c)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
            }
            String strF = this.h.a().a().f();
            if (!d.a.g.i.b().b(strF)) {
                throw new e(new UnknownServiceException("CLEARTEXT communication to " + strF + " not permitted by network security policy"));
            }
        }
        e eVar2 = null;
        while (true) {
            try {
                if (this.h.d()) {
                    a(i, i2, i3, gVar, zVar);
                    if (this.i != null) {
                        break;
                        break;
                    }
                    break;
                }
                a(i, i2, gVar, zVar);
                a(bVar, gVar, zVar);
                zVar.a(gVar, this.h.c(), this.h.b(), this.l);
                break;
            } catch (IOException e2) {
                d.a.c.a(this.j);
                d.a.c.a(this.i);
                this.j = null;
                this.i = null;
                this.n = null;
                this.o = null;
                this.k = null;
                this.l = null;
                this.m = null;
                zVar.a(gVar, this.h.c(), this.h.b(), null, e2);
                if (eVar2 == null) {
                    eVar = new e(e2);
                } else {
                    eVar2.a(e2);
                    eVar = eVar2;
                }
                if (!z) {
                    throw eVar;
                }
                if (!bVar.a(e2)) {
                    throw eVar;
                }
                eVar2 = eVar;
            }
        }
        if (this.h.d() && this.i == null) {
            throw new e(new ProtocolException("Too many tunnel connections attempted: 21"));
        }
        if (this.m != null) {
            synchronized (this.f4232g) {
                this.f4229c = this.m.a();
            }
        }
    }

    private void a(int i, int i2, int i3, d.g gVar, z zVar) throws IOException {
        ax axVarF = f();
        ai aiVarA = axVarF.a();
        for (int i4 = 0; i4 < 21; i4++) {
            a(i, i2, gVar, zVar);
            axVarF = a(i2, i3, axVarF, aiVarA);
            if (axVarF != null) {
                d.a.c.a(this.i);
                this.i = null;
                this.o = null;
                this.n = null;
                zVar.a(gVar, this.h.c(), this.h.b(), null);
            } else {
                return;
            }
        }
    }

    private void a(int i, int i2, d.g gVar, z zVar) throws IOException {
        Socket socketCreateSocket;
        Proxy proxyB = this.h.b();
        d.a aVarA = this.h.a();
        if (proxyB.type() == Proxy.Type.DIRECT || proxyB.type() == Proxy.Type.HTTP) {
            socketCreateSocket = aVarA.c().createSocket();
        } else {
            socketCreateSocket = new Socket(proxyB);
        }
        this.i = socketCreateSocket;
        zVar.a(gVar, this.h.c(), proxyB);
        this.i.setSoTimeout(i2);
        try {
            d.a.g.i.b().a(this.i, this.h.c(), i);
            try {
                this.n = q.a(q.b(this.i));
                this.o = q.a(q.a(this.i));
            } catch (NullPointerException e2) {
                if ("throw with null exception".equals(e2.getMessage())) {
                    throw new IOException(e2);
                }
            }
        } catch (ConnectException e3) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.h.c());
            connectException.initCause(e3);
            throw connectException;
        }
    }

    private void a(b bVar, d.g gVar, z zVar) throws Throwable {
        if (this.h.a().i() == null) {
            this.l = au.HTTP_1_1;
            this.j = this.i;
            return;
        }
        zVar.b(gVar);
        a(bVar);
        zVar.a(gVar, this.k);
        if (this.l == au.HTTP_2) {
            this.j.setSoTimeout(0);
            this.m = new d.a.e.r(true).a(this.j, this.h.a().a().f(), this.n, this.o).a(this).a();
            this.m.c();
        }
    }

    private void a(b bVar) throws Throwable {
        SSLSocket sSLSocket;
        au auVarA;
        SSLSocket sSLSocket2 = null;
        d.a aVarA = this.h.a();
        try {
            try {
                sSLSocket = (SSLSocket) aVarA.i().createSocket(this.i, aVarA.a().f(), aVarA.a().g(), true);
            } catch (Throwable th) {
                th = th;
            }
        } catch (AssertionError e2) {
            e = e2;
        }
        try {
            r rVarA = bVar.a(sSLSocket);
            if (rVarA.d()) {
                d.a.g.i.b().a(sSLSocket, aVarA.a().f(), aVarA.e());
            }
            sSLSocket.startHandshake();
            af afVarA = af.a(sSLSocket.getSession());
            if (!aVarA.j().verify(aVarA.a().f(), sSLSocket.getSession())) {
                X509Certificate x509Certificate = (X509Certificate) afVarA.b().get(0);
                throw new SSLPeerUnverifiedException("Hostname " + aVarA.a().f() + " not verified:\n    certificate: " + d.j.a((Certificate) x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + d.a.i.e.a(x509Certificate));
            }
            aVarA.k().a(aVarA.a().f(), afVarA.b());
            String strA = rVarA.d() ? d.a.g.i.b().a(sSLSocket) : null;
            this.j = sSLSocket;
            this.n = q.a(q.b(this.j));
            this.o = q.a(q.a(this.j));
            this.k = afVarA;
            if (strA != null) {
                auVarA = au.a(strA);
            } else {
                auVarA = au.HTTP_1_1;
            }
            this.l = auVarA;
            if (sSLSocket != null) {
                d.a.g.i.b().b(sSLSocket);
            }
        } catch (AssertionError e3) {
            e = e3;
            if (!d.a.c.a(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            sSLSocket2 = sSLSocket;
            th = th2;
            if (sSLSocket2 != null) {
                d.a.g.i.b().b(sSLSocket2);
            }
            d.a.c.a((Socket) sSLSocket2);
            throw th;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:217)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:68)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:112)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:104)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    private d.ax a(int r9, int r10, d.ax r11, d.ai r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a.b.c.a(int, int, d.ax, d.ai):d.ax");
    }

    private ax f() {
        return new ay().a(this.h.a().a()).a("Host", d.a.c.a(this.h.a().a(), true)).a(HttpHeaders.PROXY_CONNECTION, HttpHeaders.KEEP_ALIVE).a("User-Agent", d.a.f.a()).b();
    }

    public boolean a(d.a aVar, @Nullable bi biVar) {
        if (this.f4230d.size() >= this.f4229c || this.f4227a || !d.a.a.f4187a.a(this.h.a(), aVar)) {
            return false;
        }
        if (aVar.a().f().equals(a().a().a().f())) {
            return true;
        }
        if (this.m == null || biVar == null || biVar.b().type() != Proxy.Type.DIRECT || this.h.b().type() != Proxy.Type.DIRECT || !this.h.c().equals(biVar.c()) || biVar.a().j() != d.a.i.e.f4500a || !a(aVar.a())) {
            return false;
        }
        try {
            aVar.k().a(aVar.a().f(), d().b());
            return true;
        } catch (SSLPeerUnverifiedException e2) {
            return false;
        }
    }

    public boolean a(ai aiVar) {
        if (aiVar.g() != this.h.a().a().g()) {
            return false;
        }
        if (aiVar.f().equals(this.h.a().a().f())) {
            return true;
        }
        return this.k != null && d.a.i.e.f4500a.a(aiVar.f(), (X509Certificate) this.k.b().get(0));
    }

    public d.a.c.d a(ar arVar, am amVar, h hVar) throws SocketException {
        if (this.m != null) {
            return new d.a.e.h(arVar, amVar, hVar, this.m);
        }
        this.j.setSoTimeout(amVar.c());
        this.n.a().a(amVar.c(), TimeUnit.MILLISECONDS);
        this.o.a().a(amVar.d(), TimeUnit.MILLISECONDS);
        return new d.a.d.a(arVar, hVar, this.n, this.o);
    }

    @Override // d.o
    public bi a() {
        return this.h;
    }

    public void b() {
        d.a.c.a(this.i);
    }

    public Socket c() {
        return this.j;
    }

    public boolean a(boolean z) {
        if (this.j.isClosed() || this.j.isInputShutdown() || this.j.isOutputShutdown()) {
            return false;
        }
        if (this.m != null) {
            return !this.m.d();
        }
        if (!z) {
            return true;
        }
        try {
            int soTimeout = this.j.getSoTimeout();
            try {
                this.j.setSoTimeout(1);
                if (this.n.f()) {
                    this.j.setSoTimeout(soTimeout);
                    return false;
                }
                this.j.setSoTimeout(soTimeout);
                return true;
            } catch (Throwable th) {
                this.j.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException e2) {
            return true;
        } catch (IOException e3) {
            return false;
        }
    }

    @Override // d.a.e.s
    public void a(ab abVar) throws IOException {
        abVar.a(d.a.e.b.REFUSED_STREAM);
    }

    @Override // d.a.e.s
    public void a(j jVar) {
        synchronized (this.f4232g) {
            this.f4229c = jVar.a();
        }
    }

    public af d() {
        return this.k;
    }

    public boolean e() {
        return this.m != null;
    }

    public String toString() {
        return "Connection{" + this.h.a().a().f() + ":" + this.h.a().a().g() + ", proxy=" + this.h.b() + " hostAddress=" + this.h.c() + " cipherSuite=" + (this.k != null ? this.k.a() : "none") + " protocol=" + this.l + Category.SCHEME_SUFFIX;
    }
}

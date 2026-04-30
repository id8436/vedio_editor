package d;

import java.net.Proxy;
import java.net.ProxySelector;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: compiled from: OkHttpClient.java */
/* JADX INFO: loaded from: classes.dex */
public class ar implements h, Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final List<au> f4552a = d.a.c.a(au.HTTP_2, au.HTTP_1_1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final List<r> f4553b = d.a.c.a(r.f4671a, r.f4673c);
    final int A;
    final int B;
    final int C;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final w f4554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    final Proxy f4555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<au> f4556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<r> f4557f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final List<al> f4558g;
    final List<al> h;
    final ac i;
    final ProxySelector j;
    final u k;

    @Nullable
    final d l;

    @Nullable
    final d.a.a.i m;
    final SocketFactory n;

    @Nullable
    final SSLSocketFactory o;

    @Nullable
    final d.a.i.c p;
    final HostnameVerifier q;
    final j r;
    final b s;
    final b t;
    final p u;
    final x v;
    final boolean w;
    final boolean x;
    final boolean y;
    final int z;

    static {
        d.a.a.f4187a = new as();
    }

    public ar() {
        this(new at());
    }

    ar(at atVar) {
        this.f4554c = atVar.f4559a;
        this.f4555d = atVar.f4560b;
        this.f4556e = atVar.f4561c;
        this.f4557f = atVar.f4562d;
        this.f4558g = d.a.c.a(atVar.f4563e);
        this.h = d.a.c.a(atVar.f4564f);
        this.i = atVar.f4565g;
        this.j = atVar.h;
        this.k = atVar.i;
        this.l = atVar.j;
        this.m = atVar.k;
        this.n = atVar.l;
        Iterator<r> it = this.f4557f.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z = z || it.next().a();
        }
        if (atVar.m != null || !z) {
            this.o = atVar.m;
            this.p = atVar.n;
        } else {
            X509TrustManager x509TrustManagerZ = z();
            this.o = a(x509TrustManagerZ);
            this.p = d.a.i.c.a(x509TrustManagerZ);
        }
        this.q = atVar.o;
        this.r = atVar.p.a(this.p);
        this.s = atVar.q;
        this.t = atVar.r;
        this.u = atVar.s;
        this.v = atVar.t;
        this.w = atVar.u;
        this.x = atVar.v;
        this.y = atVar.w;
        this.z = atVar.x;
        this.A = atVar.y;
        this.B = atVar.z;
        this.C = atVar.A;
        if (this.f4558g.contains(null)) {
            throw new IllegalStateException("Null interceptor: " + this.f4558g);
        }
        if (this.h.contains(null)) {
            throw new IllegalStateException("Null network interceptor: " + this.h);
        }
    }

    private X509TrustManager z() {
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
            if (trustManagers.length != 1 || !(trustManagers[0] instanceof X509TrustManager)) {
                throw new IllegalStateException("Unexpected default trust managers:" + Arrays.toString(trustManagers));
            }
            return (X509TrustManager) trustManagers[0];
        } catch (GeneralSecurityException e2) {
            throw d.a.c.a("No System TLS", (Exception) e2);
        }
    }

    private SSLSocketFactory a(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            sSLContext.init(null, new TrustManager[]{x509TrustManager}, null);
            return sSLContext.getSocketFactory();
        } catch (GeneralSecurityException e2) {
            throw d.a.c.a("No System TLS", (Exception) e2);
        }
    }

    public int a() {
        return this.z;
    }

    public int b() {
        return this.A;
    }

    public int c() {
        return this.B;
    }

    public Proxy d() {
        return this.f4555d;
    }

    public ProxySelector e() {
        return this.j;
    }

    public u f() {
        return this.k;
    }

    d.a.a.i g() {
        return this.l != null ? this.l.f4632a : this.m;
    }

    public x h() {
        return this.v;
    }

    public SocketFactory i() {
        return this.n;
    }

    public SSLSocketFactory j() {
        return this.o;
    }

    public HostnameVerifier k() {
        return this.q;
    }

    public j l() {
        return this.r;
    }

    public b m() {
        return this.t;
    }

    public b n() {
        return this.s;
    }

    public p o() {
        return this.u;
    }

    public boolean p() {
        return this.w;
    }

    public boolean q() {
        return this.x;
    }

    public boolean r() {
        return this.y;
    }

    public w s() {
        return this.f4554c;
    }

    public List<au> t() {
        return this.f4556e;
    }

    public List<r> u() {
        return this.f4557f;
    }

    public List<al> v() {
        return this.f4558g;
    }

    public List<al> w() {
        return this.h;
    }

    public ac x() {
        return this.i;
    }

    @Override // d.h
    public g a(ax axVar) {
        return av.a(this, axVar, false);
    }

    public at y() {
        return new at(this);
    }
}

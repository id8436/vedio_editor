package d;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: OkHttpClient.java */
/* JADX INFO: loaded from: classes.dex */
public final class at {
    int A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    w f4559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    Proxy f4560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    List<au> f4561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<r> f4562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<al> f4563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<al> f4564f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ac f4565g;
    ProxySelector h;
    u i;

    @Nullable
    d j;

    @Nullable
    d.a.a.i k;
    SocketFactory l;

    @Nullable
    SSLSocketFactory m;

    @Nullable
    d.a.i.c n;
    HostnameVerifier o;
    j p;
    b q;
    b r;
    p s;
    x t;
    boolean u;
    boolean v;
    boolean w;
    int x;
    int y;
    int z;

    public at() {
        this.f4563e = new ArrayList();
        this.f4564f = new ArrayList();
        this.f4559a = new w();
        this.f4561c = ar.f4552a;
        this.f4562d = ar.f4553b;
        this.f4565g = z.a(z.f4698a);
        this.h = ProxySelector.getDefault();
        this.i = u.f4689a;
        this.l = SocketFactory.getDefault();
        this.o = d.a.i.e.f4500a;
        this.p = j.f4648a;
        this.q = b.f4591b;
        this.r = b.f4591b;
        this.s = new p();
        this.t = x.f4697a;
        this.u = true;
        this.v = true;
        this.w = true;
        this.x = 10000;
        this.y = 10000;
        this.z = 10000;
        this.A = 0;
    }

    at(ar arVar) {
        this.f4563e = new ArrayList();
        this.f4564f = new ArrayList();
        this.f4559a = arVar.f4554c;
        this.f4560b = arVar.f4555d;
        this.f4561c = arVar.f4556e;
        this.f4562d = arVar.f4557f;
        this.f4563e.addAll(arVar.f4558g);
        this.f4564f.addAll(arVar.h);
        this.f4565g = arVar.i;
        this.h = arVar.j;
        this.i = arVar.k;
        this.k = arVar.m;
        this.j = arVar.l;
        this.l = arVar.n;
        this.m = arVar.o;
        this.n = arVar.p;
        this.o = arVar.q;
        this.p = arVar.r;
        this.q = arVar.s;
        this.r = arVar.t;
        this.s = arVar.u;
        this.t = arVar.v;
        this.u = arVar.w;
        this.v = arVar.x;
        this.w = arVar.y;
        this.x = arVar.z;
        this.y = arVar.A;
        this.z = arVar.B;
        this.A = arVar.C;
    }

    public at a(long j, TimeUnit timeUnit) {
        this.x = d.a.c.a("timeout", j, timeUnit);
        return this;
    }

    public at b(long j, TimeUnit timeUnit) {
        this.y = d.a.c.a("timeout", j, timeUnit);
        return this;
    }

    public at c(long j, TimeUnit timeUnit) {
        this.z = d.a.c.a("timeout", j, timeUnit);
        return this;
    }

    public at a(SSLSocketFactory sSLSocketFactory, X509TrustManager x509TrustManager) {
        if (sSLSocketFactory == null) {
            throw new NullPointerException("sslSocketFactory == null");
        }
        if (x509TrustManager == null) {
            throw new NullPointerException("trustManager == null");
        }
        this.m = sSLSocketFactory;
        this.n = d.a.i.c.a(x509TrustManager);
        return this;
    }

    public at a(j jVar) {
        if (jVar == null) {
            throw new NullPointerException("certificatePinner == null");
        }
        this.p = jVar;
        return this;
    }

    public at a(b bVar) {
        if (bVar == null) {
            throw new NullPointerException("authenticator == null");
        }
        this.r = bVar;
        return this;
    }

    public at a(al alVar) {
        if (alVar == null) {
            throw new IllegalArgumentException("interceptor == null");
        }
        this.f4563e.add(alVar);
        return this;
    }

    public at b(al alVar) {
        if (alVar == null) {
            throw new IllegalArgumentException("interceptor == null");
        }
        this.f4564f.add(alVar);
        return this;
    }

    public ar a() {
        return new ar(this);
    }
}

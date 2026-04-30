package d;

import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: Address.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ai f4180a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final x f4181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final SocketFactory f4182c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f4183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<au> f4184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<r> f4185f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ProxySelector f4186g;

    @Nullable
    final Proxy h;

    @Nullable
    final SSLSocketFactory i;

    @Nullable
    final HostnameVerifier j;

    @Nullable
    final j k;

    public a(String str, int i, x xVar, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable j jVar, b bVar, @Nullable Proxy proxy, List<au> list, List<r> list2, ProxySelector proxySelector) {
        this.f4180a = new aj().a(sSLSocketFactory != null ? "https" : "http").d(str).a(i).c();
        if (xVar == null) {
            throw new NullPointerException("dns == null");
        }
        this.f4181b = xVar;
        if (socketFactory == null) {
            throw new NullPointerException("socketFactory == null");
        }
        this.f4182c = socketFactory;
        if (bVar == null) {
            throw new NullPointerException("proxyAuthenticator == null");
        }
        this.f4183d = bVar;
        if (list == null) {
            throw new NullPointerException("protocols == null");
        }
        this.f4184e = d.a.c.a(list);
        if (list2 == null) {
            throw new NullPointerException("connectionSpecs == null");
        }
        this.f4185f = d.a.c.a(list2);
        if (proxySelector == null) {
            throw new NullPointerException("proxySelector == null");
        }
        this.f4186g = proxySelector;
        this.h = proxy;
        this.i = sSLSocketFactory;
        this.j = hostnameVerifier;
        this.k = jVar;
    }

    public ai a() {
        return this.f4180a;
    }

    public x b() {
        return this.f4181b;
    }

    public SocketFactory c() {
        return this.f4182c;
    }

    public b d() {
        return this.f4183d;
    }

    public List<au> e() {
        return this.f4184e;
    }

    public List<r> f() {
        return this.f4185f;
    }

    public ProxySelector g() {
        return this.f4186g;
    }

    @Nullable
    public Proxy h() {
        return this.h;
    }

    @Nullable
    public SSLSocketFactory i() {
        return this.i;
    }

    @Nullable
    public HostnameVerifier j() {
        return this.j;
    }

    @Nullable
    public j k() {
        return this.k;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof a) && this.f4180a.equals(((a) obj).f4180a) && a((a) obj);
    }

    public int hashCode() {
        return (((this.j != null ? this.j.hashCode() : 0) + (((this.i != null ? this.i.hashCode() : 0) + (((this.h != null ? this.h.hashCode() : 0) + ((((((((((((this.f4180a.hashCode() + 527) * 31) + this.f4181b.hashCode()) * 31) + this.f4183d.hashCode()) * 31) + this.f4184e.hashCode()) * 31) + this.f4185f.hashCode()) * 31) + this.f4186g.hashCode()) * 31)) * 31)) * 31)) * 31) + (this.k != null ? this.k.hashCode() : 0);
    }

    boolean a(a aVar) {
        return this.f4181b.equals(aVar.f4181b) && this.f4183d.equals(aVar.f4183d) && this.f4184e.equals(aVar.f4184e) && this.f4185f.equals(aVar.f4185f) && this.f4186g.equals(aVar.f4186g) && d.a.c.a(this.h, aVar.h) && d.a.c.a(this.i, aVar.i) && d.a.c.a(this.j, aVar.j) && d.a.c.a(this.k, aVar.k) && a().g() == aVar.a().g();
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder().append("Address{").append(this.f4180a.f()).append(":").append(this.f4180a.g());
        if (this.h != null) {
            sbAppend.append(", proxy=").append(this.h);
        } else {
            sbAppend.append(", proxySelector=").append(this.f4186g);
        }
        sbAppend.append("}");
        return sbAppend.toString();
    }
}

package d;

import java.net.InetSocketAddress;
import java.net.Proxy;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Route.java */
/* JADX INFO: loaded from: classes3.dex */
public final class bi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final a f4622a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Proxy f4623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final InetSocketAddress f4624c;

    public bi(a aVar, Proxy proxy, InetSocketAddress inetSocketAddress) {
        if (aVar == null) {
            throw new NullPointerException("address == null");
        }
        if (proxy == null) {
            throw new NullPointerException("proxy == null");
        }
        if (inetSocketAddress == null) {
            throw new NullPointerException("inetSocketAddress == null");
        }
        this.f4622a = aVar;
        this.f4623b = proxy;
        this.f4624c = inetSocketAddress;
    }

    public a a() {
        return this.f4622a;
    }

    public Proxy b() {
        return this.f4623b;
    }

    public InetSocketAddress c() {
        return this.f4624c;
    }

    public boolean d() {
        return this.f4622a.i != null && this.f4623b.type() == Proxy.Type.HTTP;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof bi) && ((bi) obj).f4622a.equals(this.f4622a) && ((bi) obj).f4623b.equals(this.f4623b) && ((bi) obj).f4624c.equals(this.f4624c);
    }

    public int hashCode() {
        return ((((this.f4622a.hashCode() + 527) * 31) + this.f4623b.hashCode()) * 31) + this.f4624c.hashCode();
    }

    public String toString() {
        return "Route{" + this.f4624c + "}";
    }
}

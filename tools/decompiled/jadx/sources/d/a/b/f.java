package d.a.b;

import d.ai;
import d.bi;
import d.z;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: RouteSelector.java */
/* JADX INFO: loaded from: classes3.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.a f4236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f4237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d.g f4238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z f4239d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4241f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Proxy> f4240e = Collections.emptyList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<InetSocketAddress> f4242g = Collections.emptyList();
    private final List<bi> h = new ArrayList();

    public f(d.a aVar, d dVar, d.g gVar, z zVar) {
        this.f4236a = aVar;
        this.f4237b = dVar;
        this.f4238c = gVar;
        this.f4239d = zVar;
        a(aVar.a(), aVar.h());
    }

    public boolean a() {
        return c() || !this.h.isEmpty();
    }

    public g b() throws IOException {
        if (!a()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (c()) {
            Proxy proxyD = d();
            int size = this.f4242g.size();
            for (int i = 0; i < size; i++) {
                bi biVar = new bi(this.f4236a, proxyD, this.f4242g.get(i));
                if (this.f4237b.c(biVar)) {
                    this.h.add(biVar);
                } else {
                    arrayList.add(biVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.h);
            this.h.clear();
        }
        return new g(arrayList);
    }

    public void a(bi biVar, IOException iOException) {
        if (biVar.b().type() != Proxy.Type.DIRECT && this.f4236a.g() != null) {
            this.f4236a.g().connectFailed(this.f4236a.a().a(), biVar.b().address(), iOException);
        }
        this.f4237b.a(biVar);
    }

    private void a(ai aiVar, Proxy proxy) {
        if (proxy != null) {
            this.f4240e = Collections.singletonList(proxy);
        } else {
            List<Proxy> listSelect = this.f4236a.g().select(aiVar.a());
            this.f4240e = (listSelect == null || listSelect.isEmpty()) ? d.a.c.a(Proxy.NO_PROXY) : d.a.c.a(listSelect);
        }
        this.f4241f = 0;
    }

    private boolean c() {
        return this.f4241f < this.f4240e.size();
    }

    private Proxy d() throws IOException {
        if (!c()) {
            throw new SocketException("No route to " + this.f4236a.a().f() + "; exhausted proxy configurations: " + this.f4240e);
        }
        List<Proxy> list = this.f4240e;
        int i = this.f4241f;
        this.f4241f = i + 1;
        Proxy proxy = list.get(i);
        a(proxy);
        return proxy;
    }

    private void a(Proxy proxy) throws IOException {
        int iG;
        String str;
        this.f4242g = new ArrayList();
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            String strF = this.f4236a.a().f();
            iG = this.f4236a.a().g();
            str = strF;
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            String strA = a(inetSocketAddress);
            iG = inetSocketAddress.getPort();
            str = strA;
        }
        if (iG < 1 || iG > 65535) {
            throw new SocketException("No route to " + str + ":" + iG + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            this.f4242g.add(InetSocketAddress.createUnresolved(str, iG));
            return;
        }
        this.f4239d.a(this.f4238c, str);
        List<InetAddress> listA = this.f4236a.b().a(str);
        if (listA.isEmpty()) {
            throw new UnknownHostException(this.f4236a.b() + " returned no addresses for " + str);
        }
        this.f4239d.a(this.f4238c, str, listA);
        int size = listA.size();
        for (int i = 0; i < size; i++) {
            this.f4242g.add(new InetSocketAddress(listA.get(i), iG));
        }
    }

    static String a(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        return address == null ? inetSocketAddress.getHostName() : address.getHostAddress();
    }
}

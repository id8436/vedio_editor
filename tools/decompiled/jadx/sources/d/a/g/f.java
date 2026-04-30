package d.a.g;

import d.au;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: JdkWithJettyBootPlatform.java */
/* JADX INFO: loaded from: classes3.dex */
class f extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Method f4471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f4472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Method f4473c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Class<?> f4474d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class<?> f4475e;

    f(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f4471a = method;
        this.f4472b = method2;
        this.f4473c = method3;
        this.f4474d = cls;
        this.f4475e = cls2;
    }

    @Override // d.a.g.i
    public void a(SSLSocket sSLSocket, String str, List<au> list) {
        try {
            this.f4471a.invoke(null, sSLSocket, Proxy.newProxyInstance(i.class.getClassLoader(), new Class[]{this.f4474d, this.f4475e}, new g(a(list))));
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw d.a.c.a("unable to set alpn", (Exception) e2);
        }
    }

    @Override // d.a.g.i
    public void b(SSLSocket sSLSocket) {
        try {
            this.f4473c.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw d.a.c.a("unable to remove alpn", (Exception) e2);
        }
    }

    @Override // d.a.g.i
    public String a(SSLSocket sSLSocket) {
        try {
            g gVar = (g) Proxy.getInvocationHandler(this.f4472b.invoke(null, sSLSocket));
            if (gVar.f4476a || gVar.f4477b != null) {
                return gVar.f4476a ? null : gVar.f4477b;
            }
            i.b().a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw d.a.c.a("unable to get selected protocol", (Exception) e2);
        }
    }

    public static i a() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            return new f(cls.getMethod("put", SSLSocket.class, Class.forName("org.eclipse.jetty.alpn.ALPN$Provider")), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            return null;
        }
    }
}

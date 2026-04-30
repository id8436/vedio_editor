package d.a.g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: compiled from: AndroidPlatform.java */
/* JADX INFO: loaded from: classes3.dex */
final class b extends d.a.i.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f4463b;

    b(Object obj, Method method) {
        this.f4462a = obj;
        this.f4463b = method;
    }

    @Override // d.a.i.c
    public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
        try {
            return (List) this.f4463b.invoke(this.f4462a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
        } catch (IllegalAccessException e2) {
            throw new AssertionError(e2);
        } catch (InvocationTargetException e3) {
            SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e3.getMessage());
            sSLPeerUnverifiedException.initCause(e3);
            throw sSLPeerUnverifiedException;
        }
    }

    public boolean equals(Object obj) {
        return obj instanceof b;
    }

    public int hashCode() {
        return 0;
    }
}

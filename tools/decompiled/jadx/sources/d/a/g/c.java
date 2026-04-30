package d.a.g;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: AndroidPlatform.java */
/* JADX INFO: loaded from: classes3.dex */
final class c implements d.a.i.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final X509TrustManager f4464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Method f4465b;

    c(X509TrustManager x509TrustManager, Method method) {
        this.f4465b = method;
        this.f4464a = x509TrustManager;
    }

    @Override // d.a.i.f
    public X509Certificate a(X509Certificate x509Certificate) {
        try {
            TrustAnchor trustAnchor = (TrustAnchor) this.f4465b.invoke(this.f4464a, x509Certificate);
            if (trustAnchor != null) {
                return trustAnchor.getTrustedCert();
            }
            return null;
        } catch (IllegalAccessException e2) {
            throw d.a.c.a("unable to get issues and signature", (Exception) e2);
        } catch (InvocationTargetException e3) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f4464a.equals(cVar.f4464a) && this.f4465b.equals(cVar.f4465b);
    }

    public int hashCode() {
        return this.f4464a.hashCode() + (this.f4465b.hashCode() * 31);
    }
}

package d.a.i;

import d.a.g.i;
import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: CertificateChainCleaner.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class c {
    public abstract List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException;

    public static c a(X509TrustManager x509TrustManager) {
        return i.b().a(x509TrustManager);
    }
}

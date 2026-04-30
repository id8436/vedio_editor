package c.a.a.a.a.e;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: compiled from: NetworkUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {
    public static final SSLSocketFactory a(o oVar) throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
        sSLContext.init(null, new TrustManager[]{new p(new q(oVar.getKeyStoreStream(), oVar.getKeyStorePassword()), oVar)}, null);
        return sSLContext.getSocketFactory();
    }
}

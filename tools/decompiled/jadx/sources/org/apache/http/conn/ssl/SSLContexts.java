package org.apache.http.conn.ssl;

import com.adobe.premiereclip.dcx.DCXProjectKeys;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class SSLContexts {
    public static SSLContext createDefault() throws SSLInitializationException {
        try {
            SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
            sSLContext.init(null, null, null);
            return sSLContext;
        } catch (KeyManagementException e2) {
            throw new SSLInitializationException(e2.getMessage(), e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new SSLInitializationException(e3.getMessage(), e3);
        }
    }

    public static SSLContext createSystemDefault() throws SSLInitializationException {
        try {
            return SSLContext.getInstance(DCXProjectKeys.kDCXKey_Sequence_Bumper_Video_Default);
        } catch (NoSuchAlgorithmException e2) {
            return createDefault();
        }
    }

    public static SSLContextBuilder custom() {
        return new SSLContextBuilder();
    }
}

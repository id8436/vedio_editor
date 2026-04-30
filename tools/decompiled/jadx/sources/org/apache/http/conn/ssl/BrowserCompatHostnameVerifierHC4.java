package org.apache.http.conn.ssl;

import javax.net.ssl.SSLException;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class BrowserCompatHostnameVerifierHC4 extends AbstractVerifierHC4 {
    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, String[] strArr, String[] strArr2) throws SSLException {
        verify(str, strArr, strArr2, false);
    }

    @Override // org.apache.http.conn.ssl.AbstractVerifierHC4
    boolean validCountryWildcard(String str) {
        return true;
    }

    public final String toString() {
        return "BROWSER_COMPATIBLE";
    }
}

package d.a.b;

import d.r;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: ConnectionSpecSelector.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<r> f4223a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4224b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4225c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4226d;

    public b(List<r> list) {
        this.f4223a = list;
    }

    public r a(SSLSocket sSLSocket) throws IOException {
        r rVar;
        int i = this.f4224b;
        int size = this.f4223a.size();
        int i2 = i;
        while (true) {
            if (i2 >= size) {
                rVar = null;
                break;
            }
            rVar = this.f4223a.get(i2);
            if (!rVar.a(sSLSocket)) {
                i2++;
            } else {
                this.f4224b = i2 + 1;
                break;
            }
        }
        if (rVar == null) {
            throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f4226d + ", modes=" + this.f4223a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
        }
        this.f4225c = b(sSLSocket);
        d.a.a.f4187a.a(rVar, sSLSocket, this.f4226d);
        return rVar;
    }

    public boolean a(IOException iOException) {
        this.f4226d = true;
        if (!this.f4225c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return (iOException instanceof SSLHandshakeException) || (iOException instanceof SSLProtocolException);
    }

    private boolean b(SSLSocket sSLSocket) {
        int i = this.f4224b;
        while (true) {
            int i2 = i;
            if (i2 < this.f4223a.size()) {
                if (!this.f4223a.get(i2).a(sSLSocket)) {
                    i = i2 + 1;
                } else {
                    return true;
                }
            } else {
                return false;
            }
        }
    }
}

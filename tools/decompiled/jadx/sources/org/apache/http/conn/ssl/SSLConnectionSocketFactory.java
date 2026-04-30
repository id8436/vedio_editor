package org.apache.http.conn.ssl;

import android.net.SSLCertificateSocketFactory;
import android.os.Build;
import android.util.Log;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.SocketFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

/* JADX INFO: loaded from: classes3.dex */
@ThreadSafe
public class SSLConnectionSocketFactory implements LayeredConnectionSocketFactory {
    public static final String SSL = "SSL";
    public static final String SSLV2 = "SSLv2";
    private static final String TAG = "HttpClient";
    public static final String TLS = "TLS";
    private final X509HostnameVerifier hostnameVerifier;
    private final javax.net.ssl.SSLSocketFactory socketfactory;
    private final String[] supportedCipherSuites;
    private final String[] supportedProtocols;
    public static final X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER = new AllowAllHostnameVerifierHC4();
    public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new BrowserCompatHostnameVerifierHC4();
    public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = new StrictHostnameVerifierHC4();

    public static SSLConnectionSocketFactory getSocketFactory() throws SSLInitializationException {
        return new SSLConnectionSocketFactory((javax.net.ssl.SSLSocketFactory) SSLCertificateSocketFactory.getDefault(0), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    private static String[] split(String str) {
        if (TextUtils.isBlank(str)) {
            return null;
        }
        return str.split(" *, *");
    }

    public static SSLConnectionSocketFactory getSystemSocketFactory() throws SSLInitializationException {
        return new SSLConnectionSocketFactory((javax.net.ssl.SSLSocketFactory) SSLCertificateSocketFactory.getDefault(0), split(System.getProperty("https.protocols")), split(System.getProperty("https.cipherSuites")), BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLConnectionSocketFactory(SSLContext sSLContext) {
        this(sSLContext, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLConnectionSocketFactory(SSLContext sSLContext, X509HostnameVerifier x509HostnameVerifier) {
        this(((SSLContext) Args.notNull(sSLContext, "SSL context")).getSocketFactory(), (String[]) null, (String[]) null, x509HostnameVerifier);
    }

    public SSLConnectionSocketFactory(SSLContext sSLContext, String[] strArr, String[] strArr2, X509HostnameVerifier x509HostnameVerifier) {
        this(((SSLContext) Args.notNull(sSLContext, "SSL context")).getSocketFactory(), strArr, strArr2, x509HostnameVerifier);
    }

    public SSLConnectionSocketFactory(javax.net.ssl.SSLSocketFactory sSLSocketFactory, X509HostnameVerifier x509HostnameVerifier) {
        this(sSLSocketFactory, (String[]) null, (String[]) null, x509HostnameVerifier);
    }

    public SSLConnectionSocketFactory(javax.net.ssl.SSLSocketFactory sSLSocketFactory, String[] strArr, String[] strArr2, X509HostnameVerifier x509HostnameVerifier) {
        this.socketfactory = (javax.net.ssl.SSLSocketFactory) Args.notNull(sSLSocketFactory, "SSL socket factory");
        this.supportedProtocols = strArr;
        this.supportedCipherSuites = strArr2;
        this.hostnameVerifier = x509HostnameVerifier == null ? BROWSER_COMPATIBLE_HOSTNAME_VERIFIER : x509HostnameVerifier;
    }

    protected void prepareSocket(SSLSocket sSLSocket) throws IOException {
    }

    @Override // org.apache.http.conn.socket.ConnectionSocketFactory
    public Socket createSocket(HttpContext httpContext) throws IOException {
        return SocketFactory.getDefault().createSocket();
    }

    @Override // org.apache.http.conn.socket.ConnectionSocketFactory
    public Socket connectSocket(int i, Socket socket, HttpHost httpHost, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, HttpContext httpContext) throws IOException {
        Args.notNull(httpHost, "HTTP host");
        Args.notNull(inetSocketAddress, "Remote address");
        Socket socketCreateSocket = socket != null ? socket : createSocket(httpContext);
        if (inetSocketAddress2 != null) {
            socketCreateSocket.bind(inetSocketAddress2);
        }
        try {
            socketCreateSocket.connect(inetSocketAddress, i);
            if (socketCreateSocket instanceof SSLSocket) {
                SSLSocket sSLSocket = (SSLSocket) socketCreateSocket;
                sSLSocket.startHandshake();
                verifyHostname(sSLSocket, httpHost.getHostName());
                return socketCreateSocket;
            }
            return createLayeredSocket(socketCreateSocket, httpHost.getHostName(), inetSocketAddress.getPort(), httpContext);
        } catch (IOException e2) {
            try {
                socketCreateSocket.close();
            } catch (IOException e3) {
            }
            throw e2;
        }
    }

    @Override // org.apache.http.conn.socket.LayeredConnectionSocketFactory
    public Socket createLayeredSocket(Socket socket, String str, int i, HttpContext httpContext) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.socketfactory.createSocket(socket, str, i, true);
        if (this.supportedProtocols != null) {
            sSLSocket.setEnabledProtocols(this.supportedProtocols);
        }
        if (this.supportedCipherSuites != null) {
            sSLSocket.setEnabledCipherSuites(this.supportedCipherSuites);
        }
        prepareSocket(sSLSocket);
        if (Build.VERSION.SDK_INT >= 17 && (this.socketfactory instanceof SSLCertificateSocketFactory)) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Enabling SNI for " + str);
            }
            ((SSLCertificateSocketFactory) this.socketfactory).setHostname(sSLSocket, str);
        }
        sSLSocket.startHandshake();
        verifyHostname(sSLSocket, str);
        return sSLSocket;
    }

    X509HostnameVerifier getHostnameVerifier() {
        return this.hostnameVerifier;
    }

    private void verifyHostname(SSLSocket sSLSocket, String str) throws IOException {
        try {
            this.hostnameVerifier.verify(str, sSLSocket);
        } catch (IOException e2) {
            try {
                sSLSocket.close();
            } catch (Exception e3) {
            }
            throw e2;
        }
    }
}
